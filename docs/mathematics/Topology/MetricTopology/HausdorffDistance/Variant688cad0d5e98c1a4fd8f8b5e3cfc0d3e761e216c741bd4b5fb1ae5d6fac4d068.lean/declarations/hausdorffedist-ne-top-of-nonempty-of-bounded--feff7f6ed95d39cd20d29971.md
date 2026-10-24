# hausdorffEDist_ne_top_of_nonempty_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23678dcb-42ee-6f56-d689-caad4cb06e8c",
  "kind": "theorem",
  "lexical_name": "hausdorffEDist_ne_top_of_nonempty_of_bounded",
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
  "slug": "hausdorffedist-ne-top-of-nonempty-of-bounded--feff7f6ed95d39cd20d29971",
  "source": {
    "blob": "c99a774e0aebc1dad665884b9f15d55574e5804c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 695,
    "line": 674,
    "path": "GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant688cad0d5e98c1a4fd8f8b5e3cfc0d3e761e216c741bd4b5fb1ae5d6fac4d068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feff7f6ed95d39cd20d2997144906a11924c0658ee494b7ac472ba1228e708b2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HausdorffDistance/Variant688cad0d5e98c1a4fd8f8b5e3cfc0d3e761e216c741bd4b5fb1ae5d6fac4d068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23678dcb-42ee-6f56-d689-caad4cb06e8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 674–695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffEDist_ne_top_of_nonempty_of_bounded (hs : s.Nonempty) (ht : t.Nonempty)
    (bs : IsBounded s) (bt : IsBounded t) : hausdorffEDist s t ≠ ⊤ := by
  rcases hs with ⟨cs, hcs⟩
  rcases ht with ⟨ct, hct⟩
  rcases bs.subset_closedBall ct with ⟨rs, hrs⟩
  rcases bt.subset_closedBall cs with ⟨rt, hrt⟩
  have : hausdorffEDist s t ≤ ENNReal.ofReal (max rs rt) := by
    apply hausdorffEDist_le_of_mem_edist
    · intro x xs
      exists ct, hct
      have : dist x ct ≤ max rs rt := le_trans (hrs xs) (le_max_left _ _)
      rwa [edist_dist, ENNReal.ofReal_le_ofReal_iff]
      exact le_trans dist_nonneg this
    · intro x xt
      exists cs, hcs
      have : dist x cs ≤ max rs rt := le_trans (hrt xt) (le_max_right _ _)
      rwa [edist_dist, ENNReal.ofReal_le_ofReal_iff]
      exact le_trans dist_nonneg this
  exact ne_top_of_le_ne_top ENNReal.ofReal_ne_top this

/-- The Hausdorff distance between a set and itself is zero. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HausdorffDistance/Variant688cad0d5e98c1a4fd8f8b5e3cfc0d3e761e216c741bd4b5fb1ae5d6fac4d068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant688cad0d5e98c1a4fd8f8b5e3cfc0d3e761e216c741bd4b5fb1ae5d6fac4d068.lean#L674).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99a774e0aebc1dad665884b9f15d55574e5804c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
