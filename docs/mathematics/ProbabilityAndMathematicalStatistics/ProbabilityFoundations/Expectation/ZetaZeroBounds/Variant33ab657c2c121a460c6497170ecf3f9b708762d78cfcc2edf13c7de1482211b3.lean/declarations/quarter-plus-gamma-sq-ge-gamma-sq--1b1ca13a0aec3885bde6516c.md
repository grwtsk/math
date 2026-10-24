# quarter_plus_gamma_sq_ge_gamma_sq

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
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d8a09e2-c7b4-6a99-a328-3ea75168c70a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22f8accc-3582-2956-430e-17a9d8f3df9b",
  "kind": "theorem",
  "lexical_name": "quarter_plus_gamma_sq_ge_gamma_sq",
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
  "slug": "quarter-plus-gamma-sq-ge-gamma-sq--1b1ca13a0aec3885bde6516c",
  "source": {
    "blob": "af5e0600c31cb6b52fa523ac40f55ebfb2beab77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 33,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b1ca13a0aec3885bde6516c8f81a44c1731d34a851b14047519a4f5e6e0d926",
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

Occurrence: `result:22f8accc-3582-2956-430e-17a9d8f3df9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quarter_plus_gamma_sq_ge_gamma_sq :
    ∀ γ ∈ Set.Icc (0:ℝ) 100, (1:ℚ)/4 + γ * γ ≥ γ * γ := by
  intro γ _
  linarith

-- More useful: √(1/4 + γ²) ≥ γ for γ ≥ 0
-- We prove this indirectly by showing √(1/4 + γ²) ≥ γ
-- This is equivalent to: (1/4 + γ²) ≥ γ² which is trivially true

/-! ## Part B: Decay of Amplitude with γ

For large γ, the amplitude decays like 1/γ.
We verify: √x / √(1/4 + γ²) ≤ √x / γ for γ ≥ 1
-/

-- For γ ≥ 1, we have √(1/4 + γ²) ≥ γ, so 1/√(1/4 + γ²) ≤ 1/γ
-- This means the amplitude is bounded by √x/γ

-- Verify: for γ ∈ [1, 100], we have γ² ≤ 1/4 + γ², so γ ≤ √(1/4 + γ²)
-- Equivalently: γ² ≤ 1/4 + γ²  (obviously true for all γ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5e0600c31cb6b52fa523ac40f55ebfb2beab77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
