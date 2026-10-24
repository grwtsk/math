# diagonal_neZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d914df37d8f5cc56decaa61e4c4d66345ce4c4a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 663,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:624d6613-61d0-f394-f511-c5b595cd1288",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e86536d-0cb8-4ebf-263d-c157f01f2ef5",
  "kind": "lemma",
  "lexical_name": "diagonal_neZero",
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
  "slug": "diagonal-nezero--501c592971290bdaa2869b1b",
  "source": {
    "blob": "d914df37d8f5cc56decaa61e4c4d66345ce4c4a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 663,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:501c592971290bdaa2869b1b8f2e70bcba2dd55a5edcce34977bac15c7cf4b89",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e86536d-0cb8-4ebf-263d-c157f01f2ef5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma diagonal_neZero (D : ι → F) (hD : det (diagonal D) = 1) (j : ι) :
    D j ≠ 0 := fun h ↦ by
  rw [det_diagonal, show Finset.univ = insert j ({i | i ≠ j} : Finset ι) by grind,
    Finset.prod_insert (by grind), h, zero_mul] at hD
  exact zero_ne_one hD

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d914df37d8f5cc56decaa61e4c4d66345ce4c4a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
