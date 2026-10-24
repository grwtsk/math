# sum_rowLens_eq_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4af409b-d86e-582d-2a66-018e9ff39076",
  "kind": "lemma",
  "lexical_name": "sum_rowLens_eq_card",
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
  "slug": "sum-rowlens-eq-card--3721ff0883e2db56ec67ae6c",
  "source": {
    "blob": "823a7b8276b4a19b09395ece0e5a89922b364621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 397,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/YoungDiagram/Varianta88bde7d0f638d12f275d27ddf3c72d0d15db5dd94578b3a6a76aece18830011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3721ff0883e2db56ec67ae6c22ecbc1320bc289d4932632451a230a6475e7800",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/YoungDiagram/Varianta88bde7d0f638d12f275d27ddf3c72d0d15db5dd94578b3a6a76aece18830011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4af409b-d86e-582d-2a66-018e9ff39076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_rowLens_eq_card (μ : YoungDiagram) : μ.rowLens.sum = μ.card := by
  have hf : ∀ c ∈ μ.cells, c.1 ∈ Finset.range (μ.colLen 0) := by
    intro c hc
    rw [Finset.mem_range, ← YoungDiagram.mem_iff_lt_colLen]
    exact μ.up_left_mem (le_refl _) (Nat.zero_le _) hc
  have hr : ∀ i ∈ Finset.range (μ.colLen 0), ({c ∈ μ.cells | c.1 = i}).card = μ.rowLen i := by
    intro i _hi
    rw [YoungDiagram.rowLen_eq_card, row]
  rw [YoungDiagram.card, Finset.card_eq_sum_card_fiberwise hf, Finset.sum_congr rfl hr,
    YoungDiagram.rowLens, Finset.sum_eq_multiset_sum, Finset.range_val, Multiset.range,
    Multiset.map_coe, Multiset.sum_coe]

end RowLens

section EquivListRowLens

/-! ### Equivalence between Young diagrams and lists of natural numbers

This section defines the equivalence between Young diagrams `μ` and weakly decreasing lists `w`
of positive natural numbers, corresponding to row lengths of the diagram:
  `YoungDiagram.equivListRowLens :`
  `YoungDiagram ≃ {w : List ℕ // w.SortedGE ∧ ∀ x ∈ w, 0 < x}`

The two directions are `YoungDiagram.rowLens` (defined above) and `YoungDiagram.ofRowLens`.

-/


/-- The cells making up a `YoungDiagram` from a list of row lengths -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/YoungDiagram/Varianta88bde7d0f638d12f275d27ddf3c72d0d15db5dd94578b3a6a76aece18830011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/YoungDiagram/Varianta88bde7d0f638d12f275d27ddf3c72d0d15db5dd94578b3a6a76aece18830011.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823a7b8276b4a19b09395ece0e5a89922b364621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
