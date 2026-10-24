# log_ratio_bound

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
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a13129d-c74e-fa6c-620e-458226700830",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f759d5fa-1bd6-1b5d-e3f7-3c9756f2ad4b",
  "kind": "theorem",
  "lexical_name": "log_ratio_bound",
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
  "slug": "log-ratio-bound--c67057262d45865ff4bd8ced",
  "source": {
    "blob": "af5e0600c31cb6b52fa523ac40f55ebfb2beab77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 91,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c67057262d45865ff4bd8cedd1729673187772d8a08720274e58409c9364a7b7",
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

Occurrence: `result:f759d5fa-1bd6-1b5d-e3f7-3c9756f2ad4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_ratio_bound :
    ∀ x ∈ Set.Icc (10:ℝ) 10, Real.log x ≤ (24:ℚ)/10 := by
  certify_bound

-- π > 3, so 2π > 6 (use discovery command)
#bounds (fun x => Real.pi) on [1, 1]

/-! ## Part E: RG-Contraction Factor

From experiments: high-freq zeros have ~10% survival under coarse-graining.
This means the effective tail contribution is 0.1× the naive bound.
-/

-- We can't directly prove the 10% factor here (it's empirical),
-- but we can verify that IF the factor is 0.1, the bound is satisfied.

-- For x = 100, naive tail bound with γ_c = 100 is:
-- √100 · log(75000/100) / (2π) ≈ 10 · 6.6 / 6.28 ≈ 10.5
-- With 10% RG factor: ≈ 1.05

-- Verify tail bound: √x · log(750) / 6 ≤ 12 for x ≤ 100
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5e0600c31cb6b52fa523ac40f55ebfb2beab77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
