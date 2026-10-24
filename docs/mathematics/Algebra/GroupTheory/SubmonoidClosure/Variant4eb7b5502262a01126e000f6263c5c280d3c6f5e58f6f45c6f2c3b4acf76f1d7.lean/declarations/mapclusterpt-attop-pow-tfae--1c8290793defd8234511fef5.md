# mapClusterPt_atTop_pow_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be50ada0-4999-3fa4-921f-640f0acb226f",
  "kind": "theorem",
  "lexical_name": "mapClusterPt_atTop_pow_tfae",
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
  "slug": "mapclusterpt-attop-pow-tfae--1c8290793defd8234511fef5",
  "source": {
    "blob": "03753395540e26a78dc2ac7abfb27f8feb23e433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 65,
    "path": "GRWTSK/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c8290793defd8234511fef57287475acae88a887155eb912689cb661c0bb896",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be50ada0-4999-3fa4-921f-640f0acb226f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapClusterPt_atTop_pow_tfae (x y : G) :
    List.TFAE [
      MapClusterPt x atTop (y ^ · : ℕ → G),
      MapClusterPt x atTop (y ^ · : ℤ → G),
      x ∈ closure (range (y ^ · : ℕ → G)),
      x ∈ closure (range (y ^ · : ℤ → G)),
    ] := by
  tfae_have 2 ↔ 1 := mapClusterPt_atTop_zpow_iff_pow
  tfae_have 3 → 4 := by
    refine fun h ↦ closure_mono (range_subset_iff.2 fun n ↦ ?_) h
    exact ⟨n, zpow_natCast _ _⟩
  tfae_have 4 → 1 := by
    refine fun h ↦ closure_minimal ?_ isClosed_setOf_clusterPt h
    exact range_subset_iff.2 (mapClusterPt_self_zpow_atTop_pow _)
  tfae_have 1 → 3 := by
    rw [mem_closure_iff_clusterPt]
    exact (ClusterPt.mono · (le_principal_iff.2 range_mem_map))
  tfae_finish

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03753395540e26a78dc2ac7abfb27f8feb23e433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
