# logSamplingTerm_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02013b004d31b7feb6643294c01528a5c1623684",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c3518b8-0ff9-019b-abbc-f3ec4ac12d21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cbe53e2-1aa6-6210-3241-5b5a3ae0b8ff",
  "kind": "theorem",
  "lexical_name": "logSamplingTerm_hasDerivAt",
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
  "slug": "logsamplingterm-hasderivat--32bed25f14443fd813062c3e",
  "source": {
    "blob": "02013b004d31b7feb6643294c01528a5c1623684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32bed25f14443fd813062c3e9b305e4ba81e0225364f4f0a378c7eda18bd96c3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cbe53e2-1aa6-6210-3241-5b5a3ae0b8ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSamplingTerm_hasDerivAt
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x u : ℝ} (_hx : 0 < x) (hu : 0 < u) :
    HasDerivAt (logSamplingTerm F x)
      (logSamplingDerivative F x u) u := by
  have hlog :
      HasDerivAt Real.log u⁻¹ u :=
    Real.hasDerivAt_log (ne_of_gt hu)
  have hshift :
      HasDerivAt
        (fun v : ℝ => Real.log x + Real.log v)
        u⁻¹ u :=
    hlog.const_add (Real.log x)
  have hnegdiv :
      HasDerivAt
        (fun v : ℝ =>
          -(Real.log x + Real.log v) / 2)
        (-u⁻¹ / 2) u :=
    hshift.neg.div_const 2
  have hexp :
      HasDerivAt
        (fun v : ℝ =>
          Real.exp (-(Real.log x + Real.log v) / 2))
        (Real.exp (-(Real.log x + Real.log u) / 2) *
          (-u⁻¹ / 2)) u :=
    hnegdiv.exp
  have hF' :
      HasDerivAt F
        (deriv F (Real.log x + Real.log u))
        (Real.log x + Real.log u) :=
    (hF.differentiable (by norm_num)
      (Real.log x + Real.log u)).hasDerivAt
  have hcomp :=
    hF'.comp u hshift
  have h :=
    (hlog.mul hexp).mul hcomp
  apply h.congr_deriv
  dsimp only [logSamplingDerivative, Pi.mul_apply, Function.comp_apply]
  ring

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02013b004d31b7feb6643294c01528a5c1623684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
