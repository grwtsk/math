# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TagReduction.Variant10a80e18798a74e9738670df883db8353cb822b0258ed4ff865ad240151dcc2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca26f5f79b7a52879290d0c13b3d5f932d827385` · SHA-256 `10a80e18798a74e9738670df883db8353cb822b0258ed4ff865ad240151dcc2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.AssemblyFixtures
import FormalResearch.MathematicalTooling.Reduction.FiniteHeight

/-!
# Directed normalization of the admitted unary Tag presentation

This module orients the actual profile-2 generator `Tag(Tag(x)) = x`, at every
unary subterm position. It uses the existing binder-free `Model.Term`, declared
signature, variable-validity predicate, conditional presentation and interpreter.
The relation includes all terms and all descendants, independently of the finite
catalogue and checker quotas. It is not a PTS and does not claim beta normalization.
`RepresentationDerivable` remains the symmetric equational judgment.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

open FormalResearch.MathematicalTooling.Reduction

/-- The supported directed rule, closed under every unary constructor position. -/
inductive TagStep (tag : ConstructorId) : Term → Term → Prop
  | cancel (argument : Term) : TagStep tag (.unary tag (.unary tag argument)) argument
  | under {argument result : Term} (constructor : ConstructorId) :
      TagStep tag argument result →
      TagStep tag (.unary constructor argument) (.unary constructor result)

/-- Root successors for the cancellation rule. -/
def tagRootNext (tag : ConstructorId) : Term → List Term
  | .unary first (.unary second argument) =>
      if first = tag ∧ second = tag then [argument] else []
  | _ => []

/-- Enumerate every root and argument redex, retaining duplicate successors. -/
def tagNext (tag : ConstructorId) : Term → List Term
  | .unary constructor argument =>
      tagRootNext tag (.unary constructor argument) ++
        (tagNext tag argument).map (.unary constructor)
  | _ => []

private theorem tag_root_next_sound (tag : ConstructorId) {term result : Term}
    (member : result ∈ tagRootNext tag term) :
    term = .unary tag (.unary tag result) := by
  cases term with
  | «variable» index => simp [tagRootNext] at member
  | nullary constructor => simp [tagRootNext] at member
  | unary first argument =>
    cases argument with
    | «variable» index => simp [tagRootNext] at member
    | nullary constructor => simp [tagRootNext] at member
    | unary second argument =>
      simp only [tagRootNext] at member
      split at member
      next same =>
        rcases same with ⟨rfl, rfl⟩
        have sameArgument : result = argument := by simpa using member
        subst result
        rfl
      next => simp at member

/-- Every enumerated successor is a permitted source step. -/
theorem tag_next_sound (tag : ConstructorId) {term result : Term}
    (member : result ∈ tagNext tag term) : TagStep tag term result := by
  induction term generalizing result with
  | «variable» index => simp [tagNext] at member
  | nullary constructor => simp [tagNext] at member
  | unary constructor argument ih =>
    rcases List.mem_append.mp member with root | nested
    · rw [tag_root_next_sound tag root]
      exact .cancel result
    · rcases List.mem_map.mp nested with ⟨next, nextMember, rfl⟩
      exact .under constructor (ih nextMember)

/-- The successor list includes every permitted source transition. -/
theorem tag_next_complete (tag : ConstructorId) {term result : Term}
    (step : TagStep tag term result) : result ∈ tagNext tag term := by
  induction step with
  | cancel argument => simp [tagNext, tagRootNext]
  | under constructor _ ih =>
    exact List.mem_append_right _ (List.mem_map.mpr ⟨_, ih, rfl⟩)

/-- Exact enumeration of the whole admitted source relation. -/
theorem tag_next_correct (tag : ConstructorId) (term result : Term) :
    result ∈ tagNext tag term ↔ TagStep tag term result :=
  ⟨tag_next_sound tag, tag_next_complete tag⟩

/-- Every directed transition preserves actual signature and variable validity. -/
theorem tag_step_preserves_typing {tag : ConstructorId} {term result : Term}
    (step : TagStep tag term result) (snapshot : Snapshot) (variableCount : ℕ)
    (valid : TermValid snapshot variableCount term) : TermValid snapshot variableCount result := by
  induction step with
  | cancel argument => exact valid.2.2.2.2
  | under constructor _ ih => exact ⟨valid.1, valid.2.1, ih valid.2.2⟩

/-- Each cancellation removes two constructor nodes, including at nested positions. -/
theorem tag_step_size {tag : ConstructorId} {term result : Term}
    (step : TagStep tag term result) : result.size + 2 = term.size := by
  induction step with
  | cancel argument => simp [Term.size]; omega
  | under constructor _ ih => simp only [Term.size]; omega

/-- The rank applies to all syntax, so no invalid descendant is erased by a subtype. -/
theorem tag_step_size_decreases {tag : ConstructorId} {term result : Term}
    (step : TagStep tag term result) : result.size < term.size := by
  have := tag_step_size step
  omega

/-- Encoding by actual node count simulates every source step by a positive natural decrease. -/
theorem tag_size_strict_simulation {tag : ConstructorId} {term result : Term}
    (step : TagStep tag term result) :
    Relation.TransGen (fun x y : ℕ => y < x) term.size result.size :=
  .single (tag_step_size_decreases step)

/-- The reusable strict transfer theorem is instantiated on the actual source reducer. -/
theorem tag_strongly_normalizing_by_simulation (tag : ConstructorId) (term : Term) :
    StronglyNormalizing (TagStep tag) term :=
  strongly_normalizing_of_strict_simulation Term.size tag_size_strict_simulation
    (strongly_normalizing_of_rank id (fun step => step) term.size)

/-- Actual executable finite reducer for the directed presentation. -/
def tagReducer (tag : ConstructorId) : FiniteReducer Term where
  step := TagStep tag
  next := tagNext tag
  next_correct := tag_next_correct tag
  wellFounded := ⟨tag_strongly_normalizing_by_simulation tag⟩

/-- Effective exact height, using the actual source size as a termination measure. -/
def tagHeight (tag : ConstructorId) (term : Term) : ℕ :=
  listMax ((tagNext tag term).attach.map fun result => tagHeight tag result.val + 1)
termination_by term.size
decreasing_by exact tag_step_size_decreases (tag_next_sound tag result.property)

/-- Executable and accessibility-recursive heights agree on every source term. -/
theorem tag_height_eq_mathematical_height (tag : ConstructorId) (term : Term) :
    tagHeight tag term = (tagReducer tag).height term := by
  induction term using (tagReducer tag).wellFounded.induction with
  | h term ih =>
    rw [tagHeight, FiniteReducer.height_eq]
    congr 1
    change (tagNext tag term).attach.map (fun result => tagHeight tag result.val + 1) =
      (tagNext tag term).map (fun result => (tagReducer tag).height result + 1)
    calc
      _ = (tagNext tag term).attach.map
          (fun result => (tagReducer tag).height result.val + 1) := by
        apply List.map_congr_left
        intro result _member
        rw [ih result.val (tag_next_sound tag result.property)]
      _ = _ := List.attach_map_val (l := tagNext tag term)
        (f := fun result => (tagReducer tag).height result + 1)

/-- Every supported term is strongly normalizing, independently of catalogue membership. -/
theorem tag_strongly_normalizing (tag : ConstructorId) (term : Term) :
    StronglyNormalizing (TagStep tag) term :=
  (tagReducer tag).wellFounded.apply term

/-- The exact height certifies a longest normalizing trace, not just a conservative bound. -/
theorem tag_longest_trace (tag : ConstructorId) (term : Term) :
    ∃ result, Trace (TagStep tag) ((tagReducer tag).height term) term result ∧
      ∀ next, ¬TagStep tag result next :=
  (tagReducer tag).longest_trace term

/-- A counted trace preserves validity at every intermediate term. -/
theorem tag_trace_preserves_typing {tag : ConstructorId} {n : ℕ} {term result : Term}
    (trace : Trace (TagStep tag) n term result) (snapshot : Snapshot) (variableCount : ℕ)
    (valid : TermValid snapshot variableCount term) : TermValid snapshot variableCount result := by
  induction trace with
  | zero => exact valid
  | step step _ ih => exact ih (tag_step_preserves_typing step snapshot variableCount valid)

/-- Conservation of the exact number of removed constructors along arbitrary traces. -/
theorem tag_trace_size {tag : ConstructorId} {n : ℕ} {term result : Term}
    (trace : Trace (TagStep tag) n term result) : result.size + 2 * n = term.size := by
  induction trace with
  | zero => simp
  | step step _ ih =>
    have := tag_step_size step
    omega

/-- The directed rule is justified by the exact already licensed source generator. -/
theorem tag_step_representation_derivable {term result : Term}
    (step : TagStep ⟨1⟩ term result) :
    RepresentationDerivable FullFixtures.declaration term result := by
  induction step with
  | cancel argument =>
    have equation : RepresentationDerivable FullFixtures.declaration
        (.unary ⟨1⟩ (.unary ⟨1⟩ (.variable 0))) (.variable 0) :=
      .generator (index := 0) (entry := AssemblyFixtures.generator) (by rfl)
    simpa [Term.substitute] using RepresentationDerivable.substitution [argument] equation
  | under constructor _ ih => exact .constructor constructor ih

/-- Every actual table output lies in the declared two-state carrier. -/
private theorem tag_table_output_bounded (constructor : ConstructorId) (inputs : List ℕ)
    {value : ℕ}
    (evaluated : tableOutput FullFixtures.interpreterTable constructor inputs = some value) :
    value < 2 := by
  unfold tableOutput at evaluated
  cases found : FullFixtures.interpreterTable.rows.find?
      (fun row => decide (tableRowKey row = (constructor, inputs))) with
  | none => simp [found] at evaluated
  | some row =>
    have member := List.mem_of_find?_eq_some found
    have outputs : ∀ row ∈ FullFixtures.interpreterTable.rows, row.output < 2 := by decide
    have sameOutput : row.output = value := by simpa [found] using evaluated
    rw [← sameOutput]
    exact outputs row member

/-- Assignments use actual carrier values; missing variableCount keep evaluation partial. -/
def TagAssignmentValid (assignment : List ℕ) : Prop := ∀ value ∈ assignment, value < 2

/-- Evaluation respects the carrier for all terms under a valid assignment. -/
theorem tag_evaluation_bounded (assignment : List ℕ) (valid : TagAssignmentValid assignment)
    (term : Term) {value : ℕ}
    (evaluated : evaluateTerm FullFixtures.interpreterTable assignment term = some value) :
    value < 2 := by
  cases term with
  | «variable» index =>
    exact valid value (List.mem_of_getElem? evaluated)
  | nullary constructor => exact tag_table_output_bounded constructor [] evaluated
  | unary constructor argument =>
    cases input : evaluateTerm FullFixtures.interpreterTable assignment argument with
    | none => simp [evaluateTerm, input] at evaluated
    | some inputValue =>
      exact tag_table_output_bounded constructor [inputValue]
        (by simpa [evaluateTerm, input] using evaluated)

/-- The actual two-state interpreter cancels twice for every valid assignment. -/
private theorem tag_cancel_evaluation (assignment : List ℕ)
    (valid : TagAssignmentValid assignment)
    (argument : Term) :
    evaluateTerm FullFixtures.interpreterTable assignment
        (.unary ⟨1⟩ (.unary ⟨1⟩ argument)) =
      evaluateTerm FullFixtures.interpreterTable assignment argument := by
  cases evaluated : evaluateTerm FullFixtures.interpreterTable assignment argument with
  | none => simp [evaluateTerm, evaluated]
  | some value =>
    have bounded := tag_evaluation_bounded assignment valid argument evaluated
    have alternatives : value = 0 ∨ value = 1 := by omega
    rcases alternatives with rfl | rfl <;>
      simp only [evaluateTerm, evaluated] <;> decide

/-- Every admitted reduction preserves the real interpreter's partial readout. -/
theorem tag_step_preserves_evaluation {term result : Term} (step : TagStep ⟨1⟩ term result)
    (assignment : List ℕ) (valid : TagAssignmentValid assignment) :
    evaluateTerm FullFixtures.interpreterTable assignment term =
      evaluateTerm FullFixtures.interpreterTable assignment result := by
  induction step with
  | cancel argument => exact tag_cancel_evaluation assignment valid argument
  | under constructor _ ih => simp only [evaluateTerm, ih]

/-- Invalid variable images cannot be hidden behind a denotation-preservation claim. -/
theorem tag_invalid_assignment_changes_readout :
    evaluateTerm FullFixtures.interpreterTable [2]
        (.unary ⟨1⟩ (.unary ⟨1⟩ (.variable 0))) = none ∧
      evaluateTerm FullFixtures.interpreterTable [2] (.variable 0) = some 2 := by decide


/-- Deterministically choose the first enumerated redex until none remain. -/
def tagNormalize (tag : ConstructorId) (term : Term) : Term :=
  match _successors : tagNext tag term with
  | [] => term
  | result :: _ => tagNormalize tag result
termination_by term.size
decreasing_by
  exact tag_step_size_decreases (tag_next_sound tag (by rw [_successors]; exact List.mem_cons_self))

/-- The executable normalizer returns a reachable normal term. -/
theorem tag_normalize_spec (tag : ConstructorId) (term : Term) :
    ∃ n, Trace (TagStep tag) n term (tagNormalize tag term) ∧
      ∀ result, ¬TagStep tag (tagNormalize tag term) result := by
  induction term using (tagReducer tag).wellFounded.induction with
  | h term ih =>
    rw [tagNormalize]
    split
    next successors =>
      refine ⟨0, Trace.zero term, ?_⟩
      intro result step
      have member := tag_next_complete tag step
      simp [successors] at member
    next result rest successors =>
      have step : TagStep tag term result :=
        tag_next_sound tag (by rw [successors]; exact List.mem_cons_self)
      rcases ih result step with ⟨n, trace, normal⟩
      exact ⟨n + 1, Trace.step step trace, normal⟩

/-- Normalization preserves the actual typing predicate through every admitted step. -/
theorem tag_normalize_preserves_typing (tag : ConstructorId) (term : Term)
    (snapshot : Snapshot) (variableCount : ℕ) (valid : TermValid snapshot variableCount term) :
    TermValid snapshot variableCount (tagNormalize tag term) := by
  obtain ⟨_, trace, _⟩ := tag_normalize_spec tag term
  exact tag_trace_preserves_typing trace snapshot variableCount valid

/-- The actual denotation is preserved under executable normalization. -/
theorem tag_normalize_preserves_evaluation (term : Term)
    (assignment : List ℕ) (valid : TagAssignmentValid assignment) :
    evaluateTerm FullFixtures.interpreterTable assignment (tagNormalize ⟨1⟩ term) =
      evaluateTerm FullFixtures.interpreterTable assignment term := by
  obtain ⟨_, trace, _⟩ := tag_normalize_spec ⟨1⟩ term
  have preserve : ∀ {n : ℕ} {term result : Term}, Trace (TagStep ⟨1⟩) n term result →
      evaluateTerm FullFixtures.interpreterTable assignment term =
        evaluateTerm FullFixtures.interpreterTable assignment result := by
    intro n term result trace
    induction trace with
    | zero => rfl
    | step step _ ih => exact (tag_step_preserves_evaluation step assignment valid).trans ih
  exact (preserve trace).symm

/-- The exact catalogue budget bounds all normalizing traces from listed terms. -/
theorem tag_catalogue_normalization_budget (starts : List Term) (term : Term)
    (member : term ∈ starts) :
    ∃ n, Trace (TagStep ⟨1⟩) n term (tagNormalize ⟨1⟩ term) ∧
      n ≤ (tagReducer ⟨1⟩).catalogueBudget starts := by
  obtain ⟨n, trace, _⟩ := tag_normalize_spec ⟨1⟩ term
  refine ⟨n, trace, ?_⟩
  have := (tagReducer ⟨1⟩).catalogue_trace_bound member trace
  omega

private theorem tag_refl_step_under {tag : ConstructorId} {first second : Term}
    (constructor : ConstructorId) (step : Relation.ReflGen (TagStep tag) first second) :
    Relation.ReflGen (TagStep tag) (.unary constructor first) (.unary constructor second) := by
  cases step with
  | refl => exact .refl
  | single step => exact .single (.under constructor step)

private theorem tag_root_diamond (tag : ConstructorId) {argument result : Term}
    (step : TagStep tag (.unary tag (.unary tag argument)) result) :
    ∃ joined, Relation.ReflGen (TagStep tag) argument joined ∧
      Relation.ReflGen (TagStep tag) result joined := by
  cases step with
  | cancel argument => exact ⟨argument, .refl, .refl⟩
  | under constructor nested =>
    cases nested with
    | cancel argument => exact ⟨_, .refl, .refl⟩
    | under constructor nested => exact ⟨_, .single nested, .single (.cancel _)⟩

/-- All distinct redex choices commute, with the overlapping triple-tag case checked explicitly. -/
theorem tag_local_diamond (tag : ConstructorId) (term : Term) {first second : Term}
    (left : TagStep tag term first) (right : TagStep tag term second) :
    ∃ joined, Relation.ReflGen (TagStep tag) first joined ∧
      Relation.ReflGen (TagStep tag) second joined := by
  induction term generalizing first second with
  | «variable» index => cases left
  | nullary constructor => cases left
  | unary constructor argument ih =>
    cases left with
    | cancel argument => exact tag_root_diamond tag right
    | under constructor left =>
      cases right with
      | cancel argument =>
        obtain ⟨joined, first, second⟩ := tag_root_diamond tag (.under tag left)
        exact ⟨joined, second, first⟩
      | under constructor right =>
        obtain ⟨joined, first, second⟩ := ih left right
        exact ⟨.unary constructor joined, tag_refl_step_under constructor first,
          tag_refl_step_under constructor second⟩

/-- The whole supported source reducer is confluent, independently of its encoding. -/
theorem tag_confluent (tag : ConstructorId) {term first second : Term}
    (left : Relation.ReflTransGen (TagStep tag) term first)
    (right : Relation.ReflTransGen (TagStep tag) term second) :
    Relation.Join (Relation.ReflTransGen (TagStep tag)) first second := by
  apply Relation.church_rosser _ left right
  intro term first second left right
  obtain ⟨joined, first, second⟩ := tag_local_diamond tag term left right
  refine ⟨joined, first, ?_⟩
  cases second with
  | refl => exact .refl
  | single step => exact .single step

private theorem tag_trace_to_reachability {tag : ConstructorId} {n : ℕ} {term result : Term}
    (trace : Trace (TagStep tag) n term result) :
    Relation.ReflTransGen (TagStep tag) term result := by
  induction trace with
  | zero => exact .refl
  | step step _ ih => exact .head step ih

/-- Source confluence establishes uniqueness only for reachable source normal forms. -/
theorem tag_reachable_normal_forms_unique (tag : ConstructorId) {term first second : Term}
    (left : Relation.ReflTransGen (TagStep tag) term first)
    (right : Relation.ReflTransGen (TagStep tag) term second)
    (firstNormal : ∀ result, ¬TagStep tag first result)
    (secondNormal : ∀ result, ¬TagStep tag second result) : first = second := by
  obtain ⟨joined, left, right⟩ := tag_confluent tag left right
  have firstEq : joined = first := (Relation.reflTransGen_iff_eq firstNormal).mp left
  have secondEq : joined = second := (Relation.reflTransGen_iff_eq secondNormal).mp right
  exact firstEq.symm.trans secondEq

/-- The executable normalizer has a canonical result across actual directed source steps. -/
theorem tag_normalize_step_invariant {tag : ConstructorId} {term result : Term}
    (step : TagStep tag term result) : tagNormalize tag term = tagNormalize tag result := by
  obtain ⟨_, left, firstNormal⟩ := tag_normalize_spec tag term
  obtain ⟨_, right, secondNormal⟩ := tag_normalize_spec tag result
  exact tag_reachable_normal_forms_unique tag (tag_trace_to_reachability left)
    (.head step (tag_trace_to_reachability right)) firstNormal secondNormal

/-- Simultaneous substitution transports the actual cancellation rule at every position. -/
theorem tag_step_substitution {tag : ConstructorId} {term result : Term}
    (step : TagStep tag term result) (substitution : List Term) :
    TagStep tag (term.substitute substitution) (result.substitute substitution) := by
  induction step with
  | cancel argument => exact .cancel _
  | under constructor _ ih => exact .under constructor ih

/-- A source unary term has one leaf, so substitution cannot duplicate its image.
The explicit image-size maximum still accounts for newly created redexes. -/
theorem tag_substitution_size_bound (term : Term) (substitution : List Term) :
    (term.substitute substitution).size ≤ term.size + listMax (substitution.map Term.size) := by
  induction term with
  | «variable» index =>
    cases image : substitution[index]? with
    | none => simp [Term.substitute, Term.size, image]
    | some result =>
      have bound : result.size ≤ listMax (substitution.map Term.size) := le_listMax
        (List.mem_map.mpr ⟨result, List.mem_of_getElem? image, rfl⟩)
      simpa [Term.substitute, Term.size, image] using Nat.le_trans bound
        (Nat.le_add_left _ 1)
  | nullary constructor => simp [Term.substitute, Term.size]
  | unary constructor argument ih => simp only [Term.substitute, Term.size]; omega

/-- Every exact target height is bounded by the number of contracted constructor pairs. -/
theorem tag_height_size_bound (tag : ConstructorId) (term : Term) :
    2 * tagHeight tag term ≤ term.size := by
  obtain ⟨result, trace, _⟩ := tag_longest_trace tag term
  have conservation := tag_trace_size trace
  rw [← tag_height_eq_mathematical_height] at conservation
  omega

/-- Substitution has a separate quantitative bound; it need not preserve reduction height. -/
theorem tag_substitution_height_bound (tag : ConstructorId) (term : Term)
    (substitution : List Term) :
    2 * tagHeight tag (term.substitute substitution) ≤
      term.size + listMax (substitution.map Term.size) :=
  (tag_height_size_bound tag (term.substitute substitution)).trans
    (tag_substitution_size_bound term substitution)

/-- A valid image can create a redex absent from the original term. -/
theorem tag_substitution_creates_redex :
    tagNext ⟨1⟩ (.unary ⟨1⟩ (.variable 0)) = [] ∧
      tagNext ⟨1⟩
          ((Term.unary ⟨1⟩ (.variable 0)).substitute [.unary ⟨1⟩ (.nullary ⟨0⟩)]) =
        [.nullary ⟨0⟩] := by decide

/-- The existing three-node checked source really reduces to its checked atom. -/
theorem checked_tag_tag_reduces :
    TagStep ⟨1⟩ (termOfSyntax FullFixtures.tree) (termOfSyntax FullFixtures.atomTree) := by
  change TagStep ⟨1⟩ (.unary ⟨1⟩ (.unary ⟨1⟩ (.nullary ⟨0⟩))) (.nullary ⟨0⟩)
  exact .cancel _

/-- The computation returns the existing checked atom from the existing checked tree. -/
theorem checked_tag_tag_normalizes :
    tagNormalize ⟨1⟩ (termOfSyntax FullFixtures.tree) = termOfSyntax FullFixtures.atomTree := by
  change tagNormalize ⟨1⟩ (.unary ⟨1⟩ (.unary ⟨1⟩ (.nullary ⟨0⟩))) = .nullary ⟨0⟩
  rw [tagNormalize]
  change tagNormalize ⟨1⟩ (.nullary ⟨0⟩) = .nullary ⟨0⟩
  rw [tagNormalize]
  rfl

/-- The effective exact height of the actual checked double-tag source is one. -/
theorem checked_tag_tag_height : tagHeight ⟨1⟩ (termOfSyntax FullFixtures.tree) = 1 := by
  have atomHeight : tagHeight ⟨1⟩ (.nullary ⟨0⟩) = 0 := by
    rw [tagHeight]
    rfl
  change tagHeight ⟨1⟩ (.unary ⟨1⟩ (.unary ⟨1⟩ (.nullary ⟨0⟩))) = 1
  rw [tagHeight]
  change listMax [tagHeight ⟨1⟩ (.nullary ⟨0⟩) + 1] = 1
  rw [atomHeight]
  rfl

/-- Both real checked source endpoints are legal in the original declaration. -/
theorem checked_reduction_endpoints_valid :
    TermValid FullFixtures.snapshot FullFixtures.declaration.variableCount
        (termOfSyntax FullFixtures.tree) ∧
      TermValid FullFixtures.snapshot FullFixtures.declaration.variableCount
        (termOfSyntax FullFixtures.atomTree) := by decide

/-- A legal supported term outside the initial catalogue also normalizes. -/
theorem outside_catalogue_normalizes :
    let term := Term.unary ⟨1⟩
      (Term.unary ⟨1⟩ (Term.unary ⟨1⟩ (Term.unary ⟨1⟩ (.nullary ⟨0⟩))))
    TermValid FullFixtures.snapshot 1 term ∧
      term ∉ catalogTerms FullFixtures.declaration ∧
      tagNormalize ⟨1⟩ term = .nullary ⟨0⟩ := by
  constructor
  · decide
  constructor
  · decide
  rw [tagNormalize]
  change tagNormalize ⟨1⟩ (.unary ⟨1⟩ (.unary ⟨1⟩ (.nullary ⟨0⟩))) = .nullary ⟨0⟩
  exact checked_tag_tag_normalizes

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
```
