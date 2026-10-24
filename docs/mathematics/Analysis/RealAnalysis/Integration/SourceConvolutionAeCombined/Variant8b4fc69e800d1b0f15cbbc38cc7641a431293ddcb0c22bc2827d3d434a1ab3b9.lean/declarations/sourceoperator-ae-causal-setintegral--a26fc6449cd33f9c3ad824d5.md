# sourceOperator_ae_causal_setIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01bc38e0-a2ad-18af-c11c-c0bdd771fd83",
  "kind": "theorem",
  "lexical_name": "sourceOperator_ae_causal_setIntegral",
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
  "slug": "sourceoperator-ae-causal-setintegral--a26fc6449cd33f9c3ad824d5",
  "source": {
    "blob": "51486d0525e45d9cee708006d090b5b2cb14193d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 452,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant8b4fc69e800d1b0f15cbbc38cc7641a431293ddcb0c22bc2827d3d434a1ab3b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a26fc6449cd33f9c3ad824d5b4892ef54ae07fd55b2f3fa8dd12a79f250ec5d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant8b4fc69e800d1b0f15cbbc38cc7641a431293ddcb0c22bc2827d3d434a1ab3b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01bc38e0-a2ad-18af-c11c-c0bdd771fd83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceOperator_ae_causal_setIntegral (f : H) :
    sourceOperator f =ᵐ[halfLineMeasure]
      (fun t => ∫ a in Ioc 0 t, fixedKernel (t - a) • f a) := by
  have h1 := restriction_ae (actualFull (zeroExtension f))
  have h2 : actualFull (zeroExtension f) =ᵐ[halfLineMeasure]
      convolutionFunction (zeroExtension f) :=
    ae_restrict_of_ae (actualFull_ae_convolution (zeroExtension f))
  refine Filter.EventuallyEq.trans h1 (h2.trans ?_)
  exact Filter.Eventually.of_forall (convolutionFunction_zeroExtension_eq_setIntegral f)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant8b4fc69e800d1b0f15cbbc38cc7641a431293ddcb0c22bc2827d3d434a1ab3b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant8b4fc69e800d1b0f15cbbc38cc7641a431293ddcb0c22bc2827d3d434a1ab3b9.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51486d0525e45d9cee708006d090b5b2cb14193d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
