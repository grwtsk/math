# thetaPhi_second_tailKernel_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6a00e6e-4d67-2b2a-4a08-c26a7d3d62e3",
  "kind": "theorem",
  "lexical_name": "thetaPhi_second_tailKernel_integral",
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
  "slug": "thetaphi-second-tailkernel-integral--6f02597764e708a680249a51",
  "source": {
    "blob": "e49b7daf657012e8244b3783350e26e6703cf5c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 277,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f02597764e708a680249a51d6865832280fb32abd674ec7a7c788b0b3ee4337",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6a00e6e-4d67-2b2a-4a08-c26a7d3d62e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem thetaPhi_second_tailKernel_integral (s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    (∫ u in Ici t, (deriv (deriv thetaPhi) u * (u - t) ^ (s + 1) /
      ((s + 1).factorial : ℝ))) = thetaTail s t := by
  have hd : IntegrableOn (fun u => deriv (deriv thetaPhi) u * (u - t) ^ (s + 1) /
      ((s + 1).factorial : ℝ)) (Ici t) :=
    (thetaPhi_second_sub_pow_integrable (s + 1) ht).div_const ((s + 1).factorial : ℝ)
  have hf : IntegrableOn (fun u => deriv thetaPhi u * (u - t) ^ s / (s.factorial : ℝ))
      (Ici t) := (thetaPhi_deriv_sub_pow_integrable s ht).div_const (s.factorial : ℝ)
  have hderiv (u : ℝ) (_hu : u ∈ Ici t) :
      HasDerivAt (fun u => deriv thetaPhi u * (u - t) ^ (s + 1) / ((s + 1).factorial : ℝ))
        (deriv (deriv thetaPhi) u * (u - t) ^ (s + 1) / ((s + 1).factorial : ℝ) +
          deriv thetaPhi u * (u - t) ^ s / (s.factorial : ℝ)) u := by
    have hphi : HasDerivAt (deriv thetaPhi) (deriv (deriv thetaPhi) u) u := by
      rw [show deriv thetaPhi = thetaPhiRawD1 from funext deriv_thetaPhi_eq_raw]
      exact (hasDerivAt_thetaPhiRawD1 u).differentiableAt.hasDerivAt
    convert! (hphi.mul (((hasDerivAt_id u).sub_const t).pow (s + 1))).div_const
      ((s + 1).factorial : ℝ) using 1
    simp only [Nat.add_sub_cancel, id_eq, Pi.pow_apply]
    rw [Nat.factorial_succ]
    push_cast
    field_simp
  have hlim := (thetaPhi_deriv_mul_sub_pow_tendsto (s + 1) ht).div_const
    ((s + 1).factorial : ℝ)
  have hh := integral_Ioi_of_hasDerivAt_of_tendsto' hderiv
    ((hd.add hf).mono_set Ioi_subset_Ici_self) hlim
  rw [← integral_Ici_eq_integral_Ioi, integral_add hd hf,
    thetaPhi_deriv_tailKernel_integral_all s ht] at hh
  simp only [sub_self, zero_pow (Nat.succ_ne_zero s), mul_zero, zero_div] at hh
  linarith

/-- The derivative source gap is also an exact integral, after two justified
improper integrations by parts. Both boundary products decay by Gaussian bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e49b7daf657012e8244b3783350e26e6703cf5c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
