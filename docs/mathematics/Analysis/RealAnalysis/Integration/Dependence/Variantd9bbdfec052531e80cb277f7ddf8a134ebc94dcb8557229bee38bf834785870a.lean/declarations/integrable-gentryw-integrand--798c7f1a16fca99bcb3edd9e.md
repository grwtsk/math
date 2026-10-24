# integrable_gentryW_integrand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb6cf45c-a92e-fbb5-4000-3fe2cabf5d86",
  "kind": "lemma",
  "lexical_name": "integrable_gentryW_integrand",
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
  "slug": "integrable-gentryw-integrand--798c7f1a16fca99bcb3edd9e",
  "source": {
    "blob": "4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:798c7f1a16fca99bcb3edd9e8b321db286217823ebc15ce04376cc6c2cf6e8b8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb6cf45c-a92e-fbb5-4000-3fe2cabf5d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_gentryW_integrand (hΓ : Zeta23.GammaFacts) (hF : LocalHypsCore cϱ p Fn) (hX : 0 < p.X)
    (cPi : ℝ) (c : ℕ → ℂ) {k l : ℤ} (hk : 0 < p.tau k) (hl : 0 < p.tau l) :
    Integrable (fun τ => Fn.phiHat (τ - p.tau k) * Fn.phiHat (τ - p.tau l) * nucW cPi p.X c τ) := by
  have h1 := (integrable_phiHat_sq_shift_mul_nucW hΓ hF cPi c hk).norm
  have h2 := (integrable_phiHat_sq_shift_mul_nucW hΓ hF cPi c hl).norm
  refine Integrable.mono' ((h1.add h2).div_const 2) ?_ ?_
  · have := hF.phiHat_cont
    have := nucW_continuous hΓ hX cPi c
    exact (by fun_prop : Continuous fun τ =>
      Fn.phiHat (τ - p.tau k) * Fn.phiHat (τ - p.tau l) * nucW cPi p.X c τ).aestronglyMeasurable
  · refine Eventually.of_forall fun τ => ?_
    simp only [Real.norm_eq_abs, abs_mul, Pi.add_apply, abs_pow, sq_abs]
    set a := Fn.phiHat (τ - p.tau k)
    set b := Fn.phiHat (τ - p.tau l)
    set v := |nucW cPi p.X c τ|
    have hv : 0 ≤ v := abs_nonneg _
    have hab : |a| * |b| ≤ (a ^ 2 + b ^ 2) / 2 := by
      nlinarith [sq_abs a, sq_abs b, sq_nonneg (|a| - |b|)]
    calc |a| * |b| * v ≤ (a ^ 2 + b ^ 2) / 2 * v := mul_le_mul_of_nonneg_right hab hv
      _ = (a ^ 2 * v + b ^ 2 * v) / 2 := by ring

/-- **linearity**: the μ- and Π-parts cancel in a difference of two fixed-coefficient entries (any pole weight). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
