# mapClusterPt_self_zpow_atTop_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d26f7becf098b099d4bc370c340adbf0facd15fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab48a8ff-578c-7e95-3d79-8b9b3b318c0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45ca0293-beb4-56ec-f18d-fee66a043f7c",
  "kind": "theorem",
  "lexical_name": "mapClusterPt_self_zpow_atTop_pow",
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
  "slug": "mapclusterpt-self-zpow-attop-pow--0dda3bc77c55f23b0b5ce3dc",
  "source": {
    "blob": "d26f7becf098b099d4bc370c340adbf0facd15fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 34,
    "path": "GRWTSK/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dda3bc77c55f23b0b5ce3dc3b6d41c03d0d554cd00859dea14843806feeee7c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45ca0293-beb4-56ec-f18d-fee66a043f7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapClusterPt_self_zpow_atTop_pow (x : G) (m : ℤ) :
    MapClusterPt (x ^ m) atTop (x ^ · : ℕ → G) := by
  obtain ⟨y, hy⟩ : ∃ y, MapClusterPt y atTop (x ^ · : ℤ → G) :=
    exists_clusterPt_of_compactSpace _
  rw [← mapClusterPt_atTop_zpow_iff_pow]
  have H : MapClusterPt (x ^ m) (atTop.curry atTop) ↿(fun a b ↦ x ^ (m + b - a)) := by
    have : ContinuousAt (fun yz ↦ x ^ m * yz.2 / yz.1) (y, y) := by fun_prop
    simpa only [comp_def, ← zpow_sub, ← zpow_add, div_eq_mul_inv, Prod.map, mul_inv_cancel_right]
      using (hy.curry_prodMap hy).continuousAt_comp this
  suffices Tendsto ↿(fun a b ↦ m + b - a) (atTop.curry atTop) atTop from H.of_comp this
  refine Tendsto.curry <| .of_forall fun a ↦ ?_
  simp only [sub_eq_add_neg] -- TODO: add `Tendsto.atTop_sub_const` etc
  exact tendsto_atTop_add_const_right _ _ (tendsto_atTop_add_const_left atTop m tendsto_id)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d26f7becf098b099d4bc370c340adbf0facd15fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
