# boundaryPeano_deriv_at_upper_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc2b0866-e5f7-176f-8984-8e17501406d4",
  "kind": "theorem",
  "lexical_name": "boundaryPeano_deriv_at_upper_endpoint",
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
  "slug": "boundarypeano-deriv-at-upper-endpoint--d4ef28a464018067d93664ab",
  "source": {
    "blob": "276a88bea11586292e927bbc9ace9bee2e351f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 186,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variant1f52a7e9de0f79a76db9d5682ea1288b43ba7a5da3b0db1765c4eb9f6c17ca1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4ef28a464018067d93664abaf3df6b1b61b097d4fc25599889e3f0fa0ea7c7d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variant1f52a7e9de0f79a76db9d5682ea1288b43ba7a5da3b0db1765c4eb9f6c17ca1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc2b0866-e5f7-176f-8984-8e17501406d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryPeano_deriv_at_upper_endpoint {A : ℝ} (hA : 0 < A) :
    deriv (boundaryPeano A) (2 * A) = -peanoScale A *
      (((131072 / 45045 : ℝ) / (2 * A ^ 2) + (65536 / 109395 : ℝ) / 8) /
        sourceNormalization A) := by
  simp [boundaryPeano_deriv hA, sourcePeanoPrimitive_deriv_at_zero hA]

end FormalResearch.RiemannHypothesis.SourcePeanoEndpointTraces

-- Printing commands are audit instrumentation, after all source proofs.
set_option linter.hashCommand false
namespace FormalResearch.RiemannHypothesis.SourcePeanoEndpointTraces
#check overlapProfile_contDiff
#print axioms overlapProfile_contDiff
#check overlapProfile_second_deriv_eq
#print axioms overlapProfile_second_deriv_eq
#check overlapProfile_two
#print axioms overlapProfile_two
#check overlapProfile_deriv_two
#print axioms overlapProfile_deriv_two
#check overlapProfile_second_deriv_two
#print axioms overlapProfile_second_deriv_two
#check overlapProfile_third_deriv_two
#print axioms overlapProfile_third_deriv_two
#check overlapProfile_third_deriv_zero
#print axioms overlapProfile_third_deriv_zero
#check profilePrimitive_hasDerivAt
#print axioms profilePrimitive_hasDerivAt
#check deriv_eq_on_closed
#print axioms deriv_eq_on_closed
#check sourcePeanoPrimitive_deriv_eq_profile
#print axioms sourcePeanoPrimitive_deriv_eq_profile
#check sourcePeanoPrimitive_at_upper_endpoint
#print axioms sourcePeanoPrimitive_at_upper_endpoint
#check sourcePeanoPrimitive_deriv_at_upper_endpoint
#print axioms sourcePeanoPrimitive_deriv_at_upper_endpoint
#check boundaryPeano_deriv
#print axioms boundaryPeano_deriv
#check boundaryPeano_at_zero
#print axioms boundaryPeano_at_zero
#check boundaryPeano_deriv_at_zero
#print axioms boundaryPeano_deriv_at_zero
#check sourcePeanoPrimitive_at_zero
#print axioms sourcePeanoPrimitive_at_zero
#check sourcePeanoPrimitive_deriv_at_zero
#print axioms sourcePeanoPrimitive_deriv_at_zero
#check boundaryPeano_at_upper_endpoint
#print axioms boundaryPeano_at_upper_endpoint
#check boundaryPeano_deriv_at_upper_endpoint
#print axioms boundaryPeano_deriv_at_upper_endpoint
end FormalResearch.RiemannHypothesis.SourcePeanoEndpointTraces
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variant1f52a7e9de0f79a76db9d5682ea1288b43ba7a5da3b0db1765c4eb9f6c17ca1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variant1f52a7e9de0f79a76db9d5682ea1288b43ba7a5da3b0db1765c4eb9f6c17ca1c.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `276a88bea11586292e927bbc9ace9bee2e351f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
