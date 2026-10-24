# endpoint_curvature_uniform_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f73bf1d9-6a10-41f4-29f6-6619fa495614",
  "kind": "theorem",
  "lexical_name": "endpoint_curvature_uniform_remainder",
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
  "slug": "endpoint-curvature-uniform-remainder--14eceb88a2dda394b9bed104",
  "source": {
    "blob": "bb769c1ff90ab3ef4ba0c12f6ebbf3273a2faa5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14eceb88a2dda394b9bed1046ff981f76390fbd3bb064f3d3f962544635b71d4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f73bf1d9-6a10-41f4-29f6-6619fa495614`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_curvature_uniform_remainder {ε : ℝ} (hε : 0<ε) :
    ∀ᶠ a : ℝ in 𝓝 0, ∀ y∈Icc (1/2:ℝ) 1,
      |endpointFullCurvature a y-endpointLeadingCurvature y|<ε := by
  apply isCompact_Icc.eventually_forall_of_forall_eventually
  intro y _
  have hc : Continuous (fun p : ℝ×ℝ =>
      |endpointFullCurvature p.1 p.2-endpointLeadingCurvature p.2|) := by
    unfold endpointFullCurvature endpointFullPolynomial endpointFirstPolynomial
      endpointSecondPolynomial endpointLeadingCurvature
    fun_prop
  apply hc.continuousAt.eventually
  simpa only [endpoint_curvature_zero,sub_self,abs_zero] using gt_mem_nhds hε

/-- Literal source equality on an open physical interval permits actual differentiation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variantb1f1498b26b62ca7044e787e63433acc73bf34c8fc090bcc729ac96a30983e39.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb769c1ff90ab3ef4ba0c12f6ebbf3273a2faa5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
