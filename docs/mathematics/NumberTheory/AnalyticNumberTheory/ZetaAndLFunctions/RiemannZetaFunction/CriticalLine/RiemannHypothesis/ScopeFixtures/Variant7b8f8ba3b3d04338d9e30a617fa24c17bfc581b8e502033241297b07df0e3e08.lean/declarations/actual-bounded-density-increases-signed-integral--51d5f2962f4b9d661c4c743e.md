# actual_bounded_density_increases_signed_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cae02a7-b1ef-c173-b08c-56a08f1bb955",
  "kind": "theorem",
  "lexical_name": "actual_bounded_density_increases_signed_integral",
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
  "slug": "actual-bounded-density-increases-signed-integral--51d5f2962f4b9d661c4c743e",
  "source": {
    "blob": "f1455f53098d5fcbfa78aea516b8d31b0a72fdc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant7b8f8ba3b3d04338d9e30a617fa24c17bfc581b8e502033241297b07df0e3e08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51d5f2962f4b9d661c4c743e7e5e0f176cf45452bd6d4dcc6d4c17eb2c89d440",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant7b8f8ba3b3d04338d9e30a617fa24c17bfc581b8e502033241297b07df0e3e08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cae02a7-b1ef-c173-b08c-56a08f1bb955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bounded_density_increases_signed_integral {A : ℝ} (hA : 8000 ≤ A) :
    (∫ u in 0..2*A, pairedTailTest A u) <
      ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u := by
  have h1 : 1 ≤ A := by linarith
  rw [pairedTailTest_integral_eq h1, criticalDensity_quadrature_eq_full_drift h1]
  have hc := diagonalMainCoefficient_ge_one_div_four_thousand h1
  have hs := mul_le_mul_of_nonneg_right hc (show 0 ≤ A by linarith)
  have hb := (criticalDecayNegativeMean_mem_Icc h1).1
  linarith

/-- The nonnegative-axis range cannot be extended to all real positions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant7b8f8ba3b3d04338d9e30a617fa24c17bfc581b8e502033241297b07df0e3e08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant7b8f8ba3b3d04338d9e30a617fa24c17bfc581b8e502033241297b07df0e3e08.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1455f53098d5fcbfa78aea516b8d31b0a72fdc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
