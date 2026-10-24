# Away.eventually_smul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3b11444-9a5b-412b-1953-e7ec92b47339",
  "kind": "theorem",
  "lexical_name": "Away.eventually_smul_mem",
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
  "slug": "away-eventually-smul-mem--d166e432c73018d293f88959",
  "source": {
    "blob": "38300e7a2a2befa2a7a8c0432a959d87ca5669d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 577,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d166e432c73018d293f8895901ce9082cb7ef3358675472b43ec1ba288ad60d1",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3b11444-9a5b-412b-1953-e7ec92b47339`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Away.eventually_smul_mem {m} (hf : f ∈ 𝒜 m) (z : Away 𝒜 f) :
    ∀ᶠ n in Filter.atTop, f ^ n • z.val ∈ algebraMap _ _ '' (𝒜 (n • m) : Set A) := by
  obtain ⟨k, hk : f ^ k = _⟩ := z.den_mem
  apply Filter.mem_of_superset (Filter.Ici_mem_atTop k)
  rintro k' (hk' : k ≤ k')
  simp only [Set.mem_image, SetLike.mem_coe, Set.mem_setOf_eq]
  by_cases hfk : f ^ k = 0
  · refine ⟨0, zero_mem _, ?_⟩
    rw [← tsub_add_cancel_of_le hk', map_zero, pow_add, hfk, mul_zero, zero_smul]
  rw [← tsub_add_cancel_of_le hk', pow_add, mul_smul, hk, den_smul_val,
    Algebra.smul_def, ← map_mul]
  rw [← smul_eq_mul, add_smul,
    DirectSum.degree_eq_of_mem_mem 𝒜 (SetLike.pow_mem_graded _ hf) (hk.symm ▸ z.den_mem_deg) hfk]
  exact ⟨_, SetLike.mul_mem_graded (SetLike.pow_mem_graded _ hf) z.num_mem_deg, rfl⟩

end

section

variable [AddCommMonoid ι] [DecidableEq ι] [GradedAlgebra 𝒜]
variable (𝒜)
variable {B : Type*} [CommRing B] [Algebra R B]
variable (ℬ : ι → Submodule R B) [GradedAlgebra ℬ]
variable {P : Submonoid A} {Q : Submonoid B}

/--
Let `A, B` be two graded algebras with the same indexing set and `g : A → B` be a graded algebra
homomorphism (i.e. `g(Aₘ) ⊆ Bₘ`). Let `P ≤ A` be a submonoid and `Q ≤ B` be a submonoid such that
`P ≤ g⁻¹ Q`, then `g` induce a map from the homogeneous localizations `A⁰_P` to the homogeneous
localizations `B⁰_Q`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant2edb49b963575c7e047d1fdd43c7ade5f4b01cb2fb7eba510da96d2bc77ded45.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38300e7a2a2befa2a7a8c0432a959d87ca5669d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
