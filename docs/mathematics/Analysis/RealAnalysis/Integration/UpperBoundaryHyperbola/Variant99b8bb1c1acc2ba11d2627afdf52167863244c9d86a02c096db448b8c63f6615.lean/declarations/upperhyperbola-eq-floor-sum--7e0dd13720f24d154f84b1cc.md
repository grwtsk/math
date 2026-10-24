# upperHyperbola_eq_floor_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9828b34de7f2f3b8c0121a9a50a1c208474ff83d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16d3624a-82b7-418c-fba6-92e6eb238f98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d15885f7-a1e3-2ad5-9909-dfcf820b059b",
  "kind": "theorem",
  "lexical_name": "upperHyperbola_eq_floor_sum",
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
  "slug": "upperhyperbola-eq-floor-sum--7e0dd13720f24d154f84b1cc",
  "source": {
    "blob": "9828b34de7f2f3b8c0121a9a50a1c208474ff83d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e0dd13720f24d154f84b1ccb2cd7f100c81b59770967e7da3f6a50976176c10",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d15885f7-a1e3-2ad5-9909-dfcf820b059b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperHyperbola_eq_floor_sum (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperHyperbola N x =
      ∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ) *
          ∑ j ∈ Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊),
            (ArithmeticFunction.moebius j : ℝ) := by
  unfold upperHyperbola
  rw [upperSmallIndices_eq_sqrt_cutoff N x hx]
  apply sum_congr rfl
  intro i hi
  rw [upperRowIndices_eq_div_cutoff N i x hx (by have := (mem_Ioc.mp hi).1; omega)]

/-- The diagonal Möbius sum uses the identical closed square-root endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9828b34de7f2f3b8c0121a9a50a1c208474ff83d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
