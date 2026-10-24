# prodEquiv_symm_apply_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46908f40-a3a6-f65b-b4c9-d3c6a2e06c19",
  "kind": "lemma",
  "lexical_name": "prodEquiv_symm_apply_snd",
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
  "slug": "prodequiv-symm-apply-snd--fb5dc423c281e8a834a019ec",
  "source": {
    "blob": "73f7397025c5a20eb4f58a68237d9214a6e4c037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 197,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Varianteac47de4e990a3cf13c3fc20f3880afb315eac67dc2aa2116186eb538ce52eca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb5dc423c281e8a834a019ecb93d3379f41d01943594457fa9cd28eeb458eb99",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Varianteac47de4e990a3cf13c3fc20f3880afb315eac67dc2aa2116186eb538ce52eca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46908f40-a3a6-f65b-b4c9-d3c6a2e06c19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prodEquiv_symm_apply_snd (x : ToType X₁ × ToType X₂) :
    (Limits.prod.snd : X₁ ⨯ X₂ ⟶ X₂) ((prodEquiv X₁ X₂).symm x) = x.2 := by
  obtain ⟨y, rfl⟩ := (prodEquiv X₁ X₂).surjective x
  simp

end BinaryProducts

section Pullbacks

variable {FC : C → C → Type*} {CC : C → Type v} [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)]
variable [ConcreteCategory.{v} C FC]
variable {X₁ X₂ S : C} (f₁ : X₁ ⟶ S) (f₂ : X₂ ⟶ S)
    [HasPullback f₁ f₂] [PreservesLimit (cospan f₁ f₂) (forget C)]

/-- In a concrete category `C`, given two morphisms `f₁ : X₁ ⟶ S` and `f₂ : X₂ ⟶ S`,
the elements in `pullback f₁ f₂` can be identified to compatible tuples of
elements in `X₁` and `X₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Varianteac47de4e990a3cf13c3fc20f3880afb315eac67dc2aa2116186eb538ce52eca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Varianteac47de4e990a3cf13c3fc20f3880afb315eac67dc2aa2116186eb538ce52eca.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73f7397025c5a20eb4f58a68237d9214a6e4c037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
