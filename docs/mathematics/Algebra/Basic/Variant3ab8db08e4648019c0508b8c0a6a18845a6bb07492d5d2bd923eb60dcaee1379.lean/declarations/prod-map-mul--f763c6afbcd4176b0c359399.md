# prod_map_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bb616b1943f511b299747ba3251c88694e8f9bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8642a566-2bbf-fc18-0947-ca8c9f0206d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9574b642-84a5-4358-5cfc-33223ddf1db6",
  "kind": "theorem",
  "lexical_name": "prod_map_mul",
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
  "slug": "prod-map-mul--f763c6afbcd4176b0c359399",
  "source": {
    "blob": "7bb616b1943f511b299747ba3251c88694e8f9bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 89,
    "path": "GRWTSK/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f763c6afbcd4176b0c359399f25a290c0ca88f0938097b9811398adf5930b246",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9574b642-84a5-4358-5cfc-33223ddf1db6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_map_mul {α : Type*} [CommMonoid α] {l : List ι} {f g : ι → α} :
    (l.map fun i => f i * g i).prod = (l.map f).prod * (l.map g).prod :=
  l.prod_hom₂ (· * ·) mul_mul_mul_comm (mul_one _) _ _

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bb616b1943f511b299747ba3251c88694e8f9bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
