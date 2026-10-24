# rightUnitor_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:424dd99c-6208-7f65-6292-0f6569d465d1",
  "kind": "lemma",
  "lexical_name": "rightUnitor_naturality",
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
  "slug": "rightunitor-naturality--f609ac7af320ec094c57c8a8",
  "source": {
    "blob": "38a6529f088c789143622e57cc9a2ef5ca3be6ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 553,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f609ac7af320ec094c57c8a8f706d65d7105b6b7406f3fe135bceea081a13223",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:424dd99c-6208-7f65-6292-0f6569d465d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rightUnitor_naturality (φ : X ⟶ X') :
    tensorHom φ (𝟙 (tensorUnit)) ≫ (rightUnitor X').hom =
      (rightUnitor X).hom ≫ φ := by
  apply mapBifunctorRightUnitor_naturality

end RightUnitor

section Triangle

variable [DecidableEq I] [HasInitial C]
  [∀ X₁, PreservesColimit (Functor.empty.{0} C) ((curriedTensor C).obj X₁)]
  [∀ X₂, PreservesColimit (Functor.empty.{0} C)
    ((curriedTensor C).flip.obj X₂)]
  (X₁ X₃ : GradedObject I C) [HasTensor X₁ X₃]
  [HasTensor (tensorObj X₁ tensorUnit) X₃] [HasTensor X₁ (tensorObj tensorUnit X₃)]
  [HasGoodTensor₁₂Tensor X₁ tensorUnit X₃] [HasGoodTensorTensor₂₃ X₁ tensorUnit X₃]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38a6529f088c789143622e57cc9a2ef5ca3be6ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
