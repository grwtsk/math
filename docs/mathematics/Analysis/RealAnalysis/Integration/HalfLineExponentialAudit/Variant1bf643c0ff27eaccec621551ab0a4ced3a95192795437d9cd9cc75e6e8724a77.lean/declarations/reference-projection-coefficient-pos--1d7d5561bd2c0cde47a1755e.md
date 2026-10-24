# reference_projection_coefficient_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1e8c3f7-f477-2c76-5e56-08884e8f0923",
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
  "slug": "reference-projection-coefficient-pos--1d7d5561bd2c0cde47a1755e",
  "source": {
    "blob": "565c307161b82d0f040089e85f80010954ab5359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 166,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d7d5561bd2c0cde47a1755e6649067f18cc35ae2847681bc5c08c99c735afce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1e8c3f7-f477-2c76-5e56-08884e8f0923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–228.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `565c307161b82d0f040089e85f80010954ab5359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
