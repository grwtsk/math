# factorThru_add_sub_factorThru_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4f891f44b5288bce8672330f74f93a91c67a2a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d37c53e7-28d8-ce3e-09df-34b9f18131db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc071990-7aea-f236-48a0-0f2d4906122d",
  "kind": "theorem",
  "lexical_name": "factorThru_add_sub_factorThru_left",
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
  "slug": "factorthru-add-sub-factorthru-left--01d814c88aa4eca7d81f7fba",
  "source": {
    "blob": "d4f891f44b5288bce8672330f74f93a91c67a2a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01d814c88aa4eca7d81f7fba56ad5ad12b7704940425cd343e4c4f0593e1e315",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc071990-7aea-f236-48a0-0f2d4906122d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorThru_add_sub_factorThru_left {X Y : C} {P : Subobject Y} (f g : X ⟶ Y)
    (w : P.Factors (f + g)) (wf : P.Factors f) :
    P.factorThru (f + g) w - P.factorThru f wf =
      P.factorThru g (factors_right_of_factors_add f g w wf) := by
  ext
  simp

end Preadditive

end Subobject

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4f891f44b5288bce8672330f74f93a91c67a2a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
