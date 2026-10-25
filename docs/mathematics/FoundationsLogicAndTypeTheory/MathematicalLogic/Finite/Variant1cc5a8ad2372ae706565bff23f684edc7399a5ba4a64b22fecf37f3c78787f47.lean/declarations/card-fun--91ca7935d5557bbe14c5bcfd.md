# card_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c363f2d-bd1b-6d44-89ce-c0083f8c7294",
  "kind": "lemma",
  "lexical_name": "card_fun",
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
  "slug": "card-fun--91ca7935d5557bbe14c5bcfd",
  "source": {
    "blob": "5fbac36d23b5c79dd05dc725623bb2b256a52827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant1cc5a8ad2372ae706565bff23f684edc7399a5ba4a64b22fecf37f3c78787f47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91ca7935d5557bbe14c5bcfd0818f1305b5fcec50e1fab47b551d8272e16c64c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant1cc5a8ad2372ae706565bff23f684edc7399a5ba4a64b22fecf37f3c78787f47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c363f2d-bd1b-6d44-89ce-c0083f8c7294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_fun {α β : Type*} : card (α → β) = card β ^ card α := by
  classical
  rcases isEmpty_or_nonempty α with α_emp | α_emp
  · simp [(card_eq_zero_iff_empty α).2 α_emp]
  rcases finite_or_infinite α
  · rcases finite_or_infinite β
    · let := Fintype.ofFinite α
      let := Fintype.ofFinite β
      simp
    · simp only [card_eq_top_of_infinite]
      rw [top_epow]
      rwa [card_ne_zero_iff_nonempty]
  · rw [card_eq_top_of_infinite (α := α)]
    rcases lt_trichotomy (card β) 1 with b_0 | b_1 | b_2
    · rw [Order.lt_one_iff, card_eq_zero_iff_empty] at b_0
      rw [(card_eq_zero_iff_empty β).2 b_0, zero_epow_top, card_eq_zero_iff_empty]
      simp [b_0]
    · rw [b_1, one_epow]
      apply le_antisymm
      · let := (card_le_one_iff_subsingleton β).1 b_1.le
        exact (card_le_one_iff_subsingleton (α → β)).2 Pi.instSubsingleton
      · let := (one_le_card_iff_nonempty β).1 b_1.ge
        exact (one_le_card_iff_nonempty (α → β)).2 Pi.instNonempty
    · rw [epow_top b_2, card_eq_top]
      rw [one_lt_card_iff_nontrivial β] at b_2
      exact Pi.infinite_of_left

end ENat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant1cc5a8ad2372ae706565bff23f684edc7399a5ba4a64b22fecf37f3c78787f47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant1cc5a8ad2372ae706565bff23f684edc7399a5ba4a64b22fecf37f3c78787f47.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fbac36d23b5c79dd05dc725623bb2b256a52827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
