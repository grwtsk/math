# _root_.GRWTSK.Analysis.FunctionalAnalysis.RayleighQuotient.Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.LinearMap.IsSymmetric.hasStrictFDerivAt_reApplyInnerSelf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51711e14-fa3c-21c6-95cb-bbd3612dacc9",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.FunctionalAnalysis.RayleighQuotient.Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.LinearMap.IsSymmetric.hasStrictFDerivAt_reApplyInnerSelf",
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
  "slug": "root-grwtsk-analysis-functionalanalysis-rayleighquotient-variant3cd43501--ced99cf19b177105fdebb035",
  "source": {
    "blob": "c228db133ab6244a51275e1456b5e4ee881e50e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Rayleigh/Variant44b6aa25046d0c0d3828e6aee055395992b841ad793021d97c1c33459eba8978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ced99cf19b177105fdebb035674e243085169b35d6863d9c4dfd6a681996f027",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Rayleigh/Variant44b6aa25046d0c0d3828e6aee055395992b841ad793021d97c1c33459eba8978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51711e14-fa3c-21c6-95cb-bbd3612dacc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.FunctionalAnalysis.RayleighQuotient.Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.LinearMap.IsSymmetric.hasStrictFDerivAt_reApplyInnerSelf {T : F →L[ℝ] F}
    (hT : (T : F →ₗ[ℝ] F).IsSymmetric) (x₀ : F) :
    HasStrictFDerivAt T.reApplyInnerSelf (2 • (innerSL ℝ (T x₀))) x₀ := by
  convert T.hasStrictFDerivAt.inner ℝ (hasStrictFDerivAt_id x₀) using 1
  ext y
  rw [ContinuousLinearMap.smul_apply, ContinuousLinearMap.comp_apply, fderivInnerCLM_apply,
    ContinuousLinearMap.prod_apply, innerSL_apply, id, ContinuousLinearMap.id_apply,
    hT.apply_clm x₀ y, real_inner_comm _ x₀, two_smul]

variable [CompleteSpace F] {T : F →L[ℝ] F}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Rayleigh/Variant44b6aa25046d0c0d3828e6aee055395992b841ad793021d97c1c33459eba8978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Rayleigh/Variant44b6aa25046d0c0d3828e6aee055395992b841ad793021d97c1c33459eba8978.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c228db133ab6244a51275e1456b5e4ee881e50e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
