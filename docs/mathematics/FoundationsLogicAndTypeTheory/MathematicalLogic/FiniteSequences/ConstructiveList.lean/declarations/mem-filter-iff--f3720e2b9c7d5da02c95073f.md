# mem_filter_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f47070e-556b-8570-4162-e02df11d40e2",
  "kind": "theorem",
  "lexical_name": "mem_filter_iff",
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
  "slug": "mem-filter-iff--f3720e2b9c7d5da02c95073f",
  "source": {
    "blob": "dcf215013572aef296345cce70a270690c10770a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3720e2b9c7d5da02c95073f29969904436d19aa073c68d2c993ef29e26b366d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f47070e-556b-8570-4162-e02df11d40e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_filter_iff {a : α} {p : α → Bool} {xs : List α} :
    a ∈ xs.filter p ↔ a ∈ xs ∧ p a = true := by
  induction xs with
  | nil =>
      constructor
      · intro member
        cases member
      · intro member
        cases member.1
  | cons b xs ih =>
      cases test : p b with
      | false =>
          rw [List.filter, test]
          constructor
          · intro member
            have selected := ih.mp member
            exact ⟨List.Mem.tail b selected.1, selected.2⟩
          · intro selected
            cases selected.1 with
            | head =>
                have impossible : false = true := test.symm.trans selected.2
                cases impossible
            | tail _ member => exact ih.mpr ⟨member, selected.2⟩
      | true =>
          rw [List.filter, test]
          constructor
          · intro member
            cases member with
            | head => exact ⟨List.Mem.head xs, test⟩
            | tail _ member =>
                have selected := ih.mp member
                exact ⟨List.Mem.tail b selected.1, selected.2⟩
          · intro selected
            cases selected.1 with
            | head => exact List.Mem.head (xs.filter p)
            | tail _ member => exact List.Mem.tail b (ih.mpr ⟨member, selected.2⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcf215013572aef296345cce70a270690c10770a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
