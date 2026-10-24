# compatible_familyOfElements

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82d356d6-4166-af2f-11ae-36771e966c19",
  "kind": "lemma",
  "lexical_name": "compatible_familyOfElements",
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
  "slug": "compatible-familyofelements--34e96507035c46b1999d23f8",
  "source": {
    "blob": "e889494c1f5733cd24819014b2f35ee2244479e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 232,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34e96507035c46b1999d23f86b9b50279fb532f3bd3a6d916288ed6b70fbc86a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82d356d6-4166-af2f-11ae-36771e966c19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compatible_familyOfElements (i : ι) :
    (familyOfElements w φ i).Compatible := by
  intro Y₁ Y₂ Z g₁ g₂ f₁ f₂ h₁ h₂ fac
  obtain rfl : f₁ = Over.homMk Y₁.hom := by ext; simpa using Over.w f₁
  obtain rfl : f₂ = Over.homMk Y₂.hom := by ext; simpa using Over.w f₂
  obtain ⟨g₁, hg₁, rfl⟩ := Over.homMk_surjective g₁
  obtain ⟨g₂, hg₂, rfl⟩ := Over.homMk_surjective g₂
  obtain ⟨_, a₁, _, ⟨j₁⟩, fac₁⟩ := h₁
  obtain ⟨_, a₂, _, ⟨j₂⟩, fac₂⟩ := h₂
  dsimp at *
  rw [familyOfElements_eq _ _ _ _ fac₁, familyOfElements_eq _ _ _ _ fac₂,
    ← dsimp% mor_precomp w φ Y₁.hom a₁ fac₁ _ _ _ hg₁ rfl,
    ← dsimp% mor_precomp w φ Y₂.hom a₂ fac₂ _ _ _ hg₂ rfl]
  apply mor_unique

include hf' in
/-- Given two families of morphisms `f : X i ⟶ S` and `f' : X' j ⟶ S`,
two objects `D₁ D₂ : F.DescentData f`, a morphism `φ` between the images in
`F.DescentData f'` of `D₁` and `D₂` by a functor `pullFunctor`. When `F`
is a prestack and `f'` a covering family, this is the morphism `D₁.obj i ⟶ D₂.obj i`
that is deduced from `φ` by gluing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e889494c1f5733cd24819014b2f35ee2244479e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
