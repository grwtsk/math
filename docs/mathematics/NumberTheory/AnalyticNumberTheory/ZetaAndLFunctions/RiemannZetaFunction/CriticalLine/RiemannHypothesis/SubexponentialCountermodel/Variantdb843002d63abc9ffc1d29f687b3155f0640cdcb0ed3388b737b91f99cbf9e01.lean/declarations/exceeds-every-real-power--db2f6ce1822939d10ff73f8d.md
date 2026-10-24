# exceeds_every_real_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc1780cf-60a7-532c-398e-1a398890106e",
  "kind": "theorem",
  "lexical_name": "exceeds_every_real_power",
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
  "slug": "exceeds-every-real-power--db2f6ce1822939d10ff73f8d",
  "source": {
    "blob": "e6cb8d55094a38ebbd0c0b1f5c8b945d2000afb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantdb843002d63abc9ffc1d29f687b3155f0640cdcb0ed3388b737b91f99cbf9e01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db2f6ce1822939d10ff73f8dd8956c2ed6aa4dd3bfc0ae26e1208d47646be8a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantdb843002d63abc9ffc1d29f687b3155f0640cdcb0ed3388b737b91f99cbf9e01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc1780cf-60a7-532c-398e-1a398890106e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exceeds_every_real_power (C B : ℝ) {R : ℝ} (hR : 1 ≤ R) :
    ∃ t : ℝ, R ≤ t ∧ C * t ^ B < comparisonProfile t := by
  by_cases hC : 0 ≤ C
  · obtain ⟨m, hm⟩ := exists_nat_gt B
    obtain ⟨t, ht, hbig⟩ := exceeds_every_polynomial C m hR
    have ht1 : 1 ≤ t := hR.trans ht
    have hp := Real.rpow_le_rpow_of_exponent_le ht1 hm.le
    rw [Real.rpow_natCast] at hp
    exact ⟨t, ht, (mul_le_mul_of_nonneg_left hp hC).trans_lt hbig⟩
  · refine ⟨R, le_rfl, ?_⟩
    have hp : 0 < comparisonProfile R := Real.exp_pos _
    have hleft : C * R ^ B ≤ 0 := mul_nonpos_of_nonpos_of_nonneg
      (lt_of_not_ge hC).le (Real.rpow_nonneg (by linarith : 0 ≤ R) B)
    exact hleft.trans_lt hp

end
end GRWTSK.RiemannHypothesis.Conversation.SubexponentialCountermodel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantdb843002d63abc9ffc1d29f687b3155f0640cdcb0ed3388b737b91f99cbf9e01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantdb843002d63abc9ffc1d29f687b3155f0640cdcb0ed3388b737b91f99cbf9e01.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6cb8d55094a38ebbd0c0b1f5c8b945d2000afb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
