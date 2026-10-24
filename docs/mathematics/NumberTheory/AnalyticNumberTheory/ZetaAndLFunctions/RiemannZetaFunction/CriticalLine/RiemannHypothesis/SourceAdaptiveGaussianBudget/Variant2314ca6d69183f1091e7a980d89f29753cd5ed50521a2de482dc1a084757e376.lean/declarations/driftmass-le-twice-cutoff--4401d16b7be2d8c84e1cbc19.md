# driftMass_le_twice_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b142a45-c1b9-82f6-982d-72907e1c152c",
  "kind": "theorem",
  "lexical_name": "driftMass_le_twice_cutoff",
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
  "slug": "driftmass-le-twice-cutoff--4401d16b7be2d8c84e1cbc19",
  "source": {
    "blob": "d630d8c2bcb3f954d0bae95fca53c8a3bf44c95f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variant2314ca6d69183f1091e7a980d89f29753cd5ed50521a2de482dc1a084757e376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4401d16b7be2d8c84e1cbc19ed785d85e1e625f7251df89f75b7fd5933d7d145",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variant2314ca6d69183f1091e7a980d89f29753cd5ed50521a2de482dc1a084757e376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b142a45-c1b9-82f6-982d-72907e1c152c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem driftMass_le_twice_cutoff (N : ℕ) : driftMass N ≤ 2 * (N : ℝ) := by
  have hc : (Finset.Icc 2 N).card ≤ N := by rw [Nat.card_Icc]; omega
  have hcr : ((Finset.Icc 2 N).card : ℝ) ≤ N := by exact_mod_cast hc
  unfold driftMass
  calc
    _ ≤ ∑ _n ∈ Finset.Icc 2 N, (2 : ℝ) :=
      Finset.sum_le_sum (fun n hn => drift_atom_le_two
        (Finset.mem_Icc.mp hn).1 (Finset.mem_Icc.mp hn).2)
    _ = ((Finset.Icc 2 N).card : ℝ) * 2 := by simp
    _ ≤ 2 * (N : ℝ) := by linarith

/-- Positive variance chosen from the complete cutoff, without an arithmetic cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variant2314ca6d69183f1091e7a980d89f29753cd5ed50521a2de482dc1a084757e376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variant2314ca6d69183f1091e7a980d89f29753cd5ed50521a2de482dc1a084757e376.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d630d8c2bcb3f954d0bae95fca53c8a3bf44c95f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
