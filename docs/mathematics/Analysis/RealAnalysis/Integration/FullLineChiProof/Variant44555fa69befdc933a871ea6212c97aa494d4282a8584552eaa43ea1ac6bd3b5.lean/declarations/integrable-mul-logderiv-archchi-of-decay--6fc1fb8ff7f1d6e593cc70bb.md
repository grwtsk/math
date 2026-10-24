# integrable_mul_logDeriv_archChi_of_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9416a67313657b74c4c490f7fc262e07c4d0ce9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:325d200f-583e-1127-56ac-0478befb5527",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64feaccb-5b43-dc8c-9439-fcbaa69980b9",
  "kind": "theorem",
  "lexical_name": "integrable_mul_logDeriv_archChi_of_decay",
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
  "slug": "integrable-mul-logderiv-archchi-of-decay--6fc1fb8ff7f1d6e593cc70bb",
  "source": {
    "blob": "9416a67313657b74c4c490f7fc262e07c4d0ce9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 375,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fc1fb8ff7f1d6e593cc70bb25f71bd1441aca3aaad5e3d9309a701f772e58ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64feaccb-5b43-dc8c-9439-fcbaa69980b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_mul_logDeriv_archChi_of_decay (κ : ℕ) (hκ : κ ≤ 1) {φ : ℝ → ℂ}
    (hφc : Continuous φ) {C : ℝ} (hC0 : 0 ≤ C) (hC : ∀ t, ‖φ t‖ ≤ C / (1 + t ^ 2))
    {σ : ℝ} (hσ1 : 1 / 2 ≤ σ) (hσ2 : σ ≤ 3 / 2) :
    Integrable (fun t : ℝ => φ t * logDeriv (archChi q κ) ((σ : ℂ) + t * I)) := by
  obtain ⟨CG, hCG, hGb⟩ := norm_logDeriv_archChi_le q κ hκ
  set K : ℝ := C * (5 * CG) with hK
  have hmaj : Integrable (fun t : ℝ => K * ((1 : ℝ) + ‖t‖ ^ 2) ^ (-(3 / 2 : ℝ) / 2)) :=
    (integrable_rpow_neg_one_add_norm_sq (E := ℝ) (μ := volume)
      (by rw [Module.finrank_self]; norm_num)).const_mul K
  have hGc : Continuous (fun t : ℝ => logDeriv (archChi q κ) ((σ : ℂ) + t * I)) := by
    refine continuous_iff_continuousAt.mpr fun t => ?_
    have hre : 0 < ((σ : ℂ) + t * I).re := by simp; linarith
    show ContinuousAt ((logDeriv (archChi q κ)) ∘ (fun t : ℝ => (σ : ℂ) + t * I)) t
    exact ContinuousAt.comp (differentiableAt_logDeriv_archChi q κ hre).continuousAt
      (by fun_prop : Continuous fun t : ℝ => (σ : ℂ) + t * I).continuousAt
  refine Integrable.mono' hmaj (hφc.mul hGc).aestronglyMeasurable (Eventually.of_forall fun t => ?_)
  have hq' : 0 < (1 + t ^ 2 : ℝ) := by positivity
  have hL : ‖logDeriv (archChi q κ) ((σ : ℂ) + t * I)‖ ≤ (5 * CG) * (1 + t ^ 2) ^ (1 / 4 : ℝ) := by
    refine (hGb σ t hσ1 hσ2).trans ?_
    have := log_two_add_le (abs_nonneg t)
    rw [sq_abs] at this
    nlinarith
  rw [norm_mul]
  have hpow : (C / (1 + t ^ 2)) * ((5 * CG) * (1 + t ^ 2) ^ (1 / 4 : ℝ))
      = K * ((1 : ℝ) + ‖t‖ ^ 2) ^ (-(3 / 2 : ℝ) / 2) := by
    rw [Real.norm_eq_abs, sq_abs, hK]
    have e : (1 + t ^ 2 : ℝ) ^ (-(3 / 2 : ℝ) / 2) = (1 + t ^ 2) ^ (1 / 4 : ℝ) / (1 + t ^ 2) := by
      rw [show (-(3 / 2 : ℝ) / 2) = (1 / 4 : ℝ) - 1 by norm_num, Real.rpow_sub hq', Real.rpow_one]
    rw [e]
    field_simp
  calc ‖φ t‖ * ‖logDeriv (archChi q κ) ((σ : ℂ) + t * I)‖
      ≤ (C / (1 + t ^ 2)) * ((5 * CG) * (1 + t ^ 2) ^ (1 / 4 : ℝ)) :=
        mul_le_mul (hC t) hL (norm_nonneg _) (by positivity)
    _ = K * ((1 : ℝ) + ‖t‖ ^ 2) ^ (-(3 / 2 : ℝ) / 2) := hpow

omit [NeZero q] in
/-- gammaFactor in terms of the parity: `gammaFactor χ s = Γℝ(s + parity χ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9416a67313657b74c4c490f7fc262e07c4d0ce9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
