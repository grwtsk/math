# delta_at_eligibleIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccb8a4da-d524-2ccc-37a4-fb0f8df56d81",
  "kind": "theorem",
  "lexical_name": "delta_at_eligibleIndex",
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
  "slug": "delta-at-eligibleindex--fb7f1b5af8a35cda36f0787b",
  "source": {
    "blob": "61489a745c2332359d3bb8a035b37b5ea11b6932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 307,
    "path": "GRWTSK/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb7f1b5af8a35cda36f0787b563df1c106e1a3506b9575e34cf32629177589e0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccb8a4da-d524-2ccc-37a4-fb0f8df56d81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem delta_at_eligibleIndex
    (model : AnalyticBridgeHypotheses) (K : ℕ) (hK : 0 < K) :
    model.delta (model.cutoffAtEligibleIndex K) =
      countDifference model.counts (model.cutoffAtEligibleIndex K) /
        (2 * (K : ℝ)) := by
  have hcount := model.cutoff_indexes_eligibleCount K hK
  have hpos :
      0 < eligibleCount model.counts (model.cutoffAtEligibleIndex K) := by
    rw [hcount]
    exact hK
  rw [model.delta_eq_normalizedCountDifference _ hpos, hcount]

/-! ## Correctly normalized Frobenius observable -/

/-- Entrywise Frobenius pairing on the displayed two-by-two coordinates.
It is equal to `Tr(Aᵀ B)`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61489a745c2332359d3bb8a035b37b5ea11b6932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
