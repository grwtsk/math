# actualOddNegativeEdgeBlock_eq_full_mobius_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02cdee25-f2ac-eaf8-9405-ed5fb22f5bd9",
  "kind": "theorem",
  "lexical_name": "actualOddNegativeEdgeBlock_eq_full_mobius_sum",
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
  "slug": "actualoddnegativeedgeblock-eq-full-mobius-sum--09b1fa411a3629f586ccb282",
  "source": {
    "blob": "7d05e4bb28d50c594ab21e4e33ba1bcc70da2d89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 148,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant84b01f5c1c3fad3e7c68182956a04434849c6ba7b7d3db747eed3c55d3bb0d66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09b1fa411a3629f586ccb282dc43523d4d4fd5ad399ffebf0aca0cecda5212e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant84b01f5c1c3fad3e7c68182956a04434849c6ba7b7d3db747eed3c55d3bb0d66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02cdee25-f2ac-eaf8-9405-ed5fb22f5bd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualOddNegativeEdgeBlock_eq_full_mobius_sum (A : ℝ) :
    actualOddNegativeEdgeBlock A =
      ∑ n ∈ (actualNegativeEdgeWindow A).filter (fun n : ℕ => ¬2 ∣ n),
        ∑ dk ∈ n.divisorsAntidiagonal, mobiusLogTerm A n dk := by
  unfold actualOddNegativeEdgeBlock
  apply Finset.sum_congr rfl
  intro n hn
  rw [vonMangoldt_eq_mobius_log_convolution n, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro dk hdk
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant84b01f5c1c3fad3e7c68182956a04434849c6ba7b7d3db747eed3c55d3bb0d66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant84b01f5c1c3fad3e7c68182956a04434849c6ba7b7d3db747eed3c55d3bb0d66.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d05e4bb28d50c594ab21e4e33ba1bcc70da2d89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
