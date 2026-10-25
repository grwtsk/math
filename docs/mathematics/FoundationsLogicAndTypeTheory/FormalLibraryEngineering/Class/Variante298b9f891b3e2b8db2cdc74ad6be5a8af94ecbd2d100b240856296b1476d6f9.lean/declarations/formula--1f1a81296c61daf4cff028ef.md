# Formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d894b429acb00034c918aa924a40f19b25d6cfe7dae29f4ccd216c0a7f5f4911",
  "kind": "class",
  "lexical_name": "Formula",
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
  "slug": "formula--1f1a81296c61daf4cff028ef",
  "source": {
    "blob": "fdc26651e09b06c53e7f7942f9f9ff15b01185b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variante298b9f891b3e2b8db2cdc74ad6be5a8af94ecbd2d100b240856296b1476d6f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f1a81296c61daf4cff028ef9913a86349ec0402ffc2917681bff31175624b30",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variante298b9f891b3e2b8db2cdc74ad6be5a8af94ecbd2d100b240856296b1476d6f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d894b429acb00034c918aa924a40f19b25d6cfe7dae29f4ccd216c0a7f5f4911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Formula (α : outParam (Type u)) (β : outParam (Type v)) [Clause α β] (σ : Type w) [Entails α σ] where
  /-- A function used exclusively for defining Formula's satisfiability semantics. -/
  toList : σ → List β
  /-- A predicate that indicates whether a formula can soundly be passed into performRupAdd. -/
  ReadyForRupAdd : σ → Prop
  /-- A predicate that indicates whether a formula can soundly be passed into performRatAdd. -/
  ReadyForRatAdd : σ → Prop
  ofArray : Array (Option β) → σ
  readyForRupAdd_ofArray : ∀ arr : Array (Option β), ReadyForRupAdd (ofArray arr)
  readyForRatAdd_ofArray : ∀ arr : Array (Option β), ReadyForRatAdd (ofArray arr)
  insert : σ → β → σ
  insert_iff : ∀ f : σ, ∀ c1 : β, ∀ c2 : β,
    c2 ∈ toList (insert f c1) ↔ c2 = c1 ∨ c2 ∈ toList f
  readyForRupAdd_insert : ∀ f : σ, ∀ c : β, ReadyForRupAdd f → ReadyForRupAdd (insert f c)
  readyForRatAdd_insert : ∀ f : σ, ∀ c : β, ReadyForRatAdd f → ReadyForRatAdd (insert f c)
  delete : σ → Array Nat → σ
  delete_subset : ∀ f : σ, ∀ arr : Array Nat, ∀ c : β,
    c ∈ toList (delete f arr) → c ∈ toList f
  readyForRupAdd_delete : ∀ f : σ, ∀ arr : Array Nat, ReadyForRupAdd f → ReadyForRupAdd (delete f arr)
  readyForRatAdd_delete : ∀ f : σ, ∀ arr : Array Nat, ReadyForRatAdd f → ReadyForRatAdd (delete f arr)
  formulaEntails_def : ∀ p : α → Bool, ∀ f : σ, Entails.eval p f = (toList f).all (fun c => p ⊨ c)
  performRupAdd : σ → β → Array Nat → σ × Bool
  rupAdd_result : ∀ f : σ, ∀ c : β, ∀ rupHints : Array Nat, ∀ f' : σ,
    ReadyForRupAdd f → performRupAdd f c rupHints = (f', true) → f' = insert f c
  rupAdd_sound : ∀ f : σ, ∀ c : β, ∀ rupHints : Array Nat, ∀ f' : σ,
    ReadyForRupAdd f → performRupAdd f c rupHints = (f', true) → Liff α f f'
  performRatAdd : σ → β → Literal α → Array Nat → Array (Nat × Array Nat) → σ × Bool
  ratAdd_result :
    ∀ f : σ, ∀ c : β, ∀ p : Literal α, ∀ rupHints : Array Nat, ∀ ratHints : Array (Nat × Array Nat), ∀ f' : σ,
    ReadyForRatAdd f → p ∈ Clause.toList c → performRatAdd f c p rupHints ratHints = (f', true) → f' = insert f c
  ratAdd_sound :
    ∀ f : σ, ∀ c : β, ∀ p : Literal α, ∀ rupHints : Array Nat, ∀ ratHints : Array (Nat × Array Nat), ∀ f' : σ,
    ReadyForRatAdd f → p ∈ Clause.toList c → performRatAdd f c p rupHints ratHints = (f', true) → Equisat α f f'

open Formula

attribute [grind =] insert_iff
attribute [grind →] delete_subset

grind_pattern readyForRupAdd_insert => ReadyForRupAdd (insert f c)
grind_pattern readyForRupAdd_delete => ReadyForRupAdd (delete f arr)
grind_pattern readyForRatAdd_insert => ReadyForRatAdd (insert f c)
grind_pattern readyForRatAdd_delete => ReadyForRatAdd (delete f arr)

attribute [grind →]
  rupAdd_result rupAdd_sound ratAdd_result ratAdd_sound

end Internal
end LRAT
end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variante298b9f891b3e2b8db2cdc74ad6be5a8af94ecbd2d100b240856296b1476d6f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variante298b9f891b3e2b8db2cdc74ad6be5a8af94ecbd2d100b240856296b1476d6f9.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdc26651e09b06c53e7f7942f9f9ff15b01185b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
