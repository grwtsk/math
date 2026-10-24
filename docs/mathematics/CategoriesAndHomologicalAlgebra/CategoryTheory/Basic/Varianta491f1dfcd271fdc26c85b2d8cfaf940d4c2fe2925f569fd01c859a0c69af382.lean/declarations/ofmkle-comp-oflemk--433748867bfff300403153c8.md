# ofMkLE_comp_ofLEMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "962f0539dd539c44c5459775eda007f662d78207",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 424,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a491f1dfcd271fdc26c85b2d8cfaf940d4c2fe2925f569fd01c859a0c69af382.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ca77de0-5698-b12e-6ebe-982b10f24db3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db11c8f7-d492-1ee4-85b0-21c006548613",
  "kind": "theorem",
  "lexical_name": "ofMkLE_comp_ofLEMk",
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
  "slug": "ofmkle-comp-oflemk--433748867bfff300403153c8",
  "source": {
    "blob": "962f0539dd539c44c5459775eda007f662d78207",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 424,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta491f1dfcd271fdc26c85b2d8cfaf940d4c2fe2925f569fd01c859a0c69af382.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:433748867bfff300403153c86c6c6ffe68b6214829b14076d438a8f6bf8db21d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta491f1dfcd271fdc26c85b2d8cfaf940d4c2fe2925f569fd01c859a0c69af382.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db11c8f7-d492-1ee4-85b0-21c006548613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofMkLE_comp_ofLEMk {B A₁ A₂ : C} (f : A₁ ⟶ B) [Mono f] (X : Subobject B) (g : A₂ ⟶ B)
    [Mono g] (h₁ : mk f ≤ X) (h₂ : X ≤ mk g) :
    ofMkLE f X h₁ ≫ ofLEMk X g h₂ = ofMkLEMk f g (h₁.trans h₂) := by
  simp only [ofMkLE, ofLEMk, ofLE, ofMkLEMk, ← Functor.map_comp_assoc underlying, assoc]
  congr 1
#align category_theory.subobject.of_mk_le_comp_of_le_mk CategoryTheory.Subobject.ofMkLE_comp_ofLEMk

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta491f1dfcd271fdc26c85b2d8cfaf940d4c2fe2925f569fd01c859a0c69af382.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta491f1dfcd271fdc26c85b2d8cfaf940d4c2fe2925f569fd01c859a0c69af382.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `962f0539dd539c44c5459775eda007f662d78207` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
