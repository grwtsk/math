# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fixtures.Variant5e0f238e4447d7892fb56a30d767ecc98eed5919203f79e1d7cde83fb7d7146c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b84aae30c8533c1296f8035350786852c126398` · SHA-256 `54efab4dc50371e3955e305b2ef8aa3b94ef1f5b9c5d8dac1b0b9ef45ccd5b8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnboundedAdminState.Variantd1a4643afd761d127840df957e6ff890ecc6179dee3188fc848d129cce5908c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1a4643afd761d127840df957e6ff890ecc6179dee3188fc848d129cce5908c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.UnboundedAdminState.Variantd1a4643afd761d127840df957e6ff890ecc6179dee3188fc848d129cce5908c7","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"d1a4643afd761d127840df957e6ff890ecc6179dee3188fc848d129cce5908c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/MathematicalTooling/Reduction/Fixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Reduction.FiniteHeight

/-!
# Hostile controls for reduction transfer

Erasing a loop does not terminate it. Two separately terminating relations may
have a divergent union. Fiber termination alone gives no natural total budget
at an infinitely branching root. Equality of target encodings does not establish
uniqueness of source normal forms.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnboundedAdminState.Variantd1a4643afd761d127840df957e6ff890ecc6179dee3188fc848d129cce5908c7

namespace FormalResearch.MathematicalTooling.Reduction

universe u

/-- Forward self-loops contradict accessibility. -/
theorem not_strongly_normalizing_of_self_step {X : Type u} {R : X → X → Prop}
    {x : X} (self : R x x) : ¬StronglyNormalizing R x := by
  intro accessible
  revert self
  induction accessible with
  | intro x _ ih =>
    intro self
    exact ih x self self

/-- An erased target state is normal, while its source self-loop is divergent. -/
theorem erased_self_loop_control :
    StronglyNormalizing (fun _ _ : Unit => False) () ∧
      ¬StronglyNormalizing (fun _ _ : Unit => True) () := by
  constructor
  · exact Acc.intro () (fun _ impossible => False.elim impossible)
  · exact not_strongly_normalizing_of_self_step trivial

/-- One direction of a two-state toggle, considered alone. -/
def ToggleForward (x y : Bool) : Prop := x = false ∧ y = true

/-- The other direction, considered alone. -/
def ToggleBackward (x y : Bool) : Prop := x = true ∧ y = false

/-- Each toggle direction separately terminates. -/
theorem toggle_components_terminate (x : Bool) :
    StronglyNormalizing ToggleForward x ∧ StronglyNormalizing ToggleBackward x := by
  constructor
  · apply strongly_normalizing_of_rank (fun b => if b then 0 else 1)
    rintro _ _ ⟨rfl, rfl⟩
    decide
  · apply strongly_normalizing_of_rank (fun b => if b then 1 else 0)
    rintro _ _ ⟨rfl, rfl⟩
    decide

/-- Their union contains a two-step cycle and does not terminate. -/
theorem toggle_union_diverges :
    ¬StronglyNormalizing (fun x y => ToggleForward x y ∨ ToggleBackward x y) false := by
  intro accessible
  have cycle : Relation.TransGen
      (fun y x => ToggleForward x y ∨ ToggleBackward x y) false false :=
    .tail (.single (Or.inr ⟨rfl, rfl⟩)) (Or.inl ⟨rfl, rfl⟩)
  have obstruction : ¬Acc
      (Relation.TransGen (fun y x => ToggleForward x y ∨ ToggleBackward x y)) false :=
    not_strongly_normalizing_of_self_step
      (R := fun x y => Relation.TransGen
        (fun y x => ToggleForward x y ∨ ToggleBackward x y) y x) cycle
  exact obstruction accessible.transGen

/-- A root can choose arbitrarily long finite administrative chains. -/
inductive UnboundedAdminState where
  | root
  | chain (remaining : ℕ)
  deriving DecidableEq

/-- One computational target decrease selects the whole remaining administrative chain. -/
inductive UnboundedAdminStep : UnboundedAdminState → UnboundedAdminState → Prop
  | choose (remaining : ℕ) : UnboundedAdminStep .root (.chain remaining)
  | decrement (remaining : ℕ) : UnboundedAdminStep (.chain (remaining + 1)) (.chain remaining)

/-- The erased target sees only the initial computational transition. -/
def unboundedAdminEncoding : UnboundedAdminState → ℕ
  | .root => 1
  | .chain _ => 0

/-- The fiber rank decreases administratively but is reset to an arbitrary natural. -/
def unboundedAdminMeasure : UnboundedAdminState → ℕ
  | .root => 0
  | .chain remaining => remaining

/-- Administrative decrements, excluding the computational root step. -/
def UnboundedAdministrative (x y : UnboundedAdminState) : Prop :=
  ∃ n, x = .chain (n + 1) ∧ y = .chain n

/-- Fiberwise administrative termination is sufficient for qualitative SN. -/
theorem unbounded_admin_strongly_normalizing (x : UnboundedAdminState) :
    StronglyNormalizing UnboundedAdminStep x := by
  apply strongly_normalizing_of_fiber_simulation
    (Admin := UnboundedAdministrative) (T := fun x y : ℕ => y < x) unboundedAdminEncoding
  · intro x y step
    cases step with
    | choose n => exact Or.inl (.single (by change 0 < 1; decide))
    | decrement n => exact Or.inr ⟨rfl, ⟨n, rfl, rfl⟩⟩
  · apply fiber_well_founded_of_measure unboundedAdminEncoding unboundedAdminMeasure
    rintro _ _ _ ⟨n, rfl, rfl⟩
    exact Nat.lt_succ_self n
  · exact strongly_normalizing_of_rank id (fun step => step) _

/-- The finite administrative chain realizes its full length. -/
theorem unbounded_admin_chain_trace (n : ℕ) :
    Trace UnboundedAdminStep n (.chain n) (.chain 0) := by
  induction n with
  | zero => exact .zero _
  | succ n ih => exact .step (.decrement n) ih

/-- The accessible root has traces longer than every proposed finite bound. -/
theorem unbounded_admin_root_has_no_budget (bound : ℕ) :
    ∃ result, Trace UnboundedAdminStep (bound + 1) .root result :=
  ⟨.chain 0, .step (.choose bound) (unbounded_admin_chain_trace bound)⟩

/-- No natural rank decreases on this whole source relation. -/
theorem unbounded_admin_has_no_natural_rank :
    ¬∃ rank : UnboundedAdminState → ℕ,
      ∀ {x y}, UnboundedAdminStep x y → rank y < rank x := by
  rintro ⟨rank, decreases⟩
  obtain ⟨result, trace⟩ := unbounded_admin_root_has_no_budget (rank .root)
  have := trace_length_le_rank rank decreases trace
  omega

/-- Distinct source normal forms can have the same target encoding. -/
theorem target_encoding_does_not_reflect_normal_forms :
    ∃ (encoding : Bool → Unit) (left right : Bool), left ≠ right ∧
      encoding left = encoding right ∧
      (∀ result, ¬(fun _ _ : Bool => False) left result) ∧
      (∀ result, ¬(fun _ _ : Bool => False) right result) :=
  ⟨fun _ => (), false, true, Bool.false_ne_true, rfl, fun _ => id, fun _ => id⟩

end FormalResearch.MathematicalTooling.Reduction
```
