# posDefOn_range_hermPosPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8a662e47dc8adf7442e41bc58e732f0bba70d04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5de8ac95-d008-ae98-de1a-5a8991eca959",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d48d0d46-39b8-5be8-6fe7-ac4a435bd616",
  "kind": "theorem",
  "lexical_name": "posDefOn_range_hermPosPart",
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
  "slug": "posdefon-range-hermpospart--b7da4aa46c3607e734e0af7d",
  "source": {
    "blob": "a8a662e47dc8adf7442e41bc58e732f0bba70d04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 123,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7da4aa46c3607e734e0af7d859f8de5cc2e3ee226fa2ed205681cbb60d6436f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d48d0d46-39b8-5be8-6fe7-ac4a435bd616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posDefOn_range_hermPosPart {A : Matrix n n 𝕜} (hA : A.IsHermitian) :
    PosDefOn A (LinearMap.range (hermPosPart hA).mulVecLin) := by
  rintro _ ⟨y, rfl⟩ hne
  set U : Matrix n n 𝕜 := ↑hA.eigenvectorUnitary
  set z := (hermPosPart hA).mulVecLin y with hz_def
  change z ≠ 0 at hne
  change 0 < hermForm A z
  set d := star U *ᵥ y with hd_def
  -- `c := Uᴴ · z = Uᴴ·U·diag(λ⁺)·Uᴴ·y = diag(λ⁺)·d`, so `cᵢ = λᵢ⁺·dᵢ`.
  have hc_eq : star U *ᵥ z = fun i => (((hA.eigenvalues i)⁺ : ℝ) : 𝕜) * d i := by
    have hz' : z = hermPosPart hA *ᵥ y := rfl
    rw [hz']; unfold hermPosPart specMap
    rw [conjStarAlgAut_apply, Matrix.mulVec_mulVec, ← mul_assoc, ← mul_assoc,
      Unitary.star_mul_self_of_mem hA.eigenvectorUnitary.2, one_mul,
      ← Matrix.mulVec_mulVec, ← hd_def]
    funext i
    simp only [mulVec, diagonal_dotProduct]
  -- `hermForm A z = ∑ᵢ λᵢ · ‖(Uᴴz)ᵢ‖² = ∑ᵢ λᵢ · (λᵢ⁺)² · ‖dᵢ‖²`.
  have hformA : hermForm A z
      = ∑ i, hA.eigenvalues i * ((hA.eigenvalues i)⁺) ^ 2 * ‖d i‖ ^ 2 := by
    have hAz : A *ᵥ z = specMap hA id *ᵥ z := by rw [specMap_id]
    unfold hermForm
    rw [hAz, hermForm_specMap hA id z, hc_eq]
    refine sum_congr rfl fun i _ => ?_
    simp only [id_eq, norm_mul, mul_pow, RCLike.norm_ofReal, sq_abs]
    ring
  rw [hformA]
  -- Each term `≥ 0`; `z ≠ 0 ⟹ some cᵢ ≠ 0 ⟹ some term > 0`.
  have hterm_nn : ∀ i, 0 ≤ hA.eigenvalues i * ((hA.eigenvalues i)⁺) ^ 2 * ‖d i‖ ^ 2 := by
    intro i
    rcases le_or_gt (hA.eigenvalues i) 0 with h | h
    · simp [posPart_eq_zero.mpr h]
    · exact mul_nonneg (mul_nonneg h.le (sq_nonneg _)) (sq_nonneg _)
  refine sum_pos' (fun i _ => hterm_nn i) ?_
  -- `z ≠ 0 ⟹ Uᴴz ≠ 0` (Uᴴ injective since U unitary).
  have hUinj : Function.Injective (star U *ᵥ ·) := by
    intro a b hab
    have hab' : star U *ᵥ a = star U *ᵥ b := hab
    have : (U * star U) *ᵥ a = (U * star U) *ᵥ b := by
      rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hab']
    rwa [Unitary.mul_star_self_of_mem hA.eigenvectorUnitary.2, one_mulVec,
      one_mulVec] at this
  have hc_ne : (fun i => (((hA.eigenvalues i)⁺ : ℝ) : 𝕜) * d i) ≠ 0 := by
    rw [← hc_eq]
    intro h
    exact hne (hUinj (h.trans (mulVec_zero _).symm))
  obtain ⟨i, hi⟩ := Function.ne_iff.mp hc_ne
  refine ⟨i, mem_univ i, ?_⟩
  simp only [Pi.zero_apply, mul_ne_zero_iff, RCLike.ofReal_ne_zero] at hi
  have hevi : 0 < hA.eigenvalues i := by
    by_contra h
    exact hi.1 (posPart_eq_zero.mpr (not_lt.mp h))
  have hdi' : (0 : ℝ) < ‖d i‖ ^ 2 := pow_pos (norm_pos_iff.mpr hi.2) 2
  have hpp : (0 : ℝ) < ((hA.eigenvalues i)⁺) ^ 2 := by
    rw [posPart_eq_self.mpr hevi.le]; exact pow_pos hevi 2
  exact mul_pos (mul_pos hevi hpp) hdi'

/-- `hermForm I x = ∑ᵢ ‖xᵢ‖²` (the squared `ℓ²` norm). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8a662e47dc8adf7442e41bc58e732f0bba70d04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
