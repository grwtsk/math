# IsProper.setLIntegral_eq_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09d4200e-92f4-5d4b-e6bd-52683f30c679",
  "kind": "lemma",
  "lexical_name": "IsProper.setLIntegral_eq_comp",
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
  "slug": "isproper-setlintegral-eq-comp--647a4d17515d53e79466237e",
  "source": {
    "blob": "8403b187f6de49405ce22158d2b15d1aee8e6a84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:647a4d17515d53e79466237e98f472937619946073616b6f5ed7b9cb606a511f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09d4200e-92f4-5d4b-e6bd-52683f30c679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsProper.setLIntegral_eq_comp (hπ : IsProper π) (h𝓑𝓧 : 𝓑 ≤ 𝓧) {μ : Measure[𝓧] X}
    (hA : MeasurableSet[𝓧] A) (hB : MeasurableSet[𝓑] B) :
    ∫⁻ a in B, π a A ∂μ = (π ∘ₘ μ) (A ∩ B) := by
  rw [Measure.bind_apply (by measurability) (π.measurable.mono h𝓑𝓧 le_rfl).aemeasurable]
  simp only [hπ.inter_eq_indicator_mul h𝓑𝓧 hA hB, ← indicator_mul_const, Pi.one_apply, one_mul]
  rw [← lintegral_indicator (h𝓑𝓧 _ hB)]
  rfl

@[deprecated (since := "2025-01-24")]
alias IsProper.setLIntegral_eq_bind := IsProper.setLIntegral_eq_comp

/-- Auxiliary lemma for `IsProper.lintegral_mul` and
`IsProper.setLIntegral_eq_indicator_mul_lintegral`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8403b187f6de49405ce22158d2b15d1aee8e6a84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
