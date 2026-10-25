# setDiffEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46fedfb34fa281b46c6083833b39680bacdd8de7dbf909ee0a44420bb6bde4ce",
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
  "slug": "setdiffequiv--2aec4b4f66594c14a80dcca6",
  "source": {
    "blob": "31f0f093ac81043bf3ee1064f550c4ab890ee8ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant49f01a9c8568bd009f9fab38f7a7c1d319125beb7b74b4538d7387779e5feb80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2aec4b4f66594c14a80dcca6cee13f9efd2540c84476a8dfdc10432a8e67136f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant49f01a9c8568bd009f9fab38f7a7c1d319125beb7b74b4538d7387779e5feb80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46fedfb34fa281b46c6083833b39680bacdd8de7dbf909ee0a44420bb6bde4ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–123.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant49f01a9c8568bd009f9fab38f7a7c1d319125beb7b74b4538d7387779e5feb80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant49f01a9c8568bd009f9fab38f7a7c1d319125beb7b74b4538d7387779e5feb80.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f0f093ac81043bf3ee1064f550c4ab890ee8ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
