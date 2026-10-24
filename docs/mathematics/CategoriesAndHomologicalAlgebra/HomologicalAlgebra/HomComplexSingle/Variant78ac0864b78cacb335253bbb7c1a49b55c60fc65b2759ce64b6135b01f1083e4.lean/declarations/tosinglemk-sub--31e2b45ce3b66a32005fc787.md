# toSingleMk_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2d46c2c-222d-837c-c964-10d61a39d305",
  "kind": "lemma",
  "lexical_name": "toSingleMk_sub",
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
  "slug": "tosinglemk-sub--31e2b45ce3b66a32005fc787",
  "source": {
    "blob": "03424c069be2f69cc6b3c39aadf9c2238026bf92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 335,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexSingle/Variant78ac0864b78cacb335253bbb7c1a49b55c60fc65b2759ce64b6135b01f1083e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31e2b45ce3b66a32005fc787b12d4db499c8da98600c85effc7d8ac098f86ecd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexSingle/Variant78ac0864b78cacb335253bbb7c1a49b55c60fc65b2759ce64b6135b01f1083e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2d46c2c-222d-837c-c964-10d61a39d305`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toSingleMk_sub {p q : ℤ} (f g : K.X p ⟶ X) {n : ℤ} (h : p + n = q)
    (p' : ℤ) (hp' : p' + 1 = p) (hf : K.d p' p ≫ f = 0) (hg : K.d p' p ≫ g = 0) :
    toSingleMk (f - g) h p' hp' (by simp [hf, hg]) =
      toSingleMk f h p' hp' hf - toSingleMk g h p' hp' hg := by
  cat_disch

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexSingle/Variant78ac0864b78cacb335253bbb7c1a49b55c60fc65b2759ce64b6135b01f1083e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexSingle/Variant78ac0864b78cacb335253bbb7c1a49b55c60fc65b2759ce64b6135b01f1083e4.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03424c069be2f69cc6b3c39aadf9c2238026bf92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
