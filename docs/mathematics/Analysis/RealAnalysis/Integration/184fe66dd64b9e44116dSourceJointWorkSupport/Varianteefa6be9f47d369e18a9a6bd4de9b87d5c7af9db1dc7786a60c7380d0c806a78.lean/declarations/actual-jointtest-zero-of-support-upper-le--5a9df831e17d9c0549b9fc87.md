# actual_jointTest_zero_of_support_upper_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a989d4ee-369e-aa9c-1416-bf5946e041f9",
  "kind": "theorem",
  "lexical_name": "actual_jointTest_zero_of_support_upper_le",
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
  "slug": "actual-jointtest-zero-of-support-upper-le--5a9df831e17d9c0549b9fc87",
  "source": {
    "blob": "9f09a4cd7934aa15eff66f6065659b363d2131aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/184fe66dd64b9e44116dSourceJointWorkSupport/Varianteefa6be9f47d369e18a9a6bd4de9b87d5c7af9db1dc7786a60c7380d0c806a78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a9df831e17d9c0549b9fc87b635f99dd7f55333636ab75ed00b25d2099f528a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/184fe66dd64b9e44116dSourceJointWorkSupport/Varianteefa6be9f47d369e18a9a6bd4de9b87d5c7af9db1dc7786a60c7380d0c806a78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a989d4ee-369e-aa9c-1416-bf5946e041f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_jointTest_zero_of_support_upper_le (A t : ℝ) (hA : 1 ≤ A)
    (ht : actualJointSupportUpper A ≤ t) :
    jointMangoldtTestProfile A t = 0 := by
  classical
  let a := vaughanCutoff A + 1
  have ha : 0 < (a : ℝ) := by dsimp only [a]; positivity
  have hc (k : ℕ) (hk : a ≤ k) :
      sourceCorrelation explicitSecondDerivative A (t + Real.log (k : ℝ)) = 0 := by
    have hlog : Real.log (a : ℝ) ≤ Real.log (k : ℝ) :=
      Real.log_le_log ha (by exact_mod_cast hk)
    apply sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith)
    apply le_trans _ (le_abs_self _)
    change 2 * A - Real.log (a : ℝ) ≤ t at ht
    linarith
  unfold jointMangoldtTestProfile
  apply Finset.sum_eq_zero
  intro k hk
  have hka : a ≤ k := (Finset.mem_Ico.mp hk).1
  dsimp only
  rw [hc k hka, hc (k + 1) (by omega)]
  simp

/-- The derivative is zero at the closed support seam as well as beyond it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/184fe66dd64b9e44116dSourceJointWorkSupport/Varianteefa6be9f47d369e18a9a6bd4de9b87d5c7af9db1dc7786a60c7380d0c806a78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/184fe66dd64b9e44116dSourceJointWorkSupport/Varianteefa6be9f47d369e18a9a6bd4de9b87d5c7af9db1dc7786a60c7380d0c806a78.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f09a4cd7934aa15eff66f6065659b363d2131aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
