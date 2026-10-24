# mapDomainOfBialgHom_mapDomainBialgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5af9a71136ce353f26c2006bde666e2bc5cca56c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe6a49b32b09c6fe47856cd19b794d710b8c5d3110a9f97253d23e76e95155ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:521b40c1-e9ae-50fb-7b7a-398c033a805b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ddef463-7d4f-a49c-41de-43f72662db55",
  "kind": "lemma",
  "lexical_name": "mapDomainOfBialgHom_mapDomainBialgHom",
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
  "slug": "mapdomainofbialghom-mapdomainbialghom--3bc437e67f4198ddd79ca843",
  "source": {
    "blob": "5af9a71136ce353f26c2006bde666e2bc5cca56c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 302,
    "path": "GRWTSK/Algebra/MonoidAlgebra/Variantfe6a49b32b09c6fe47856cd19b794d710b8c5d3110a9f97253d23e76e95155ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bc437e67f4198ddd79ca8433f4e2d2db1535bc448929ef2e4f486e3a27ecbc8",
  "verification": {
    "reference": "docs/verification/Algebra/MonoidAlgebra/Variantfe6a49b32b09c6fe47856cd19b794d710b8c5d3110a9f97253d23e76e95155ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ddef463-7d4f-a49c-41de-43f72662db55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapDomainOfBialgHom_mapDomainBialgHom (f : G →* H) :
    mapDomainOfBialgHom (mapDomainBialgHom (R := R) f) = f := by
  ext g; refine single_left_injective (R := R) one_ne_zero ?_; simp [single_mapDomainOfBialgHom]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MonoidAlgebra/Variantfe6a49b32b09c6fe47856cd19b794d710b8c5d3110a9f97253d23e76e95155ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MonoidAlgebra/Variantfe6a49b32b09c6fe47856cd19b794d710b8c5d3110a9f97253d23e76e95155ac.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af9a71136ce353f26c2006bde666e2bc5cca56c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
