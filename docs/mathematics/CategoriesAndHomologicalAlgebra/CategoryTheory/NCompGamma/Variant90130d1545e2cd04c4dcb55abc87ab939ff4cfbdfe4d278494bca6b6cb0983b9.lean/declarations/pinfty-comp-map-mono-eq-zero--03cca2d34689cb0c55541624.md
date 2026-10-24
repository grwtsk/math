# PInfty_comp_map_mono_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d18ac725-9d08-0b7d-2c26-f95ec57ae261",
  "kind": "theorem",
  "lexical_name": "PInfty_comp_map_mono_eq_zero",
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
  "slug": "pinfty-comp-map-mono-eq-zero--03cca2d34689cb0c55541624",
  "source": {
    "blob": "f82166a9505601dd88a18d5960b1f9c9086341d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant90130d1545e2cd04c4dcb55abc87ab939ff4cfbdfe4d278494bca6b6cb0983b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03cca2d34689cb0c55541624d0b1050f6b9e9961139d2f34e740281e68333154",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant90130d1545e2cd04c4dcb55abc87ab939ff4cfbdfe4d278494bca6b6cb0983b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d18ac725-9d08-0b7d-2c26-f95ec57ae261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PInfty_comp_map_mono_eq_zero (X : SimplicialObject C) {n : ℕ} {Δ' : SimplexCategory}
    (i : Δ' ⟶ ⦋n⦌) [hi : Mono i] (h₁ : Δ'.len ≠ n) (h₂ : ¬Isδ₀ i) :
    PInfty.f n ≫ X.map i.op = 0 := by
  induction Δ' using SimplexCategory.rec with | _ m
  obtain ⟨k, hk⟩ := Nat.exists_eq_add_of_lt (len_lt_of_mono i fun h => by
        rw [← h] at h₁
        exact h₁ rfl)
  rcases k with _ | k
  · change n = m + 1 at hk
    subst hk
    obtain ⟨j, rfl⟩ := eq_δ_of_mono i
    rw [Isδ₀.iff] at h₂
    have h₃ : 1 ≤ (j : ℕ) := by
      by_contra h
      exact h₂ (by simpa only [Fin.ext_iff, not_le, Nat.lt_one_iff] using! h)
    exact (HigherFacesVanish.of_P (m + 1) m).comp_δ_eq_zero j h₂ (by lia)
  · simp only [← add_assoc] at hk
    clear h₂ hi
    subst hk
    obtain ⟨j₁ : Fin (_ + 1), i, rfl⟩ :=
      eq_comp_δ_of_not_surjective i fun h => by
        rw [← SimplexCategory.epi_iff_surjective] at h
        grind [→ le_of_epi]
    obtain ⟨j₂, i, rfl⟩ :=
      eq_comp_δ_of_not_surjective i fun h => by
        rw [← SimplexCategory.epi_iff_surjective] at h
        grind [→ le_of_epi]
    by_cases hj₁ : j₁ = 0
    · subst hj₁
      rw [assoc, ← SimplexCategory.δ_comp_δ'' (Fin.zero_le _)]
      simp only [op_comp, X.map_comp, assoc, PInfty_f]
      erw [(HigherFacesVanish.of_P _ _).comp_δ_eq_zero_assoc _ j₂.succ_ne_zero, zero_comp]
      simp only [Fin.succ]
      lia
    · simp only [op_comp, X.map_comp, assoc, PInfty_f]
      erw [(HigherFacesVanish.of_P _ _).comp_δ_eq_zero_assoc _ hj₁, zero_comp]
      by_contra
      exact hj₁ (by simp only [Fin.ext_iff, Fin.val_zero]; lia)

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant90130d1545e2cd04c4dcb55abc87ab939ff4cfbdfe4d278494bca6b6cb0983b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant90130d1545e2cd04c4dcb55abc87ab939ff4cfbdfe4d278494bca6b6cb0983b9.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f82166a9505601dd88a18d5960b1f9c9086341d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
