# all_real_lower_of_truncated_smoothing_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecc02e22-e6d5-4b93-5662-b21936958bab",
  "kind": "theorem",
  "lexical_name": "all_real_lower_of_truncated_smoothing_upper",
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
  "slug": "all-real-lower-of-truncated-smoothing-upper--4ff283a6e0a9cf766e58434a",
  "source": {
    "blob": "ddc40f02caaa78b409c3382c13ea6024ca5356e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularExplicitLower/Variante3498a534e4eb8d6a33a5c023f4e0f70849f0752f322c29c05fe18d836404ddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ff283a6e0a9cf766e58434aeff7692d1a2a32f190ed5b385dd1a46f8bb4b6ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularExplicitLower/Variante3498a534e4eb8d6a33a5c023f4e0f70849f0752f322c29c05fe18d836404ddf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecc02e22-e6d5-4b93-5662-b21936958bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_lower_of_truncated_smoothing_upper (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → smoothedInterior A ≤ K)
    (hTrunc : ∀ A : ℝ, R ≤ A → TruncationDiscrepancy A) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (K + 1 + endpointBudget R + C_F)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_truncated_smoothing_upper K R hR hG hTrunc
  exact ⟨C_F, hF0, all_real_source_lower_of_residual_tail
    (K + 1 + endpointBudget R + C_F) R hR hF⟩

/-- The original source multiplier doubles the half-unit loss exactly once. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularExplicitLower/Variante3498a534e4eb8d6a33a5c023f4e0f70849f0752f322c29c05fe18d836404ddf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularExplicitLower/Variante3498a534e4eb8d6a33a5c023f4e0f70849f0752f322c29c05fe18d836404ddf.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddc40f02caaa78b409c3382c13ea6024ca5356e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
