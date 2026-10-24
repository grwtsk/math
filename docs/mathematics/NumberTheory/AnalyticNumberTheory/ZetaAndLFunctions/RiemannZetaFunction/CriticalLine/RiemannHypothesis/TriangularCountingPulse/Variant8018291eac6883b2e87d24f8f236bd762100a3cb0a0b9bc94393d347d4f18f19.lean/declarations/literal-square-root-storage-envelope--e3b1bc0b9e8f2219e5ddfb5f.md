# literal_square_root_storage_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d31c70a-5460-4bac-9c40-096fd2b22d22",
  "kind": "theorem",
  "lexical_name": "literal_square_root_storage_envelope",
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
  "slug": "literal-square-root-storage-envelope--e3b1bc0b9e8f2219e5ddfb5f",
  "source": {
    "blob": "ca92355480c5457dc733b4bc679386950d39bfa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularCountingPulse/Variant8018291eac6883b2e87d24f8f236bd762100a3cb0a0b9bc94393d347d4f18f19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3b1bc0b9e8f2219e5ddfb5fce690fabaac126143babfce193b3fe7ef062d6da",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularCountingPulse/Variant8018291eac6883b2e87d24f8f236bd762100a3cb0a0b9bc94393d347d4f18f19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d31c70a-5460-4bac-9c40-096fd2b22d22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_square_root_storage_envelope (M n : ℕ) {a : ℝ} (ha : 0 ≤ a) :
    0 ≤ storage M a n ∧ storage M a n ≤ a * Real.sqrt n := by
  constructor
  · unfold storage; positivity
  · by_cases hn : n ≤ M ^ 2
    · rw [pulse_is_zero_outside (Or.inl hn) a]
      positivity
    · have hm : (M : ℝ) ≤ Real.sqrt n := by
        rw [Real.le_sqrt (Nat.cast_nonneg _) (Nat.cast_nonneg _)]
        exact_mod_cast (Nat.le_of_lt (Nat.lt_of_not_ge hn))
      have htri : (triangle M n : ℝ) ≤ M := by exact_mod_cast pulse_height_le_M M n
      exact mul_le_mul_of_nonneg_left (htri.trans hm) ha

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularCountingPulse
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularCountingPulse/Variant8018291eac6883b2e87d24f8f236bd762100a3cb0a0b9bc94393d347d4f18f19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularCountingPulse/Variant8018291eac6883b2e87d24f8f236bd762100a3cb0a0b9bc94393d347d4f18f19.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca92355480c5457dc733b4bc679386950d39bfa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
