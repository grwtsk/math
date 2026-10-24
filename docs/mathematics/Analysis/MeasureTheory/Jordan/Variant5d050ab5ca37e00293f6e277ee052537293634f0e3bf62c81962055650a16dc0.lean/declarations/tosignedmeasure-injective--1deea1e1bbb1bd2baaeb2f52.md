# toSignedMeasure_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06221db6-7215-40ff-cf51-871eebd1d2a5",
  "kind": "theorem",
  "lexical_name": "toSignedMeasure_injective",
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
  "slug": "tosignedmeasure-injective--1deea1e1bbb1bd2baaeb2f52",
  "source": {
    "blob": "42e5696e56e08b68d0754ace40ce7dec5578941a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 354,
    "path": "GRWTSK/Analysis/MeasureTheory/Jordan/Variant5d050ab5ca37e00293f6e277ee052537293634f0e3bf62c81962055650a16dc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1deea1e1bbb1bd2baaeb2f52dede7972514ae23aa87f94dcd872613317204497",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jordan/Variant5d050ab5ca37e00293f6e277ee052537293634f0e3bf62c81962055650a16dc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06221db6-7215-40ff-cf51-871eebd1d2a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toSignedMeasure_injective : Injective <| @JordanDecomposition.toSignedMeasure α _ := by
  /- The main idea is that two Jordan decompositions of a signed measure provide two
    Hahn decompositions for that measure. Then, from `of_symmDiff_compl_positive_negative`,
    the symmetric difference of the two Hahn decompositions has measure zero, thus, allowing us to
    show the equality of the underlying measures of the Jordan decompositions. -/
  intro j₁ j₂ hj
  -- obtain the two Hahn decompositions from the Jordan decompositions
  obtain ⟨S, hS₁, hS₂, hS₃, hS₄, hS₅⟩ := j₁.exists_compl_positive_negative
  obtain ⟨T, hT₁, hT₂, hT₃, hT₄, hT₅⟩ := j₂.exists_compl_positive_negative
  rw [← hj] at hT₂ hT₃
  -- the symmetric differences of the two Hahn decompositions have measure zero
  obtain ⟨hST₁, -⟩ :=
    of_symmDiff_compl_positive_negative hS₁.compl hT₁.compl ⟨hS₃, (compl_compl S).symm ▸ hS₂⟩
      ⟨hT₃, (compl_compl T).symm ▸ hT₂⟩
  -- it suffices to show the Jordan decompositions have the same positive parts
  refine eq_of_posPart_eq_posPart ?_ hj
  ext1 i hi
  -- we see that the positive parts of the two Jordan decompositions are equal to their
  -- associated signed measures restricted on their associated Hahn decompositions
  have hμ₁ : j₁.posPart.real i = j₁.toSignedMeasure (i ∩ Sᶜ) := by
    rw [toSignedMeasure, toSignedMeasure_sub_apply (hi.inter hS₁.compl),
      measureReal_def (μ := j₁.negPart),
      show j₁.negPart (i ∩ Sᶜ) = 0 from
        nonpos_iff_eq_zero.1 (hS₅ ▸ measure_mono Set.inter_subset_right),
      ENNReal.toReal_zero, sub_zero]
    conv_lhs => rw [← Set.inter_union_compl i S]
    rw [measureReal_union, measureReal_def,
      show j₁.posPart (i ∩ S) = 0 from
        nonpos_iff_eq_zero.1 (hS₄ ▸ measure_mono Set.inter_subset_right),
      ENNReal.toReal_zero, zero_add]
    · refine
        Set.disjoint_of_subset_left Set.inter_subset_right
          (Set.disjoint_of_subset_right Set.inter_subset_right disjoint_compl_right)
    · exact hi.inter hS₁.compl
  have hμ₂ : j₂.posPart.real i = j₂.toSignedMeasure (i ∩ Tᶜ) := by
    rw [toSignedMeasure, toSignedMeasure_sub_apply (hi.inter hT₁.compl),
      measureReal_def (μ := j₂.negPart),
      show j₂.negPart (i ∩ Tᶜ) = 0 from
        nonpos_iff_eq_zero.1 (hT₅ ▸ measure_mono Set.inter_subset_right),
      ENNReal.toReal_zero, sub_zero]
    conv_lhs => rw [← Set.inter_union_compl i T]
    rw [measureReal_union, measureReal_def,
      show j₂.posPart (i ∩ T) = 0 from
        nonpos_iff_eq_zero.1 (hT₄ ▸ measure_mono Set.inter_subset_right),
      ENNReal.toReal_zero, zero_add]
    · exact
        Set.disjoint_of_subset_left Set.inter_subset_right
          (Set.disjoint_of_subset_right Set.inter_subset_right disjoint_compl_right)
    · exact hi.inter hT₁.compl
  -- since the two signed measures associated with the Jordan decompositions are the same,
  -- and the symmetric difference of the Hahn decompositions have measure zero, the result follows
  rw [← measureReal_eq_measureReal_iff, hμ₁, hμ₂, ← hj]
  exact of_inter_eq_of_symmDiff_eq_zero_positive hS₁.compl hT₁.compl hi hS₃ hT₃ hST₁

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jordan/Variant5d050ab5ca37e00293f6e277ee052537293634f0e3bf62c81962055650a16dc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jordan/Variant5d050ab5ca37e00293f6e277ee052537293634f0e3bf62c81962055650a16dc0.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42e5696e56e08b68d0754ace40ce7dec5578941a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
