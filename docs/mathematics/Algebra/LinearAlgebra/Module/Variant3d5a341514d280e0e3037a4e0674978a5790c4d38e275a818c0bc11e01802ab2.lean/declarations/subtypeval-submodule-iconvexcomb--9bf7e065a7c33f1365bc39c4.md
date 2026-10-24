# subtypeVal_submodule_iConvexComb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d9ce9a13803bd7ffacd3ea042fd9e7e8315b152",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49d8c41f-357e-9ce6-1d9b-8729d127d542",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79506102-1ae3-1ef1-d27b-62a52f61d664",
  "kind": "lemma",
  "lexical_name": "subtypeVal_submodule_iConvexComb",
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
  "slug": "subtypeval-submodule-iconvexcomb--9bf7e065a7c33f1365bc39c4",
  "source": {
    "blob": "1d9ce9a13803bd7ffacd3ea042fd9e7e8315b152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 127,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bf7e065a7c33f1365bc39c42cc4d3325f028993323f637029a7fd6786379d25",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79506102-1ae3-1ef1-d27b-62a52f61d664`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subtypeVal_submodule_iConvexComb (S : F) (w : StdSimplex R I) (f : I → S) :
    (↑(w.iConvexComb f) : M) = w.iConvexComb (fun i ↦ (f i).val) := subtypeVal_iConvexComb ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d9ce9a13803bd7ffacd3ea042fd9e7e8315b152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
