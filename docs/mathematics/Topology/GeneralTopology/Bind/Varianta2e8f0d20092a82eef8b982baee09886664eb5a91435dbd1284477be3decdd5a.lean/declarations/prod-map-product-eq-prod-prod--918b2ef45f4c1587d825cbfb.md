# prod_map_product_eq_prod_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea1fda21dd88713d4bc440a85c1cd3e0096cdab4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 351,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2e8f0d20092a82eef8b982baee09886664eb5a91435dbd1284477be3decdd5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c7c3dbb-7fcc-1f99-de57-15f68d4a355e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9778a8ac-94de-ad14-1d10-1f8f0b196b1c",
  "kind": "lemma",
  "lexical_name": "prod_map_product_eq_prod_prod",
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
  "slug": "prod-map-product-eq-prod-prod--918b2ef45f4c1587d825cbfb",
  "source": {
    "blob": "ea1fda21dd88713d4bc440a85c1cd3e0096cdab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 351,
    "path": "GRWTSK/Topology/GeneralTopology/Bind/Varianta2e8f0d20092a82eef8b982baee09886664eb5a91435dbd1284477be3decdd5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:918b2ef45f4c1587d825cbfbe19f5952e2f05624e6e0e7a46c0068b0b07d1e5e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bind/Varianta2e8f0d20092a82eef8b982baee09886664eb5a91435dbd1284477be3decdd5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9778a8ac-94de-ad14-1d10-1f8f0b196b1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_map_product_eq_prod_prod {M : Type*} [CommMonoid M]
    (s : Multiset α) (t : Multiset β) (f : α × β → M) :
    ((s ×ˢ t).map f).prod = (s.map fun i ↦ (t.map fun j ↦ f (i, j)).prod).prod := by
  induction s using Multiset.induction <;> simp_all

end Product

/-! ### Disjoint sum of multisets -/


section Sigma

variable {σ : α → Type*} (a : α) (s : Multiset α) (t : ∀ a, Multiset (σ a))

/-- `Multiset.sigma s t` is the dependent version of `Multiset.product`. It is the sum of
  `(a, b)` as `a` ranges over `s` and `b` ranges over `t a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bind/Varianta2e8f0d20092a82eef8b982baee09886664eb5a91435dbd1284477be3decdd5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bind/Varianta2e8f0d20092a82eef8b982baee09886664eb5a91435dbd1284477be3decdd5a.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea1fda21dd88713d4bc440a85c1cd3e0096cdab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
