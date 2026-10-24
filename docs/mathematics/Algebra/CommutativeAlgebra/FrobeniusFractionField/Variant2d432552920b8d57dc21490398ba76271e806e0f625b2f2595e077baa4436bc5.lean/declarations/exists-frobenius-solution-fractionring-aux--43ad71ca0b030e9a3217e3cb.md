# exists_frobenius_solution_fractionRing_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9964f099-57cb-aad6-7f86-15ac69929d5b",
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
  "slug": "exists-frobenius-solution-fractionring-aux--43ad71ca0b030e9a3217e3cb",
  "source": {
    "blob": "9fdf2e85880d1e6c6aed616684ca46ed9ed9b606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 253,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43ad71ca0b030e9a3217e3cbb35dbd43c1e9ec7c3cf09e77fc27d313ad5b0d71",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9964f099-57cb-aad6-7f86-15ac69929d5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_frobenius_solution_fractionRing_aux (m n : ℕ) (r' q' : 𝕎 k) (hr' : r'.coeff 0 ≠ 0)
    (hq' : q'.coeff 0 ≠ 0) (hq : (p : 𝕎 k) ^ n * q' ∈ nonZeroDivisors (𝕎 k)) :
    let b : 𝕎 k := frobeniusRotation p hr' hq'
    IsFractionRing.fieldEquivOfRingEquiv (frobeniusEquiv p k)
          (algebraMap (𝕎 k) (FractionRing (𝕎 k)) b) *
        Localization.mk ((p : 𝕎 k) ^ m * r') ⟨(p : 𝕎 k) ^ n * q', hq⟩ =
      (p : Localization (nonZeroDivisors (𝕎 k))) ^ (m - n : ℤ) *
        algebraMap (𝕎 k) (FractionRing (𝕎 k)) b := by
  intro b
  have key : WittVector.frobenius b * (p : 𝕎 k) ^ m * r' * (p : 𝕎 k) ^ n =
      (p : 𝕎 k) ^ m * b * ((p : 𝕎 k) ^ n * q') := by
    have H := congr_arg (fun x : 𝕎 k => x * (p : 𝕎 k) ^ m * (p : 𝕎 k) ^ n)
      (frobenius_frobeniusRotation p hr' hq')
    dsimp at H
    refine' (Eq.trans _ H).trans _ <;> ring
  have hq'' : algebraMap (𝕎 k) (FractionRing (𝕎 k)) q' ≠ 0 := by
    have hq''' : q' ≠ 0 := fun h => hq' (by simp [h])
    simpa only [Ne.def, map_zero] using
      (IsFractionRing.injective (𝕎 k) (FractionRing (𝕎 k))).ne hq'''
  rw [zpow_sub₀ (FractionRing.p_nonzero p k)]
  field_simp [FractionRing.p_nonzero p k]
  simp only [IsFractionRing.fieldEquivOfRingEquiv, IsLocalization.ringEquivOfRingEquiv_eq,
    RingEquiv.coe_ofBijective]
  convert congr_arg (fun x => algebraMap (𝕎 k) (FractionRing (𝕎 k)) x) key using 1
  · simp only [RingHom.map_mul, RingHom.map_pow, map_natCast, frobeniusEquiv_apply]
    ring
  · simp only [RingHom.map_mul, RingHom.map_pow, map_natCast]
#align witt_vector.exists_frobenius_solution_fraction_ring_aux WittVector.exists_frobenius_solution_fractionRing_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fdf2e85880d1e6c6aed616684ca46ed9ed9b606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
