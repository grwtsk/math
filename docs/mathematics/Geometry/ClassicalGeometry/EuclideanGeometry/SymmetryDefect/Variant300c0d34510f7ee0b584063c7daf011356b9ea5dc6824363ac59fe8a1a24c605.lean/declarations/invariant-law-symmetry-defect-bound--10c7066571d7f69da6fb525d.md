# invariant_law_symmetry_defect_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02591df1-88b0-917d-0b9a-fc1d813b7193",
  "kind": "theorem",
  "lexical_name": "invariant_law_symmetry_defect_bound",
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
  "slug": "invariant-law-symmetry-defect-bound--10c7066571d7f69da6fb525d",
  "source": {
    "blob": "b42151f89d0b2889b7caf2264868aa64c36a521f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 177,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variant300c0d34510f7ee0b584063c7daf011356b9ea5dc6824363ac59fe8a1a24c605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10c7066571d7f69da6fb525d437794d007e5cb4e43ce5893ee53e8cc9bf37c12",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variant300c0d34510f7ee0b584063c7daf011356b9ea5dc6824363ac59fe8a1a24c605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02591df1-88b0-917d-0b9a-fc1d813b7193`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invariant_law_symmetry_defect_bound
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    {equivariance :
      EquivariantScheduleKernelCertificate
        model reference}
    (implemented :
      ApproximateEquivariantScheduleDynamics
        equivariance)
    (automorphism : model.Automorphism) :
    (carrier.wasserstein
        (equivariance.lawAction automorphism
          implemented.implementedInvariant)
        implemented.implementedInvariant : ℝ) ≤
      (implemented.equivarianceDefect : ℝ) /
        (1 - (reference.contraction : ℝ)) := by
  have recurrenceReal :
      (carrier.wasserstein
        (equivariance.lawAction automorphism
          implemented.implementedInvariant)
        implemented.implementedInvariant : ℝ) ≤
      (implemented.equivarianceDefect : ℝ) +
        (reference.contraction : ℝ) *
          (carrier.wasserstein
            (equivariance.lawAction automorphism
              implemented.implementedInvariant)
            implemented.implementedInvariant : ℝ) := by
    exact_mod_cast
      implemented.symmetry_displacement_recurrence
        automorphism
  have contractionReal :
      (reference.contraction : ℝ) < 1 := by
    exact_mod_cast reference.contraction_lt_one
  have denominatorPositive :
      0 < 1 - (reference.contraction : ℝ) :=
    sub_pos.mpr contractionReal
  apply (le_div_iff₀ denominatorPositive).2
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variant300c0d34510f7ee0b584063c7daf011356b9ea5dc6824363ac59fe8a1a24c605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variant300c0d34510f7ee0b584063c7daf011356b9ea5dc6824363ac59fe8a1a24c605.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b42151f89d0b2889b7caf2264868aa64c36a521f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
