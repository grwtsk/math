# productEquiv_symm_apply_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ec4ef70-09d3-8779-4e02-64f990e22353",
  "kind": "lemma",
  "lexical_name": "productEquiv_symm_apply_π",
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
  "slug": "productequiv-symm-apply--aba9423df3dd0c4dc25be563",
  "source": {
    "blob": "21d8038fe67cffcd4bf87bcb16dfef1ec0219f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aba9423df3dd0c4dc25be56397195b95bf5b8f75d48479e4d4afd430cfa15c68",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ec4ef70-09d3-8779-4e02-64f990e22353`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma productEquiv_symm_apply_π (x : ∀ j, ToType (F j)) (j : J) :
    Pi.π F j ((productEquiv F).symm x) = x j := by
  rw [← productEquiv_apply_apply, Equiv.apply_symm_apply]

end ProductEquiv

section ProductExt

variable {J : Type w} (f : J → C) [HasProduct f] {D : Type t} [Category.{r} D]
variable {FD : D → D → Type*} {DD : D → Type max w r} [∀ X Y, FunLike (FD X Y) (DD X) (DD Y)]
variable [ConcreteCategory.{max w r} D FD] (F : C ⥤ D)
  [PreservesLimit (Discrete.functor f) F]
  [HasProduct fun j => F.obj (f j)]
  [PreservesLimitsOfShape WalkingCospan (forget D)]
  [PreservesLimit (Discrete.functor fun b ↦ F.toPrefunctor.obj (f b)) (forget D)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21d8038fe67cffcd4bf87bcb16dfef1ec0219f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
