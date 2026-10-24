# actual_negative_direction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58b322c1-0ee6-ab0d-bc4d-3f8ca4235771",
  "kind": "theorem",
  "lexical_name": "actual_negative_direction",
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
  "slug": "actual-negative-direction--9e77f18cd39d9ac2fb2b8890",
  "source": {
    "blob": "29826dfbaf4a26b3969d6026419780015f34ca7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperKernelNegativeDirection/Variant6a2cb13d7067ab040acb23d0000d8dce16041dbff6d4004eb2691987ceabcb6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e77f18cd39d9ac2fb2b8890b8a047831ca4d62584c900ee077a130abf53903a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperKernelNegativeDirection/Variant6a2cb13d7067ab040acb23d0000d8dce16041dbff6d4004eb2691987ceabcb6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58b322c1-0ee6-ab0d-bc4d-3f8ca4235771`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negative_direction :
    ∃ u v : ℝ,
      u ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) +
      2 * u * v * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) +
      v ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17) = -1 := by
  let c := SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17)
  let d := SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17)
  have hc : c ≠ 0 := ne_of_gt actual_offDiagonal_pos
  refine ⟨-(d + 1) / (2 * c), 1, ?_⟩
  rw [actual_diagonal_zero]
  change (-(d + 1) / (2 * c)) ^ 2 * 0 +
    2 * (-(d + 1) / (2 * c)) * 1 * c + 1 ^ 2 * d = -1
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperKernelNegativeDirection/Variant6a2cb13d7067ab040acb23d0000d8dce16041dbff6d4004eb2691987ceabcb6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperKernelNegativeDirection/Variant6a2cb13d7067ab040acb23d0000d8dce16041dbff6d4004eb2691987ceabcb6e.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29826dfbaf4a26b3969d6026419780015f34ca7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
