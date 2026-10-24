# diagonal_mass_sub_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e806a8b9-8451-dd8c-dddf-10231689103c",
  "kind": "theorem",
  "lexical_name": "diagonal_mass_sub_abs_le",
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
  "slug": "diagonal-mass-sub-abs-le--891afeb3e2f6b63b6dd18fa3",
  "source": {
    "blob": "858743a8b2e38b9af25fdcd9ada216e4d1189490",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 161,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloor/Variantab81279b349669dd7dcb53a45e95f90553a61638366bc5e5199f7a37bba28626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:891afeb3e2f6b63b6dd18fa362440ea9298cc02534298091b458abe3ca64aa2f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloor/Variantab81279b349669dd7dcb53a45e95f90553a61638366bc5e5199f7a37bba28626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e806a8b9-8451-dd8c-dddf-10231689103c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_mass_sub_abs_le (α : ℝ) (hα : 0 < α) :
    |sourceMass α - truncatedMass (diagonalCutoff α) α| ≤
      2 * kernelMass * derivativeBudget * α := by
  have h := reference_regularizedMass_sub_abs_le sourceEnergy
    (truncatedEnergy (diagonalCutoff α)) sourceEnergy_isPositive
    (truncatedEnergy_isPositive (diagonalCutoff α)) α hα
  calc
    _ ≤ ‖sourceEnergy - truncatedEnergy (diagonalCutoff α)‖ / (2 * α) := h
    _ ≤ (4 * kernelMass * derivativeBudget * α ^ 2) / (2 * α) :=
      div_le_div_of_nonneg_right (diagonal_energy_error_le α hα) (by positivity)
    _ = _ := by field_simp; ring


/-- Only the actual-versus-truncated directional error is proved to vanish. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloor/Variantab81279b349669dd7dcb53a45e95f90553a61638366bc5e5199f7a37bba28626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloor/Variantab81279b349669dd7dcb53a45e95f90553a61638366bc5e5199f7a37bba28626.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `858743a8b2e38b9af25fdcd9ada216e4d1189490` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
