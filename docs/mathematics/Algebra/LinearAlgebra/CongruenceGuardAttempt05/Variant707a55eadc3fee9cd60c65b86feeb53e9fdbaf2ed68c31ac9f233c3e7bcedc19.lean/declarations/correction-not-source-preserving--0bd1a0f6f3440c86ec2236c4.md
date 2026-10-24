# correction_not_source_preserving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05328da0-69b8-8a6f-0b6c-6fddf161f71a",
  "kind": "theorem",
  "lexical_name": "correction_not_source_preserving",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "correction-not-source-preserving--0bd1a0f6f3440c86ec2236c4",
  "source": {
    "blob": "29e23eb7d5c71e720b5f7a6cd7793858057a15e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 250,
    "path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bd1a0f6f3440c86ec2236c4b272df5766bafdaf63093cee6f7c31e57e7a23be",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05328da0-69b8-8a6f-0b6c-6fddf161f71a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correction_not_source_preserving :
    ¬ Nonempty (SourcePreserving indefinite
      (indefinite + (2 : ℂ) • (1 : Matrix (Fin 2) (Fin 2) ℂ))) := by
  rintro ⟨p⟩
  exact correction_changes_sign.2 (p.psd_iff.mp correction_changes_sign.1)

end Fixtures
end ContinuousResearch.CongruenceGuard


#check ContinuousResearch.CongruenceGuard.quadratic
#print axioms ContinuousResearch.CongruenceGuard.quadratic
#print ContinuousResearch.CongruenceGuard.quadratic

#check ContinuousResearch.CongruenceGuard.HasNegativeDirection
#print axioms ContinuousResearch.CongruenceGuard.HasNegativeDirection
#print ContinuousResearch.CongruenceGuard.HasNegativeDirection

#check ContinuousResearch.CongruenceGuard.pullback
#print axioms ContinuousResearch.CongruenceGuard.pullback
#print ContinuousResearch.CongruenceGuard.pullback

#check ContinuousResearch.CongruenceGuard.quadratic_pullback
#print axioms ContinuousResearch.CongruenceGuard.quadratic_pullback
#print ContinuousResearch.CongruenceGuard.quadratic_pullback

#check ContinuousResearch.CongruenceGuard.pullback_isHermitian
#print axioms ContinuousResearch.CongruenceGuard.pullback_isHermitian
#print ContinuousResearch.CongruenceGuard.pullback_isHermitian

#check ContinuousResearch.CongruenceGuard.invertible_psd_iff
#print axioms ContinuousResearch.CongruenceGuard.invertible_psd_iff
#print ContinuousResearch.CongruenceGuard.invertible_psd_iff

#check ContinuousResearch.CongruenceGuard.unitary_psd_iff
#print axioms ContinuousResearch.CongruenceGuard.unitary_psd_iff
#print ContinuousResearch.CongruenceGuard.unitary_psd_iff

#check ContinuousResearch.CongruenceGuard.inverse_negative_witness
#print axioms ContinuousResearch.CongruenceGuard.inverse_negative_witness
#print ContinuousResearch.CongruenceGuard.inverse_negative_witness

#check ContinuousResearch.CongruenceGuard.invertible_negative_iff
#print axioms ContinuousResearch.CongruenceGuard.invertible_negative_iff
#print ContinuousResearch.CongruenceGuard.invertible_negative_iff

#check ContinuousResearch.CongruenceGuard.negative_not_psd
#print axioms ContinuousResearch.CongruenceGuard.negative_not_psd
#print ContinuousResearch.CongruenceGuard.negative_not_psd

#check ContinuousResearch.CongruenceGuard.hermitian_negative_iff_not_psd
#print axioms ContinuousResearch.CongruenceGuard.hermitian_negative_iff_not_psd
#print ContinuousResearch.CongruenceGuard.hermitian_negative_iff_not_psd

#check ContinuousResearch.CongruenceGuard.pullback_one
#print axioms ContinuousResearch.CongruenceGuard.pullback_one
#print ContinuousResearch.CongruenceGuard.pullback_one

#check ContinuousResearch.CongruenceGuard.pullback_mul
#print axioms ContinuousResearch.CongruenceGuard.pullback_mul
#print ContinuousResearch.CongruenceGuard.pullback_mul

#check ContinuousResearch.CongruenceGuard.groupTransport
#print axioms ContinuousResearch.CongruenceGuard.groupTransport
#print ContinuousResearch.CongruenceGuard.groupTransport

#check ContinuousResearch.CongruenceGuard.groupTransport_one
#print axioms ContinuousResearch.CongruenceGuard.groupTransport_one
#print ContinuousResearch.CongruenceGuard.groupTransport_one

#check ContinuousResearch.CongruenceGuard.groupTransport_mul
#print axioms ContinuousResearch.CongruenceGuard.groupTransport_mul
#print ContinuousResearch.CongruenceGuard.groupTransport_mul

#check ContinuousResearch.CongruenceGuard.congruenceAction
#print axioms ContinuousResearch.CongruenceGuard.congruenceAction
#print ContinuousResearch.CongruenceGuard.congruenceAction

#check ContinuousResearch.CongruenceGuard.group_negative_iff
#print axioms ContinuousResearch.CongruenceGuard.group_negative_iff
#print ContinuousResearch.CongruenceGuard.group_negative_iff

#check ContinuousResearch.CongruenceGuard.group_orbit_not_psd
#print axioms ContinuousResearch.CongruenceGuard.group_orbit_not_psd
#print ContinuousResearch.CongruenceGuard.group_orbit_not_psd

#check ContinuousResearch.CongruenceGuard.SourcePreserving
#print axioms ContinuousResearch.CongruenceGuard.SourcePreserving
#print ContinuousResearch.CongruenceGuard.SourcePreserving

#check ContinuousResearch.CongruenceGuard.CorrectedSource
#print axioms ContinuousResearch.CongruenceGuard.CorrectedSource
#print ContinuousResearch.CongruenceGuard.CorrectedSource

#check ContinuousResearch.CongruenceGuard.LossySource
#print axioms ContinuousResearch.CongruenceGuard.LossySource
#print ContinuousResearch.CongruenceGuard.LossySource

#check ContinuousResearch.CongruenceGuard.LossySource.coordinates_not_isUnit
#print axioms ContinuousResearch.CongruenceGuard.LossySource.coordinates_not_isUnit
#print ContinuousResearch.CongruenceGuard.LossySource.coordinates_not_isUnit

#check ContinuousResearch.CongruenceGuard.SourcePreserving.psd_iff
#print axioms ContinuousResearch.CongruenceGuard.SourcePreserving.psd_iff
#print ContinuousResearch.CongruenceGuard.SourcePreserving.psd_iff

#check ContinuousResearch.CongruenceGuard.SourcePreserving.negative_iff
#print axioms ContinuousResearch.CongruenceGuard.SourcePreserving.negative_iff
#print ContinuousResearch.CongruenceGuard.SourcePreserving.negative_iff

#check ContinuousResearch.CongruenceGuard.CorrectedSource.quadratic_defect
#print axioms ContinuousResearch.CongruenceGuard.CorrectedSource.quadratic_defect
#print ContinuousResearch.CongruenceGuard.CorrectedSource.quadratic_defect

#check ContinuousResearch.CongruenceGuard.indefinite
#print axioms ContinuousResearch.CongruenceGuard.indefinite
#print ContinuousResearch.CongruenceGuard.indefinite

#check ContinuousResearch.CongruenceGuard.swap
#print axioms ContinuousResearch.CongruenceGuard.swap
#print ContinuousResearch.CongruenceGuard.swap

#check ContinuousResearch.CongruenceGuard.imaginaryShear
#print axioms ContinuousResearch.CongruenceGuard.imaginaryShear
#print ContinuousResearch.CongruenceGuard.imaginaryShear

#check ContinuousResearch.CongruenceGuard.projection
#print axioms ContinuousResearch.CongruenceGuard.projection
#print ContinuousResearch.CongruenceGuard.projection

#check ContinuousResearch.CongruenceGuard.indefinite_hermitian
#print axioms ContinuousResearch.CongruenceGuard.indefinite_hermitian
#print ContinuousResearch.CongruenceGuard.indefinite_hermitian

#check ContinuousResearch.CongruenceGuard.indefinite_actual_values
#print axioms ContinuousResearch.CongruenceGuard.indefinite_actual_values
#print ContinuousResearch.CongruenceGuard.indefinite_actual_values

#check ContinuousResearch.CongruenceGuard.indefinite_negative
#print axioms ContinuousResearch.CongruenceGuard.indefinite_negative
#print ContinuousResearch.CongruenceGuard.indefinite_negative

#check ContinuousResearch.CongruenceGuard.swap_still_indefinite
#print axioms ContinuousResearch.CongruenceGuard.swap_still_indefinite
#print ContinuousResearch.CongruenceGuard.swap_still_indefinite

#check ContinuousResearch.CongruenceGuard.swap_actual_values
#print axioms ContinuousResearch.CongruenceGuard.swap_actual_values
#print ContinuousResearch.CongruenceGuard.swap_actual_values

#check ContinuousResearch.CongruenceGuard.shear_actual_negative_value
#print axioms ContinuousResearch.CongruenceGuard.shear_actual_negative_value
#print ContinuousResearch.CongruenceGuard.shear_actual_negative_value

#check ContinuousResearch.CongruenceGuard.shear_still_indefinite
#print axioms ContinuousResearch.CongruenceGuard.shear_still_indefinite
#print ContinuousResearch.CongruenceGuard.shear_still_indefinite

#check ContinuousResearch.CongruenceGuard.projected_indefinite
#print axioms ContinuousResearch.CongruenceGuard.projected_indefinite
#print ContinuousResearch.CongruenceGuard.projected_indefinite

#check ContinuousResearch.CongruenceGuard.projection_psd
#print axioms ContinuousResearch.CongruenceGuard.projection_psd
#print ContinuousResearch.CongruenceGuard.projection_psd

#check ContinuousResearch.CongruenceGuard.lossy_projection
#print axioms ContinuousResearch.CongruenceGuard.lossy_projection
#print ContinuousResearch.CongruenceGuard.lossy_projection

#check ContinuousResearch.CongruenceGuard.singular_psd_does_not_reflect
#print axioms ContinuousResearch.CongruenceGuard.singular_psd_does_not_reflect
#print ContinuousResearch.CongruenceGuard.singular_psd_does_not_reflect

#check ContinuousResearch.CongruenceGuard.correction_changes_sign
#print axioms ContinuousResearch.CongruenceGuard.correction_changes_sign
#print ContinuousResearch.CongruenceGuard.correction_changes_sign

#check ContinuousResearch.CongruenceGuard.signCorrected
#print axioms ContinuousResearch.CongruenceGuard.signCorrected
#print ContinuousResearch.CongruenceGuard.signCorrected

#check ContinuousResearch.CongruenceGuard.lossy_not_source_preserving
#print axioms ContinuousResearch.CongruenceGuard.lossy_not_source_preserving
#print ContinuousResearch.CongruenceGuard.lossy_not_source_preserving

#check ContinuousResearch.CongruenceGuard.correction_not_source_preserving
#print axioms ContinuousResearch.CongruenceGuard.correction_not_source_preserving
#print ContinuousResearch.CongruenceGuard.correction_not_source_preserving

#check ContinuousResearch.CongruenceGuard.SourcePreserving.mk
#print axioms ContinuousResearch.CongruenceGuard.SourcePreserving.mk
#print ContinuousResearch.CongruenceGuard.SourcePreserving.mk

#check ContinuousResearch.CongruenceGuard.SourcePreserving.coordinates
#print axioms ContinuousResearch.CongruenceGuard.SourcePreserving.coordinates
#print ContinuousResearch.CongruenceGuard.SourcePreserving.coordinates

#check ContinuousResearch.CongruenceGuard.SourcePreserving.identify
#print axioms ContinuousResearch.CongruenceGuard.SourcePreserving.identify
#print ContinuousResearch.CongruenceGuard.SourcePreserving.identify

#check ContinuousResearch.CongruenceGuard.CorrectedSource.mk
#print axioms ContinuousResearch.CongruenceGuard.CorrectedSource.mk
#print ContinuousResearch.CongruenceGuard.CorrectedSource.mk

#check ContinuousResearch.CongruenceGuard.CorrectedSource.coordinates
#print axioms ContinuousResearch.CongruenceGuard.CorrectedSource.coordinates
#print ContinuousResearch.CongruenceGuard.CorrectedSource.coordinates

#check ContinuousResearch.CongruenceGuard.CorrectedSource.correction
#print axioms ContinuousResearch.CongruenceGuard.CorrectedSource.correction
#print ContinuousResearch.CongruenceGuard.CorrectedSource.correction

#check ContinuousResearch.CongruenceGuard.CorrectedSource.identify
#print axioms ContinuousResearch.CongruenceGuard.CorrectedSource.identify
#print ContinuousResearch.CongruenceGuard.CorrectedSource.identify

#check ContinuousResearch.CongruenceGuard.LossySource.mk
#print axioms ContinuousResearch.CongruenceGuard.LossySource.mk
#print ContinuousResearch.CongruenceGuard.LossySource.mk

#check ContinuousResearch.CongruenceGuard.LossySource.coordinates
#print axioms ContinuousResearch.CongruenceGuard.LossySource.coordinates
#print ContinuousResearch.CongruenceGuard.LossySource.coordinates

#check ContinuousResearch.CongruenceGuard.LossySource.lost
#print axioms ContinuousResearch.CongruenceGuard.LossySource.lost
#print ContinuousResearch.CongruenceGuard.LossySource.lost

#check ContinuousResearch.CongruenceGuard.LossySource.identify
#print axioms ContinuousResearch.CongruenceGuard.LossySource.identify
#print ContinuousResearch.CongruenceGuard.LossySource.identify
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29e23eb7d5c71e720b5f7a6cd7793858057a15e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
