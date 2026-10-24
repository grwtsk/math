# discr_eq_discr_of_toMatrix_coeff_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af4a8c40634ac4c32a63c6f8aea15d92877b2208",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:611e88ef-21b0-ffa1-69bc-64f1f313ae55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13fa7764-a151-e2b5-78e5-dc868822b559",
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
  "slug": "discr-eq-discr-of-tomatrix-coeff-isintegral--65bcafa2b87fb1bd63d984af",
  "source": {
    "blob": "af4a8c40634ac4c32a63c6f8aea15d92877b2208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 299,
    "path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65bcafa2b87fb1bd63d984afb29aea23c02fbfcd2ff0a22d27f8ed2e1178c81a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13fa7764-a151-e2b5-78e5-dc868822b559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–332.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af4a8c40634ac4c32a63c6f8aea15d92877b2208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
