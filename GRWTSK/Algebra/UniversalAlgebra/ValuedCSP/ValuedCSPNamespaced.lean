-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.ValuedCSPUnaryTerm.Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.ValuedCSPUnaryTerm.Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/ValuedCSP.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Order.AbsoluteValue.Basic
import Mathlib.Algebra.Order.Ring.Rat
import Mathlib.Combinatorics.Optimization.ValuedCSP
import Mathlib.Data.Fin.Tuple.Curry
import Mathlib.Data.Fin.VecNotation
import Mathlib.Tactic.Positivity

/-!
# VCSP examples

This file shows two simple examples of General-Valued Constraint Satisfaction Problems (see
[ValuedCSP definition](Mathlib/Combinatorics/Optimization/ValuedCSP.lean)).
The first example is an optimization problem. The second example is a decision problem.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.ValuedCSPUnaryTerm.Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0

def ValuedCSP.unaryTerm {D C : Type} [AddCommMonoid C] [PartialOrder C] [IsOrderedAddMonoid C]
    {Γ : ValuedCSP D C} {ι : Type*} {f : D → C}
    (ok : ⟨1, Function.OfArity.uncurry f⟩ ∈ Γ) (i : ι) : Γ.Term ι :=
  ⟨1, Function.OfArity.uncurry f, ok, ![i]⟩

def ValuedCSP.binaryTerm {D C : Type} [AddCommMonoid C] [PartialOrder C] [IsOrderedAddMonoid C]
    {Γ : ValuedCSP D C} {ι : Type*} {f : D → D → C}
    (ok : ⟨2, Function.OfArity.uncurry f⟩ ∈ Γ) (i j : ι) : Γ.Term ι :=
  ⟨2, Function.OfArity.uncurry f, ok, ![i, j]⟩

-- ## Example: minimize `|x| + |y|` where `x` and `y` are rational numbers

private def absRat : (Fin 1 → ℚ) → ℚ :=
  Function.OfArity.uncurry (@abs ℚ Rat.instLattice Rat.addGroup)

private def exampleAbs : Σ (n : ℕ), (Fin n → ℚ) → ℚ := ⟨1, absRat⟩

private def exampleFiniteValuedCSP : ValuedCSP ℚ ℚ := {exampleAbs}

private lemma abs_in : ⟨1, absRat⟩ ∈ exampleFiniteValuedCSP := rfl

private def exampleFiniteValuedInstance : exampleFiniteValuedCSP.Instance (Fin 2) :=
  {ValuedCSP.unaryTerm abs_in 0, ValuedCSP.unaryTerm abs_in 1}

example : exampleFiniteValuedInstance.IsOptimumSolution ![(0 : ℚ), (0 : ℚ)] := by
  intro s
  convert_to 0 ≤ exampleFiniteValuedInstance.evalSolution s
  · simp [exampleFiniteValuedInstance, ValuedCSP.Instance.evalSolution]
    exact Rat.zero_add 0
  rw [ValuedCSP.Instance.evalSolution, exampleFiniteValuedInstance]
  convert_to 0 ≤ |s 0| + |s 1|
  · simp [ValuedCSP.unaryTerm, ValuedCSP.Term.evalSolution, Function.OfArity.uncurry]
    rfl
  positivity

-- ## Example: B ≠ A ≠ C ≠ D ≠ B ≠ C with three available labels (i.e., 3-coloring of K₄⁻)

private def Bool_add_le_add_left (a b : Bool) :
    (a ≤ b) → ∀ (c : Bool), ((c || a) ≤ (c || b)) := by
  intro hab c
  cases a <;> cases b <;> cases c <;> trivial

-- For simpler implementation, we treat `false` as "satisfied" and `true` as "wrong" here.
private instance crispCodomainZero : Zero Bool where zero := false

private instance crispCodomainAdd : Add Bool where add a b := a || b

private instance crispCodomainAddCommMonoid : AddCommMonoid Bool where
  add_assoc := Bool.or_assoc
  zero_add (_ : Bool) := rfl
  add_zero := Bool.or_false
  add_comm := Bool.or_comm
  nsmul := nsmulRec

private instance crispCodomain : IsOrderedAddMonoid Bool where
  add_le_add_left := Bool_add_le_add_left

private def beqBool : (Fin 2 → Fin 3) → Bool :=
  Function.OfArity.uncurry (fun (a b : Fin 3) => a == b)

private def exampleEquality : Σ (n : ℕ), (Fin n → Fin 3) → Bool := ⟨2, beqBool⟩

private def exampleCrispCSP : ValuedCSP (Fin 3) Bool := {exampleEquality}

private lemma beqBool_mem : ⟨2, beqBool⟩ ∈ exampleCrispCSP := rfl

private def exampleTermAB : exampleCrispCSP.Term (Fin 4) :=
  ValuedCSP.binaryTerm beqBool_mem 0 1

private def exampleTermBC : exampleCrispCSP.Term (Fin 4) :=
  ValuedCSP.binaryTerm beqBool_mem 1 2

private def exampleTermCA : exampleCrispCSP.Term (Fin 4) :=
  ValuedCSP.binaryTerm beqBool_mem 2 0

private def exampleTermBD : exampleCrispCSP.Term (Fin 4) :=
  ValuedCSP.binaryTerm beqBool_mem 1 3

private def exampleTermCD : exampleCrispCSP.Term (Fin 4) :=
  ValuedCSP.binaryTerm beqBool_mem 2 3

private def exampleCrispCspInstance : exampleCrispCSP.Instance (Fin 4) :=
  Multiset.ofList [exampleTermAB, exampleTermBC, exampleTermCA, exampleTermBD, exampleTermCD]

/-
           0
          / \
         1---2
          \ /
           0
-/
private def exampleSolutionCorrect0 : Fin 4 → Fin 3 := ![0, 1, 2, 0]

example : exampleCrispCspInstance.IsOptimumSolution exampleSolutionCorrect0 :=
  fun _ => Bool.false_le _

/-
           1
          / \
         2---0
          \ /
           1
-/
private def exampleSolutionCorrect1 : Fin 4 → Fin 3 := ![1, 2, 0, 1]

example : exampleCrispCspInstance.IsOptimumSolution exampleSolutionCorrect1 :=
  fun _ => Bool.false_le _

/-
           2
          / \
         0---1
          \ /
           2
-/
private def exampleSolutionCorrect2 : Fin 4 → Fin 3 := ![2, 0, 1, 2]

example : exampleCrispCspInstance.IsOptimumSolution exampleSolutionCorrect2 :=
  fun _ => Bool.false_le _

/-
           0
          / \
         2---1
          \ /
           0
-/
private def exampleSolutionCorrect3 : Fin 4 → Fin 3 := ![0, 2, 1, 0]

example : exampleCrispCspInstance.IsOptimumSolution exampleSolutionCorrect3 :=
  fun _ => Bool.false_le _

/-
           1
          / \
         0---2
          \ /
           1
-/
private def exampleSolutionCorrect4 : Fin 4 → Fin 3 := ![1, 0, 2, 1]

example : exampleCrispCspInstance.IsOptimumSolution exampleSolutionCorrect4 :=
  fun _ => Bool.false_le _

/-
           2
          / \
         1---0
          \ /
           2
-/
private def exampleSolutionCorrect5 : Fin 4 → Fin 3 := ![2, 1, 0, 2]

example : exampleCrispCspInstance.IsOptimumSolution exampleSolutionCorrect5 :=
  fun _ => Bool.false_le _

/-
           0
          / \
         0---0
          \ /
           0
-/
private def exampleSolutionIncorrect0 : Fin 4 → Fin 3 := ![0, 0, 0, 0]

example : ¬exampleCrispCspInstance.IsOptimumSolution exampleSolutionIncorrect0 := by
  unfold ValuedCSP.Instance.IsOptimumSolution
  push_neg
  use exampleSolutionCorrect0
  rfl

/-
           1
          / \
         0---0
          \ /
           0
-/
private def exampleSolutionIncorrect1 : Fin 4 → Fin 3 := ![1, 0, 0, 0]

example : ¬exampleCrispCspInstance.IsOptimumSolution exampleSolutionIncorrect1 := by
  unfold ValuedCSP.Instance.IsOptimumSolution
  push_neg
  use exampleSolutionCorrect0
  rfl

/-
           0
          / \
         2---0
          \ /
           0
-/
private def exampleSolutionIncorrect2 : Fin 4 → Fin 3 := ![0, 2, 0, 0]

example : ¬exampleCrispCspInstance.IsOptimumSolution exampleSolutionIncorrect2 := by
  unfold ValuedCSP.Instance.IsOptimumSolution
  push_neg
  use exampleSolutionCorrect0
  rfl

/-
           0
          / \
         1---0
          \ /
           2
-/
private def exampleSolutionIncorrect3 : Fin 4 → Fin 3 := ![0, 1, 0, 2]

example : ¬exampleCrispCspInstance.IsOptimumSolution exampleSolutionIncorrect3 := by
  unfold ValuedCSP.Instance.IsOptimumSolution
  push_neg
  use exampleSolutionCorrect0
  rfl

/-
           2
          / \
         2---0
          \ /
           1
-/
private def exampleSolutionIncorrect4 : Fin 4 → Fin 3 := ![2, 2, 0, 1]

example : ¬exampleCrispCspInstance.IsOptimumSolution exampleSolutionIncorrect4 := by
  unfold ValuedCSP.Instance.IsOptimumSolution
  push_neg
  use exampleSolutionCorrect0
  rfl

/-
           0
          / \
         1---2
          \ /
           1
-/
private def exampleSolutionIncorrect5 : Fin 4 → Fin 3 := ![0, 1, 2, 1]

example : ¬exampleCrispCspInstance.IsOptimumSolution exampleSolutionIncorrect5 := by
  unfold ValuedCSP.Instance.IsOptimumSolution
  push_neg
  use exampleSolutionCorrect0
  rfl

/-
           1
          / \
         0---0
          \ /
           1
-/
private def exampleSolutionIncorrect6 : Fin 4 → Fin 3 := ![1, 0, 0, 1]

example : ¬exampleCrispCspInstance.IsOptimumSolution exampleSolutionIncorrect6 := by
  unfold ValuedCSP.Instance.IsOptimumSolution
  push_neg
  use exampleSolutionCorrect0
  rfl

/-
           2
          / \
         2---0
          \ /
           2
-/
private def exampleSolutionIncorrect7 : Fin 4 → Fin 3 := ![2, 2, 0, 2]

example : ¬exampleCrispCspInstance.IsOptimumSolution exampleSolutionIncorrect7 := by
  unfold ValuedCSP.Instance.IsOptimumSolution
  push_neg
  use exampleSolutionCorrect0
  rfl
