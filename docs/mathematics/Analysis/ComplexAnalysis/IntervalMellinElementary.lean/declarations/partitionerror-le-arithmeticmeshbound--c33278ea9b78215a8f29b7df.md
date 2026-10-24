# partitionError_le_arithmeticMeshBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b961aa4-1790-7a0e-d82d-a6dd589fba63",
  "kind": "theorem",
  "lexical_name": "partitionError_le_arithmeticMeshBound",
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
  "slug": "partitionerror-le-arithmeticmeshbound--c33278ea9b78215a8f29b7df",
  "source": {
    "blob": "97ddc927d85898a7f4df2932bf32d3cbe72b05a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 133,
    "path": "GRWTSK/Analysis/Complex/IntervalMellinElementary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c33278ea9b78215a8f29b7dfbe75331b6fce3a74f2b73558dc0f04aa604a5c62",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b961aa4-1790-7a0e-d82d-a6dd589fba63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partitionError_le_arithmeticMeshBound (x : ℕ → ℝ) (N : ℕ) (z : ℂ) :
    partitionError x N 2 z ≤ arithmeticMeshBound x N z := by
  have h := mul_le_mul_of_nonneg_right
    (div_le_div_of_nonneg_right (norm_le_componentBound (z - 1)) (by norm_num : (0 : ℝ) ≤ 2))
    (Finset.sum_nonneg (fun i (_ : i ∈ Finset.range N) => sq_nonneg (x (i + 1) - x i)))
  simpa [partitionError, spatialSlopeBound, densityBound, arithmeticMeshBound,
    show (2 : ℝ) - 1 - 1 = 0 by norm_num] using h

/-- Final arithmetic errors are accumulated from local checks of each weighted term.
All radii are finite arithmetic for rational nodes and rational complex components.
A proof of exact rational accumulation may set step errors to zero; floats may not. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntervalMellinElementary.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ddc927d85898a7f4df2932bf32d3cbe72b05a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
