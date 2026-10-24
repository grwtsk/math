# snakeInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80278447c2e3bd43db1737ef94d2bdbab43650861a5acf7f138abf45d3b90d1a",
  "kind": "def",
  "lexical_name": "snakeInput",
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
  "slug": "snakeinput--e870261e3ea9ed560f2db756",
  "source": {
    "blob": "6e43d5237cd012b188e212894284b51933b2ec3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variantb827183f6d6d8ab8dd3885bb429f8f6dff80dd89d8ac6de39db5906f545b213d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e870261e3ea9ed560f2db7567aea1fe9f429c0fafaa29b46fba744a498eaef14",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variantb827183f6d6d8ab8dd3885bb429f8f6dff80dd89d8ac6de39db5906f545b213d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80278447c2e3bd43db1737ef94d2bdbab43650861a5acf7f138abf45d3b90d1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def snakeInput : ShortComplex.SnakeInput C where
  L₀ :=
    { f := kernel.map f (f ≫ g) (𝟙 _) g (by simp)
      g := kernel.map (f ≫ g) g f (𝟙 _) (by simp)
      zero := by aesop }
  L₁ := ShortComplex.mk (biprod.inl : X ⟶ _) (biprod.snd : _ ⟶ Y) (by simp)
  L₂ := ShortComplex.mk (biprod.inl : Y ⟶ _) (biprod.snd : _ ⟶ Z) (by simp)
  L₃ :=
    { f := cokernel.map f (f ≫ g) (𝟙 _) g (by simp)
      g := cokernel.map (f ≫ g) g f (𝟙 _) (by simp)
      zero := by aesop }
  v₀₁ :=
    { τ₁ := kernel.ι f
      τ₂ := ι f g
      τ₃ := kernel.ι g }
  v₁₂ :=
    { τ₁ := f
      τ₂ := φ f g
      τ₃ := g }
  v₂₃ :=
    { τ₁ := cokernel.π f
      τ₂ := π f g
      τ₃ := cokernel.π g }
  h₀ := by
    apply ShortComplex.isLimitOfIsLimitπ <;>
      apply (KernelFork.isLimitMapConeEquiv _ _).2
    · exact kernelIsKernel _
    · exact isLimit f g
    · exact kernelIsKernel _
  h₃ := by
    apply ShortComplex.isColimitOfIsColimitπ <;>
      apply (CokernelCofork.isColimitMapCoconeEquiv _ _).2
    · exact cokernelIsCokernel _
    · exact isColimit f g
    · exact cokernelIsCokernel _
  epi_L₁_g := by dsimp; infer_instance
  mono_L₂_f := by dsimp; infer_instance
  L₁_exact := (ShortComplex.Splitting.ofHasBinaryBiproduct X Y).exact
  L₂_exact := (ShortComplex.Splitting.ofHasBinaryBiproduct Y Z).exact

/-- If `f : X ⟶ Y` and `g : Y ⟶ Z` are composable morphisms, this
is the connecting homomorphism `kernel g ⟶ cokernel f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variantb827183f6d6d8ab8dd3885bb429f8f6dff80dd89d8ac6de39db5906f545b213d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variantb827183f6d6d8ab8dd3885bb429f8f6dff80dd89d8ac6de39db5906f545b213d.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e43d5237cd012b188e212894284b51933b2ec3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
