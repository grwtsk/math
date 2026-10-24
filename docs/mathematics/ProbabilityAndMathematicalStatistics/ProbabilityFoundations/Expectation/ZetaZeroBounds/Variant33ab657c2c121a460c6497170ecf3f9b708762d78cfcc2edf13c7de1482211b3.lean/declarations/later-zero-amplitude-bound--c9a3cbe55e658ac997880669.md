# later_zero_amplitude_bound

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
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39ab61f9-f34a-1bab-dde2-35d6d90c4b18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b239a71a-a33c-3a0d-4b97-dd60cdd60cee",
  "kind": "theorem",
  "lexical_name": "later_zero_amplitude_bound",
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
  "slug": "later-zero-amplitude-bound--c9a3cbe55e658ac997880669",
  "source": {
    "blob": "af5e0600c31cb6b52fa523ac40f55ebfb2beab77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 74,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9a3cbe55e658ac997880669af5ceb4e96c8d504a6400306870a80c3b8f518a5",
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

Occurrence: `result:b239a71a-a33c-3a0d-4b97-dd60cdd60cee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem later_zero_amplitude_bound :
    ∀ x ∈ Set.Icc (1:ℝ) 100, Real.sqrt x / 50 ≤ (1:ℚ)/4 := by
  certify_bound

/-! ## Part D: Tail Sum Bound

The tail sum Σ_{γ > γ_c} √x/γ can be bounded by an integral:
  Σ_{γ > γ_c} √x/γ ≤ √x · ∫_{γ_c}^∞ (density) · (1/γ) dγ

Using zero density N(T) ~ T·log(T)/(2π), density ≈ log(T)/(2π).
So the integral is roughly √x · log(γ_max/γ_c) / (2π).
-/

-- Log ratio bound: log(1000/100) = log(10) ≈ 2.30
-- So for γ_c = 100, γ_max = 1000, tail bound ≈ √x · 2.30 / 6.28 ≈ 0.37 · √x

-- Rewrite as universal bound for LeanCert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5e0600c31cb6b52fa523ac40f55ebfb2beab77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
