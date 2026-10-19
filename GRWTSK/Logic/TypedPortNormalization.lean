import Mathlib

namespace GRWTSK.Logic.TypedPortNormalization

universe u v w v₂ v₃

variable {Obj : Type u}

/-- Typed port expressions with explicit source, target, and middle object. -/
inductive Expr (Port : Obj → Obj → Type v) : Obj → Obj → Type (max u v)
  | id (a : Obj) : Expr Port a a
  | atom {a b : Obj} (p : Port a b) : Expr Port a b
  | comp {a b c : Obj} (p : Expr Port a b) (q : Expr Port b c) : Expr Port a c

/-- Canonical right-associated paths. -/
inductive NormalPath (Port : Obj → Obj → Type v) : Obj → Obj → Type (max u v)
  | nil (a : Obj) : NormalPath Port a a
  | cons {a b c : Obj} (p : Port a b) (q : NormalPath Port b c) : NormalPath Port a c

namespace NormalPath

variable {Port : Obj → Obj → Type v}

/-- Typed path concatenation. -/
def append {a b c : Obj} :
    NormalPath Port a b → NormalPath Port b c → NormalPath Port a c
  | .nil _, q => q
  | .cons p ps, q => .cons p (append ps q)

@[simp]
theorem nil_append {a b : Obj} (p : NormalPath Port a b) :
    append (.nil a) p = p := rfl

@[simp]
theorem append_nil {a b : Obj} (p : NormalPath Port a b) :
    append p (.nil b) = p := by
  induction p with
  | nil => rfl
  | cons q qs ih => simp [append, ih]

@[simp]
theorem append_assoc {a b c d : Obj}
    (p : NormalPath Port a b) (q : NormalPath Port b c)
    (r : NormalPath Port c d) :
    append (append p q) r = append p (append q r) := by
  induction p with
  | nil => rfl
  | cons s ss ih => simp [append, ih]

end NormalPath

namespace Expr

variable {Port : Obj → Obj → Type v}

/-- A structurally recursive normalizer from typed expressions to canonical paths. -/
def normalize {a b : Obj} : Expr Port a b → NormalPath Port a b
  | .id a => .nil a
  | .atom p => .cons p (.nil _)
  | .comp p q => NormalPath.append (normalize p) (normalize q)

end Expr

namespace NormalPath

variable {Port : Obj → Obj → Type v}

/-- Reification of a canonical path as a typed expression. -/
def toExpr {a b : Obj} : NormalPath Port a b → Expr Port a b
  | .nil a => .id a
  | .cons p q => .comp (.atom p) (toExpr q)

@[simp]
theorem normalize_toExpr {a b : Obj} (p : NormalPath Port a b) :
    p.toExpr.normalize = p := by
  induction p with
  | nil => rfl
  | cons q qs ih => simp [toExpr, Expr.normalize, append, ih]

end NormalPath

namespace Expr

variable {Port : Obj → Obj → Type v}

/-- Canonical expression form obtained by normalization and reification. -/
def normalForm {a b : Obj} (e : Expr Port a b) : Expr Port a b :=
  e.normalize.toExpr

@[simp]
theorem normalForm_idempotent {a b : Obj} (e : Expr Port a b) :
    e.normalForm.normalForm = e.normalForm := by
  simp [normalForm]

end Expr

/-- A semantics assigns a carrier to every object and a function to every atomic port. -/
structure Semantics (Port : Obj → Obj → Type v) where
  Carrier : Obj → Type w
  map : ∀ {a b : Obj}, Port a b → Carrier a → Carrier b

namespace NormalPath

variable {Port : Obj → Obj → Type v}

/-- Evaluation of a canonical path. -/
def eval (S : Semantics Port) {a b : Obj} :
    NormalPath Port a b → S.Carrier a → S.Carrier b
  | .nil _, x => x
  | .cons p q, x => eval S q (S.map p x)

@[simp]
theorem eval_append (S : Semantics Port) {a b c : Obj}
    (p : NormalPath Port a b) (q : NormalPath Port b c)
    (x : S.Carrier a) :
    eval S (append p q) x = eval S q (eval S p x) := by
  induction p with
  | nil => rfl
  | cons r rs ih => simp [append, eval, ih]

end NormalPath

namespace Expr

variable {Port : Obj → Obj → Type v}

/-- Evaluation of typed port expressions. -/
def eval (S : Semantics Port) {a b : Obj} :
    Expr Port a b → S.Carrier a → S.Carrier b
  | .id _, x => x
  | .atom p, x => S.map p x
  | .comp p q, x => eval S q (eval S p x)

/-- Normalization preserves every semantics. -/
theorem eval_normalize (S : Semantics Port) {a b : Obj}
    (e : Expr Port a b) (x : S.Carrier a) :
    NormalPath.eval S e.normalize x = eval S e x := by
  induction e with
  | id => rfl
  | atom => rfl
  | comp p q hp hq =>
      simp [Expr.normalize, NormalPath.eval_append, eval, hp, hq]

end Expr

namespace NormalPath

variable {Port : Obj → Obj → Type v}

/-- Reification of a normal path preserves every semantics. -/
theorem eval_toExpr (S : Semantics Port) {a b : Obj}
    (p : NormalPath Port a b) (x : S.Carrier a) :
    Expr.eval S p.toExpr x = eval S p x := by
  induction p with
  | nil => rfl
  | cons q qs ih => simp [toExpr, Expr.eval, eval, ih]

end NormalPath

namespace Expr

variable {Port : Obj → Obj → Type v}

/-- The canonical expression has the same interpretation as the source expression. -/
theorem eval_normalForm (S : Semantics Port) {a b : Obj}
    (e : Expr Port a b) (x : S.Carrier a) :
    eval S e.normalForm x = eval S e x := by
  rw [normalForm, NormalPath.eval_toExpr]
  exact eval_normalize S e x

end Expr

namespace Expr

variable {Port : Obj → Obj → Type v}
variable {Port₂ : Obj → Obj → Type v₂}
variable {Port₃ : Obj → Obj → Type v₃}

/-- Endpoint-preserving substitution of atomic ports by typed port expressions. -/
def bind (σ : ∀ {a b : Obj}, Port a b → Expr Port₂ a b)
    {a b : Obj} : Expr Port a b → Expr Port₂ a b
  | .id a => .id a
  | .atom p => σ p
  | .comp p q => .comp (bind σ p) (bind σ q)

/-- The identity atomic substitution. -/
def atomSubstitution : ∀ {a b : Obj}, Port a b → Expr Port a b :=
  fun {_ _} p => .atom p

@[simp]
theorem bind_atomSubstitution {a b : Obj} (e : Expr Port a b) :
    bind atomSubstitution e = e := by
  induction e with
  | id => rfl
  | atom => rfl
  | comp p q hp hq => simp [bind, hp, hq]

/-- Typed atomic substitution is associative. -/
theorem bind_bind
    (τ : ∀ {a b : Obj}, Port₂ a b → Expr Port₃ a b)
    (σ : ∀ {a b : Obj}, Port a b → Expr Port₂ a b)
    {a b : Obj} (e : Expr Port a b) :
    bind τ (bind σ e) = bind (fun p => bind τ (σ p)) e := by
  induction e with
  | id => rfl
  | atom => rfl
  | comp p q hp hq => simp [bind, hp, hq]

end Expr

namespace Semantics

variable {Port : Obj → Obj → Type v}
variable {Port₂ : Obj → Obj → Type v₂}

/-- Pull a semantics back along an endpoint-preserving atomic substitution. -/
def substitute (S : Semantics Port₂)
    (σ : ∀ {a b : Obj}, Port a b → Expr Port₂ a b) :
    Semantics Port where
  Carrier := S.Carrier
  map p := Expr.eval S (σ p)

end Semantics

namespace Expr

variable {Port : Obj → Obj → Type v}
variable {Port₂ : Obj → Obj → Type v₂}

/-- Evaluation commutes with endpoint-preserving atomic substitution. -/
theorem eval_bind
    (S : Semantics Port₂)
    (σ : ∀ {a b : Obj}, Port a b → Expr Port₂ a b)
    {a b : Obj} (e : Expr Port a b) (x : S.Carrier a) :
    eval S (bind σ e) x = eval (Semantics.substitute S σ) e x := by
  induction e with
  | id => rfl
  | atom => rfl
  | comp p q hp hq => simp [bind, eval, Semantics.substitute, hp, hq]

end Expr

end GRWTSK.Logic.TypedPortNormalization
