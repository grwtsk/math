# Away.eventually_smul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7fc718214a8af38f308ad3cc88e05103e43b705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 629,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abddd0b8-7574-df0c-c2d5-1d701c2c3630",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63cf9875-9642-2983-edc2-ef55eb390a27",
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
  "slug": "away-eventually-smul-mem--f6c8c0d95c7541be8661d777",
  "source": {
    "blob": "b7fc718214a8af38f308ad3cc88e05103e43b705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 629,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6c8c0d95c7541be8661d777e44a73f84fffc7d441921fe1da9687522f06f189",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63cf9875-9642-2983-edc2-ef55eb390a27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–658.

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

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7fc718214a8af38f308ad3cc88e05103e43b705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
