# criticalPrimeError_eq_chebyshev_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d61732b2bb4d726b577b0033a97aac4ceefab316",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12b4da16fc42407370a08f675340ca67eeea74027e0edfd1cffa1b028a0d7906.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d276526a-775c-81db-b4b2-0392b8fbd6a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a014870-2009-71b1-b3c0-4e7ad95a7e39",
  "kind": "theorem",
  "lexical_name": "criticalPrimeError_eq_chebyshev_boundary",
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
  "slug": "criticalprimeerror-eq-chebyshev-boundary--87ec3022b5be09c7a8c1df6b",
  "source": {
    "blob": "d61732b2bb4d726b577b0033a97aac4ceefab316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 148,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant12b4da16fc42407370a08f675340ca67eeea74027e0edfd1cffa1b028a0d7906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87ec3022b5be09c7a8c1df6b05ad8173ece64ab3355bc7bd8a67d6b82ff9e359",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant12b4da16fc42407370a08f675340ca67eeea74027e0edfd1cffa1b028a0d7906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a014870-2009-71b1-b3c0-4e7ad95a7e39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeError_eq_chebyshev_boundary (A : ℝ) (hA : 1 ≤ A) :
    normalizedCriticalPrimeError A =
      chebyshevError (Real.exp (2*A)) * criticalWeight A (Real.exp (2*A)) +
      2 * criticalWeight A 2 -
      ∫ x in (2 : ℝ)..Real.exp (2*A), chebyshevError x * deriv (criticalWeight A) x := by
  rw [criticalPrimeError_eq_chebyshev_log_boundary A hA,
    chebyshev_log_integral_eq_weight_integral A hA]

/-- Only the proved source upper zero removes its Chebyshev boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant12b4da16fc42407370a08f675340ca67eeea74027e0edfd1cffa1b028a0d7906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant12b4da16fc42407370a08f675340ca67eeea74027e0edfd1cffa1b028a0d7906.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d61732b2bb4d726b577b0033a97aac4ceefab316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
