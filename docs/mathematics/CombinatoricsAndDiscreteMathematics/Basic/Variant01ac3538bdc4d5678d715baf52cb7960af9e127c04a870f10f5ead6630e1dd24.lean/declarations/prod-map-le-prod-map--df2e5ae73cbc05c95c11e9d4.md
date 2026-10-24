# prod_map_le_prod_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "619ffb7ba77f0d49fd76a6b04144e42073f645ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 402,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01ac3538bdc4d5678d715baf52cb7960af9e127c04a870f10f5ead6630e1dd24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99fe426d-656e-13d1-27db-e45013492e81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef2decc5-a535-b2ca-c7ab-d4c84673f787",
  "kind": "theorem",
  "lexical_name": "prod_map_le_prod_map",
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
  "slug": "prod-map-le-prod-map--df2e5ae73cbc05c95c11e9d4",
  "source": {
    "blob": "619ffb7ba77f0d49fd76a6b04144e42073f645ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 402,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant01ac3538bdc4d5678d715baf52cb7960af9e127c04a870f10f5ead6630e1dd24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df2e5ae73cbc05c95c11e9d44629499fb19acfeba9297fe2201a574cf4c32d67",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant01ac3538bdc4d5678d715baf52cb7960af9e127c04a870f10f5ead6630e1dd24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef2decc5-a535-b2ca-c7ab-d4c84673f787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_map_le_prod_map {s : Multiset ι} (f : ι → α) (g : ι → α) (h : ∀ i, i ∈ s → f i ≤ g i) :
    (s.map f).prod ≤ (s.map g).prod :=
  prod_le_prod_of_rel_le <| rel_map.2 <| rel_refl_of_refl_on h
#align multiset.prod_map_le_prod_map Multiset.prod_map_le_prod_map
#align multiset.sum_map_le_sum_map Multiset.sum_map_le_sum_map

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant01ac3538bdc4d5678d715baf52cb7960af9e127c04a870f10f5ead6630e1dd24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant01ac3538bdc4d5678d715baf52cb7960af9e127c04a870f10f5ead6630e1dd24.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `619ffb7ba77f0d49fd76a6b04144e42073f645ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
