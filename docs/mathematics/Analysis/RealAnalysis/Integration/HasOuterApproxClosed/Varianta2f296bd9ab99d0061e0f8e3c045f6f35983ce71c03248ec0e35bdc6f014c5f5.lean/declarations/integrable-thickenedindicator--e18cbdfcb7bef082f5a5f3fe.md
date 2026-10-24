# integrable_thickenedIndicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09209dc6-581d-2bbf-8a78-97d066b77999",
  "kind": "lemma",
  "lexical_name": "integrable_thickenedIndicator",
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
  "slug": "integrable-thickenedindicator--e18cbdfcb7bef082f5a5f3fe",
  "source": {
    "blob": "ec701fcd87952986a28066d36ff3c0333ba15ffb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e18cbdfcb7bef082f5a5f3fe7d0d059af242e48b88f3e05ee2e30ae3008525a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09209dc6-581d-2bbf-8a78-97d066b77999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_thickenedIndicator {Ω : Type*} {mΩ : MeasurableSpace Ω}
    [PseudoEMetricSpace Ω] [OpensMeasurableSpace Ω] {μ : Measure Ω} [IsFiniteMeasure μ] (F : Set Ω)
    {δ : ℝ} (δ_pos : 0 < δ) :
    Integrable (fun ω ↦ (thickenedIndicator δ_pos F ω : ℝ)) μ := by
  refine .of_bound (by fun_prop) 1 (ae_of_all _ fun x ↦ ?_)
  simpa using thickenedIndicator_le_one δ_pos F x

/-- The integrals of thickened indicators of a closed set against a finite measure tend to the
measure of the closed set if the thickening radii tend to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec701fcd87952986a28066d36ff3c0333ba15ffb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
