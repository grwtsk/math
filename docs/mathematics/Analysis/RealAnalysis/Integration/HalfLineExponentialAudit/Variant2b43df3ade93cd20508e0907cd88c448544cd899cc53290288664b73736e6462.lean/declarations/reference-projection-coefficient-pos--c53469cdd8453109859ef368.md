# reference_projection_coefficient_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d2d58a195644c7b631df6f48d35424974967650",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97de4c35-2fed-1011-e40c-dbe21e14df01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:026da570-d609-b8ea-1f63-5376c9c27942",
  "kind": "theorem",
  "lexical_name": "reference_projection_coefficient_pos",
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
  "slug": "reference-projection-coefficient-pos--c53469cdd8453109859ef368",
  "source": {
    "blob": "9d2d58a195644c7b631df6f48d35424974967650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c53469cdd8453109859ef368d099d9bae0f7cb0d002f489184f9247571a215ff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:026da570-d609-b8ea-1f63-5376c9c27942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reference_projection_coefficient_pos (z : ℂ) (hz : 0 < z.re) :
    0 < ‖inner ℂ referenceVector (exponentialVector z hz)‖ ^ 2 /
      ‖exponentialVector z hz‖ ^ 2 := by
  rw [reference_projection_coefficient]
  have hn : 0 < ‖1 + z‖ := norm_pos_iff.mpr (one_add_ne_zero z hz)
  positivity

end
end HalfLineExponentialScratch

set_option pp.universes true
#print HalfLineExponentialScratch.halfLineMeasure
#print axioms HalfLineExponentialScratch.halfLineMeasure
#print HalfLineExponentialScratch.H
#print axioms HalfLineExponentialScratch.H
#print HalfLineExponentialScratch.exponentialFunction
#print axioms HalfLineExponentialScratch.exponentialFunction
#print HalfLineExponentialScratch.exponentialFunction_continuous
#print axioms HalfLineExponentialScratch.exponentialFunction_continuous
#print HalfLineExponentialScratch.exponentialFunction_integrable
#print axioms HalfLineExponentialScratch.exponentialFunction_integrable
#print HalfLineExponentialScratch.exponentialFunction_norm_sq
#print axioms HalfLineExponentialScratch.exponentialFunction_norm_sq
#print HalfLineExponentialScratch.exponentialFunction_sq_integrable
#print axioms HalfLineExponentialScratch.exponentialFunction_sq_integrable
#print HalfLineExponentialScratch.exponentialFunction_memLp
#print axioms HalfLineExponentialScratch.exponentialFunction_memLp
#print HalfLineExponentialScratch.exponentialFunction_sq_integral
#print axioms HalfLineExponentialScratch.exponentialFunction_sq_integral
#print HalfLineExponentialScratch.exponentialVector
#print axioms HalfLineExponentialScratch.exponentialVector
#print HalfLineExponentialScratch.exponentialVector_ae
#print axioms HalfLineExponentialScratch.exponentialVector_ae
#print HalfLineExponentialScratch.pointwise_inner_exponential
#print axioms HalfLineExponentialScratch.pointwise_inner_exponential
#print HalfLineExponentialScratch.inner_exponential_integrable
#print axioms HalfLineExponentialScratch.inner_exponential_integrable
#print HalfLineExponentialScratch.inner_exponential_integral
#print axioms HalfLineExponentialScratch.inner_exponential_integral
#print HalfLineExponentialScratch.inner_exponentialVector
#print axioms HalfLineExponentialScratch.inner_exponentialVector
#print HalfLineExponentialScratch.exponentialVector_norm_sq
#print axioms HalfLineExponentialScratch.exponentialVector_norm_sq
#print HalfLineExponentialScratch.exponentialVector_ne_zero
#print axioms HalfLineExponentialScratch.exponentialVector_ne_zero
#print HalfLineExponentialScratch.referenceVector
#print axioms HalfLineExponentialScratch.referenceVector
#print HalfLineExponentialScratch.referenceVector_ae
#print axioms HalfLineExponentialScratch.referenceVector_ae
#print HalfLineExponentialScratch.referenceVector_norm_sq
#print axioms HalfLineExponentialScratch.referenceVector_norm_sq
#print HalfLineExponentialScratch.inner_reference_exponential
#print axioms HalfLineExponentialScratch.inner_reference_exponential
#print HalfLineExponentialScratch.inner_exponential_reference
#print axioms HalfLineExponentialScratch.inner_exponential_reference
#print HalfLineExponentialScratch.norm_sq_inner_reference_exponential
#print axioms HalfLineExponentialScratch.norm_sq_inner_reference_exponential
#print HalfLineExponentialScratch.reference_projection_coefficient
#print axioms HalfLineExponentialScratch.reference_projection_coefficient
#print HalfLineExponentialScratch.one_add_ne_zero
#print axioms HalfLineExponentialScratch.one_add_ne_zero
#print HalfLineExponentialScratch.reference_projection_coefficient_pos
#print axioms HalfLineExponentialScratch.reference_projection_coefficient_pos
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d2d58a195644c7b631df6f48d35424974967650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
