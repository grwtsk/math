# liftNatTrans_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99d9af471ca789076a12367af3c1983ba8ae7619",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c309587b9ebc9b3023f70a887f9ad9d57ce3fabe82bfa386604983b03d72973a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce4a2156-e1fb-a26d-ec28-738b9b9faf5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:730e5f93-144c-4e0e-1d28-f896adb5607f",
  "kind": "lemma",
  "lexical_name": "liftNatTrans_zero",
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
  "slug": "liftnattrans-zero--19a5f46f247a747ea73255c3",
  "source": {
    "blob": "99d9af471ca789076a12367af3c1983ba8ae7619",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 24,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc309587b9ebc9b3023f70a887f9ad9d57ce3fabe82bfa386604983b03d72973a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19a5f46f247a747ea73255c325cddb5294fa4b636a5a8a27804838effe800e94",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc309587b9ebc9b3023f70a887f9ad9d57ce3fabe82bfa386604983b03d72973a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:730e5f93-144c-4e0e-1d28-f896adb5607f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma liftNatTrans_zero (F₁ F₂ : C ⥤ E) (F₁' F₂' : D ⥤ E)
    [Lifting L W F₁ F₁'] [Lifting L W F₂ F₂']
    [HasZeroMorphisms E] :
    liftNatTrans L W F₁ F₂ F₁' F₂' 0 = 0 :=
  natTrans_ext L W (by simp)

variable [Preadditive E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc309587b9ebc9b3023f70a887f9ad9d57ce3fabe82bfa386604983b03d72973a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc309587b9ebc9b3023f70a887f9ad9d57ce3fabe82bfa386604983b03d72973a.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d9af471ca789076a12367af3c1983ba8ae7619` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
