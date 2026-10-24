# actual_weighted_norm_has_two_fixed_positive_constants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45c66bfd-6725-8db4-fc75-48999a7e7971",
  "kind": "theorem",
  "lexical_name": "actual_weighted_norm_has_two_fixed_positive_constants",
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
  "slug": "actual-weighted-norm-has-two-fixed-positive-constants--76ecea3c4fead32e6a19e94c",
  "source": {
    "blob": "08851934490227b79c9b4f11523797e58b9db58a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 104,
    "path": "GRWTSK/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76ecea3c4fead32e6a19e94cc701ad6d8aea17ab72159262f2697340444a25f0",
  "verification": {
    "reference": "docs/verification/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45c66bfd-6725-8db4-fc75-48999a7e7971`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_weighted_norm_has_two_fixed_positive_constants {θ : ℝ} (hθ : 0 < θ) :
    ∃ c K : ℝ, 0 < c ∧ 0 < K ∧ ∀ A : ℝ, 8 ≤ A →
      c * (Real.exp (2 * θ * A) / A ^ 9) ≤ normPrice A θ ∧
        normPrice A θ ≤ K * (Real.exp (2 * θ * A) / A ^ 9) := by
  refine ⟨Real.exp (-2 * θ) / 512, max 1 (upperConstant θ), by positivity,
    lt_of_lt_of_le zero_lt_one (le_max_left _ _), ?_⟩
  intro A hA
  constructor
  · have h := full_actual_weighted_norm_lower hA hθ.le
    have heq : Real.exp (-2 * θ) / 512 * (Real.exp (2 * θ * A) / A ^ 9) =
        Real.exp (θ * (2 * A - 2)) / (512 * A ^ 9) := by
      rw [div_mul_div_comm, ← Real.exp_add]
      congr 2
      ring
    rw [heq]
    exact h
  · have h := full_actual_weighted_norm_upper (by linarith : 1 ≤ A) hθ
    have hm := mul_le_mul_of_nonneg_left (le_max_right 1 (upperConstant θ))
      (by positivity : 0 ≤ Real.exp (2 * θ * A) / A ^ 9)
    exact h.trans (by simpa only [mul_comm] using hm)

end
end GRWTSK.RiemannHypothesis.Conversation.ActualWeightedNormUpper
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08851934490227b79c9b4f11523797e58b9db58a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
