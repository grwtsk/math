# dKernelSequence_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a13add5-45fa-caac-06f9-edee44be97e4",
  "kind": "lemma",
  "lexical_name": "dKernelSequence_exact",
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
  "slug": "dkernelsequence-exact--104e66406df7bb92854dfc3e",
  "source": {
    "blob": "fe2152392acdda710d192a7e8d1c4e96820ea0fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Varianta390605aa1dedaffcb24bc86e1a61a631e32f5e95ec24a1939be19add372d2df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:104e66406df7bb92854dfc3e1879e4e97c15c74e508d08402dfce8f30f907204",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Varianta390605aa1dedaffcb24bc86e1a61a631e32f5e95ec24a1939be19add372d2df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a13add5-45fa-caac-06f9-edee44be97e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dKernelSequence_exact
    (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) (hn₃ : n₂ + 1 = n₃ := by lia) :
    (X.dKernelSequence f₁ f₂ f₃ f₄ f₅ f₂₃ h₂₃ n₀ n₁ n₂ n₃).Exact := by
  rw [ShortComplex.exact_iff_exact_up_to_refinements]
  intro A x₂ hx₂
  dsimp at hx₂ ⊢
  obtain ⟨A₁, π₁, _, y₂, hy₂⟩ :=
    surjective_up_to_refinements_of_epi (X.πE f₃ f₄ f₅ n₀ n₁ n₂) x₂
  have hy₂' := hy₂ =≫ X.d f₁ f₂ f₃ f₄ f₅ n₀ n₁ n₂ n₃ ≫ X.ιE ..
  simp only [assoc, reassoc_of% hx₂, zero_comp, comp_zero, πE_d_ιE] at hy₂'
  obtain ⟨A₂, π₂, _, y₁, hy₁⟩ :=
    ((X.sequenceΨ_exact f₂ f₃ f₄ f₂₃ h₂₃ _ rfl n₁ n₂).exact 0).exact_up_to_refinements y₂ hy₂'.symm
  refine ⟨A₂, π₂ ≫ π₁, inferInstance, y₁ ≫ X.πE f₂₃ f₄ f₅ n₀ n₁ n₂, ?_⟩
  simp [sequenceΨ, hy₂, reassoc_of% hy₁, X.πE_map f₂₃ f₄ f₅ f₃ f₄ f₅ (fourδ₁Toδ₀ f₂ f₃ f₄ f₅ f₂₃)
    (threeδ₁Toδ₀ f₂ f₃ f₄ f₂₃) n₀ n₁ n₂]

end ExactSequences

variable {i₀ i₁ i₂ i₃ i₄ i₅ i₆ i₇ : ι} (f₁ : i₀ ⟶ i₁) (f₂ : i₁ ⟶ i₂) (f₃ : i₂ ⟶ i₃)
  (f₄ : i₃ ⟶ i₄) (f₅ : i₄ ⟶ i₅) (f₆ : i₅ ⟶ i₆) (f₇ : i₆ ⟶ i₇)
  (f₂₃ : i₁ ⟶ i₃) (h₂₃ : f₂ ≫ f₃ = f₂₃)
  (f₅₆ : i₄ ⟶ i₆) (h₅₆ : f₅ ≫ f₆ = f₅₆)
  (n₀ n₁ n₂ n₃ n₄ : ℤ)

/-- The short complex `E^{n-1}(f₅, f₆, f₇) ⟶ E^{n}(f₃, f₄, f₅) ⟶ E^{n+1}(f₁, f₂, f₃)`
given by the differentials of a spectral object. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Varianta390605aa1dedaffcb24bc86e1a61a631e32f5e95ec24a1939be19add372d2df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Varianta390605aa1dedaffcb24bc86e1a61a631e32f5e95ec24a1939be19add372d2df.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe2152392acdda710d192a7e8d1c4e96820ea0fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
