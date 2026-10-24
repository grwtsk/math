# actual_laplace_compensation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca174d3c-e60d-7fd8-1ff3-30d842db3a7c",
  "kind": "theorem",
  "lexical_name": "actual_laplace_compensation",
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
  "slug": "actual-laplace-compensation--e098cc0642b38614608c6af8",
  "source": {
    "blob": "ff9cd9ab04dd740fab8f1b3a6e7a9f7e8fc6684d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e098cc0642b38614608c6af8b0456bec32af67d44692550427a3dc733a465418",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca174d3c-e60d-7fd8-1ff3-30d842db3a7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_laplace_compensation {s : ℝ} (hs : 0 < s) :
    actualLaplace s =
      (∫ t in Ioi (0:ℝ), Real.exp (-s*t)*mangoldtLogPrefix t) - 1/s^2 +
        Real.eulerMascheroniConstant/s := by
  have he : (fun t : ℝ => Real.exp (-s*t)*actualRemainder t) =
    (fun t => Real.exp (-s*t)*mangoldtLogPrefix t-t*Real.exp (-s*t)+
      Real.exp (-s*t)*Real.eulerMascheroniConstant) := by
    funext t
    unfold actualRemainder mangoldtLogError
    ring
  rw [actualLaplace,he,integral_add
    ((actual_prefix_laplace_integrable hs).sub (linear_exponential_integrable hs))
    ((integrableOn_exp_mul_Ioi (a:=-s) (by linarith) 0).mul_const _),
    integral_sub (actual_prefix_laplace_integrable hs) (linear_exponential_integrable hs),
    linear_exponential_integral hs,integral_mul_const,exponential_integral hs]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9cd9ab04dd740fab8f1b3a6e7a9f7e8fc6684d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
