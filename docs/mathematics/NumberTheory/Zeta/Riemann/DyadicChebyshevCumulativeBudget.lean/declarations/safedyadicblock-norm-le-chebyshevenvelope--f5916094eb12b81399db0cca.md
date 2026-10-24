# safeDyadicBlock_norm_le_chebyshevEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec464f32-2837-776a-5d0b-1d6af1a75406",
  "kind": "theorem",
  "lexical_name": "safeDyadicBlock_norm_le_chebyshevEnvelope",
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
  "slug": "safedyadicblock-norm-le-chebyshevenvelope--f5916094eb12b81399db0cca",
  "source": {
    "blob": "bc83bf1f65d66d02e65534c5056b86b00f6a4d1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 240,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5916094eb12b81399db0cca6367e0d7d1c7ead595f07ddd5d81c7a80d082cf5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec464f32-2837-776a-5d0b-1d6af1a75406`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem safeDyadicBlock_norm_le_chebyshevEnvelope
    (z : ZeroPoint) (j : ℕ) (w : ℂ)
    (hre : (3 / 2 : ℝ) < w.re)
    (hnorm : ‖w‖ ≤ safeDyadicQuarticRadius z) :
    ‖dirichletBlock (dyadicScale j) w‖ ≤
      safeChebyshevDyadicEnvelope z j := by
  rw [dirichletBlock_eq_scaled_action (dyadicScale_pos j), norm_mul]
  have hlog :
      0 ≤ Real.log (dyadicScale j : ℝ) :=
    Real.log_nonneg (by
      exact_mod_cast (Nat.one_le_iff_ne_zero.mpr
        (Nat.ne_of_gt (dyadicScale_pos j))))
  have hre' : 1 - w.re ≤ -(1 / 2 : ℝ) := by linarith
  have hexp :
      ‖Complex.exp ((1 - w) * (Real.log (dyadicScale j) : ℂ))‖ ≤
        safeDyadicHalfWeight j := by
    simp only [Complex.norm_exp, Complex.mul_re, Complex.sub_re,
      Complex.one_re, Complex.ofReal_re, Complex.ofReal_im,
      mul_zero, sub_zero]
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_right hre' hlog
  have haction :
      ‖action (dyadicScale j) (mellinTest w)‖ ≤
        safeChebyshevActionConstant z := by
    unfold safeChebyshevActionConstant
    exact action_norm_le_chebyshev
      (dyadicScale_pos j)
      (safeDyadicQuarticRadius_nonnegative z)
      hnorm
  rw [safeChebyshevDyadicEnvelope,
    ← safeDyadicHalfWeight_eq_dyadicWeight_half]
  rw [mul_comm (safeChebyshevActionConstant z)]
  exact mul_le_mul hexp haction (norm_nonneg _) (by unfold safeDyadicHalfWeight; positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc83bf1f65d66d02e65534c5056b86b00f6a4d1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
