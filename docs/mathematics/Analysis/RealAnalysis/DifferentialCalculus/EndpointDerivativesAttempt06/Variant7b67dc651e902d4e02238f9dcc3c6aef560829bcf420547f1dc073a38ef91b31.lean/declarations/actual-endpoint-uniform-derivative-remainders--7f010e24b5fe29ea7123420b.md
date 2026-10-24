# actual_endpoint_uniform_derivative_remainders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc107775-96f1-b96d-8fb7-ec3e19cc40a2",
  "kind": "theorem",
  "lexical_name": "actual_endpoint_uniform_derivative_remainders",
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
  "slug": "actual-endpoint-uniform-derivative-remainders--7f010e24b5fe29ea7123420b",
  "source": {
    "blob": "90932f5cefc6f14545b202bbe5fae2196423a2f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 221,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f010e24b5fe29ea7123420bf853ab36816b0fe8b48a7d1ae544272ee3c4a17a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc107775-96f1-b96d-8fb7-ec3e19cc40a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_endpoint_uniform_derivative_remainders {ε : ℝ} (hε : 0<ε) :
    ∀ᶠ A : ℝ in atTop, ∀ y∈Icc (1/2:ℝ) 1,
      |endpointFullSlope A⁻¹ y-endpointLeadingSlope y|<ε ∧
      |endpointFullCurvature A⁻¹ y-endpointLeadingCurvature y|<ε := by
  have hs := (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0:ℝ))).eventually
    (endpoint_slope_uniform_remainder hε)
  have hc := (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0:ℝ))).eventually
    (endpoint_curvature_uniform_remainder hε)
  filter_upwards [hs,hc] with A hS hC
  intro y hy
  exact ⟨hS y hy,hC y hy⟩

/-- Actual strict negative-slope/positive-curvature endpoint phase on one fixed physical interval.
This is independent of arithmetic/intercept information and supplies no signed-work bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt06/Variant7b67dc651e902d4e02238f9dcc3c6aef560829bcf420547f1dc073a38ef91b31.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90932f5cefc6f14545b202bbe5fae2196423a2f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
