# setDiffEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fe50235a112f8e06ea0c802175e165c5d41c816dfc7a91e427018f2015a277f",
  "kind": "def",
  "lexical_name": "setDiffEquiv",
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
  "slug": "setdiffequiv--ec891ccbf1b2b8c5c894ac99",
  "source": {
    "blob": "2f55f058aaae200e353d2d3e0ff6c1fa8952c782",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variantbc28dc56c6f28b827560bf8de79a11c9819c63d06c57f528ad77d30ec10e0871.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec891ccbf1b2b8c5c894ac99b45d9e0b90a93eb17e62d6e1d5da1a8dacd4a51f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variantbc28dc56c6f28b827560bf8de79a11c9819c63d06c57f528ad77d30ec10e0871.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fe50235a112f8e06ea0c802175e165c5d41c816dfc7a91e427018f2015a277f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def setDiffEquiv {s t : Set α} [Fintype s] [Fintype t]
    (h : Fintype.card s = Fintype.card t) : (s \ t : Set α) ≃ (t \ s : Set α) := by
  classical
  let fs : Finset α := Finset.univ.map (Function.Embedding.subtype (· ∈ s))
  let ft : Finset α := Finset.univ.map (Function.Embedding.subtype (· ∈ t))
  have hs (x : α) : x ∈ fs ↔ x ∈ s := by simp [fs]
  have ht (x : α) : x ∈ ft ↔ x ∈ t := by simp [ft]
  have hst (x : α) : x ∈ fs \ ft ↔ x ∈ s \ t := by simp [hs, ht]
  have hts (x : α) : x ∈ ft \ fs ↔ x ∈ t \ s := by simp [hs, ht]
  have hc : fs.card = ft.card := by
    rw [← Fintype.subtype_card fs hs, ← Fintype.subtype_card ft ht]; convert! h
  replace hc := Finset.card_sdiff_comm hc
  rw [← Fintype.subtype_card (fs \ ft) hst, ← Fintype.subtype_card (ft \ fs) hts] at hc
  exact ((Fintype.card_eq (_F := (_)) (_G := (_))).mp hc).some

open scoped Classical in
/-- If `e` is an equivalence between two subtypes of a type `α`, `e.toCompl`
is an equivalence between the complement of those subtypes.

See also `Equiv.compl`, for a computable version when a term of type
`{e' : α ≃ α // ∀ x : {x // p x}, e' x = e x}` is known. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variantbc28dc56c6f28b827560bf8de79a11c9819c63d06c57f528ad77d30ec10e0871.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variantbc28dc56c6f28b827560bf8de79a11c9819c63d06c57f528ad77d30ec10e0871.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f55f058aaae200e353d2d3e0ff6c1fa8952c782` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
