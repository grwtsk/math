# causal_setIntegral_integrable

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
      "line": 424,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fad4b84e-d199-cd58-6826-a37495b84191",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93a9e477-b038-d9ad-bc55-03f5a7e23b26",
  "kind": "theorem",
  "lexical_name": "causal_setIntegral_integrable",
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
  "slug": "causal-setintegral-integrable--6a0051c37bf0f51b84c33aa4",
  "source": {
    "blob": "0eaf8d07c4775b88286bce7344d5b5547070f59a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 424,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a0051c37bf0f51b84c33aa486a0698fa365e3f98bef6e3592197ad57e8c50b8",
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

Occurrence: `result:93a9e477-b038-d9ad-bc55-03f5a7e23b26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causal_setIntegral_integrable (f : H) (t : ℝ) :
    IntegrableOn (fun a : ℝ => fixedKernel (t - a) • f a) (Ioc 0 t) := by
  have hraw : Integrable (fun a : ℝ => fixedKernel (t - a) • zeroExtension f a) := by
    have h := (convolution_integrand_integrable (zeroExtension f) t).comp_sub_left t
    simpa only [sub_sub_cancel] using h
  apply (integrable_indicator_iff measurableSet_Ioc).mp
  refine hraw.congr ?_
  filter_upwards [zeroExtension_ae f] with a ha
  rw [ha, causal_integrand_identity]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eaf8d07c4775b88286bce7344d5b5547070f59a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
