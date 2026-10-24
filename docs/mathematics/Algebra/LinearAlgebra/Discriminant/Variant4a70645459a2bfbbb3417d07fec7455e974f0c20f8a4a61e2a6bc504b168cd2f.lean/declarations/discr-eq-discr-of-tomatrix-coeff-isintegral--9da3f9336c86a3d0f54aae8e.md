# discr_eq_discr_of_toMatrix_coeff_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e518c129-8618-9bfc-5ec0-a4a02dc5d0a9",
  "kind": "theorem",
  "lexical_name": "discr_eq_discr_of_toMatrix_coeff_isIntegral",
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
  "slug": "discr-eq-discr-of-tomatrix-coeff-isintegral--9da3f9336c86a3d0f54aae8e",
  "source": {
    "blob": "08920e96865ec921aea118f8fa1f0bb8c5c17e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 307,
    "path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9da3f9336c86a3d0f54aae8ee8b8a7f8a5e725edf4d8bc544f563f08b73275e6",
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

Occurrence: `result:e518c129-8618-9bfc-5ec0-a4a02dc5d0a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_eq_discr_of_toMatrix_coeff_isIntegral [NumberField K] {b : Basis ι ℚ K}
    {b' : Basis ι' ℚ K} (h : ∀ i j, IsIntegral ℤ (b.toMatrix b' i j))
    (h' : ∀ i j, IsIntegral ℤ (b'.toMatrix b i j)) : discr ℚ b = discr ℚ b' := by
  replace h' : ∀ i j, IsIntegral ℤ (b'.toMatrix (b.reindex (b.indexEquiv b')) i j)
  · intro i j
    convert h' i ((b.indexEquiv b').symm j)
-- Porting note: `simp; rfl` was `simpa`.
    simp; rfl
  classical
  rw [← (b.reindex (b.indexEquiv b')).toMatrix_map_vecMul b', discr_of_matrix_vecMul,
    ← one_mul (discr ℚ b), Basis.coe_reindex, discr_reindex]
  congr
  have hint : IsIntegral ℤ ((b.reindex (b.indexEquiv b')).toMatrix b').det :=
    IsIntegral.det fun i j => h _ _
  obtain ⟨r, hr⟩ := IsIntegrallyClosed.isIntegral_iff.1 hint
  have hunit : IsUnit r := by
    have : IsIntegral ℤ (b'.toMatrix (b.reindex (b.indexEquiv b'))).det :=
      IsIntegral.det fun i j => h' _ _
    obtain ⟨r', hr'⟩ := IsIntegrallyClosed.isIntegral_iff.1 this
    refine' isUnit_iff_exists_inv.2 ⟨r', _⟩
    suffices algebraMap ℤ ℚ (r * r') = 1 by
      rw [← RingHom.map_one (algebraMap ℤ ℚ)] at this
      exact (IsFractionRing.injective ℤ ℚ) this
    rw [RingHom.map_mul, hr, hr', ← det_mul, Basis.toMatrix_mul_toMatrix_flip, det_one]
  rw [← RingHom.map_one (algebraMap ℤ ℚ), ← hr]
  cases' Int.isUnit_iff.1 hunit with hp hm
  · simp [hp]
  · simp [hm]
#align algebra.discr_eq_discr_of_to_matrix_coeff_is_integral Algebra.discr_eq_discr_of_toMatrix_coeff_isIntegral

/-- Let `K` be the fraction field of an integrally closed domain `R` and let `L` be a finite
separable extension of `K`. Let `B : PowerBasis K L` be such that `IsIntegral R B.gen`.
Then for all, `z : L` that are integral over `R`, we have
`(discr K B.basis) • z ∈ adjoin R ({B.gen} : set L)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08920e96865ec921aea118f8fa1f0bb8c5c17e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
