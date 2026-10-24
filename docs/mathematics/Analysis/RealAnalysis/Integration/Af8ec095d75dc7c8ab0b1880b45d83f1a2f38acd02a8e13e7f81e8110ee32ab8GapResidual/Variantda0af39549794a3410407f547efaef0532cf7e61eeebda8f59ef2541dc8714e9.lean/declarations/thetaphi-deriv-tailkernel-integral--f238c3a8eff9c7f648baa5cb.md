# thetaPhi_deriv_tailKernel_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b1f9807-8913-1e60-a1a3-f01fb9975322",
  "kind": "theorem",
  "lexical_name": "thetaPhi_deriv_tailKernel_integral",
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
  "slug": "thetaphi-deriv-tailkernel-integral--f238c3a8eff9c7f648baa5cb",
  "source": {
    "blob": "7c4683aa5d5a6760558012d078682f24845528a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8GapResidual/Variantda0af39549794a3410407f547efaef0532cf7e61eeebda8f59ef2541dc8714e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f238c3a8eff9c7f648baa5cb3670826a72d9060b288e3e9a0ad6d55a94d047ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8GapResidual/Variantda0af39549794a3410407f547efaef0532cf7e61eeebda8f59ef2541dc8714e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b1f9807-8913-1e60-a1a3-f01fb9975322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem thetaPhi_deriv_tailKernel_integral (s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    (∫ u in Ici t, (deriv thetaPhi u * (u - t) ^ (s + 1) /
      ((s + 1).factorial : ℝ))) = -thetaTail (s + 1) t := by
  have hd : IntegrableOn (fun u => deriv thetaPhi u * (u - t) ^ (s + 1) /
      ((s + 1).factorial : ℝ)) (Ici t) :=
    (thetaPhi_deriv_sub_pow_integrable (s + 1) ht).div_const ((s + 1).factorial : ℝ)
  have hf := thetaTail_integrable s ht
  have hderiv (u : ℝ) (_hu : u ∈ Ici t) :
      HasDerivAt (fun u => thetaPhi u * (u - t) ^ (s + 1) / ((s + 1).factorial : ℝ))
        (deriv thetaPhi u * (u - t) ^ (s + 1) / ((s + 1).factorial : ℝ) +
          thetaPhi u * (u - t) ^ s / (s.factorial : ℝ)) u := by
    convert! (((hasDerivAt_thetaPhi_raw u).differentiableAt.hasDerivAt).mul
      (((hasDerivAt_id u).sub_const t).pow (s + 1))).div_const ((s + 1).factorial : ℝ) using 1
    simp only [Nat.add_sub_cancel, id_eq, Pi.pow_apply]
    rw [Nat.factorial_succ]
    push_cast
    field_simp
  have hlim := (thetaPhi_mul_sub_pow_tendsto (s + 1) ht).div_const ((s + 1).factorial : ℝ)
  have hh := integral_Ioi_of_hasDerivAt_of_tendsto' hderiv
    ((hd.add hf).mono_set Ioi_subset_Ici_self) hlim
  rw [← integral_Ici_eq_integral_Ioi, integral_add hd hf] at hh
  have ht1 : thetaTail (s + 1) t =
      (∫ u in Ici t, (thetaPhi u * (u - t) ^ s / (s.factorial : ℝ))) := rfl
  rw [ht1]
  simp only [sub_self, zero_pow (Nat.succ_ne_zero s), mul_zero, zero_div] at hh
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8GapResidual/Variantda0af39549794a3410407f547efaef0532cf7e61eeebda8f59ef2541dc8714e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8GapResidual/Variantda0af39549794a3410407f547efaef0532cf7e61eeebda8f59ef2541dc8714e9.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c4683aa5d5a6760558012d078682f24845528a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
