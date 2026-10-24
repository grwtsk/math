# logDeriv_completedLSym_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af7010be-b26e-312f-eeaf-48dcd9a65838",
  "kind": "lemma",
  "lexical_name": "logDeriv_completedLSym_split",
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
  "slug": "logderiv-completedlsym-split--8097035b6e7ab72734bd4735",
  "source": {
    "blob": "81fa7096ed581512e747d05525dfdc80cba590d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Varianta8ae3047d5b1874a2cc30f02cac8bfda637cba50c3357ada269584c0b02e8f14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8097035b6e7ab72734bd47357bd4be5573ff3260f87be72581f6a04769814e35",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Varianta8ae3047d5b1874a2cc30f02cac8bfda637cba50c3357ada269584c0b02e8f14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af7010be-b26e-312f-eeaf-48dcd9a65838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logDeriv_completedLSym_split (hq : 1 < q) (hχ1 : χ ≠ 1) {s : ℂ} (hre : 0 < s.re)
    (hL : χ.LFunction s ≠ 0) :
    logDeriv (completedLSym χ) s
      = logDeriv χ.LFunction s + logDeriv (fun z => (q : ℂ) ^ (z / 2) * gammaFactor χ z) s := by
  have hev : completedLSym χ =ᶠ[𝓝 s]
      (fun z => ((q : ℂ) ^ (z / 2) * gammaFactor χ z) * χ.LFunction z) := by
    filter_upwards [completed_eq_gamma_mul_L (χ := χ) hq hre] with z hz
    simp only [completedLSym, hz, Pi.mul_apply]
    ring
  obtain ⟨hγan, hγ0⟩ := gammaFactor_analyticAt (χ := χ) hre
  have hA : DifferentiableAt ℂ (fun z => (q : ℂ) ^ (z / 2) * gammaFactor χ z) s :=
    (differentiable_qpow s).mul hγan.differentiableAt
  have hAne : (q : ℂ) ^ (s / 2) * gammaFactor χ s ≠ 0 := mul_ne_zero (qpow_ne_zero s) hγ0
  have e1 : logDeriv (completedLSym χ) s
      = logDeriv (fun z => ((q : ℂ) ^ (z / 2) * gammaFactor χ z) * χ.LFunction z) s := by
    simp only [logDeriv_apply, hev.deriv_eq, hev.eq_of_nhds]
  rw [e1, logDeriv_mul (f := fun z => (q : ℂ) ^ (z / 2) * gammaFactor χ z) (g := χ.LFunction) s
    hAne hL hA ((differentiable_LFunction hχ1) s), add_comm]

/-! ## The count -/

/-- **N_χ(T₁,T₂) as a contour integral.** For T₁ ≤ T₂ (any sign) with no nontrivial zero of
L(·,χ) of ordinate T₁ or T₂:  (1/2πi)∮_{∂([−1,2]×[T₁,T₂])} Λ_sym'/Λ_sym = NcountL χ T₁ T₂. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Varianta8ae3047d5b1874a2cc30f02cac8bfda637cba50c3357ada269584c0b02e8f14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Varianta8ae3047d5b1874a2cc30f02cac8bfda637cba50c3357ada269584c0b02e8f14.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81fa7096ed581512e747d05525dfdc80cba590d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
