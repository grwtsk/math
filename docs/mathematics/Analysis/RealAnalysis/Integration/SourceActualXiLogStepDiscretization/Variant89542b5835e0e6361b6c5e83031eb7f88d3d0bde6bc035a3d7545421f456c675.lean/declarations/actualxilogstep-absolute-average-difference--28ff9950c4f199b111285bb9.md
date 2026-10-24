# actualXiLogStep_absolute_average_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:115b1f78-db88-ee5f-43bb-bfc5ab7549e1",
  "kind": "theorem",
  "lexical_name": "actualXiLogStep_absolute_average_difference",
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
  "slug": "actualxilogstep-absolute-average-difference--28ff9950c4f199b111285bb9",
  "source": {
    "blob": "37391a9244df1c587c23c720c5aedaf973b5073a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variant89542b5835e0e6361b6c5e83031eb7f88d3d0bde6bc035a3d7545421f456c675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28ff9950c4f199b111285bb9a8fc3274b18c180e825aeece2202057394c79fdc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variant89542b5835e0e6361b6c5e83031eb7f88d3d0bde6bc035a3d7545421f456c675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:115b1f78-db88-ee5f-43bb-bfc5ab7549e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogStep_absolute_average_difference {T : ℝ} (hT : Real.log 7 ≤ T) :
    |(∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) -
      (∫ t in Real.log 7..T, |actualIntegerXiTailLogStep t|)| ≤
      actualXiLogStepErrorConstant := by
  have hp := actualXiTailPrimitive_intervalIntegrable hT
  have hs := actualIntegerXiTailLogStep_intervalIntegrable hT
  rw [← intervalIntegral.integral_sub hp.abs hs.abs]
  apply (intervalIntegral.abs_integral_le_integral_abs hT).trans
  apply (intervalIntegral.integral_mono_on hT (hp.abs.sub hs.abs).abs
    (actualXiLogStep_error_intervalIntegrable hT).abs
      (fun t _ => abs_abs_sub_abs_le_abs_sub _ _)).trans
  exact actualXiLogStep_error_integral_abs_le hT

end
end FormalResearch.RiemannHypothesis.SourceActualXiLogStepDiscretization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variant89542b5835e0e6361b6c5e83031eb7f88d3d0bde6bc035a3d7545421f456c675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variant89542b5835e0e6361b6c5e83031eb7f88d3d0bde6bc035a3d7545421f456c675.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37391a9244df1c587c23c720c5aedaf973b5073a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
