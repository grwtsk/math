# hitting_eq_hitting_of_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4af9d97-1c00-e8e7-9d37-eb2c48233fa3",
  "kind": "theorem",
  "lexical_name": "hitting_eq_hitting_of_exists",
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
  "slug": "hitting-eq-hitting-of-exists--f6568ea42770a605ff0852c9",
  "source": {
    "blob": "7d66eb7ac3040847f34d1fa38b020a970c913fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 203,
    "path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6568ea42770a605ff0852c9943823b7fcb8590d166fcc6a47f8d984b5f85512",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4af9d97-1c00-e8e7-9d37-eb2c48233fa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hitting_eq_hitting_of_exists {m₁ m₂ : ι} (h : m₁ ≤ m₂)
    (h' : ∃ j ∈ Set.Icc n m₁, u j ω ∈ s) : hitting u s n m₁ ω = hitting u s n m₂ ω := by
  simp only [hitting, if_pos h']
  obtain ⟨j, hj₁, hj₂⟩ := h'
  rw [if_pos]
  · refine' le_antisymm _ (csInf_le_csInf bddBelow_Icc.inter_of_left ⟨j, hj₁, hj₂⟩
      (Set.inter_subset_inter_left _ (Set.Icc_subset_Icc_right h)))
    refine' le_csInf ⟨j, Set.Icc_subset_Icc_right h hj₁, hj₂⟩ fun i hi => _
    by_cases hi' : i ≤ m₁
    · exact csInf_le bddBelow_Icc.inter_of_left ⟨⟨hi.1.1, hi'⟩, hi.2⟩
    · change j ∈ {i | u i ω ∈ s} at hj₂
      exact ((csInf_le bddBelow_Icc.inter_of_left ⟨hj₁, hj₂⟩).trans (hj₁.2.trans le_rfl)).trans
        (le_of_lt (not_le.1 hi'))
  exact ⟨j, ⟨hj₁.1, hj₁.2.trans h⟩, hj₂⟩
#align measure_theory.hitting_eq_hitting_of_exists MeasureTheory.hitting_eq_hitting_of_exists

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d66eb7ac3040847f34d1fa38b020a970c913fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
