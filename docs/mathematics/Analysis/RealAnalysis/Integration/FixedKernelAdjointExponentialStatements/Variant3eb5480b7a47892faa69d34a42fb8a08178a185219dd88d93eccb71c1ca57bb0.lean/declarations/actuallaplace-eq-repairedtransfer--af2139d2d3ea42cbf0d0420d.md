# actualLaplace_eq_repairedTransfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17a89f2b-1453-9e16-1918-510416fc96c7",
  "kind": "theorem",
  "lexical_name": "actualLaplace_eq_repairedTransfer",
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
  "slug": "actuallaplace-eq-repairedtransfer--af2139d2d3ea42cbf0d0420d",
  "source": {
    "blob": "e62c4248d0f4eca80c68b3972470e154e92f716f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 502,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialStatements/Variant3eb5480b7a47892faa69d34a42fb8a08178a185219dd88d93eccb71c1ca57bb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af2139d2d3ea42cbf0d0420d5b4441e84df34bfc3bdfeafa3edca82f1be676db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialStatements/Variant3eb5480b7a47892faa69d34a42fb8a08178a185219dd88d93eccb71c1ca57bb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17a89f2b-1453-9e16-1918-510416fc96c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLaplace_eq_repairedTransfer (z : ℂ) (hz : 0 < z.re) :
    actualLaplace z = repairedTransfer z := by
  have hopen : IsOpen {w : ℂ | 0 < w.re} := isOpen_lt continuous_const Complex.continuous_re
  have hL := actualLaplace_analyticOn_positive
  have hR := repairedTransfer_differentiableOn_positive.analyticOnNhd hopen
  have hconn : IsPreconnected {w : ℂ | 0 < w.re} :=
    ((convex_Ioi (0 : ℝ)).linear_preimage Complex.reLm).isPreconnected
  have heq : actualLaplace =ᶠ[𝓝 (1 : ℂ)] repairedTransfer := by
    filter_upwards [(isOpen_lt continuous_const Complex.continuous_re).mem_nhds
      (by norm_num : (1 / 2 : ℝ) < (1 : ℂ).re)] with w hw
    exact fixedKernel_laplace_eq_repairedTransfer w hw
  exact hL.eqOn_of_preconnected_of_eventuallyEq hR hconn
    (by norm_num : (1 : ℂ) ∈ {w : ℂ | 0 < w.re}) heq hz

/-- The actual integral attains the proved removed-pole value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialStatements/Variant3eb5480b7a47892faa69d34a42fb8a08178a185219dd88d93eccb71c1ca57bb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialStatements/Variant3eb5480b7a47892faa69d34a42fb8a08178a185219dd88d93eccb71c1ca57bb0.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e62c4248d0f4eca80c68b3972470e154e92f716f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
