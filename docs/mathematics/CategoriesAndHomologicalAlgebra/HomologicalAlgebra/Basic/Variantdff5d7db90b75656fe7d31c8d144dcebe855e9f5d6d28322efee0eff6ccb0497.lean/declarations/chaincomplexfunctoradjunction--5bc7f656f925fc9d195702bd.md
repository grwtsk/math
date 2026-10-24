# chainComplexFunctorAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2acbc10a6c11a0b28f27135a023cf01a7136924fc6f3f49b4539b248c6f57abb",
  "kind": "def",
  "lexical_name": "chainComplexFunctorAdjunction",
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
  "slug": "chaincomplexfunctoradjunction--5bc7f656f925fc9d195702bd",
  "source": {
    "blob": "eebbf8bb9126570bf928a75f4208fd2ac7036838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantdff5d7db90b75656fe7d31c8d144dcebe855e9f5d6d28322efee0eff6ccb0497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bc7f656f925fc9d195702bd44d1174a851a56534f6d09105056afc80a0992de",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantdff5d7db90b75656fe7d31c8d144dcebe855e9f5d6d28322efee0eff6ccb0497.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2acbc10a6c11a0b28f27135a023cf01a7136924fc6f3f49b4539b248c6f57abb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def chainComplexFunctorAdjunction (n : ℕ) :
    (Functor.postcompose₂.obj (HomologicalComplex.eval _ _ n)).obj
      (SSet.chainComplexFunctor C) ⊣ (evaluation _ _).obj Δ[n] where
  unit.app R := Sigma.ι (fun _ : Δ[n] _⦋n⦌ ↦ R) (SSet.stdSimplex.objEquiv (n := ⦋n⦌).symm (𝟙 ⦋n⦌))
  counit.app F := { app S := Sigma.desc fun α ↦ F.map (SSet.yonedaEquiv.symm α) }
  right_triangle_components F := by dsimp; simp

@[deprecated (since := "2026-04-05")]
alias _root_.SSet.singularChainComplexFunctorAdjunction :=
  SSet.chainComplexFunctorAdjunction

variable {C} (X Y Z : SSet.{w}) (f : X ⟶ Y) (g : Y ⟶ Z) (R : C)

/-- The (simplicial) chain complex of a simplicial set `X` with
coefficients in `R : C`. Its homology is the simplicial homology
of `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantdff5d7db90b75656fe7d31c8d144dcebe855e9f5d6d28322efee0eff6ccb0497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantdff5d7db90b75656fe7d31c8d144dcebe855e9f5d6d28322efee0eff6ccb0497.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eebbf8bb9126570bf928a75f4208fd2ac7036838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
