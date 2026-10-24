# actual_continuous_closure_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:950694f1-b205-c709-5ff0-c86366cd8e0c",
  "kind": "theorem",
  "lexical_name": "actual_continuous_closure_eq",
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
  "slug": "actual-continuous-closure-eq--f479336e014f0f23c5158d8d",
  "source": {
    "blob": "028b63dad3ccfda51f6248a3b1b0dbfba3238cfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f479336e014f0f23c5158d8d899ee455f68c60e70d4667b9b94278dcbbf7c485",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:950694f1-b205-c709-5ff0-c86366cd8e0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_continuous_closure_eq (A : ℝ) (hA : 1 ≤ A) :
    (Submodule.span ℂ (range (fun a : {a : ℝ // 0 < a} =>
      unnormalized a.val a.property (actualComplexL2 A hA)))).topologicalClosure =
    (Submodule.span ℂ (range (fun a : {a : ℝ // 0 < a} =>
      dilate a.val a.property (actualComplexL2 A hA)))).topologicalClosure :=
  closure_span_range_eq (fun a : {a : ℝ // 0 < a} => a.val)
    (fun a => a.property) (actualComplexL2 A hA)

end ContinuousResearch.UnnormalizedDilation

/- Complete public type, proof and transitive trusted closure audits. -/

#check ContinuousResearch.UnnormalizedDilation.unnormalizedFunc
#print axioms ContinuousResearch.UnnormalizedDilation.unnormalizedFunc
#print ContinuousResearch.UnnormalizedDilation.unnormalizedFunc

#check ContinuousResearch.UnnormalizedDilation.unnormalizedFunc_memLp
#print axioms ContinuousResearch.UnnormalizedDilation.unnormalizedFunc_memLp
#print ContinuousResearch.UnnormalizedDilation.unnormalizedFunc_memLp

#check ContinuousResearch.UnnormalizedDilation.unnormalized
#print axioms ContinuousResearch.UnnormalizedDilation.unnormalized
#print ContinuousResearch.UnnormalizedDilation.unnormalized

#check ContinuousResearch.UnnormalizedDilation.unnormalized_ae
#print axioms ContinuousResearch.UnnormalizedDilation.unnormalized_ae
#print ContinuousResearch.UnnormalizedDilation.unnormalized_ae

#check ContinuousResearch.UnnormalizedDilation.dilate_eq_sqrt_smul
#print axioms ContinuousResearch.UnnormalizedDilation.dilate_eq_sqrt_smul
#print ContinuousResearch.UnnormalizedDilation.dilate_eq_sqrt_smul

#check ContinuousResearch.UnnormalizedDilation.unnormalized_eq_inv_sqrt_smul
#print axioms ContinuousResearch.UnnormalizedDilation.unnormalized_eq_inv_sqrt_smul
#print ContinuousResearch.UnnormalizedDilation.unnormalized_eq_inv_sqrt_smul

#check ContinuousResearch.UnnormalizedDilation.unnormalized_norm
#print axioms ContinuousResearch.UnnormalizedDilation.unnormalized_norm
#print ContinuousResearch.UnnormalizedDilation.unnormalized_norm

#check ContinuousResearch.UnnormalizedDilation.span_range_eq
#print axioms ContinuousResearch.UnnormalizedDilation.span_range_eq
#print ContinuousResearch.UnnormalizedDilation.span_range_eq

#check ContinuousResearch.UnnormalizedDilation.closure_span_range_eq
#print axioms ContinuousResearch.UnnormalizedDilation.closure_span_range_eq
#print ContinuousResearch.UnnormalizedDilation.closure_span_range_eq

#check ContinuousResearch.UnnormalizedDilation.actualIntegerOrbit
#print axioms ContinuousResearch.UnnormalizedDilation.actualIntegerOrbit
#print ContinuousResearch.UnnormalizedDilation.actualIntegerOrbit

#check ContinuousResearch.UnnormalizedDilation.actualIntegerOrbit_ae
#print axioms ContinuousResearch.UnnormalizedDilation.actualIntegerOrbit_ae
#print ContinuousResearch.UnnormalizedDilation.actualIntegerOrbit_ae

#check ContinuousResearch.UnnormalizedDilation.actual_integer_span_eq
#print axioms ContinuousResearch.UnnormalizedDilation.actual_integer_span_eq
#print ContinuousResearch.UnnormalizedDilation.actual_integer_span_eq

#check ContinuousResearch.UnnormalizedDilation.actual_integer_closure_eq
#print axioms ContinuousResearch.UnnormalizedDilation.actual_integer_closure_eq
#print ContinuousResearch.UnnormalizedDilation.actual_integer_closure_eq

#check ContinuousResearch.UnnormalizedDilation.actual_continuous_closure_eq
#print axioms ContinuousResearch.UnnormalizedDilation.actual_continuous_closure_eq
#print ContinuousResearch.UnnormalizedDilation.actual_continuous_closure_eq
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `028b63dad3ccfda51f6248a3b1b0dbfba3238cfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
