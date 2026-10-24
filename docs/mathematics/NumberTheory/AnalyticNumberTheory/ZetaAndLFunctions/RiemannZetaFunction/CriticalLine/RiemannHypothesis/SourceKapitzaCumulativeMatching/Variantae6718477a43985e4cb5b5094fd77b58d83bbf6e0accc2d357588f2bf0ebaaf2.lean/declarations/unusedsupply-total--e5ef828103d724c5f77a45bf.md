# unusedSupply_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:725c60f0-0941-82c9-5c9f-efe0a564b1fb",
  "kind": "theorem",
  "lexical_name": "unusedSupply_total",
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
  "slug": "unusedsupply-total--e5ef828103d724c5f77a45bf",
  "source": {
    "blob": "fe7164de578c9a04732eb653e8f594d040144dbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 148,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCumulativeMatching/Variantae6718477a43985e4cb5b5094fd77b58d83bbf6e0accc2d357588f2bf0ebaaf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5ef828103d724c5f77a45bf14e502aadb909925da3cb70b9b2bf5238b5f14c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCumulativeMatching/Variantae6718477a43985e4cb5b5094fd77b58d83bbf6e0accc2d357588f2bf0ebaaf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:725c60f0-0941-82c9-5c9f-efe0a564b1fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unusedSupply_total (demand supply : ℕ → ℝ) (n m : ℕ)
    (hd : Monotone demand) (hs : Monotone supply)
    (hd0 : demand 0 = 0) (hs0 : supply 0 = 0)
    (htotal : demand n ≤ supply m) :
    (∑ j ∈ Finset.range m, unusedSupply demand supply n j) =
      supply m - demand n := by
  unfold unusedSupply
  rw [Finset.sum_sub_distrib, sum_successive_difference, Finset.sum_comm]
  have hr : (∑ i ∈ Finset.range n, ∑ j ∈ Finset.range m,
      allocation demand supply i j) = demand n := by
    calc
      _ = ∑ i ∈ Finset.range n, (demand (i + 1) - demand i) := by
        apply Finset.sum_congr rfl
        intro i hi
        exact allocation_row_sum demand supply n m i hd hs hd0 hs0 htotal
          (Finset.mem_range.mp hi)
      _ = _ := by rw [sum_successive_difference, hd0, sub_zero]
  rw [hr, hs0, sub_zero]

/-- Exact residual reconstruction: the head payment and all leftover supply occur once. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCumulativeMatching/Variantae6718477a43985e4cb5b5094fd77b58d83bbf6e0accc2d357588f2bf0ebaaf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCumulativeMatching/Variantae6718477a43985e4cb5b5094fd77b58d83bbf6e0accc2d357588f2bf0ebaaf2.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7164de578c9a04732eb653e8f594d040144dbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
