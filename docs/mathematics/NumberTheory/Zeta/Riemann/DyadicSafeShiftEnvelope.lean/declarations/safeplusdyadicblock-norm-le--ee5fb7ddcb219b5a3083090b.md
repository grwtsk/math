# safePlusDyadicBlock_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c70cad5-f55c-3f11-51ea-8da756054516",
  "kind": "theorem",
  "lexical_name": "safePlusDyadicBlock_norm_le",
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
  "slug": "safeplusdyadicblock-norm-le--ee5fb7ddcb219b5a3083090b",
  "source": {
    "blob": "0d7cfc2cfc92efb3b5ec5b0c1d7c37ee07b34fe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 101,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftEnvelope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee5fb7ddcb219b5a3083090bbd58a58c2bf951858dd9907f292889774a0983b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicSafeShiftEnvelope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c70cad5-f55c-3f11-51ea-8da756054516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem safePlusDyadicBlock_norm_le
    (z : ZeroPoint) (j : ℕ) :
    ‖safePlusDyadicBlock z j‖ ≤ safeDyadicEnergyEnvelope z j := by
  have hbase :=
    dirichletBlock_norm_bound
      (dyadicScale_pos j)
      (safeDyadicRadius_nonnegative z)
      (safeShiftPlus_norm_le_radius z)
  have hlog :
      0 ≤ Real.log (dyadicScale j : ℝ) :=
    Real.log_nonneg (by
      exact_mod_cast (Nat.one_le_iff_ne_zero.mpr
        (Nat.ne_of_gt (dyadicScale_pos j))))
  have hre :
      1 - (safeShiftPlus z.1).re ≤ -(1 / 2 : ℝ) := by
    linarith [safeShiftPlus_three_halves_lt_re z]
  have hexp :
      Real.exp ((1 - (safeShiftPlus z.1).re) *
          Real.log (dyadicScale j : ℝ)) ≤
        safeDyadicHalfWeight j := by
    unfold safeDyadicHalfWeight
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_right hre hlog
  unfold safePlusDyadicBlock safeDyadicEnergyEnvelope
  exact hbase.trans
    (mul_le_mul_of_nonneg_right hexp
      (mul_nonneg (Real.sqrt_nonneg _)
        (Real.sqrt_nonneg _)))

/-- The safe minus block has the same source envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicSafeShiftEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftEnvelope.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d7cfc2cfc92efb3b5ec5b0c1d7c37ee07b34fe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
