# exists_frobenius_solution_fractionRing_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9288aad7-a9e1-5e3f-0c35-d47267b68c7a",
  "kind": "theorem",
  "lexical_name": "exists_frobenius_solution_fractionRing_aux",
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
  "slug": "exists-frobenius-solution-fractionring-aux--9ca0409ad7fcf21038440976",
  "source": {
    "blob": "3137d86a23b33bc309ff646b9c9ffab6f85e6973",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 227,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ca0409ad7fcf210384409763573c41d92c82183d157d6deaed6eb917f7778b1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9288aad7-a9e1-5e3f-0c35-d47267b68c7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_frobenius_solution_fractionRing_aux (m n : ℕ) (r' q' : 𝕎 k) (hr' : r'.coeff 0 ≠ 0)
    (hq' : q'.coeff 0 ≠ 0) (hq : (p : 𝕎 k) ^ n * q' ∈ nonZeroDivisors (𝕎 k)) :
    let b : 𝕎 k := frobeniusRotation p hr' hq'
    IsFractionRing.ringEquivOfRingEquiv (frobeniusEquiv p k)
          (algebraMap (𝕎 k) (FractionRing (𝕎 k)) b) *
        Localization.mk ((p : 𝕎 k) ^ m * r') ⟨(p : 𝕎 k) ^ n * q', hq⟩ =
      (p : Localization (nonZeroDivisors (𝕎 k))) ^ (m - n : ℤ) *
        algebraMap (𝕎 k) (FractionRing (𝕎 k)) b := by
  intro b
  have key : WittVector.frobenius b * r' = q' * b := by
    linear_combination frobenius_frobeniusRotation p hr' hq'
  have hq'' : algebraMap (𝕎 k) (FractionRing (𝕎 k)) q' ≠ 0 := by
    have hq''' : q' ≠ 0 := fun h => hq' (by simp [h])
    simpa only [Ne, map_zero] using
      (IsFractionRing.injective (𝕎 k) (FractionRing (𝕎 k))).ne hq'''
  simp_rw [zpow_sub₀ (FractionRing.p_nonzero p k), IsFractionRing.ringEquivOfRingEquiv_apply,
    IsLocalization.map_eq, RingHom.coe_coe, frobeniusEquiv_apply, FractionRing.mk_eq_div, map_mul,
    map_pow, map_natCast, zpow_natCast, mul_div_mul_comm, mul_left_comm]
  congr
  simp_rw [← mul_div_assoc, div_eq_iff hq'', mul_comm (algebraMap _ _ b), ← map_mul, key]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3137d86a23b33bc309ff646b9c9ffab6f85e6973` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
