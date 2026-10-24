# discr_mul_isIntegral_mem_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d97ce295-ded2-9f51-1c9c-1ac188d0500d",
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
  "slug": "discr-mul-isintegral-mem-adjoin--de5355873d5f7e31c608c20f",
  "source": {
    "blob": "08920e96865ec921aea118f8fa1f0bb8c5c17e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 341,
    "path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de5355873d5f7e31c608c20f088d2aabe3a76b84d418e709107e93ae1802f9df",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d97ce295-ded2-9f51-1c9c-1ac188d0500d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_mul_isIntegral_mem_adjoin [IsDomain R] [IsSeparable K L] [IsIntegrallyClosed R]
    [IsFractionRing R K] {B : PowerBasis K L} (hint : IsIntegral R B.gen) {z : L}
    (hz : IsIntegral R z) : discr K B.basis • z ∈ adjoin R ({B.gen} : Set L) := by
  have hinv : IsUnit (traceMatrix K B.basis).det := by
    simpa [← discr_def] using discr_isUnit_of_basis _ B.basis
  have H :
    (traceMatrix K B.basis).det • (traceMatrix K B.basis).mulVec (B.basis.equivFun z) =
      (traceMatrix K B.basis).det • fun i => trace K L (z * B.basis i) :=
    by congr; exact traceMatrix_of_basis_mulVec _ _
  have cramer := mulVec_cramer (traceMatrix K B.basis) fun i => trace K L (z * B.basis i)
  suffices ∀ i, ((traceMatrix K B.basis).det • B.basis.equivFun z) i ∈ (⊥ : Subalgebra R K) by
    rw [← B.basis.sum_repr z, Finset.smul_sum]
    refine' Subalgebra.sum_mem _ fun i _ => _
    replace this := this i
    rw [← discr_def, Pi.smul_apply, mem_bot] at this
    obtain ⟨r, hr⟩ := this
    rw [Basis.equivFun_apply] at hr
    rw [← smul_assoc, ← hr, algebraMap_smul]
    refine' Subalgebra.smul_mem _ _ _
    rw [B.basis_eq_pow i]
    refine' Subalgebra.pow_mem _ (subset_adjoin (Set.mem_singleton _)) _
  intro i
  rw [← H, ← mulVec_smul] at cramer
  replace cramer := congr_arg (mulVec (traceMatrix K B.basis)⁻¹) cramer
  rw [mulVec_mulVec, nonsing_inv_mul _ hinv, mulVec_mulVec, nonsing_inv_mul _ hinv, one_mulVec,
    one_mulVec] at cramer
  rw [← congr_fun cramer i, cramer_apply, det_apply]
  refine'
    Subalgebra.sum_mem _ fun σ _ => Subalgebra.zsmul_mem _ (Subalgebra.prod_mem _ fun j _ => _) _
  by_cases hji : j = i
  · simp only [updateColumn_apply, hji, eq_self_iff_true, PowerBasis.coe_basis]
    exact
      mem_bot.2
        (IsIntegrallyClosed.isIntegral_iff.1 <|
          isIntegral_trace <| isIntegral_mul hz <| IsIntegral.pow hint _)
  · simp only [updateColumn_apply, hji, PowerBasis.coe_basis]
    exact
      mem_bot.2
        (IsIntegrallyClosed.isIntegral_iff.1 <|
          isIntegral_trace <| isIntegral_mul (IsIntegral.pow hint _) (IsIntegral.pow hint _))
#align algebra.discr_mul_is_integral_mem_adjoin Algebra.discr_mul_isIntegral_mem_adjoin

end Integral

end Field

section Int

/-- Two (finite) ℤ-bases have the same discriminant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08920e96865ec921aea118f8fa1f0bb8c5c17e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
