# integerOrbit_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5ee780f-bad5-610d-6164-3a249e25ee0f",
  "kind": "theorem",
  "lexical_name": "integerOrbit_norm",
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
  "slug": "integerorbit-norm--7b3992423d7abad1bb8058ee",
  "source": {
    "blob": "75484560b8993e87096a300ea5e67d8e0920ed4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant386d2fb7985c41d927a2b059c01c3da27c5b38734fef82c380a96e4560685cac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b3992423d7abad1bb8058eef8c3dca0c4cdef9d285b20dbc0c6ae613d0b5b49",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant386d2fb7985c41d927a2b059c01c3da27c5b38734fef82c380a96e4560685cac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5ee780f-bad5-610d-6164-3a249e25ee0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerOrbit_norm (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) :
    ‖integerOrbit A hA n‖ = ‖actualComplexL2 A hA‖ :=
  dilate_actual_norm A hA (n.val : ℝ) (by exact_mod_cast n.property)

end ContinuousResearch.ActualComplexDilation

/- Complete public type, proof and trusted dependency audits. -/

#check ContinuousResearch.ActualComplexDilation.actualComplexOperator
#print axioms ContinuousResearch.ActualComplexDilation.actualComplexOperator
#print ContinuousResearch.ActualComplexDilation.actualComplexOperator

#check ContinuousResearch.ActualComplexDilation.actualComplexOperator_memLp
#print axioms ContinuousResearch.ActualComplexDilation.actualComplexOperator_memLp
#print ContinuousResearch.ActualComplexDilation.actualComplexOperator_memLp

#check ContinuousResearch.ActualComplexDilation.actualComplexL2
#print axioms ContinuousResearch.ActualComplexDilation.actualComplexL2
#print ContinuousResearch.ActualComplexDilation.actualComplexL2

#check ContinuousResearch.ActualComplexDilation.actualComplexL2_ae
#print axioms ContinuousResearch.ActualComplexDilation.actualComplexL2_ae
#print ContinuousResearch.ActualComplexDilation.actualComplexL2_ae

#check ContinuousResearch.ActualComplexDilation.actualComplexL2_norm_sq
#print axioms ContinuousResearch.ActualComplexDilation.actualComplexL2_norm_sq
#print ContinuousResearch.ActualComplexDilation.actualComplexL2_norm_sq

#check ContinuousResearch.ActualComplexDilation.dilate_actual_ae
#print axioms ContinuousResearch.ActualComplexDilation.dilate_actual_ae
#print ContinuousResearch.ActualComplexDilation.dilate_actual_ae

#check ContinuousResearch.ActualComplexDilation.dilate_actual_norm
#print axioms ContinuousResearch.ActualComplexDilation.dilate_actual_norm
#print ContinuousResearch.ActualComplexDilation.dilate_actual_norm

#check ContinuousResearch.ActualComplexDilation.integerOrbit
#print axioms ContinuousResearch.ActualComplexDilation.integerOrbit
#print ContinuousResearch.ActualComplexDilation.integerOrbit

#check ContinuousResearch.ActualComplexDilation.integerOrbit_ae
#print axioms ContinuousResearch.ActualComplexDilation.integerOrbit_ae
#print ContinuousResearch.ActualComplexDilation.integerOrbit_ae

#check ContinuousResearch.ActualComplexDilation.integerOrbit_norm
#print axioms ContinuousResearch.ActualComplexDilation.integerOrbit_norm
#print ContinuousResearch.ActualComplexDilation.integerOrbit_norm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant386d2fb7985c41d927a2b059c01c3da27c5b38734fef82c380a96e4560685cac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant386d2fb7985c41d927a2b059c01c3da27c5b38734fef82c380a96e4560685cac.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75484560b8993e87096a300ea5e67d8e0920ed4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
