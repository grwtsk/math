# boundaryPeano_deriv_at_upper_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e4640da-b6a7-4c24-c08a-412837601bc7",
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
  "slug": "boundarypeano-deriv-at-upper-endpoint--98d93f6d32a6e126a7fdbe35",
  "source": {
    "blob": "7e68117e936fa892b003f202695eb38a6fe30999",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variant5de159bf853beceb78ef6b85a431d469620426b0fb13604f37571987fffddfd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98d93f6d32a6e126a7fdbe356cf54521ce8baf668f759f8d459406df9f09a16f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variant5de159bf853beceb78ef6b85a431d469620426b0fb13604f37571987fffddfd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e4640da-b6a7-4c24-c08a-412837601bc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–227.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variant5de159bf853beceb78ef6b85a431d469620426b0fb13604f37571987fffddfd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variant5de159bf853beceb78ef6b85a431d469620426b0fb13604f37571987fffddfd6.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e68117e936fa892b003f202695eb38a6fe30999` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
