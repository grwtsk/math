# isEmbedding_mk_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe2ad3ef-eacf-967b-952f-73c971cd1489",
  "kind": "theorem",
  "lexical_name": "isEmbedding_mk_symm",
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
  "slug": "isembedding-mk-symm--d6a81336a7df9a22be58cee8",
  "source": {
    "blob": "c55308687d443d6a7a642b9eb13eb800c2110a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6a81336a7df9a22be58cee80c2ecf510c5ba38790910ebe68a326c6db8b5dc2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe2ad3ef-eacf-967b-952f-73c971cd1489`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] theorem isEmbedding_mk_symm : IsEmbedding (@mk M).symm :=
  mkHomeomorph.symm.isEmbedding

@[deprecated (since := "2024-10-28")] alias inducing_mk_symm := isInducing_mk_symm

@[deprecated (since := "2024-10-26")]
alias embedding_mk_symm := isEmbedding_mk_symm

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c55308687d443d6a7a642b9eb13eb800c2110a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
