# integerOrbit_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2bad9b8-810d-5f2b-8a69-dd635498e54c",
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
  "slug": "integerorbit-norm--9638bb16e9b5a6c7be3167aa",
  "source": {
    "blob": "abcc8ac7564f6bdcd9384c5b0d4467c50b1a7939",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9638bb16e9b5a6c7be3167aa9e0eaac5fcf8b070fe5a614d4420a79b8e9ef8a2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2bad9b8-810d-5f2b-8a69-dd635498e54c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–108.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abcc8ac7564f6bdcd9384c5b0d4467c50b1a7939` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
