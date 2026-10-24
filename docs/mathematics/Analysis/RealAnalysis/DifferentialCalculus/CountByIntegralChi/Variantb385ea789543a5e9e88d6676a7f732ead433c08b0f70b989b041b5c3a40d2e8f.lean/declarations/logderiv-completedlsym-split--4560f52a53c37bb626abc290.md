# logDeriv_completedLSym_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "924cc5c863b9429d18c53faf2ddb99bf66010592",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:edf96f50-e949-3766-976b-8a89fb37fcc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d169985-a86c-3c37-6929-52d933b9cafe",
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
  "slug": "logderiv-completedlsym-split--4560f52a53c37bb626abc290",
  "source": {
    "blob": "924cc5c863b9429d18c53faf2ddb99bf66010592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4560f52a53c37bb626abc290134cc84fbe5af1b5e84c8911e3b07bc9eef599fa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d169985-a86c-3c37-6929-52d933b9cafe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–174.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924cc5c863b9429d18c53faf2ddb99bf66010592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
