# lipschitzWith_iff_dist_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d54df377-31a5-b389-2271-117d2b46bcb6",
  "kind": "theorem",
  "lexical_name": "lipschitzWith_iff_dist_le_mul",
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
  "slug": "lipschitzwith-iff-dist-le-mul--3d0e5d2aa997bc8b508323c6",
  "source": {
    "blob": "c3711dc8d9916e14eae7b57aad47b6ec9b6f7b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variant2dff0e8a41bc6cd4ec913f56042e69597b3c38c4e6041967fc32dde0c57c1621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d0e5d2aa997bc8b508323c66f2f9a6e74c5478c24148acd717b5b2f39bfba88",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lipschitz/Variant2dff0e8a41bc6cd4ec913f56042e69597b3c38c4e6041967fc32dde0c57c1621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d54df377-31a5-b389-2271-117d2b46bcb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lipschitzWith_iff_dist_le_mul [PseudoMetricSpace α] [PseudoMetricSpace β] {K : ℝ≥0}
    {f : α → β} : LipschitzWith K f ↔ ∀ x y, dist (f x) (f y) ≤ K * dist x y := by
  simp only [LipschitzWith, edist_nndist, dist_nndist]
  norm_cast
#align lipschitz_with_iff_dist_le_mul lipschitzWith_iff_dist_le_mul

alias ⟨LipschitzWith.dist_le_mul, LipschitzWith.of_dist_le_mul⟩ := lipschitzWith_iff_dist_le_mul
#align lipschitz_with.dist_le_mul LipschitzWith.dist_le_mul
#align lipschitz_with.of_dist_le_mul LipschitzWith.of_dist_le_mul

/-- A function `f` is Lipschitz continuous with constant `K ≥ 0` on `s` if for all `x, y` in `s`
we have `dist (f x) (f y) ≤ K * dist x y` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lipschitz/Variant2dff0e8a41bc6cd4ec913f56042e69597b3c38c4e6041967fc32dde0c57c1621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lipschitz/Variant2dff0e8a41bc6cd4ec913f56042e69597b3c38c4e6041967fc32dde0c57c1621.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3711dc8d9916e14eae7b57aad47b6ec9b6f7b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
