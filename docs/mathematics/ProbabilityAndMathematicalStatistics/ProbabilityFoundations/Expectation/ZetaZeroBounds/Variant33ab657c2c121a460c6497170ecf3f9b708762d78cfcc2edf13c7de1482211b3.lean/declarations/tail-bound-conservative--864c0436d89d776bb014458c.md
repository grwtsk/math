# tail_bound_conservative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af5e0600c31cb6b52fa523ac40f55ebfb2beab77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b427708b-4570-3c23-8623-0a19bbc4693e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2500f8a5-919e-30f4-88dc-6dc48c915ffd",
  "kind": "theorem",
  "lexical_name": "tail_bound_conservative",
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
  "slug": "tail-bound-conservative--864c0436d89d776bb014458c",
  "source": {
    "blob": "af5e0600c31cb6b52fa523ac40f55ebfb2beab77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 112,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:864c0436d89d776bb014458ce4449a5ab178001d421127e81877729ea1f6dd4a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2500f8a5-919e-30f4-88dc-6dc48c915ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_bound_conservative :
    ∀ x ∈ Set.Icc (1:ℝ) 100, Real.sqrt x * Real.log 750 / 6 ≤ (12:ℚ) := by
  certify_bound

/-! ## Part F: Prime Detection Error Bounds

For prime detection, we need |error| < log(2) ≈ 0.69 to distinguish primes.
With γ_cutoff = 200 and x ≤ 100:
  tail error ≤ √x · log(75000/200) / 6 ≈ 10 · 5.9 / 6 ≈ 9.8

With 10% RG factor: ≈ 0.98 (close to log(2)!)
-/

-- For prime detection with RG factor, need tighter bound
-- With γ_cutoff = 500: log(75000/500) ≈ 5.0
-- tail ≈ 10 · 5.0 / 6 · 0.1 ≈ 0.83 < log(2) ✓

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5e0600c31cb6b52fa523ac40f55ebfb2beab77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
