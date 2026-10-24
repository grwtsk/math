# actual_laplace_compensation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c97889b4-e466-8b49-fb1c-5b49d3143720",
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
  "slug": "actual-laplace-compensation--bc291de6a4e787ecad8803aa",
  "source": {
    "blob": "89c958da0219fa3600b7e56bfc36b53cde6d3bcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variant3644c57bd7a15dfdab478050d28e39e84e21e2f4b5521fb4fac86ac944274e84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc291de6a4e787ecad8803aa11c39eda61cc4f84d1384af25e3da48019462418",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variant3644c57bd7a15dfdab478050d28e39e84e21e2f4b5521fb4fac86ac944274e84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c97889b4-e466-8b49-fb1c-5b49d3143720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–66.

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
  have h1 := integral_add
    ((actual_prefix_laplace_integrable hs).sub (linear_exponential_integrable hs))
    ((integrableOn_exp_mul_Ioi (a:=-s) (by linarith) 0).mul_const Real.eulerMascheroniConstant)
  have h2 := integral_sub (actual_prefix_laplace_integrable hs) (linear_exponential_integrable hs)
  simp only [Pi.sub_apply] at h1 h2
  rw [actualLaplace,he,h1,h2,linear_exponential_integral hs,integral_mul_const,exponential_integral hs]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variant3644c57bd7a15dfdab478050d28e39e84e21e2f4b5521fb4fac86ac944274e84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variant3644c57bd7a15dfdab478050d28e39e84e21e2f4b5521fb4fac86ac944274e84.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89c958da0219fa3600b7e56bfc36b53cde6d3bcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
