# mangoldtLogError_centered_eq_psiRelativeError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cf8bd22-a11f-14d1-2081-91bd60285774",
  "kind": "theorem",
  "lexical_name": "mangoldtLogError_centered_eq_psiRelativeError",
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
  "slug": "mangoldtlogerror-centered-eq-psirelativeerror--9975e6bc0b9d8bc77e895269",
  "source": {
    "blob": "8aa312019cf71d3d2a2bed9930e363d428f8e419",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant50d185ace8103d61adff61ae4bc392c847850cee342e701e63bceb86be5f3c9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9975e6bc0b9d8bc77e895269d0a468df827a162950a2673cbd1592b8f8650bc5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant50d185ace8103d61adff61ae4bc392c847850cee342e701e63bceb86be5f3c9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cf8bd22-a11f-14d1-2081-91bd60285774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogError_centered_eq_psiRelativeError {t : ℝ} (ht : 0 ≤ t) :
    mangoldtLogError t+Real.eulerMascheroniConstant =
      psiRelativeError t+(∫ u in Ioc (0:ℝ) t, psiRelativeError u)+1+
        Real.eulerMascheroniConstant := by
  have hi : IntegrableOn psiRelativeError (Ioc (0:ℝ) t) :=
    psiRelativeError_integrable.mono_set (fun _ h => h.1)
  have hc : (∫ u in Ioc (0:ℝ) t, (1:ℝ)) = t := by
    rw [← intervalIntegral.integral_of_le ht,intervalIntegral.integral_const]
    simp
  rw [mangoldtLogError,mangoldtLogPrefix_eq_psiRelativeError_integral ht,
    integral_add (integrableOn_const (measure_Ioc_lt_top.ne)) hi,hc]
  ring

/-- Equivalent actual-source finite interval form; no improper centering premise is introduced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant50d185ace8103d61adff61ae4bc392c847850cee342e701e63bceb86be5f3c9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant50d185ace8103d61adff61ae4bc392c847850cee342e701e63bceb86be5f3c9f.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aa312019cf71d3d2a2bed9930e363d428f8e419` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
