# δ_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e4be90b-6e28-fea4-0897-e622988ceb6d",
  "kind": "lemma",
  "lexical_name": "δ_apply",
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
  "slug": "apply--f874c3ce43fe09f06ac5bb9e",
  "source": {
    "blob": "a2b4249b988ce7c2dd80cf3f699d1be729f1f354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 156,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variantbe6d699bf06601c4a37d45af0ef33f80eec2fa1d35b031bc7a1ed01cda6c2926.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f874c3ce43fe09f06ac5bb9e96986ceec6f1ccd14828475d63c01b9753293796",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variantbe6d699bf06601c4a37d45af0ef33f80eec2fa1d35b031bc7a1ed01cda6c2926.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e4be90b-6e28-fea4-0897-e622988ceb6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δ_apply (x₃ : ToType (D.L₀.X₃)) (x₂ : ToType (D.L₁.X₂)) (x₁ : ToType (D.L₂.X₁))
    (h₂ : D.L₁.g x₂ = D.v₀₁.τ₃ x₃) (h₁ : D.L₂.f x₁ = D.v₁₂.τ₂ x₂) :
    D.δ x₃ = D.v₂₃.τ₁ x₁ := by
  have := (forget₂ C Ab).preservesFiniteLimits_of_preservesHomology
  have : PreservesFiniteLimits (forget C) := by
    have : forget₂ C Ab ⋙ forget Ab = forget C := HasForget₂.forget_comp
    simpa only [← this] using comp_preservesFiniteLimits _ _
  have eq := CategoryTheory.congr_fun (D.snd_δ)
    (Limits.Concrete.pullbackMk D.L₁.g D.v₀₁.τ₃ x₂ x₃ h₂)
  have eq₁ := Concrete.pullbackMk_fst D.L₁.g D.v₀₁.τ₃ x₂ x₃ h₂
  have eq₂ := Concrete.pullbackMk_snd D.L₁.g D.v₀₁.τ₃ x₂ x₃ h₂
  rw [ConcreteCategory.comp_apply, ConcreteCategory.comp_apply] at eq
  rw [eq₂] at eq
  refine eq.trans (CategoryTheory.congr_arg (D.v₂₃.τ₁) ?_)
  apply (Preadditive.mono_iff_injective' D.L₂.f).1 inferInstance
  rw [← ConcreteCategory.comp_apply, φ₁_L₂_f]
  dsimp [φ₂]
  rw [ConcreteCategory.comp_apply, eq₁]
  exact h₁.symm

/-- This lemma allows the computation of the connecting homomorphism
`D.δ` when `D : SnakeInput C` and `C` is a concrete category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variantbe6d699bf06601c4a37d45af0ef33f80eec2fa1d35b031bc7a1ed01cda6c2926.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variantbe6d699bf06601c4a37d45af0ef33f80eec2fa1d35b031bc7a1ed01cda6c2926.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2b4249b988ce7c2dd80cf3f699d1be729f1f354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
