# cokernelSequenceOpcyclesE_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4b26fbd-0bc0-0bbc-0a37-a9237816346c",
  "kind": "lemma",
  "lexical_name": "cokernelSequenceOpcyclesE_exact",
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
  "slug": "cokernelsequenceopcyclese-exact--abe4fb45de2542882e634353",
  "source": {
    "blob": "ba2d5fe329ad6e8f57e0ca4008171cfcb2d0f04a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 620,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variante330462938b8041778c755932fad9da1bea14a6064e2c994114a5b267c534c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abe4fb45de2542882e634353adaeff6bb50a42109616168328395afea3960599",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variante330462938b8041778c755932fad9da1bea14a6064e2c994114a5b267c534c60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4b26fbd-0bc0-0bbc-0a37-a9237816346c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cokernelSequenceOpcyclesE_exact
    (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) :
    (X.cokernelSequenceOpcyclesE f₁ f₂ f₃ f₁₂ h₁₂ n₀ n₁ n₂ hn₁ hn₂).Exact := by
  rw [ShortComplex.exact_iff_exact_up_to_refinements]
  intro A x₂ hx₂
  dsimp at x₂ hx₂
  obtain ⟨A₁, π₁, _, y₂, hy₂⟩ :=
    surjective_up_to_refinements_of_epi (X.pOpcycles f₁₂ f₃ n₁) x₂
  obtain ⟨A₂, π₂, _, y₁, hy₁⟩ :=
    (X.cokernelSequenceE_exact f₁ f₂ f₃ f₁₂ h₁₂ n₀ n₁ n₂ hn₁ hn₂).exact_up_to_refinements y₂
      (by simpa only [Category.assoc, p_opcyclesToE, hx₂, comp_zero]
        using! hy₂.symm =≫ X.opcyclesToE f₁ f₂ f₃ f₁₂ h₁₂ n₀ n₁ n₂ hn₁ hn₂)
  dsimp at y₁ hy₁
  obtain ⟨a, b, rfl⟩ : ∃ a b, y₁ = a ≫ biprod.inl + b ≫ biprod.inr :=
    ⟨y₁ ≫ biprod.fst, y₁ ≫ biprod.snd, by ext <;> simp⟩
  simp only [Preadditive.add_comp, Category.assoc, biprod.inl_desc, biprod.inr_desc] at hy₁
  refine ⟨A₂, π₂ ≫ π₁, inferInstance, a, ?_⟩
  simp [Category.assoc, hy₂, reassoc_of% hy₁, Preadditive.add_comp, δ_pOpcycles,
    comp_zero, add_zero]

-- TODO: add dual statement to `cokernelSequenceOpcyclesE_exact`?

/-- The map `E^n(f₁, f₂, f₃) ⟶ Z^n(f₁, f₂ ≫ f₃)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variante330462938b8041778c755932fad9da1bea14a6064e2c994114a5b267c534c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variante330462938b8041778c755932fad9da1bea14a6064e2c994114a5b267c534c60.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2d5fe329ad6e8f57e0ca4008171cfcb2d0f04a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
