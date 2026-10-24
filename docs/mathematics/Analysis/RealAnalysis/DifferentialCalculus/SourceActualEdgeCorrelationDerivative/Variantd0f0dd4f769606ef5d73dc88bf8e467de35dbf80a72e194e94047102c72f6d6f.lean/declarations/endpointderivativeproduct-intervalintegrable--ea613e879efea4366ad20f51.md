# endpointDerivativeProduct_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a4cc828829723f373fff78412023fbb15d98c4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0f0dd4f769606ef5d73dc88bf8e467de35dbf80a72e194e94047102c72f6d6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e4d8abe-8447-0034-b01e-52e082c7ff34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8512d976-c916-35b2-9244-ed556087a13f",
  "kind": "theorem",
  "lexical_name": "endpointDerivativeProduct_intervalIntegrable",
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
  "slug": "endpointderivativeproduct-intervalintegrable--ea613e879efea4366ad20f51",
  "source": {
    "blob": "8a4cc828829723f373fff78412023fbb15d98c4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 166,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEdgeCorrelationDerivative/Variantd0f0dd4f769606ef5d73dc88bf8e467de35dbf80a72e194e94047102c72f6d6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea613e879efea4366ad20f51abcb4509e876a11160a01ae20e531df18193941d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEdgeCorrelationDerivative/Variantd0f0dd4f769606ef5d73dc88bf8e467de35dbf80a72e194e94047102c72f6d6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8512d976-c916-35b2-9244-ed556087a13f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointDerivativeProduct_intervalIntegrable (A z : ℝ) :
    IntervalIntegrable (fun r ↦ endpointDerivativePolynomial A r *
      endpointPolynomial A (z - r)) volume 0 z := by
  have hc : Continuous (fun r ↦ endpointDerivativePolynomial A r *
      endpointPolynomial A (z - r)) := by
    unfold endpointDerivativePolynomial endpointPolynomial
    fun_prop
  exact hc.intervalIntegrable 0 z

/-- Genuine first-derivative support-edge identity, including its minus sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEdgeCorrelationDerivative/Variantd0f0dd4f769606ef5d73dc88bf8e467de35dbf80a72e194e94047102c72f6d6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEdgeCorrelationDerivative/Variantd0f0dd4f769606ef5d73dc88bf8e467de35dbf80a72e194e94047102c72f6d6f.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a4cc828829723f373fff78412023fbb15d98c4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
