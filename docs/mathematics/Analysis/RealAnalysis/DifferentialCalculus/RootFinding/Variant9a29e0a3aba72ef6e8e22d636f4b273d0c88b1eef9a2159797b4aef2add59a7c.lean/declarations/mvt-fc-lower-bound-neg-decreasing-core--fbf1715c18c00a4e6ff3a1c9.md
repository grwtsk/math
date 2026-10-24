# mvt_fc_lower_bound_neg_decreasing_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78feedd8-c9e4-b8e8-183e-972ac1063834",
  "kind": "lemma",
  "lexical_name": "mvt_fc_lower_bound_neg_decreasing_core",
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
  "slug": "mvt-fc-lower-bound-neg-decreasing-core--fbf1715c18c00a4e6ff3a1c9",
  "source": {
    "blob": "315d17660f460f5b4b197971d55addc12669fe53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 539,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbf1715c18c00a4e6ff3a1c903967897f936ab5de1a351b43a306de203cbe9a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78feedd8-c9e4-b8e8-183e-972ac1063834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mvt_fc_lower_bound_neg_decreasing_core
    (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (cfg : EvalConfig)
    (_hI_nonsingleton : I.lo < I.hi)
    (_hdI_hi_neg : (derivIntervalCore e I cfg).hi < 0)
    (hCont : ContinuousOn (evalFunc1 e) (Set.Icc I.lo I.hi))
    (hf_Ihi_pos : 0 < evalFunc1 e I.hi) :
    let c : ℚ := I.midpoint
    let hw : ℚ := (I.hi - I.lo) / 2
    let dI := derivIntervalCore e I cfg
    evalFunc1 e c > -((dI.hi : ℝ) * hw) := by
  intro c hw dI
  have hderiv_hi : ∀ ξ ∈ I, deriv (evalFunc1 e) ξ ≤ (dI.hi : ℝ) := fun ξ hξ =>
    (derivIntervalCore_correct e hsupp I ξ hξ cfg).2
  have hc_in_I : (c : ℝ) ∈ I := IntervalRat.midpoint_mem I
  have hIhi_in_I : (I.hi : ℝ) ∈ I := by
    simp only [IntervalRat.mem_def]
    exact ⟨by exact_mod_cast I.le, le_refl _⟩
  have hc_le_Ihi : (c : ℝ) ≤ I.hi := by
    have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
    have hc_def : (c : ℝ) = ((I.lo : ℝ) + I.hi) / 2 := by
      show ((I.lo + I.hi) / 2 : ℚ) = ((I.lo : ℝ) + I.hi) / 2; push_cast; ring
    linarith
  have hmvt := mvt_upper_bound_core e hsupp I cfg hCont c I.hi hc_in_I hIhi_in_I hc_le_Ihi
  have hIhi_minus_c : (I.hi : ℝ) - c = hw := by
    have hc_def : (c : ℝ) = ((I.lo : ℝ) + I.hi) / 2 := by
      show ((I.lo + I.hi) / 2 : ℚ) = ((I.lo : ℝ) + I.hi) / 2; push_cast; ring
    have hhw_def : (hw : ℝ) = ((I.hi : ℝ) - I.lo) / 2 := by
      show (((I.hi - I.lo) / 2 : ℚ) : ℝ) = ((I.hi : ℝ) - I.lo) / 2; push_cast; ring
    linarith
  rw [hIhi_minus_c] at hmvt
  calc evalFunc1 e c ≥ evalFunc1 e I.hi - dI.hi * hw := by linarith
    _ > 0 - dI.hi * hw := by linarith
    _ = -(dI.hi * hw) := by ring

/-- **Golden Theorem for Computable Unique Root (Fully Computable)**

    If `checkNewtonContractsCore e I cfg = true`, then there exists a unique root in I.

    This theorem uses ONLY computable functions (no Real.exp, Real.log, etc.),
    making it suitable for `native_decide` verification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `315d17660f460f5b4b197971d55addc12669fe53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
