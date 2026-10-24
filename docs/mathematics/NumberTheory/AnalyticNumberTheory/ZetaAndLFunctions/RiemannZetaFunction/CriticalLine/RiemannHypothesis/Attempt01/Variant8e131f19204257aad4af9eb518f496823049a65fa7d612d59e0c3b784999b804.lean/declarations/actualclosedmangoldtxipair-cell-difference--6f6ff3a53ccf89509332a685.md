# actualClosedMangoldtXiPair_cell_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:833ff9b2-1bd1-be14-7cb8-055c2f6e8d5c",
  "kind": "theorem",
  "lexical_name": "actualClosedMangoldtXiPair_cell_difference",
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
  "slug": "actualclosedmangoldtxipair-cell-difference--6f6ff3a53ccf89509332a685",
  "source": {
    "blob": "6d29a1b8213650619d25131d856e93cce8f6fe43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e131f19204257aad4af9eb518f496823049a65fa7d612d59e0c3b784999b804.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f6ff3a53ccf89509332a6852a17b72b8af828d5ca6211866cc700d0dc491f77",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e131f19204257aad4af9eb518f496823049a65fa7d612d59e0c3b784999b804.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:833ff9b2-1bd1-be14-7cb8-055c2f6e8d5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedMangoldtXiPair_cell_difference {N : ℕ} {Y : ℝ}
    (hN : 1 ≤ N) (hY : (N : ℝ) ≤ Y) (hYs : Y ≤ (N + 1 : ℕ)) :
    actualClosedMangoldtXiPair Y - actualClosedMangoldtXiPair (N : ℝ) =
      Chebyshev.psi (N : ℝ) * (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y) := by
  rw [actualClosedMangoldtXiPair_on_closed_cell hN hY hYs]
  simp only [actualClosedMangoldtXiPair, Nat.floor_natCast, actualClosedXiAtomKernel]
  rw [← Finset.sum_sub_distrib, psi_positive_prefix, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- Both continuous traces remain in the exact primitive difference on the inclusive cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e131f19204257aad4af9eb518f496823049a65fa7d612d59e0c3b784999b804.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e131f19204257aad4af9eb518f496823049a65fa7d612d59e0c3b784999b804.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d29a1b8213650619d25131d856e93cce8f6fe43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
