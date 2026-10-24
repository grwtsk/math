# weighted_correlation_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd5a1ca1-9f79-9f06-fd24-2a630ea3c70b",
  "kind": "theorem",
  "lexical_name": "weighted_correlation_integrable",
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
  "slug": "weighted-correlation-integrable--f3a46798844dd61b29a377c5",
  "source": {
    "blob": "0456be24f8e1eefcaeca5db11de119e10b162448",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 133,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant022240764844d6df480cbb5243f4ee64dc3545915dfddf3a7aa2cabe9a782336.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3a46798844dd61b29a377c5f85b34ee803af3b34bcc451f77036d9582c4627a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant022240764844d6df480cbb5243f4ee64dc3545915dfddf3a7aa2cabe9a782336.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd5a1ca1-9f79-9f06-fd24-2a630ea3c70b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_correlation_integrable (v : ℝ → ℝ) (σ : ℝ)
    (hpositive : Integrable (fun x ↦ Real.exp (σ * x) * v x) volume)
    (hnegative : Integrable (fun x ↦ Real.exp ((-σ) * x) * v x) volume) :
    Integrable (fun t ↦ Real.exp (σ * t) * correlation v t) volume := by
  have hi := hpositive.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ)
    (reflected_weight_integrable v σ hnegative)
  have he : (fun t ↦ Real.exp (σ * t) * correlation v t) =
      (fun x ↦ Real.exp (σ * x) * v x) ⋆
        (fun x ↦ Real.exp (σ * x) * v (-x)) := by
    funext t
    exact weighted_correlation_eq_convolution v σ t
  rw [he]
  exact hi

/-- Exact weighted Fubini factorization with both genuine integrability premises exposed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant022240764844d6df480cbb5243f4ee64dc3545915dfddf3a7aa2cabe9a782336.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant022240764844d6df480cbb5243f4ee64dc3545915dfddf3a7aa2cabe9a782336.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0456be24f8e1eefcaeca5db11de119e10b162448` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
