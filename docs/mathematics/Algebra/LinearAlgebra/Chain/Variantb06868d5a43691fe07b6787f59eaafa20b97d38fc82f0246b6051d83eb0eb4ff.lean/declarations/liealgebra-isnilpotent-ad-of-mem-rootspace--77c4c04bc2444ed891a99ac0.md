# LieAlgebra.isNilpotent_ad_of_mem_rootSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92e8372626ac37d220d254ae88dfc9b3195c479a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 418,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77ab56a4-0a72-f851-4961-ddef9c882c3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b79e8e2-84ff-b56f-cc76-f886e664f04f",
  "kind": "lemma",
  "lexical_name": "LieAlgebra.isNilpotent_ad_of_mem_rootSpace",
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
  "slug": "liealgebra-isnilpotent-ad-of-mem-rootspace--77c4c04bc2444ed891a99ac0",
  "source": {
    "blob": "92e8372626ac37d220d254ae88dfc9b3195c479a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 418,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variantb06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77c4c04bc2444ed891a99ac092df9c7fa0af698a722fb33f2cbf61f9a7b8544b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variantb06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b79e8e2-84ff-b56f-cc76-f886e664f04f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LieAlgebra.isNilpotent_ad_of_mem_rootSpace
    [IsTriangularizable K H L] [FiniteDimensional K L]
    {x : L} {χ : H → K} (hχ : χ ≠ 0) (hx : x ∈ rootSpace H χ) :
    _root_.IsNilpotent (ad K L x) :=
  isNilpotent_toEnd_of_mem_rootSpace (M := L) H hχ hx

end Field
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variantb06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variantb06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92e8372626ac37d220d254ae88dfc9b3195c479a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
