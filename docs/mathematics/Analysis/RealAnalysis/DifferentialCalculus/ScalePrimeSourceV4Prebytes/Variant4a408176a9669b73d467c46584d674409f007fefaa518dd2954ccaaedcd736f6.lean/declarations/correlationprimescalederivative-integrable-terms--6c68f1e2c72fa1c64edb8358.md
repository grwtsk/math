# correlationPrimeScaleDerivative_integrable_terms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2e24819-bb94-8eaf-6b5e-2b8da139dd6b",
  "kind": "theorem",
  "lexical_name": "correlationPrimeScaleDerivative_integrable_terms",
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
  "slug": "correlationprimescalederivative-integrable-terms--6c68f1e2c72fa1c64edb8358",
  "source": {
    "blob": "b8fd39cbf36470104ebc41dee03862ff0cf8e660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 397,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV4Prebytes/Variant4a408176a9669b73d467c46584d674409f007fefaa518dd2954ccaaedcd736f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c68f1e2c72fa1c64edb83587fa5dfe83ae435d5c6c8dbccd65ad554845811c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV4Prebytes/Variant4a408176a9669b73d467c46584d674409f007fefaa518dd2954ccaaedcd736f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2e24819-bb94-8eaf-6b5e-2b8da139dd6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlationPrimeScaleDerivative_integrable_terms {A : ℝ} (hA : 0 < A) (s : ℝ) :
    Integrable (fun x : ℝ => spatialDerivative A x * scaleDerivative A (x - s)) ∧
      Integrable (fun x : ℝ => scaleDerivative A x * spatialDerivative A (x - s)) := by
  exact ⟨((spatialDerivative_continuous hA).mul
    ((scaleDerivative_continuous hA).comp (continuous_id.sub continuous_const)))
      .integrable_of_hasCompactSupport (spatialDerivative_hasCompactSupport hA).mul_right,
    ((scaleDerivative_continuous hA).mul
      ((spatialDerivative_continuous hA).comp (continuous_id.sub continuous_const)))
      .integrable_of_hasCompactSupport (scaleDerivative_hasCompactSupport hA).mul_right⟩

/-- The antisymmetric mixed formula has zero derivative at shift zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV4Prebytes/Variant4a408176a9669b73d467c46584d674409f007fefaa518dd2954ccaaedcd736f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV4Prebytes/Variant4a408176a9669b73d467c46584d674409f007fefaa518dd2954ccaaedcd736f6.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8fd39cbf36470104ebc41dee03862ff0cf8e660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
