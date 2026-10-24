# hom_mkHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d88f4a34-21c7-7400-67ca-72f602b99eb3",
  "kind": "lemma",
  "lexical_name": "hom_mkHom",
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
  "slug": "hom-mkhom--158de585ab6adb3134e61fe7",
  "source": {
    "blob": "142711e190aba0df605bd6d98d34bfbeac02f5a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 314,
    "path": "GRWTSK/Topology/MetricTopology/SemiNormedGrp/Variantba9406d5ef0f1b81a6523a57617d5286b6743c9a1521be3909efeaf8c74979a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:158de585ab6adb3134e61fe73e2418ecaaf72fa18258aea4f0de4c58a72d113c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SemiNormedGrp/Variantba9406d5ef0f1b81a6523a57617d5286b6743c9a1521be3909efeaf8c74979a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d88f4a34-21c7-7400-67ca-72f602b99eb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hom_mkHom {M N : Type u} [SeminormedAddCommGroup M] [SeminormedAddCommGroup N]
    (f : NormedAddGroupHom M N) (hf : f.NormNoninc) : (mkHom f hf).hom = f := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SemiNormedGrp/Variantba9406d5ef0f1b81a6523a57617d5286b6743c9a1521be3909efeaf8c74979a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SemiNormedGrp/Variantba9406d5ef0f1b81a6523a57617d5286b6743c9a1521be3909efeaf8c74979a2.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142711e190aba0df605bd6d98d34bfbeac02f5a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
