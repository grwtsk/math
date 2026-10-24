# lintegral_eq_zero_of_isMulLeftInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d04601ee-9cec-0e49-a502-60f54da40ca0",
  "kind": "theorem",
  "lexical_name": "lintegral_eq_zero_of_isMulLeftInvariant",
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
  "slug": "lintegral-eq-zero-of-ismulleftinvariant--ece05308e82ff22d1fe38ab2",
  "source": {
    "blob": "483c230e806fb99f8582e3ba75453327c1252ed3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LIntegral/Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ece05308e82ff22d1fe38ab2d3e676e834414575f24d15b11edb6d5fb5710ce0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LIntegral/Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d04601ee-9cec-0e49-a502-60f54da40ca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_eq_zero_of_isMulLeftInvariant [Regular μ] (hμ : μ ≠ 0) {f : G → ℝ≥0∞}
    (hf : Continuous f) : ∫⁻ x, f x ∂μ = 0 ↔ f = 0 := by
  haveI := isOpenPosMeasure_of_mulLeftInvariant_of_regular hμ
  rw [lintegral_eq_zero_iff hf.measurable, hf.ae_eq_iff_eq μ continuous_zero]
#align measure_theory.lintegral_eq_zero_of_is_mul_left_invariant MeasureTheory.lintegral_eq_zero_of_isMulLeftInvariant
#align measure_theory.lintegral_eq_zero_of_is_add_left_invariant MeasureTheory.lintegral_eq_zero_of_isAddLeftInvariant

end TopologicalGroup

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LIntegral/Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LIntegral/Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `483c230e806fb99f8582e3ba75453327c1252ed3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
