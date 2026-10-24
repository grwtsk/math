# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant7869bb0dfcb2c67da42b8760cd6563438288b0aabfd4bd9d70bf02c303eb3d7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d694502bcce9fa50a06b2c20f28f73be48750d3` · SHA-256 `f1202514f1cb8325dd821d83b8fb0ef5b35fc1e67105c1f1c1b84cb3945d37b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RecoveryObstruction.Variant6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RecoveryObstruction.Variant6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082","mathematical_subject":"Foundations.Unclassified","original_sha256":"6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Quot

/-!
# Exact target recovery from observations

Recoverability asserts a total decoder for a specified target. It does not assert
that the decoder is computable or that a recovered proposition is true. A
collision carrying different target values obstructs every such decoder.

Equality of target values on observation fibers is necessary in general. Its
converse is used here only for the actual quotient projection: for an arbitrary
map it can fail when the target is empty and the observation codomain has unused
values. For example, the unique maps from `Empty` to `Unit` and `Empty` have
vacuously constant fibers, but there is no decoder from `Unit` to `Empty`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RecoveryObstruction.Variant6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

universe u v w

variable {α : Type u} {Q : Type v} {β : Type w}

/-- Exact recovery of a specified target by a total observation decoder. -/
def RecoverableFrom (q : α → Q) (F : α → β) : Prop :=
  ∃ decode : Q → β, ∀ x, decode (q x) = F x

/-- A pair of indistinguishable inputs with different exact target values.
The witnesses are data, so this obstruction deliberately lives in `Type`. -/
@[nolint structureInType]
structure RecoveryObstruction (q : α → Q) (F : α → β) : Type u where
  /-- First input witnessing information loss. -/
  left : α
  /-- Second input witnessing information loss. -/
  right : α
  /-- The observation cannot distinguish the two inputs. -/
  sameObservation : q left = q right
  /-- The requested target distinguishes the same inputs. -/
  differentTarget : F left ≠ F right

/-- A recovered target is equal on every observation fiber. -/
theorem RecoverableFrom.eq_of_eq {q : α → Q} {F : α → β}
    (recoverable : RecoverableFrom q F) {x y : α} (same : q x = q y) :
    F x = F y := by
  obtain ⟨decode, exact⟩ := recoverable
  exact (exact x).symm.trans ((congrArg decode same).trans (exact y))

/-- A collision with distinct target values rules out every total decoder. -/
theorem not_recoverableFrom_of_collision (q : α → Q) (F : α → β) {x y : α}
    (hq : q x = q y) (hF : F x ≠ F y) : ¬RecoverableFrom q F :=
  fun recoverable => hF (recoverable.eq_of_eq hq)

/-- An explicit collision obstruction supplies the corresponding impossibility theorem. -/
theorem RecoveryObstruction.notRecoverable {q : α → Q} {F : α → β}
    (obstruction : RecoveryObstruction q F) : ¬RecoverableFrom q F :=
  not_recoverableFrom_of_collision q F obstruction.sameObservation obstruction.differentTarget

/-- The identity observation retains every specified target. -/
theorem recoverableFrom_id (F : α → β) : RecoverableFrom (id : α → α) F :=
  ⟨F, fun _ => rfl⟩

/-- An observation recovers its own value with the identity decoder. -/
theorem recoverableFrom_self (q : α → Q) : RecoverableFrom q q :=
  ⟨id, fun _ => rfl⟩

/-- Pointwise equality transports the exact target without changing its observation. -/
theorem RecoverableFrom.congr_target {q : α → Q} {F G : α → β}
    (recoverable : RecoverableFrom q F) (same : ∀ x, F x = G x) :
    RecoverableFrom q G := by
  obtain ⟨decode, exact⟩ := recoverable
  exact ⟨decode, fun x => (exact x).trans (same x)⟩

/-- Applying a function to a recovered target preserves recovery. -/
theorem RecoverableFrom.postcompose {γ : Type*} {q : α → Q} {F : α → β}
    (recoverable : RecoverableFrom q F) (g : β → γ) :
    RecoverableFrom q (g ∘ F) := by
  obtain ⟨decode, exact⟩ := recoverable
  exact ⟨g ∘ decode, fun x => congrArg g (exact x)⟩

/-- A finer observation recovers every target recovered after its declared factor map. -/
theorem RecoverableFrom.of_factorization {R : Type*} {q : α → Q} {F : α → β}
    (recoverable : RecoverableFrom q F) (refined : α → R) (factor : R → Q)
    (factorization : ∀ x, factor (refined x) = q x) : RecoverableFrom refined F := by
  obtain ⟨decode, exact⟩ := recoverable
  exact ⟨decode ∘ factor, fun x => (congrArg decode (factorization x)).trans (exact x)⟩

/-- A target descends through the actual quotient exactly when it respects its relation.
The decoder is `Quotient.lift`; no default target value or representative choice is needed. -/
theorem recoverableFrom_quotient_iff (s : Setoid α) (F : α → β) :
    RecoverableFrom (fun x => Quotient.mk s x) F ↔
      ∀ x y, s.r x y → F x = F y := by
  constructor
  · intro recoverable x y related
    exact recoverable.eq_of_eq (Quotient.sound related)
  · intro respects
    exact ⟨Quotient.lift F respects, fun _ => rfl⟩

/-- One related pair with different target values prevents recovery from the quotient. -/
theorem quotient_target_not_recoverable (s : Setoid α) (F : α → β) {x y : α}
    (hxy : s.r x y) (hF : F x ≠ F y) :
    ¬RecoverableFrom (fun x => Quotient.mk s x) F :=
  not_recoverableFrom_of_collision _ F (Quotient.sound hxy) hF

/-- Sufficiency is relative to the explicitly indexed family of requested targets. -/
def SufficientFor {ι : Type*} (q : α → Q) (targets : ι → α → β) : Prop :=
  ∀ i, RecoverableFrom q (targets i)

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
