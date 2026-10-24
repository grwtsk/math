# sourceLinear_two_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fac8a4f-b388-178d-2f6a-d8b12c0bdabf",
  "kind": "theorem",
  "lexical_name": "sourceLinear_two_split",
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
  "slug": "sourcelinear-two-split--5f1dc86bdcf93b4b62c9f4ba",
  "source": {
    "blob": "228aa727efa6ffe81c871f224bdc803155c9aaae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 188,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f1dc86bdcf93b4b62c9f4bacea55903cf6a452e0c1bf551f872c081a6d27302",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fac8a4f-b388-178d-2f6a-d8b12c0bdabf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceLinear_two_split (A : ℝ) (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) =
      (∑ d ∈ (Icc 1 N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) -
      ∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A (2 * d : ℕ) :=
  moebius_sum_two_split N (fun d ↦ sourceSamplingKernel A d)

/-- The common odd interior contains a difference; the full upper odd band remains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228aa727efa6ffe81c871f224bdc803155c9aaae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
