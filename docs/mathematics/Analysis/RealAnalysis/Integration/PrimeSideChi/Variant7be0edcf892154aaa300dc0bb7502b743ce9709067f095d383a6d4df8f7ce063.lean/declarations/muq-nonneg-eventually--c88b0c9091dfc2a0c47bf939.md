# muq_nonneg_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9969f045-3ffb-f66a-cf57-abec2c64cb52",
  "kind": "lemma",
  "lexical_name": "muq_nonneg_eventually",
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
  "slug": "muq-nonneg-eventually--c88b0c9091dfc2a0c47bf939",
  "source": {
    "blob": "b7f058ea3d12e02b6f34456557fc66c69d693d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 362,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c88b0c9091dfc2a0c47bf9395d476b754697735e7d7606b70ad26079162ae52d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9969f045-3ffb-f66a-cf57-abec2c64cb52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma muq_nonneg_eventually (hΓq : GammaFactsChi κ q) (hq : 1 ≤ q) :
    ∃ τ₀ : ℝ, 0 ≤ τ₀ ∧ ∀ x, τ₀ ≤ x → 0 ≤ muq κ q x := by
  obtain ⟨C, hC⟩ := hΓq.stirling
  refine ⟨2 * π * Real.exp (2 * π * |C|), by positivity, fun x hx => ?_⟩
  have hq1 : (1:ℝ) ≤ (q:ℝ) := by exact_mod_cast hq
  have h1 : (1:ℝ) ≤ Real.exp (2 * π * |C|) := Real.one_le_exp (by positivity)
  have hπ3 := Real.pi_gt_three
  have hx1 : 1 ≤ x := by nlinarith
  have hx0 : 0 < x := by linarith
  have hst := hC x (by rwa [abs_of_pos hx0])
  rw [abs_of_pos hx0] at hst
  have hlog : 2 * π * |C| ≤ Real.log ((q:ℝ) * x / (2 * π)) := by
    have e1 : Real.exp (2 * π * |C|) ≤ (q:ℝ) * x / (2 * π) := by
      rw [le_div_iff₀ (by positivity)]
      nlinarith
    calc 2 * π * |C| = Real.log (Real.exp (2 * π * |C|)) := (Real.log_exp _).symm
      _ ≤ Real.log ((q:ℝ) * x / (2 * π)) := Real.log_le_log (Real.exp_pos _) e1
  have hCx : C / x ^ 2 ≤ |C| := by
    calc C / x ^ 2 ≤ |C| / x ^ 2 := by gcongr; exact le_abs_self _
      _ ≤ |C| / 1 := by
          apply div_le_div_of_nonneg_left (abs_nonneg _) one_pos
          nlinarith
      _ = |C| := div_one _
  have h2 : |C| ≤ 1 / (2 * π) * Real.log ((q:ℝ) * x / (2 * π)) := by
    rw [div_mul_eq_mul_div, one_mul, le_div_iff₀ (by positivity)]
    linarith
  linarith [(abs_le.1 hst).1]

end MuqAnalytic

/-! ## The complex Dirichlet kernel bound (mirror of the cosine-kernel lemmas) -/

section KernelChi

variable {cϱ : ℝ} {p : Setting} {F : LocalFun}

/-- `|sin(θ/2)|·‖Σ_{k<d} e^{ikθ}‖ ≤ 1` (geometric sum; complex mirror of
`abs_sin_mul_abs_sum_cos_le`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f058ea3d12e02b6f34456557fc66c69d693d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
