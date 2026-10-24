# pinnedPrimeWeightAmplitudeRequirement_nonvacuous_capacity_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8aa789e8-135d-c830-b165-fda305b62367",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightAmplitudeRequirement_nonvacuous_capacity_pos",
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
  "slug": "pinnedprimeweightamplituderequirement-nonvacuous-capacity-pos--b529de4bded19a8154c26d0d",
  "source": {
    "blob": "1c8a6c10724828c18cf3429d0dd6d25ce415f7dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 204,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b529de4bded19a8154c26d0d57a90a3b503bb37440a9421dfe48b07f3b224696",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aa789e8-135d-c830-b165-fda305b62367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightAmplitudeRequirement_nonvacuous_capacity_pos
    {X : ℕ} (hX : 0 < X) {C v E : ℝ}
    (hlt : E < |thetaError v| + 1)
    (hrequirement :
      pinnedPrimeWeightAmplitudeRequirement X C v E) :
    0 < C := by
  unfold pinnedPrimeWeightAmplitudeRequirement at hrequirement
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  have hleft :
      0 < (X : ℝ) * ((|thetaError v| + 1) - E) :=
    mul_pos hXr (sub_pos.mpr hlt)
  by_contra hnot
  have hC : C ≤ 0 := le_of_not_gt hnot
  have hright :
      C * (pinnedPrimeWeightedAmplitude X)^2 ≤ 0 :=
    mul_nonpos_of_nonpos_of_nonneg hC (sq_nonneg _)
  linarith

/-- Exact stagewise dichotomy: either the admitted error already covers the
target, or the pinned amplitude is nonzero and the finite required ratio lies
inside the declared budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c8a6c10724828c18cf3429d0dd6d25ce415f7dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
