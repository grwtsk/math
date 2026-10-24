# finite_abel_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:876bf9f8-bc6d-1882-a4a7-7a2cfa167223",
  "kind": "theorem",
  "lexical_name": "finite_abel_sum",
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
  "slug": "finite-abel-sum--620d22ac23b660e043e1407d",
  "source": {
    "blob": "518bfbfb70521975d9fc6258637aa3e7286dfb91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 104,
    "path": "GRWTSK/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:620d22ac23b660e043e1407db42cccf79b52196662417e9bc2fc2e970774d33e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:876bf9f8-bc6d-1882-a4a7-7a2cfa167223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_abel_sum (b w : ℕ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.range (N + 1), b n * w n) =
      (∑ n ∈ Finset.range (N + 1), b n) * w N +
        ∑ n ∈ Finset.range N,
          (∑ k ∈ Finset.range (n + 1), b k) *
            (w n - w (n + 1)) := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ (fun n => b n * w n) (N + 1), ih,
        Finset.sum_range_succ b (N + 1),
        Finset.sum_range_succ
          (fun n => (∑ k ∈ Finset.range (n + 1), b k) * (w n - w (n + 1))) N]
      ring

/-- Abel summation for the actual cumulative Mertens-square density. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `518bfbfb70521975d9fc6258637aa3e7286dfb91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
