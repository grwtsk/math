# Away.eventually_smul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3119594b-b765-b8d7-b0c3-e5a6f03988e0",
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
  "slug": "away-eventually-smul-mem--41e2c4ef26202f38f4d57806",
  "source": {
    "blob": "1db610140c3810aa209c8759b3fdf996ecd5a3b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 637,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41e2c4ef26202f38f4d578065bd60c49005d50089b167e03be9dade897e6472e",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3119594b-b765-b8d7-b0c3-e5a6f03988e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Away.eventually_smul_mem {m} (hf : f ∈ 𝒜 m) (z : Away 𝒜 f) :
    ∀ᶠ n in Filter.atTop, f ^ n • z.val ∈ algebraMap _ _ '' (𝒜 (n • m) : Set A) := by
  obtain ⟨k, hk : f ^ k = _⟩ := z.den_mem
  apply Filter.mem_of_superset (Filter.Ici_mem_atTop k)
  rintro k' (hk' : k ≤ k')
  simp only [Set.mem_image, SetLike.mem_coe, Set.mem_ofPred_eq]
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

variable [AddSubgroupClass σ A] [AddCommMonoid ι] [DecidableEq ι]
variable {𝒜 : ι → σ} [GradedRing 𝒜]
variable {B τ : Type*} [CommRing B] [SetLike τ B] [AddSubgroupClass τ B]
variable {ℬ : ι → τ} [GradedRing ℬ]
variable {C ψ : Type*} [CommRing C] [SetLike ψ C] [AddSubgroupClass ψ C]
variable {𝒞 : ι → ψ} [GradedRing 𝒞]
variable {P : Submonoid A} {Q : Submonoid B}

open Graded

/-- Map `NumDenSameDeg` along a graded ring hom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1db610140c3810aa209c8759b3fdf996ecd5a3b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
