# IsProper.lintegral_indicator_mul_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:296ada69-9265-5db9-af1e-2f6740f459de",
  "kind": "lemma",
  "lexical_name": "IsProper.lintegral_indicator_mul_indicator",
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
  "slug": "isproper-lintegral-indicator-mul-indicator--ce3b0c4f134a2a6a4328671a",
  "source": {
    "blob": "be4d2222dee9186602f5ce9bfbbab502bfa4a7f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce3b0c4f134a2a6a4328671adeef77ab6cfd233bfce48d0228d8ede9f683db5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:296ada69-9265-5db9-af1e-2f6740f459de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma IsProper.lintegral_indicator_mul_indicator (hπ : IsProper π) (h𝓑𝓧 : 𝓑 ≤ 𝓧)
    (hA : MeasurableSet[𝓧] A) (hB : MeasurableSet[𝓑] B) :
    ∫⁻ x, B.indicator 1 x * A.indicator 1 x ∂(π x₀) =
      B.indicator 1 x₀ * ∫⁻ x, A.indicator 1 x ∂(π x₀) := by
  simp_rw [← inter_indicator_mul]
  rw [lintegral_indicator ((h𝓑𝓧 _ hB).inter hA), lintegral_indicator hA]
  simp only [MeasureTheory.lintegral_const, MeasurableSet.univ, Measure.restrict_apply, univ_inter,
    Pi.one_apply, one_mul]
  rw [← hπ.inter_eq_indicator_mul h𝓑𝓧 hA hB, inter_comm]

/-- Auxiliary lemma for `IsProper.lintegral_mul` and
`IsProper.setLIntegral_eq_indicator_mul_lintegral`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be4d2222dee9186602f5ce9bfbbab502bfa4a7f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
