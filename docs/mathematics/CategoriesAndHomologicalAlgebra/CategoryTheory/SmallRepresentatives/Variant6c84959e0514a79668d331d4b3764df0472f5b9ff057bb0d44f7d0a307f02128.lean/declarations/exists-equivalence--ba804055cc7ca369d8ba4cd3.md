# exists_equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f694fa6-e01f-7dfd-4ca2-31b5736f415f",
  "kind": "lemma",
  "lexical_name": "exists_equivalence",
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
  "slug": "exists-equivalence--ba804055cc7ca369d8ba4cd3",
  "source": {
    "blob": "148521d5078d99d85c7656ebfefbc3ef587cf7b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 190,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba804055cc7ca369d8ba4cd381109567c6bf582dcd6b919afff236ec75a9cd10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f694fa6-e01f-7dfd-4ca2-31b5736f415f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_equivalence (C : Type u) [Category.{v} C] (hC : HasCardinalLT (Arrow C) κ) :
    ∃ (S : SmallCategoryCardinalLT κ),
      Nonempty (categoryFamily κ S ≌ C) := by
  let Ω := κ.ord.ToType
  have ι : Arrow C ↪ Ω := Nonempty.some (by
    rw [← Cardinal.lift_mk_le']
    simpa [Ω] using hC.le)
  have h₁ : Cardinal.lift.{w} (Cardinal.mk C) ≤
      Cardinal.lift.{u} (Cardinal.mk Ω) := by
    rw [Cardinal.lift_mk_le']
    refine ⟨Function.Embedding.trans { toFun X := Arrow.mk (𝟙 X), inj' := ?_ } ι⟩
    intro X Y h
    exact congr_arg Arrow.leftFunc.obj h
  have h₂ (X Y : C) : Cardinal.lift.{w} (Cardinal.mk (X ⟶ Y)) ≤
      Cardinal.lift.{v} (Cardinal.mk Ω) := by
    rw [Cardinal.lift_mk_le']
    refine ⟨Function.Embedding.trans { toFun f := Arrow.mk f, inj' := ?_ } ι⟩
    intro f g h
    simpa [Arrow.mk_eq_mk_iff] using h
  let f₁ := (Cardinal.lift_mk_le'.1 h₁).some
  let f₂ (X Y) := (Cardinal.lift_mk_le'.1 (h₂ X Y)).some
  let e := Equiv.ofInjective _ f₁.injective
  let h : CoreSmallCategoryOfSet Ω C :=
    { obj := Set.range f₁
      hom X Y := Set.range (f₂ (e.symm X) (e.symm Y))
      objEquiv := e.symm
      homEquiv {_ _} := by simpa using (Equiv.ofInjective _ ((f₂ _ _).injective)).symm }
  refine ⟨⟨h.smallCategoryOfSet, ?_⟩, ⟨h.equivalence⟩⟩
  rwa [hasCardinalLT_iff_of_equiv h.arrowEquiv]

end SmallCategoryCardinalLT

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148521d5078d99d85c7656ebfefbc3ef587cf7b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
