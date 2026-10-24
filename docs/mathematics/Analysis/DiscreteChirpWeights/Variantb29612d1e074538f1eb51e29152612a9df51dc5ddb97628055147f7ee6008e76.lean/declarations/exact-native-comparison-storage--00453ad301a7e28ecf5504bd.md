# exact_native_comparison_storage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:825abd51-c122-b18f-0b36-ced465659198",
  "kind": "theorem",
  "lexical_name": "exact_native_comparison_storage",
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
  "slug": "exact-native-comparison-storage--00453ad301a7e28ecf5504bd",
  "source": {
    "blob": "e8475b753f4394104b28eaf3c12aaff839350b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 127,
    "path": "GRWTSK/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00453ad301a7e28ecf5504bd763a3d680ef963beb048b8f147877e2b646f366d",
  "verification": {
    "reference": "docs/verification/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:825abd51-c122-b18f-0b36-ced465659198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_native_comparison_storage {n : ℕ} (hn : 1 ≤ n) :
    cumulativeDiscrepancy comparisonCoefficient n = (signal n - signal 1) / 2 := by
  induction n with
  | zero => omega
  | succ n ih =>
    by_cases hz : n = 0
    · subst n; norm_num [cumulativeDiscrepancy]
    · have hn1 : 1 ≤ n := by omega
      have hstep : cumulativeDiscrepancy comparisonCoefficient (n + 1) =
          cumulativeDiscrepancy comparisonCoefficient n + comparisonCoefficient (n + 1) := by
        unfold cumulativeDiscrepancy
        rw [Finset.sum_Icc_succ_top (by omega : 2 ≤ n + 1)]
      rw [hstep, ih hn1]
      simp only [comparisonCoefficient, countingWeight, Nat.add_sub_cancel]
      ring

end
end GRWTSK.RiemannHypothesis.Conversation.DiscreteChirpWeights
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8475b753f4394104b28eaf3c12aaff839350b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
