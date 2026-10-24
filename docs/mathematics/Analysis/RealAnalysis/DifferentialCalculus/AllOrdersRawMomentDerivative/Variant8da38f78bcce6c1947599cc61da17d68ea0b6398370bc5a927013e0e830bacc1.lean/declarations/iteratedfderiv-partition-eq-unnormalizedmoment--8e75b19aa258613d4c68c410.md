# iteratedFDeriv_partition_eq_unnormalizedMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0cc28a370bcfc0eb50a94112af6da61fe164144c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6a1a015-95d1-bc70-02ba-c944ab9cf031",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:faa2e1e0-09ea-66dd-c9cc-7e118c1af724",
  "kind": "theorem",
  "lexical_name": "iteratedFDeriv_partition_eq_unnormalizedMoment",
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
  "slug": "iteratedfderiv-partition-eq-unnormalizedmoment--8e75b19aa258613d4c68c410",
  "source": {
    "blob": "0cc28a370bcfc0eb50a94112af6da61fe164144c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e75b19aa258613d4c68c410cfbcd2666992bcb88625bba7a66363ef83e330a4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faa2e1e0-09ea-66dd-c9cc-7e118c1af724`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedFDeriv_partition_eq_unnormalizedMoment
    (n : ℕ)
    (theta : E)
    (directions : Fin n → E) :
    iteratedFDeriv ℝ n F.partition theta directions =
      ∑ i : I,
        F.unnormalizedWeight theta i *
          ∏ j : Fin n, F.statistic i (directions j) := by
  classical
  change
    iteratedFDeriv ℝ n
      (fun x : E => ∑ i : I, F.unnormalizedWeight x i)
      theta directions =
      _
  rw [iteratedFDeriv_fun_sum_apply]
  · rw [sum_apply]
    apply Finset.sum_congr rfl
    intro i hi
    exact F.iteratedFDeriv_unnormalizedWeight i n theta directions
  · intro i hi
    exact (F.contDiff_unnormalizedWeight i).contDiffAt.of_le (by simp)

/-- Multiplying the normalized raw moment by the partition function recovers
the corresponding unnormalized moment sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant8da38f78bcce6c1947599cc61da17d68ea0b6398370bc5a927013e0e830bacc1.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cc28a370bcfc0eb50a94112af6da61fe164144c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
