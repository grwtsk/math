# instConditionallyCompleteLinearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9654ea1409a37b8f97f19ef284476d60b9bfd458f9eb22f52d30ed705d17b85",
  "kind": "instance",
  "lexical_name": "instConditionallyCompleteLinearOrder",
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
  "slug": "instconditionallycompletelinearorder--7e1eae41afd1ee0c2c27e9c2",
  "source": {
    "blob": "d0c56c24657b361a755a3d7d9d8411178e75cfe3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e1eae41afd1ee0c2c27e9c2d0d2f8704bb5cb5b923b546765d4a0ddb231bf9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9654ea1409a37b8f97f19ef284476d60b9bfd458f9eb22f52d30ed705d17b85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instConditionallyCompleteLinearOrder : ConditionallyCompleteLinearOrder ℤ where
  __ := instLinearOrder
  __ := LinearOrder.toLattice
  sSup s :=
    if h : s.Nonempty ∧ BddAbove s then
      greatestOfBdd (Classical.choose h.2) (Classical.choose_spec h.2) h.1
    else 0
  sInf s :=
    if h : s.Nonempty ∧ BddBelow s then
      leastOfBdd (Classical.choose h.2) (Classical.choose_spec h.2) h.1
    else 0
  le_csSup s n hs hns := by
    have : s.Nonempty ∧ BddAbove s := ⟨⟨n, hns⟩, hs⟩
    simp only [dif_pos this]
    exact (greatestOfBdd _ _ _).2.2 n hns
  csSup_le s n hs hns := by
    have : s.Nonempty ∧ BddAbove s := ⟨hs, ⟨n, hns⟩⟩
    simp only [dif_pos this]
    exact hns (greatestOfBdd _ (Classical.choose_spec this.2) _).2.1
  csInf_le s n hs hns := by
    have : s.Nonempty ∧ BddBelow s := ⟨⟨n, hns⟩, hs⟩
    simp only [dif_pos this]
    exact (leastOfBdd _ _ _).2.2 n hns
  le_csInf s n hs hns := by
    have : s.Nonempty ∧ BddBelow s := ⟨hs, ⟨n, hns⟩⟩
    simp only [dif_pos this]
    exact hns (leastOfBdd _ (Classical.choose_spec this.2) _).2.1
  csSup_of_not_bddAbove := fun s hs ↦ by simp [hs]
  csInf_of_not_bddBelow := fun s hs ↦ by simp [hs]

namespace Int

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0c56c24657b361a755a3d7d9d8411178e75cfe3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
