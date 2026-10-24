# actualOddProductMoment_eq_edge_add_complement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f5e88a2-4946-de6a-e5a1-e3bf3b6c8aab",
  "kind": "theorem",
  "lexical_name": "actualOddProductMoment_eq_edge_add_complement",
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
  "slug": "actualoddproductmoment-eq-edge-add-complement--7579b2f90ce193aa36b4e423",
  "source": {
    "blob": "beaa838b58457e54c484f3cad3d930bcdab834f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 189,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant4f203faf31dab7957781aad871237f87ded3d73d0341d449508d2bbc1a66f752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7579b2f90ce193aa36b4e423adca3ab1ef3a42f480d575dc4899cc792aa2db61",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant4f203faf31dab7957781aad871237f87ded3d73d0341d449508d2bbc1a66f752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f5e88a2-4946-de6a-e5a1-e3bf3b6c8aab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualOddProductMoment_eq_edge_add_complement {A : ℝ}
    (hA : 20000000000000 ≤ A) :
    actualOddProductMoment A =
      actualOddNegativeEdgeBlock A + actualOddNegativeEdgeComplement A := by
  have hs : (actualNegativeEdgeWindow A).filter (fun n : ℕ => ¬2 ∣ n) ⊆
      (primePowerInventory (2 * A)).filter (fun n : ℕ => ¬2 ∣ n) := by
    intro n hn
    obtain ⟨hnW, hn2⟩ := Finset.mem_filter.mp hn
    exact Finset.mem_filter.mpr ⟨edgeWindow_subset hA hnW, hn2⟩
  unfold actualOddProductMoment actualOddNegativeEdgeBlock actualOddNegativeEdgeComplement
  have hh := Finset.sum_sdiff hs (f := fun n => vonMangoldt n * closedPrimeWeight A n)
  linarith

/-- Original residual reconstruction keeps the even payment and the entire odd complement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant4f203faf31dab7957781aad871237f87ded3d73d0341d449508d2bbc1a66f752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant4f203faf31dab7957781aad871237f87ded3d73d0341d449508d2bbc1a66f752.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beaa838b58457e54c484f3cad3d930bcdab834f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
