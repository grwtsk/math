# actualXiLogStep_error_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f6be3f9-3e8b-7f57-ef71-245b33b58121",
  "kind": "theorem",
  "lexical_name": "actualXiLogStep_error_intervalIntegrable",
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
  "slug": "actualxilogstep-error-intervalintegrable--bc6e998622c218c67ab6c683",
  "source": {
    "blob": "1fc428d732ff3071be9fbfa83e22a593ca0d6894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variant3172f80db3524db196baec324e82cb30a77e459155d2221d5695a740a6e9268d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc6e998622c218c67ab6c683dbc4fce7b96fee6b6b7394d7122d29921c5403f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variant3172f80db3524db196baec324e82cb30a77e459155d2221d5695a740a6e9268d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f6be3f9-3e8b-7f57-ef71-245b33b58121`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogStep_error_intervalIntegrable {T : ℝ} (hT : Real.log 7 ≤ T) :
    IntervalIntegrable (fun t => actualAnchoredXiTailPrimitive t -
      actualIntegerXiTailLogStep t) volume (Real.log 7) T := by
  have hp := actualXiTailPrimitive_intervalIntegrable hT
  have he : IntervalIntegrable (fun t => Real.sqrt 2 * actualXiCellOscillationConstant *
      Real.exp (-t / 2)) volume (Real.log 7) T := by
    exact (by fun_prop : Continuous (fun t : ℝ => Real.sqrt 2 *
      actualXiCellOscillationConstant * Real.exp (-t / 2))).intervalIntegrable _ _
  apply he.mono_fun' (hp.def'.aestronglyMeasurable.sub
    actualIntegerXiTailLogStep_measurable.aestronglyMeasurable)
  filter_upwards [ae_restrict_mem measurableSet_uIoc] with t ht
  rw [uIoc_of_le hT] at ht
  change |actualAnchoredXiTailPrimitive t - actualIntegerXiTailLogStep t| ≤ _
  exact actualXiLogStep_error_abs_le ht.1.le

/-- The actual integer step has finite L1, retaining every fractional last cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variant3172f80db3524db196baec324e82cb30a77e459155d2221d5695a740a6e9268d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variant3172f80db3524db196baec324e82cb30a77e459155d2221d5695a740a6e9268d.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fc428d732ff3071be9fbfa83e22a593ca0d6894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
