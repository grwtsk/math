# discr_mul_isIntegral_mem_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81693e79-216b-4fe9-b0e9-9633b1cb9551",
  "kind": "theorem",
  "lexical_name": "discr_mul_isIntegral_mem_adjoin",
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
  "slug": "discr-mul-isintegral-mem-adjoin--68c432de72f7a12cd277a7c5",
  "source": {
    "blob": "4de024c130ad4e2d05b480fe6523668cac6631af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 269,
    "path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68c432de72f7a12cd277a7c5eab015a8073a6b6e174f11ec460283b8068036fb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81693e79-216b-4fe9-b0e9-9633b1cb9551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_mul_isIntegral_mem_adjoin [Algebra.IsSeparable K L] [IsIntegrallyClosed R]
    [IsFractionRing R K] {B : PowerBasis K L} (hint : IsIntegral R B.gen) {z : L}
    (hz : IsIntegral R z) : discr K B.basis • z ∈ adjoin R ({B.gen} : Set L) := by
  have hinv : IsUnit (traceMatrix K B.basis).det := by
    simpa [← discr_def] using discr_isUnit_of_basis _ B.basis
  have H :
    (traceMatrix K B.basis).det • (traceMatrix K B.basis) *ᵥ (B.basis.equivFun z) =
      (traceMatrix K B.basis).det • fun i => trace K L (z * B.basis i) := by
    congr; exact traceMatrix_of_basis_mulVec _ _
  have cramer := mulVec_cramer (traceMatrix K B.basis) fun i => trace K L (z * B.basis i)
  suffices ∀ i, ((traceMatrix K B.basis).det • B.basis.equivFun z) i ∈ (⊥ : Subalgebra R K) by
    rw [← B.basis.sum_repr z, Finset.smul_sum]
    refine Subalgebra.sum_mem _ fun i _ => ?_
    replace this := this i
    rw [← discr_def, Pi.smul_apply, mem_bot] at this
    obtain ⟨r, hr⟩ := this
    rw [Basis.equivFun_apply] at hr
    rw [← smul_assoc, ← hr, algebraMap_smul]
    refine Subalgebra.smul_mem _ ?_ _
    rw [B.basis_eq_pow i]
    exact Subalgebra.pow_mem _ (subset_adjoin (Set.mem_singleton _)) _
  intro i
  rw [← H, ← mulVec_smul] at cramer
  replace cramer := congr_arg (mulVec (traceMatrix K B.basis)⁻¹) cramer
  rw [mulVec_mulVec, nonsing_inv_mul _ hinv, mulVec_mulVec, nonsing_inv_mul _ hinv, one_mulVec,
    one_mulVec] at cramer
  rw [← congr_fun cramer i, cramer_apply, det_apply]
  refine
    Subalgebra.sum_mem _ fun σ _ => Subalgebra.zsmul_mem _ (Subalgebra.prod_mem _ fun j _ => ?_) _
  by_cases hji : j = i
  · simp only [updateCol_apply, hji, eq_self_iff_true, PowerBasis.coe_basis]
    exact mem_bot.2 (IsIntegrallyClosed.isIntegral_iff.1 <| isIntegral_trace (hz.mul <| hint.pow _))
  · simp only [updateCol_apply, hji, PowerBasis.coe_basis]
    exact mem_bot.2
      (IsIntegrallyClosed.isIntegral_iff.1 <| isIntegral_trace <| (hint.pow _).mul (hint.pow _))

end Integral

end Field

section Int

/-- Two (finite) ℤ-bases have the same discriminant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4de024c130ad4e2d05b480fe6523668cac6631af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
