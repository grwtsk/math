# integrable_phiHat_mul_mul_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c943a48e-c6da-86ce-5d61-5dbfe8c7a466",
  "kind": "lemma",
  "lexical_name": "integrable_phiHat_mul_mul_bdd",
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
  "slug": "integrable-phihat-mul-mul-bdd--58b16916dba6bb4e8458b9d2",
  "source": {
    "blob": "4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58b16916dba6bb4e8458b9d2ca1b229609847c683f410f7e4edf063675c1ec60",
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

Occurrence: `result:c943a48e-c6da-86ce-5d61-5dbfe8c7a466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_phiHat_mul_mul_bdd (hF : LocalHypsCore cϱ p Fn) (k l : ℤ) {g : ℝ → ℝ}
    (hg : Continuous g) {c : ℝ} (hc : ∀ x, |g x| ≤ c) :
    Integrable (fun τ => Fn.phiHat (τ - p.tau k) * Fn.phiHat (τ - p.tau l) * g τ) := by
  have hc0 : 0 ≤ c := (abs_nonneg _).trans (hc 0)
  have h1 : Integrable (fun τ => Fn.phiHat (τ - p.tau k) ^ 2) :=
    hF.phiHat_sq_integrable.comp_sub_right (p.tau k)
  have h2 : Integrable (fun τ => Fn.phiHat (τ - p.tau l) ^ 2) :=
    hF.phiHat_sq_integrable.comp_sub_right (p.tau l)
  refine Integrable.mono' ((h1.add h2).mul_const (c / 2)) ?_ ?_
  · have := hF.phiHat_cont
    exact (by fun_prop : Continuous fun τ =>
      Fn.phiHat (τ - p.tau k) * Fn.phiHat (τ - p.tau l) * g τ).aestronglyMeasurable
  · refine Eventually.of_forall fun τ => ?_
    rw [Real.norm_eq_abs, abs_mul, abs_mul]
    set a := Fn.phiHat (τ - p.tau k)
    set b := Fn.phiHat (τ - p.tau l)
    have hab : |a| * |b| ≤ (a ^ 2 + b ^ 2) / 2 := by
      nlinarith [sq_abs a, sq_abs b, sq_nonneg (|a| - |b|)]
    calc |a| * |b| * |g τ| ≤ (a ^ 2 + b ^ 2) / 2 * c :=
          mul_le_mul hab (hc τ) (abs_nonneg _) (by positivity)
      _ = (a ^ 2 + b ^ 2) * (c / 2) := by ring

/-- φ̂(·−t)² ν is integrable for ν = μ + ϖ·Π_X + P_c, t > 0 (translate the three diagonal part lemmas). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
