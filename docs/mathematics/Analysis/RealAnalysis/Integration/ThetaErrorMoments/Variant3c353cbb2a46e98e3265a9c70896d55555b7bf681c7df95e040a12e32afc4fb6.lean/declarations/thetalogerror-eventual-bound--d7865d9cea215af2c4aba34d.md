# thetaLogError_eventual_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:479bf9f2-1cb7-b400-a132-a2c606ec9cc7",
  "kind": "theorem",
  "lexical_name": "thetaLogError_eventual_bound",
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
  "slug": "thetalogerror-eventual-bound--d7865d9cea215af2c4aba34d",
  "source": {
    "blob": "a5519e889510ec94c21d6792e35e1d4828337f8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7865d9cea215af2c4aba34d1c6bc7f6ea459c420b0263c9b141f936cc79af92",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:479bf9f2-1cb7-b400-a132-a2c606ec9cc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaLogError_eventual_bound : ∃ c > 0, ∃ C > 0, ∃ T ≥ 1,
    ∀ u ≥ T, |thetaLogError u| ≤ C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) +
      2 * u * Real.exp (-u / 2) := by
  obtain ⟨c, hc, C, hC, T, hT, hb⟩ := errorProfile_quantitative_tail
  refine ⟨c, hc, C, hC, T, hT, ?_⟩
  intro u hu
  apply (thetaLogError_abs_le_psi_error u (by linarith)).trans
  apply add_le_add _ le_rfl
  calc
    _ ≤ (C * Real.exp u * Real.exp (-c * u ^ ((1 : ℝ) / 10))) * Real.exp (-u) :=
      mul_le_mul_of_nonneg_right (hb u hu u le_rfl) (Real.exp_pos _).le
    _ = C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) := by
      calc
        _ = C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) * (Real.exp u * Real.exp (-u)) := by ring
        _ = _ := by rw [← Real.exp_add, add_neg_cancel, Real.exp_zero, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5519e889510ec94c21d6792e35e1d4828337f8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
