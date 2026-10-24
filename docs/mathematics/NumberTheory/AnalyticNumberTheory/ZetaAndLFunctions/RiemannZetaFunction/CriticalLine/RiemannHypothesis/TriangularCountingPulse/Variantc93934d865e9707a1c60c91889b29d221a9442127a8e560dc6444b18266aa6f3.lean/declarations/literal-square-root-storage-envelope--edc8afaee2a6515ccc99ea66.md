# literal_square_root_storage_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:812ba099-b4ca-55cb-bd69-e663ce5252af",
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
  "slug": "literal-square-root-storage-envelope--edc8afaee2a6515ccc99ea66",
  "source": {
    "blob": "1d30aac5bcc629bf6a5ce3996b87ec6ba743e2f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularCountingPulse/Variantc93934d865e9707a1c60c91889b29d221a9442127a8e560dc6444b18266aa6f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edc8afaee2a6515ccc99ea66e5a4f2980ae50130769be8549362b16d02e594d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularCountingPulse/Variantc93934d865e9707a1c60c91889b29d221a9442127a8e560dc6444b18266aa6f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:812ba099-b4ca-55cb-bd69-e663ce5252af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–104.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularCountingPulse/Variantc93934d865e9707a1c60c91889b29d221a9442127a8e560dc6444b18266aa6f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularCountingPulse/Variantc93934d865e9707a1c60c91889b29d221a9442127a8e560dc6444b18266aa6f3.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d30aac5bcc629bf6a5ce3996b87ec6ba743e2f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
