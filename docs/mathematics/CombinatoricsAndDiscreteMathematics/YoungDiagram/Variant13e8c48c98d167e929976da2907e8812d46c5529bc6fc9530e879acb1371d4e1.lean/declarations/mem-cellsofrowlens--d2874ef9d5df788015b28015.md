# mem_cellsOfRowLens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f76b2dc4b56095b3eb6e01ee5050d450114f3333",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13e8c48c98d167e929976da2907e8812d46c5529bc6fc9530e879acb1371d4e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:099c44aa-838a-c82b-0bb3-302cb97dbfed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ce5a7e9-b0bf-a1c7-330b-c90c1d5500f8",
  "kind": "theorem",
  "lexical_name": "mem_cellsOfRowLens",
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
  "slug": "mem-cellsofrowlens--d2874ef9d5df788015b28015",
  "source": {
    "blob": "f76b2dc4b56095b3eb6e01ee5050d450114f3333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 462,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variant13e8c48c98d167e929976da2907e8812d46c5529bc6fc9530e879acb1371d4e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2874ef9d5df788015b28015b4ef24bcbac6786258931d63e4c7ce6bcdc685ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variant13e8c48c98d167e929976da2907e8812d46c5529bc6fc9530e879acb1371d4e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ce5a7e9-b0bf-a1c7-330b-c90c1d5500f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mem_cellsOfRowLens {w : List ℕ} {c : ℕ × ℕ} :
    c ∈ YoungDiagram.cellsOfRowLens w ↔ ∃ h : c.fst < w.length, c.snd < w.get ⟨c.fst, h⟩  := by
  induction' w with w_hd w_tl w_ih generalizing c <;> rw [YoungDiagram.cellsOfRowLens]
  · simp [YoungDiagram.cellsOfRowLens]
  · rcases c with ⟨⟨_, _⟩, _⟩
    · simp
    -- Porting note: was `simpa`
    · simp [w_ih, -Finset.singleton_product, Nat.succ_lt_succ_iff]
#align young_diagram.mem_cells_of_row_lens YoungDiagram.mem_cellsOfRowLens

-- Porting note: use `List.get` instead of `List.nthLe` because it has been deprecated
/-- Young diagram from a sorted list -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variant13e8c48c98d167e929976da2907e8812d46c5529bc6fc9530e879acb1371d4e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variant13e8c48c98d167e929976da2907e8812d46c5529bc6fc9530e879acb1371d4e1.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f76b2dc4b56095b3eb6e01ee5050d450114f3333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
