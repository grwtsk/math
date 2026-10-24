# binomial_least_gain_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddf37556-4d15-5151-ae57-54457a1a998d",
  "kind": "theorem",
  "lexical_name": "binomial_least_gain_bound",
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
  "slug": "binomial-least-gain-bound--37658f17f1d7009467a9cb9c",
  "source": {
    "blob": "b34590044167c96fb24236dc87fb26bc006a09e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MixtureLeastGain/Variant76d4e36615da35d6c7d6046a56e9705ee0aa0a80ca9c214fc081282403b10f6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37658f17f1d7009467a9cb9cae3bd406ba0b20dab1cb8c123134096b5c20a7cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MixtureLeastGain/Variant76d4e36615da35d6c7d6046a56e9705ee0aa0a80ca9c214fc081282403b10f6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddf37556-4d15-5151-ae57-54457a1a998d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binomial_least_gain_bound {m : ℕ} (hm : 2 ≤ m) :
    leastGain m ≤ Real.sqrt (2 * (m + 1 : ℝ)) /
      Real.sqrt ((2 * m).choose m : ℝ) * (Real.log 3 / m) ^ m := by
  have hn : ‖witness m‖ = Real.sqrt ((2 * m).choose m : ℝ) := by
    have h := congrArg Real.sqrt (witness_norm_sq m)
    rw [Real.sqrt_sq (norm_nonneg _)] at h
    exact h
  have h := leastGain_le_ratio m (witness m) (witness_nonzero m)
  have hb := div_le_div_of_nonneg_right (response_norm_bound hm) (norm_nonneg (witness m))
  exact h.trans (by simpa [hn, div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc] using hb)

end
end GRWTSK.RiemannHypothesis.Conversation.MixtureLeastGain
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MixtureLeastGain/Variant76d4e36615da35d6c7d6046a56e9705ee0aa0a80ca9c214fc081282403b10f6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MixtureLeastGain/Variant76d4e36615da35d6c7d6046a56e9705ee0aa0a80ca9c214fc081282403b10f6b.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b34590044167c96fb24236dc87fb26bc006a09e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
