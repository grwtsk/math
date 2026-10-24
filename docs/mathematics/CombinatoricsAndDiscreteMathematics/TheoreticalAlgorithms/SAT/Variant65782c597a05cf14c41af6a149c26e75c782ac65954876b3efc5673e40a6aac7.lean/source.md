# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SAT.Variant65782c597a05cf14c41af6a149c26e75c782ac65954876b3efc5673e40a6aac7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a2fccdcca2b2064dbecc8e2d1b92fdaf44fe661` · SHA-256 `b3c8f0b0e4ca0b108ae0c7f1e802b63a8b9a0a81f4adbfb3b7b733f6167b3ed1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Literal.Variant9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Literal.Variant9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a","mathematical_subject":"Computation.DataStructures","original_sha256":"9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Reduction/SAT.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Fintype.Pi
import Lean.Elab.Tactic.Omega

/-!
# Deterministic fixed-width computations reduce to SAT

This module formalizes two related statements.

1. **Finite-domain reduction.** Every function
   `Bits n → Bits m` has a CNF formula whose satisfying assignments are exactly
   the inputs mapped to a fixed target.  This construction enumerates the finite
   input domain, so its size may be exponential in `n`.

2. **Circuit/Tseitin reduction.** Given a verified feed-forward Boolean circuit,
   each gate is translated to a constant number of CNF clauses.  The resulting
   formula is satisfiable exactly when the represented algorithm has a preimage
   of the target.  The clause count is at most four times the number of gates,
   plus one unit clause per output bit.

Consequently, a family of deterministic algorithms having polynomial-size
Boolean circuits (in particular, a polynomial-time computation after a standard
bit-blasting/unrolling compilation) has a polynomial-size many-one reduction to
SAT.

For a bijection `H : Bits n → Bits n`, the target formula has exactly one input
projection.  It need not have a unique assignment over an ambient, unbounded
variable namespace, because variables not occurring in the formula are irrelevant.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Literal.Variant9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a

namespace BitMatrix.Reduction.SAT

/-- An `n`-bit vector, represented extensionally. -/
abbrev Bits (n : Nat) := Fin n → Bool

/-- A Boolean assignment over a countable variable namespace. -/
abbrev Assignment := Nat → Bool

/-- Read the first `n` SAT variables as an `n`-bit input. -/
def readInput {n : Nat} (σ : Assignment) : Bits n :=
  fun i => σ i.val

/-- Extend an `n`-bit input to a total SAT assignment. -/
def inputAssignment {n : Nat} (x : Bits n) : Assignment :=
  fun v => if h : v < n then x ⟨v, h⟩ else false

@[simp]
theorem readInput_inputAssignment {n : Nat} (x : Bits n) :
    readInput (inputAssignment x) = x := by
  funext i
  simp [readInput, inputAssignment, i.isLt]

/-! ## CNF syntax and semantics -/

/-- A positive or negative Boolean literal. -/
inductive Literal where
  | pos (var : Nat)
  | neg (var : Nat)
  deriving DecidableEq, Repr

namespace Literal

/-- Propositional semantics of a literal. -/
def Holds (σ : Assignment) : Literal → Prop
  | .pos v => σ v = true
  | .neg v => σ v = false

/-- A unit literal asserting that variable `v` equals bit `b`. -/
def forBit (v : Nat) : Bool → Literal
  | false => .neg v
  | true => .pos v

/-- A literal that is true exactly when variable `v` differs from bit `b`. -/
def blocking (v : Nat) : Bool → Literal
  | false => .pos v
  | true => .neg v

@[simp]
theorem holds_forBit (σ : Assignment) (v : Nat) (b : Bool) :
    Holds σ (forBit v b) ↔ σ v = b := by
  cases b <;> simp [forBit, Holds]

@[simp]
theorem holds_blocking (σ : Assignment) (v : Nat) (b : Bool) :
    Holds σ (blocking v b) ↔ σ v ≠ b := by
  cases b <;> cases h : σ v <;> simp [blocking, Holds, h]

end Literal

/-- A disjunction of literals. -/
abbrev Clause := List Literal

/-- A conjunction of clauses. -/
abbrev CNF := List Clause

namespace Clause

/-- A clause is true when at least one of its literals is true. -/
def Holds (σ : Assignment) (clause : Clause) : Prop :=
  ∃ literal ∈ clause, Literal.Holds σ literal

@[simp]
theorem holds_nil (σ : Assignment) : ¬ Holds σ [] := by
  simp [Holds]

@[simp]
theorem holds_cons (σ : Assignment) (literal : Literal) (clause : Clause) :
    Holds σ (literal :: clause) ↔ Literal.Holds σ literal ∨ Holds σ clause := by
  simp [Holds]

@[simp]
theorem holds_singleton (σ : Assignment) (literal : Literal) :
    Holds σ [literal] ↔ Literal.Holds σ literal := by
  simp [Holds]

end Clause

namespace CNF

/-- Every clause in the CNF is true. -/
def Holds (σ : Assignment) (formula : CNF) : Prop :=
  ∀ clause ∈ formula, Clause.Holds σ clause

/-- A CNF formula has at least one satisfying assignment. -/
def Satisfiable (formula : CNF) : Prop :=
  ∃ σ, Holds σ formula

@[simp]
theorem holds_nil (σ : Assignment) : Holds σ [] := by
  simp [Holds]

@[simp]
theorem holds_cons (σ : Assignment) (clause : Clause) (formula : CNF) :
    Holds σ (clause :: formula) ↔ Clause.Holds σ clause ∧ Holds σ formula := by
  simp [Holds]

@[simp]
theorem holds_append (σ : Assignment) (left right : CNF) :
    Holds σ (left ++ right) ↔ Holds σ left ∧ Holds σ right := by
  constructor
  · intro h
    constructor
    · intro clause hclause
      exact h clause (List.mem_append_left right hclause)
    · intro clause hclause
      exact h clause (List.mem_append_right left hclause)
  · rintro ⟨hleft, hright⟩ clause hclause
    rw [List.mem_append] at hclause
    exact hclause.elim (hleft clause) (hright clause)

/-- Pointwise characterization of a CNF generated by `List.ofFn`. -/
theorem holds_ofFn {n : Nat} (σ : Assignment) (f : Fin n → Clause) :
    Holds σ (List.ofFn f) ↔ ∀ i, Clause.Holds σ (f i) := by
  constructor
  · intro h i
    exact h (f i) (List.mem_ofFn.mpr ⟨i, rfl⟩)
  · intro h clause hmem
    obtain ⟨i, rfl⟩ := List.mem_ofFn.mp hmem
    exact h i

end CNF

/-! ## Exact Tseitin clauses for primitive gates -/

/-- Primitive gates used by the straight-line circuit language. -/
inductive Gate where
  | const (value : Bool)
  | copy (a : Nat)
  | neg (a : Nat)
  | conj (a b : Nat)
  | disj (a b : Nat)
  | xor (a b : Nat)
  deriving DecidableEq, Repr

namespace Gate

/-- Evaluate a gate from the values currently assigned to its input wires. -/
def eval (σ : Assignment) : Gate → Bool
  | .const value => value
  | .copy a => σ a
  | .neg a => !(σ a)
  | .conj a b => σ a && σ b
  | .disj a b => σ a || σ b
  | .xor a b => σ a != σ b

/-- Number of clauses emitted by the exact Tseitin encoding of a gate. -/
def clauseCount : Gate → Nat
  | .const _ => 1
  | .copy _ => 2
  | .neg _ => 2
  | .conj _ _ => 3
  | .disj _ _ => 3
  | .xor _ _ => 4

/-- Input-variable references occurring in a gate. -/
def inputs : Gate → List Nat
  | .const _ => []
  | .copy a => [a]
  | .neg a => [a]
  | .conj a b => [a, b]
  | .disj a b => [a, b]
  | .xor a b => [a, b]

/-- The gate only refers to wires allocated before `next`. -/
def InputsBelow (gate : Gate) (next : Nat) : Prop :=
  ∀ wire ∈ gate.inputs, wire < next

@[simp]
theorem clauseCount_le_four (gate : Gate) : gate.clauseCount ≤ 4 := by
  cases gate <;> simp [Gate.clauseCount]

end Gate

/--
Exact CNF clauses for the equation `out = Gate.eval σ gate`.

The encodings use implications in both directions, not merely an
one-directional equisatisfiable approximation.
-/
def encodeGate (out : Nat) : Gate → CNF
  | .const value =>
      [[Literal.forBit out value]]
  | .copy a =>
      [[.neg a, .pos out],
       [.pos a, .neg out]]
  | .neg a =>
      [[.pos a, .pos out],
       [.neg a, .neg out]]
  | .conj a b =>
      [[.neg a, .neg b, .pos out],
       [.pos a, .neg out],
       [.pos b, .neg out]]
  | .disj a b =>
      [[.pos a, .pos b, .neg out],
       [.neg a, .pos out],
       [.neg b, .pos out]]
  | .xor a b =>
      [[.neg a, .neg b, .neg out],
       [.pos a, .pos b, .neg out],
       [.pos a, .neg b, .pos out],
       [.neg a, .pos b, .pos out]]

@[simp]
theorem encodeGate_length (out : Nat) (gate : Gate) :
    (encodeGate out gate).length = gate.clauseCount := by
  cases gate <;> rfl

/-- Each primitive gate CNF is equivalent to its defining Boolean equation. -/
theorem encodeGate_correct (σ : Assignment) (out : Nat) (gate : Gate) :
    CNF.Holds σ (encodeGate out gate) ↔ σ out = Gate.eval σ gate := by
  cases gate with
  | const value =>
      cases value <;>
        cases hout : σ out <;>
        simp [encodeGate, Gate.eval, Clause.Holds, Literal.Holds,
          Literal.forBit, hout]
  | copy a =>
      cases ha : σ a <;>
        cases hout : σ out <;>
        simp [encodeGate, Gate.eval, Clause.Holds, Literal.Holds, ha, hout]
  | neg a =>
      cases ha : σ a <;>
        cases hout : σ out <;>
        simp [encodeGate, Gate.eval, Clause.Holds, Literal.Holds, ha, hout]
  | conj a b =>
      cases ha : σ a <;>
        cases hb : σ b <;>
        cases hout : σ out <;>
        simp [encodeGate, Gate.eval, Clause.Holds, Literal.Holds, ha, hb, hout]
  | disj a b =>
      cases ha : σ a <;>
        cases hb : σ b <;>
        cases hout : σ out <;>
        simp [encodeGate, Gate.eval, Clause.Holds, Literal.Holds, ha, hb, hout]
  | xor a b =>
      cases ha : σ a <;>
        cases hb : σ b <;>
        cases hout : σ out <;>
        simp [encodeGate, Gate.eval, Clause.Holds, Literal.Holds, ha, hb, hout]

/-! ## Straight-line circuits -/

/-- Encode gates whose output wires are `next`, `next + 1`, ... -/
def encodeFrom : Nat → List Gate → CNF
  | _, [] => []
  | next, gate :: gates =>
      encodeGate next gate ++ encodeFrom (next + 1) gates

/-- Declarative trace predicate for a sequence of gates. -/
def ValidFrom (σ : Assignment) : Nat → List Gate → Prop
  | _, [] => True
  | next, gate :: gates =>
      σ next = Gate.eval σ gate ∧ ValidFrom σ (next + 1) gates

/-- Acyclicity condition for a gate sequence. -/
def WellFormedFrom : Nat → List Gate → Prop
  | _, [] => True
  | next, gate :: gates =>
      gate.InputsBelow next ∧ WellFormedFrom (next + 1) gates

/-- Correctness of the Tseitin translation for a complete gate sequence. -/
theorem encodeFrom_correct (σ : Assignment) (next : Nat) (gates : List Gate) :
    CNF.Holds σ (encodeFrom next gates) ↔ ValidFrom σ next gates := by
  induction gates generalizing next with
  | nil => simp [encodeFrom, ValidFrom]
  | cons gate gates ih =>
      simp [encodeFrom, ValidFrom, encodeGate_correct, ih]

/-- Exact gate-clause count. -/
theorem encodeFrom_length (next : Nat) (gates : List Gate) :
    (encodeFrom next gates).length = (gates.map Gate.clauseCount).sum := by
  induction gates generalizing next with
  | nil => simp [encodeFrom]
  | cons gate gates ih =>
      simp [encodeFrom, ih]

/-- The gate encoding has at most four clauses per gate. -/
theorem encodeFrom_length_le_four_mul (next : Nat) (gates : List Gate) :
    (encodeFrom next gates).length ≤ 4 * gates.length := by
  induction gates generalizing next with
  | nil => simp [encodeFrom]
  | cons gate gates ih =>
      simp only [encodeFrom, List.length_append, encodeGate_length,
        List.length_cons, Nat.mul_add]
      have hgate := Gate.clauseCount_le_four gate
      have hrest := ih (next := next + 1)
      omega

/--
A Boolean circuit with `n` inputs and `m` outputs.

The dependent output type ensures that every designated output refers to one of
`n + gates.length` allocated input/gate wires.
-/
structure Circuit (n m : Nat) where
  gates : List Gate
  outputs : Fin m → Fin (n + gates.length)

namespace Circuit

/-- All gate inputs refer strictly backwards, so the circuit is feed-forward. -/
def WellFormed (circuit : Circuit n m) : Prop :=
  WellFormedFrom n circuit.gates

/-- A total assignment is a valid execution trace of the circuit. -/
def ValidTrace (circuit : Circuit n m) (σ : Assignment) : Prop :=
  ValidFrom σ n circuit.gates

/-- Read the designated circuit output wires. -/
def readOutput (circuit : Circuit n m) (σ : Assignment) : Bits m :=
  fun i => σ (circuit.outputs i).val

/-- Unit clauses fixing every output bit to a target vector. -/
def targetCNF (circuit : Circuit n m) (target : Bits m) : CNF :=
  List.ofFn fun i => [Literal.forBit (circuit.outputs i).val (target i)]

/-- The output-unit clauses are exactly output equality. -/
theorem targetCNF_correct (circuit : Circuit n m) (σ : Assignment) (target : Bits m) :
    CNF.Holds σ (circuit.targetCNF target) ↔ circuit.readOutput σ = target := by
  unfold targetCNF
  rw [CNF.holds_ofFn]
  constructor
  · intro h
    funext i
    have hi := h i
    simpa [Clause.Holds, readOutput] using hi
  · intro h i
    have hi := congrFun h i
    simpa [Clause.Holds, readOutput] using hi

/-- The final SAT instance: gate constraints plus fixed target outputs. -/
def toCNF (circuit : Circuit n m) (target : Bits m) : CNF :=
  encodeFrom n circuit.gates ++ circuit.targetCNF target

/-- Semantic correctness of the complete circuit-to-SAT transformation. -/
theorem toCNF_correct (circuit : Circuit n m) (σ : Assignment) (target : Bits m) :
    CNF.Holds σ (circuit.toCNF target) ↔
      circuit.ValidTrace σ ∧ circuit.readOutput σ = target := by
  rw [toCNF, CNF.holds_append, encodeFrom_correct, targetCNF_correct]
  rfl

/-- The target contributes exactly one unit clause per output bit. -/
@[simp]
theorem targetCNF_length (circuit : Circuit n m) (target : Bits m) :
    (circuit.targetCNF target).length = m := by
  simp [targetCNF]

/-- Linear clause bound for the complete Tseitin instance. -/
theorem toCNF_length_le (circuit : Circuit n m) (target : Bits m) :
    (circuit.toCNF target).length ≤ 4 * circuit.gates.length + m := by
  rw [toCNF, List.length_append, targetCNF_length]
  exact Nat.add_le_add_right
    (encodeFrom_length_le_four_mul n circuit.gates) m

/--
A circuit implements `algorithm` when valid traces are sound and every input
has at least one valid trace.

For a well-formed straight-line circuit, the trace is in fact determined by the
input; the reduction theorem below only needs soundness and completeness.
-/
def Implements (circuit : Circuit n m) (algorithm : Bits n → Bits m) : Prop :=
  (∀ σ, circuit.ValidTrace σ →
      circuit.readOutput σ = algorithm (readInput σ)) ∧
  (∀ input : Bits n,
    ∃ σ, readInput (n := n) σ = input ∧ circuit.ValidTrace σ)

/-- Package a deterministic fixed-width algorithm with a verified bit-blasting result. -/
structure CompiledAlgorithm (n m : Nat) where
  run : Bits n → Bits m
  circuit : Circuit n m
  wellFormed : circuit.WellFormed
  correct : circuit.Implements run

/-- The SAT instance is satisfiable exactly when the algorithm has a target preimage. -/
theorem satisfiable_toCNF_iff_preimage
    (circuit : Circuit n m)
    (algorithm : Bits n → Bits m)
    (hcorrect : circuit.Implements algorithm)
    (target : Bits m) :
    CNF.Satisfiable (circuit.toCNF target) ↔
      ∃ input, algorithm input = target := by
  constructor
  · rintro ⟨σ, hσ⟩
    have hformula := (circuit.toCNF_correct σ target).mp hσ
    refine ⟨readInput σ, ?_⟩
    calc
      algorithm (readInput σ) = circuit.readOutput σ :=
        (hcorrect.1 σ hformula.1).symm
      _ = target := hformula.2
  · rintro ⟨input, hinput⟩
    obtain ⟨σ, hread, htrace⟩ := hcorrect.2 input
    refine ⟨σ, (circuit.toCNF_correct σ target).mpr ⟨htrace, ?_⟩⟩
    calc
      circuit.readOutput σ = algorithm (readInput σ) :=
        hcorrect.1 σ htrace
      _ = algorithm input := by rw [hread]
      _ = target := hinput

/-- The reduction theorem specialized to a packaged compiled algorithm. -/
theorem CompiledAlgorithm.sat_iff_preimage
    (compiled : CompiledAlgorithm n m)
    (target : Bits m) :
    CNF.Satisfiable (compiled.circuit.toCNF target) ↔
      ∃ input, compiled.run input = target :=
  satisfiable_toCNF_iff_preimage
    compiled.circuit compiled.run compiled.correct target

/-- An input is represented by some satisfying assignment of the target formula. -/
def InputWitness
    (circuit : Circuit n m)
    (target : Bits m)
    (input : Bits n) : Prop :=
  ∃ σ, CNF.Holds σ (circuit.toCNF target) ∧ readInput σ = input

/-- Satisfying input projections are exactly target preimages. -/
theorem inputWitness_iff_preimage
    (circuit : Circuit n m)
    (algorithm : Bits n → Bits m)
    (hcorrect : circuit.Implements algorithm)
    (target : Bits m)
    (input : Bits n) :
    circuit.InputWitness target input ↔ algorithm input = target := by
  constructor
  · rintro ⟨σ, hformula, hread⟩
    have h := (circuit.toCNF_correct σ target).mp hformula
    calc
      algorithm input = algorithm (readInput σ) := by rw [hread]
      _ = circuit.readOutput σ := (hcorrect.1 σ h.1).symm
      _ = target := h.2
  · intro hpreimage
    obtain ⟨σ, hread, htrace⟩ := hcorrect.2 input
    refine ⟨σ, ?_, hread⟩
    apply (circuit.toCNF_correct σ target).mpr
    refine ⟨htrace, ?_⟩
    calc
      circuit.readOutput σ = algorithm (readInput σ) :=
        hcorrect.1 σ htrace
      _ = algorithm input := by rw [hread]
      _ = target := hpreimage

end Circuit

/-! ## Every function on a fixed finite domain has a SAT encoding -/

/--
A clause false on exactly one `n`-bit input and true on every other input.
-/
def blockingClause {n : Nat} (blocked : Bits n) : Clause :=
  List.ofFn fun i => Literal.blocking i.val (blocked i)

/-- Correctness of a blocking clause. -/
theorem blockingClause_correct
    {n : Nat} (σ : Assignment) (blocked : Bits n) :
    Clause.Holds σ (blockingClause blocked) ↔ readInput σ ≠ blocked := by
  constructor
  · rintro ⟨literal, hmem, hliteral⟩ heq
    obtain ⟨i, rfl⟩ := List.mem_ofFn.mp hmem
    have hdiff : σ i.val ≠ blocked i :=
      (Literal.holds_blocking σ i.val (blocked i)).mp hliteral
    apply hdiff
    have hi := congrFun heq i
    simpa [readInput] using hi
  · intro hne
    have hexists : ∃ i, readInput σ i ≠ blocked i := by
      by_contra hnone
      apply hne
      funext i
      by_contra hi
      exact hnone ⟨i, hi⟩
    obtain ⟨i, hi⟩ := hexists
    refine ⟨Literal.blocking i.val (blocked i), ?_, ?_⟩
    · exact List.mem_ofFn.mpr ⟨i, rfl⟩
    · apply (Literal.holds_blocking σ i.val (blocked i)).mpr
      simpa [readInput] using hi

/--
Truth-table CNF for the predicate `algorithm input = target`.

For every non-preimage input, one blocking clause excludes exactly that input.
This proves finite representability for *every* fixed-width deterministic
function, but the construction can contain `2^n` clauses.
-/
noncomputable def truthTableCNF
    {n m : Nat}
    (algorithm : Bits n → Bits m)
    (target : Bits m) : CNF := by
  classical
  exact
    ((Finset.univ.filter fun input => algorithm input ≠ target).toList.map
      blockingClause)

/-- Exact semantics of the universal finite-domain encoding. -/
theorem truthTableCNF_correct
    {n m : Nat}
    (algorithm : Bits n → Bits m)
    (target : Bits m)
    (σ : Assignment) :
    CNF.Holds σ (truthTableCNF algorithm target) ↔
      algorithm (readInput σ) = target := by
  classical
  constructor
  · intro hformula
    by_contra hbad
    have hfilter :
        readInput σ ∈ Finset.univ.filter
          (fun input => algorithm input ≠ target) := by
      simp [hbad]
    have hlist :
        readInput σ ∈
          (Finset.univ.filter
            (fun input => algorithm input ≠ target)).toList := by
      simpa using hfilter
    have hclause :
        blockingClause (n := n) (readInput σ) ∈
          truthTableCNF algorithm target := by
      unfold truthTableCNF
      exact List.mem_map.mpr ⟨readInput σ, hlist, rfl⟩
    have hblocked := hformula _ hclause
    exact (blockingClause_correct σ (readInput σ)).mp hblocked rfl
  · intro hgood clause hclause
    unfold truthTableCNF at hclause
    obtain ⟨blocked, hblockedList, rfl⟩ := List.mem_map.mp hclause
    apply (blockingClause_correct σ blocked).mpr
    intro heq
    have hblockedFilter :
        blocked ∈ Finset.univ.filter
          (fun input => algorithm input ≠ target) := by
      simpa using hblockedList
    have hneq : algorithm blocked ≠ target :=
      (Finset.mem_filter.mp hblockedFilter).2
    apply hneq
    rw [← heq]
    exact hgood

/--
Every deterministic function on a fixed finite bit-vector domain reduces
extensionally to SAT.

This theorem makes no polynomial-size claim; use the circuit theorem above for
an efficient reduction.
-/
theorem every_fixed_width_function_reduces_to_sat
    {n m : Nat}
    (algorithm : Bits n → Bits m)
    (target : Bits m) :
    CNF.Satisfiable (truthTableCNF algorithm target) ↔
      ∃ input, algorithm input = target := by
  constructor
  · rintro ⟨σ, hσ⟩
    exact ⟨readInput σ,
      (truthTableCNF_correct algorithm target σ).mp hσ⟩
  · rintro ⟨input, hinput⟩
    refine ⟨inputAssignment input, ?_⟩
    apply (truthTableCNF_correct algorithm target
      (inputAssignment input)).mpr
    simpa using hinput

/-! ## Bijective functions have one SAT input projection -/

/-- A bijection has exactly one preimage for every target. -/
theorem bijective_has_unique_preimage
    {n : Nat}
    (hash : Bits n → Bits n)
    (hbijective : Function.Bijective hash)
    (target : Bits n) :
    ∃! input, hash input = target := by
  obtain ⟨input, hinput⟩ := hbijective.2 target
  refine ⟨input, hinput, ?_⟩
  intro other hother
  exact hbijective.1 (hother.trans hinput.symm)

/--
For a verified circuit implementing a bijection, the target SAT formula has a
unique projection onto the input variables.
-/
theorem bijective_circuit_has_unique_sat_input
    {n : Nat}
    (circuit : Circuit n n)
    (hash : Bits n → Bits n)
    (hcorrect : circuit.Implements hash)
    (hbijective : Function.Bijective hash)
    (target : Bits n) :
    ∃! input, circuit.InputWitness target input := by
  obtain ⟨input, hinput, hunique⟩ :=
    bijective_has_unique_preimage hash hbijective target
  refine ⟨input,
    (circuit.inputWitness_iff_preimage hash hcorrect target input).mpr hinput,
    ?_⟩
  intro other hother
  apply hunique other
  exact (circuit.inputWitness_iff_preimage
    hash hcorrect target other).mp hother

/-- The same unique-input result for the universal fixed-domain encoding. -/
theorem bijective_truthTable_has_unique_sat_input
    {n : Nat}
    (hash : Bits n → Bits n)
    (hbijective : Function.Bijective hash)
    (target : Bits n) :
    ∃! input : Bits n,
      ∃ σ, CNF.Holds σ (truthTableCNF hash target) ∧
        readInput (n := n) σ = input := by
  obtain ⟨input, hinput, hunique⟩ :=
    bijective_has_unique_preimage hash hbijective target
  have hsatisfiable : CNF.Satisfiable (truthTableCNF hash target) :=
    (every_fixed_width_function_reduces_to_sat hash target).mpr
      ⟨input, hinput⟩
  obtain ⟨σ, hσ⟩ := hsatisfiable
  refine ⟨readInput σ, ⟨σ, hσ, rfl⟩, ?_⟩
  intro other hother
  obtain ⟨τ, hτ, hread⟩ := hother
  have hσpre : hash (readInput σ) = target :=
    (truthTableCNF_correct hash target σ).mp hσ
  have hτpre : hash (readInput τ) = target :=
    (truthTableCNF_correct hash target τ).mp hτ
  calc
    other = readInput τ := hread.symm
    _ = readInput σ := hbijective.1 (hτpre.trans hσpre.symm)

end BitMatrix.Reduction.SAT
```
