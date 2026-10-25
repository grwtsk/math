import Std

/- Independent wire model: each Char denotes one byte, restricted below 256.
   Text is raw UTF-8 bytes; Lean Unicode strings do not normalize the payload. -/
namespace C2
abbrev Bytes := List Char
inductive Value where
  | bool : Bool → Value
  | int : Int → Value
  | rational : Int → Nat → Value
  | text : Bytes → Value
  | array : List Value → Value
  | map : List (Bytes × Value) → Value
  deriving Repr

def digits (n : Nat) : Bytes := Nat.toDigits 10 n
def signed (n : Int) : Bytes := if n < 0 then '-' :: digits n.natAbs else digits n.natAbs

def emit : Value → Bytes
  | .bool b => [if b then 't' else 'f']
  | .int n => 'i' :: signed n ++ [';']
  | .rational n d => 'q' :: signed n ++ ['/'] ++ digits d ++ [';']
  | .text b => 's' :: digits b.length ++ [':'] ++ b
  | .array vs => 'a' :: digits vs.length ++ [':'] ++ vs.flatMap emit
  | .map ps => 'm' :: digits ps.length ++ [':'] ++ ps.flatMap (fun p => ('s' :: digits p.1.length ++ [':'] ++ p.1) ++ emit p.2)
termination_by v => sizeOf v
decreasing_by
  all_goals first
  | decreasing_trivial
  | have h := List.sizeOf_lt_of_mem (show p ∈ ps from by assumption)
    cases p
    simp_all
    omega

def signed64 (n : Int) : Bool := -9223372036854775808 ≤ n && n ≤ 9223372036854775807

def utf8 : Bytes → Bool
  | [] => true
  | a::xs =>
    let n := a.toNat
    if n ≤ 127 then utf8 xs else
    let continuation := fun (b : Char) => 128 ≤ b.toNat && b.toNat ≤ 191
    match xs with
    | b::ys =>
      if 194 ≤ n && n ≤ 223 && continuation b then utf8 ys else
      match ys with
      | c::zs =>
        let second3 := (n == 224 && 160 ≤ b.toNat && b.toNat ≤ 191) ||
          (225 ≤ n && n ≤ 236 && continuation b) ||
          (n == 237 && 128 ≤ b.toNat && b.toNat ≤ 159) ||
          (238 ≤ n && n ≤ 239 && continuation b)
        if second3 && continuation c then utf8 zs else
        match zs with
        | d::ws =>
          let second4 := (n == 240 && 144 ≤ b.toNat && b.toNat ≤ 191) ||
            (241 ≤ n && n ≤ 243 && continuation b) ||
            (n == 244 && 128 ≤ b.toNat && b.toNat ≤ 143)
          second4 && continuation c && continuation d && utf8 ws
        | _ => false
      | _ => false
    | _ => false

def increasing (ks : List Bytes) : Bool :=
  match ks with
  | [] | [_] => true
  | a::b::xs => decide (a < b) && increasing (b::xs)

def valueOK (depth : Nat) : Value → Bool
  | .bool _ => depth ≤ 32
  | .int n => depth ≤ 32 && signed64 n
  | .rational n d => depth ≤ 32 && signed64 n && 0 < d && d ≤ 9223372036854775807 && Nat.gcd n.natAbs d == 1
  | .text b => depth ≤ 32 && b.length ≤ 16384 && utf8 b
  | .array vs => depth ≤ 32 && vs.length ≤ 256 && vs.attach.all (fun v => valueOK (depth+1) v.val)
  | .map ps => depth ≤ 32 && ps.length ≤ 64 && increasing (ps.map Prod.fst) &&
      ps.attach.all (fun p => depth+1 ≤ 32 && p.val.1.length ≤ 16384 && utf8 p.val.1 && valueOK (depth+1) p.val.2)
termination_by v => sizeOf v
decreasing_by
  all_goals
    simp only [Value.array.sizeOf_spec, Value.map.sizeOf_spec]
    first
    | have h := List.sizeOf_lt_of_mem v.property
      omega
    | have h := List.sizeOf_lt_of_mem p.property
      have hp : sizeOf p.val.2 < sizeOf p.val := by
        cases hpv : p.val
        simp
        omega
      omega

def asText : Value → Option Bytes | .text b => some b | _ => none
def nonempty (v : Value) : Bool := match asText v with | some b => !b.isEmpty | _ => false
def hashRef (v : Value) : Bool := match asText v with
  | some b => b.length == 64 && b.all (fun c => c.isDigit || ('a' ≤ c && c ≤ 'f'))
  | _ => false

def allArray (p : Value → Bool) : Value → Bool | .array vs => vs.all p | _ => false
def hasKeys (ps : List (Bytes × Value)) (keys : List String) : Bool := ps.map Prod.fst == keys.map String.toList

def binderOK : Value → Bool
  | .map ps => hasKeys ps ["implicit","name","resolved","scope","type","universe"] &&
      ps.all (fun (k,v) => if k == "implicit".toList then match v with | .bool _ => true | _ => false else nonempty v)
  | _ => false

def schema (domain : Bytes) (ps : List (Bytes × Value)) : Bool :=
  if domain == "context".toList then
    hasKeys ps ["axioms","binders","coercions","dependencies","domain","hypotheses","notation","quantifiers","source","statement","toolchain","universes"] &&
    ps.all (fun (k,v) => if k ∈ ["source".toList,"toolchain".toList] then hashRef v else
      if k == "dependencies".toList then allArray hashRef v else
      if k == "binders".toList then allArray binderOK v else
      if k ∈ ["domain".toList,"statement".toList] then nonempty v else allArray nonempty v)
  else if domain == "bridge".toList then
    hasKeys ps ["direction","evidence","laws","operations","profile","relation","source_context","target_context"] &&
    ps.all (fun (k,v) => if k ∈ ["source_context".toList,"target_context".toList] then hashRef v else
      if k ∈ ["laws".toList,"evidence".toList] then allArray hashRef v else
      if k == "operations".toList then allArray nonempty v else
      if k == "profile".toList then asText v == some "BRIDGE-REF-C1".toList else
      if k == "direction".toList then (asText v).any (fun b => b ∈ ["forward".toList,"reverse".toList,"both".toList]) else nonempty v)
  else if domain == "operation".toList then
    hasKeys ps ["authority","context","kind","payload","policy","request","source","target"] &&
    ps.all (fun (k,v) => if k == "payload".toList then true else
      if k == "kind".toList then (asText v).any (fun b => b ∈ ["source-selection".toList,"module-map".toList,"declaration-map".toList,"migration-plan".toList,"job-envelope".toList,"evidence-receipt".toList]) else hashRef v)
  else false

structure Record where
  domain : Bytes
  fields : List (Bytes × Value)
  deriving Repr

def envelope (r : Record) : Value := .map [("domain".toList,.text r.domain),("fields".toList,.map r.fields)]
def bytes (r : Record) : Bytes := "GKC1\n".toList ++ emit (envelope r)
def Supported (r : Record) : Prop := schema r.domain r.fields = true ∧ valueOK 0 (envelope r) = true ∧ (bytes r).length ≤ 16384

/- Cursor primitives are independent of emit. They never search for a record. -/
def splitAt (n : Nat) (b : Bytes) : Option (Bytes × Bytes) :=
  if n ≤ b.length then some (b.take n,b.drop n) else none

def unsigned (cs : Bytes) : Option Nat :=
  let n := Nat.ofDigitChars 10 cs 0
  if !cs.isEmpty && cs.all Char.isDigit && cs == digits n then some n else none

theorem unsigned_digits (n : Nat) : unsigned (digits n) = some n := by
  have hd : (digits n).all Char.isDigit = true := by
    apply List.all_eq_true.mpr
    intro c hc
    exact Nat.isDigit_of_mem_toDigits (by decide) (by decide) hc
  unfold unsigned
  rw [hd]
  simp only [digits, Nat.ofDigitChars_ten_toDigits]
  have hn : (Nat.toDigits 10 n).isEmpty = false := by
    cases h : Nat.toDigits 10 n with
    | nil => exact False.elim (Nat.toDigits_ne_nil h)
    | cons a b => rfl
  simp [hn]

theorem digits_injective : Function.Injective digits := by
  intro a b h
  have := congrArg (fun cs => Nat.ofDigitChars 10 cs 0) h
  simpa [digits, Nat.ofDigitChars_ten_toDigits] using this

theorem splitAt_emit_suffix (payload suffix : Bytes) :
    splitAt payload.length (payload ++ suffix) = some (payload,suffix) := by
  simp [splitAt]

theorem splitAt_reconstruct {n : Nat} {b p s : Bytes} (h : splitAt n b = some (p,s)) : b = p ++ s := by
  unfold splitAt at h
  split at h
  · cases Option.some.inj h
    exact (List.take_append_drop n b).symm
  · contradiction

theorem no_trailing_reconstruction {n : Nat} {b p : Bytes} (h : splitAt n b = some (p,[])) : b = p := by
  simpa using splitAt_reconstruct h

theorem unsupported_size {r : Record} (h : 16384 < (bytes r).length) : ¬ Supported r := by
  intro hs
  have hb := hs.2.2
  omega

theorem supported_schema {r : Record} (h : Supported r) : schema r.domain r.fields = true := h.1

theorem zero_rational_noncanonical (depth : Nat) : valueOK depth (.rational 0 2) = false := by
  simp [valueOK]

def readUntil (sep : Char) : Bytes → Option (Bytes × Bytes)
  | [] => none
  | c::cs => if c == sep then some ([],cs) else do
      let (p,s) ← readUntil sep cs
      pure (c::p,s)

def readNat (sep : Char) (b : Bytes) : Option (Nat × Bytes) := do
  let (p,s) ← readUntil sep b
  let n ← unsigned p
  pure (n,s)

def integer (p : Bytes) : Option Int :=
  match unsigned p with
  | some n => some (Int.ofNat n)
  | none => match p with
    | '-'::cs => do
      let n ← unsigned cs
      if n == 0 then none else pure (-Int.ofNat n)
    | _ => none

def readMany (p : Bytes → Option (Value × Bytes)) : Nat → Bytes → Option (List Value × Bytes)
  | 0,b => some ([],b)
  | n+1,b => do
    let (v,s) ← p b
    let (vs,t) ← readMany p n s
    pure (v::vs,t)

def readPairs (p : Bytes → Option (Value × Bytes)) : Nat → Bytes → Option (List (Bytes × Value) × Bytes)
  | 0,b => some ([],b)
  | n+1,b => do
    let (k,s) ← p b
    let text ← asText k
    let (v,t) ← p s
    let (ps,u) ← readPairs p n t
    pure ((text,v)::ps,u)

def parseValue : Nat → Bytes → Option (Value × Bytes)
  | 0,_ => none
  | fuel+1,b => do
    match b with
    | 't'::s => pure (.bool true,s)
    | 'f'::s => pure (.bool false,s)
    | 'i'::s =>
      let (p,t) ← readUntil ';' s
      let n ← integer p
      pure (.int n,t)
    | 'q'::s =>
      let (p,t) ← readUntil '/' s
      let n ← integer p
      let (d,u) ← readNat ';' t
      pure (.rational n d,u)
    | 's'::s =>
      let (n,t) ← readNat ':' s
      if n > 16384 then none else do
      let (v,u) ← splitAt n t
      pure (.text v,u)
    | 'a'::s =>
      let (n,t) ← readNat ':' s
      if n > 256 then none else do
      let (vs,u) ← readMany (parseValue fuel) n t
      pure (.array vs,u)
    | 'm'::s =>
      let (n,t) ← readNat ':' s
      if n > 64 then none else do
      let (ps,u) ← readPairs (parseValue fuel) n t
      pure (.map ps,u)
    | _ => none

def decode (b : Bytes) : Option Record := do
  if b.length > 16384 || b.take 5 != "GKC1\n".toList then none else do
  let (v,s) ← parseValue 33 (b.drop 5)
  if !s.isEmpty then none else do
  match v with
  | .map [(k,.text d),(l,.map ps)] =>
    if k != "domain".toList || l != "fields".toList || !schema d ps || !valueOK 0 v then none else
    pure ⟨d,ps⟩
  | _ => none

theorem readUntil_suffix (p s : Bytes) (sep : Char) (h : sep ∉ p) :
    readUntil sep (p ++ sep::s) = some (p,s) := by
  induction p with
  | nil => simp [readUntil]
  | cons a p ih =>
    have ha : a ≠ sep := by intro he; subst a; exact h (by simp)
    have hp : sep ∉ p := by intro hm; exact h (by simp [hm])
    simp [readUntil, ha, ih hp]

theorem parse_true_suffix (fuel : Nat) (s : Bytes) :
    parseValue (fuel+1) ('t'::s) = some (.bool true,s) := by rfl

theorem parse_false_suffix (fuel : Nat) (s : Bytes) :
    parseValue (fuel+1) ('f'::s) = some (.bool false,s) := by rfl

theorem readMany_zero (p : Bytes → Option (Value × Bytes)) (s : Bytes) :
    readMany p 0 s = some ([],s) := by rfl

theorem unique_decode {b : Bytes} {r s : Record}
    (hr : decode b = some r) (hs : decode b = some s) : r = s := by
  exact Option.some.inj (hr.symm.trans hs)

/- This is decoder determinism, not yet unique parsing of the byte grammar. -/
theorem deterministic_rejection {b : Bytes} (h : decode b = none) :
    ¬ ∃ r, decode b = some r := by simp [h]

theorem readNat_digits (n : Nat) (s : Bytes) (sep : Char) (hsep : sep.isDigit = false) :
    readNat sep (digits n ++ sep::s) = some (n,s) := by
  have hn : sep ∉ digits n := by
    intro hm
    have hd := Nat.isDigit_of_mem_toDigits (by decide : 0 < 10) (by decide : 10 ≤ 10) hm
    simp [hsep] at hd
  simp [readNat, readUntil_suffix _ _ _ hn, unsigned_digits]

theorem integer_signed (n : Int) : integer (signed n) = some n := by
  cases n with
  | ofNat n =>
    have hn : ¬ (n : Int) < 0 := Int.not_lt.mpr (Int.natCast_nonneg n)
    simp [signed, hn, integer, unsigned_digits]
  | negSucc n =>
    have hd : ∀ x ∈ Nat.toDigits 10 (n+1), x.isDigit = true := fun _ hx =>
      Nat.isDigit_of_mem_toDigits (by decide) (by decide) hx
    simp [signed, integer, unsigned, digits, Nat.ofDigitChars_ten_toDigits, Int.natAbs, Int.negSucc_eq]
    rw [if_pos hd]
    simp [Int.natCast_add]

theorem parse_text_suffix (fuel : Nat) (p s : Bytes) (hlen : p.length ≤ 16384) :
    parseValue (fuel+1) (emit (.text p) ++ s) = some (.text p,s) := by
  simp only [emit, List.cons_append, List.append_assoc]
  simp [parseValue, readNat_digits _ _ ':' (by decide), splitAt_emit_suffix, Nat.not_lt.mpr hlen]

#print axioms readNat_digits
#print axioms integer_signed
#print axioms parse_text_suffix

#print axioms readUntil_suffix
#print axioms parse_true_suffix
#print axioms parse_false_suffix
#print axioms readMany_zero
#print axioms unique_decode
#print axioms deterministic_rejection

#print axioms unsigned_digits
#print axioms digits_injective
#print axioms splitAt_emit_suffix
#print axioms splitAt_reconstruct
#print axioms no_trailing_reconstruction
#print axioms unsupported_size
#print axioms supported_schema
#print axioms zero_rational_noncanonical
end C2
