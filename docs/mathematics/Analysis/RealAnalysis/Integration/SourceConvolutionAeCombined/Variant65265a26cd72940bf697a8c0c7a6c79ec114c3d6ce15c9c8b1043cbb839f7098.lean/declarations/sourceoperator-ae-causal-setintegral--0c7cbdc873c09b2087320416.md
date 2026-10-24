# sourceOperator_ae_causal_setIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0eaf8d07c4775b88286bce7344d5b5547070f59a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 444,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d5be9cf-c5e2-39d0-31e6-fba437ef6a30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec60f4a3-6aee-572d-42bf-259206644edc",
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
  "slug": "sourceoperator-ae-causal-setintegral--0c7cbdc873c09b2087320416",
  "source": {
    "blob": "0eaf8d07c4775b88286bce7344d5b5547070f59a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 444,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c7cbdc873c09b20873204168d0cae64473b2dc290d0999bf6cbddf23b5c7f9a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec60f4a3-6aee-572d-42bf-259206644edc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–454.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eaf8d07c4775b88286bce7344d5b5547070f59a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
