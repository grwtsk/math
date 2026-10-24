# exists_compl_positive_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1727ed3c53f5c8a3f77c9a395670e36398165a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0635b5c7-379f-f278-31a5-068461b3065c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01022086-53fe-6e7b-57c2-bb8443762855",
  "kind": "theorem",
  "lexical_name": "exists_compl_positive_negative",
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
  "slug": "exists-compl-positive-negative--6f86e6da6077fdacf26fc042",
  "source": {
    "blob": "f1727ed3c53f5c8a3f77c9a395670e36398165a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 166,
    "path": "GRWTSK/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f86e6da6077fdacf26fc04242db1977e3cb09b4595c2ae816bfcbfe7b88813f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01022086-53fe-6e7b-57c2-bb8443762855`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_compl_positive_negative :
    ∃ S : Set α,
      MeasurableSet S ∧
        j.toSignedMeasure ≤[S] 0 ∧
          0 ≤[Sᶜ] j.toSignedMeasure ∧ j.posPart S = 0 ∧ j.negPart Sᶜ = 0 := by
  obtain ⟨S, hS₁, hS₂, hS₃⟩ := j.mutuallySingular
  refine ⟨S, hS₁, ?_, ?_, hS₂, hS₃⟩
  · refine restrict_le_restrict_of_subset_le _ _ fun A hA hA₁ => ?_
    rw [toSignedMeasure, toSignedMeasure_sub_apply hA, measureReal_def,
      show j.posPart A = 0 from nonpos_iff_eq_zero.1 (hS₂ ▸ measure_mono hA₁), ENNReal.toReal_zero,
      zero_sub, neg_le, zero_apply, neg_zero]
    exact ENNReal.toReal_nonneg
  · refine restrict_le_restrict_of_subset_le _ _ fun A hA hA₁ => ?_
    rw [toSignedMeasure, toSignedMeasure_sub_apply hA, measureReal_def (μ := j.negPart),
      show j.negPart A = 0 from nonpos_iff_eq_zero.1 (hS₃ ▸ measure_mono hA₁), ENNReal.toReal_zero,
      sub_zero]
    exact ENNReal.toReal_nonneg

end JordanDecomposition

namespace SignedMeasure

open JordanDecomposition Measure Set VectorMeasure

variable {s : SignedMeasure α}

/-- Given a signed measure `s`, `s.toJordanDecomposition` is the Jordan decomposition `j`,
such that `s = j.toSignedMeasure`. This property is known as the Jordan decomposition
theorem, and is shown by
`MeasureTheory.SignedMeasure.toSignedMeasure_toJordanDecomposition`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1727ed3c53f5c8a3f77c9a395670e36398165a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
