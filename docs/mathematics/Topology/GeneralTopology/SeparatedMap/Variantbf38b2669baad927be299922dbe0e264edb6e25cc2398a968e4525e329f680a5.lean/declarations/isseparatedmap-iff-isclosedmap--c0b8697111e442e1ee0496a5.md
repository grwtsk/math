# isSeparatedMap_iff_isClosedMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f907cb5c80a892f6d4d4d47106874db37c0594a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cdbc418-fc72-4780-32c3-94b10148efb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3648bd6-823c-df89-5534-e12875e76aea",
  "kind": "theorem",
  "lexical_name": "isSeparatedMap_iff_isClosedMap",
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
  "slug": "isseparatedmap-iff-isclosedmap--c0b8697111e442e1ee0496a5",
  "source": {
    "blob": "f907cb5c80a892f6d4d4d47106874db37c0594a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0b8697111e442e1ee0496a50ffc538a0d748abe6f1c6b322bf132a050f5d12c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3648bd6-823c-df89-5534-e12875e76aea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSeparatedMap_iff_isClosedMap {f : X → Y} :
    IsSeparatedMap f ↔ IsClosedMap (toPullbackDiag f) :=
  isSeparatedMap_iff_isClosedEmbedding.trans
    ⟨IsClosedEmbedding.isClosedMap, .of_continuous_injective_isClosedMap
      (IsEmbedding.toPullbackDiag f).continuous (injective_toPullbackDiag f)⟩

open Function.Pullback in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f907cb5c80a892f6d4d4d47106874db37c0594a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
