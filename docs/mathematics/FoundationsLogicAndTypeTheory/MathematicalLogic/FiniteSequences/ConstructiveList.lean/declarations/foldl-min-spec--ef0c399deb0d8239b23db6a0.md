# foldl_min_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a042df2-d921-0079-9b14-2dfc31879cfa",
  "kind": "theorem",
  "lexical_name": "foldl_min_spec",
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
  "slug": "foldl-min-spec--ef0c399deb0d8239b23db6a0",
  "source": {
    "blob": "dcf215013572aef296345cce70a270690c10770a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 244,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef0c399deb0d8239b23db6a008416e0dd19445e89ab58435a67f4661f9412c87",
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

Occurrence: `result:3a042df2-d921-0079-9b14-2dfc31879cfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foldl_min_spec (xs : List Nat) (a : Nat) :
    xs.foldl min a ∈ a :: xs ∧
      ∀ b, b ∈ a :: xs → xs.foldl min a ≤ b := by
  induction xs generalizing a with
  | nil =>
      refine ⟨List.Mem.head [], ?_⟩
      intro b member
      cases member with
      | head => exact Nat.le_refl a
      | tail _ member => cases member
  | cons b xs ih =>
      change xs.foldl min (min a b) ∈ a :: b :: xs ∧
        ∀ c, c ∈ a :: b :: xs → xs.foldl min (min a b) ≤ c
      by_cases ordered : a ≤ b
      · have chosen : min a b = a := if_pos ordered
        rw [chosen]
        have selected := ih a
        refine ⟨?_, ?_⟩
        · cases mem_cons_iff.mp selected.1 with
          | inl same => exact mem_cons_iff.mpr (Or.inl same)
          | inr member => exact List.Mem.tail a (List.Mem.tail b member)
        · intro c member
          cases member with
          | head => exact selected.2 a (List.Mem.head xs)
          | tail _ member =>
              cases member with
              | head => exact Nat.le_trans (selected.2 a (List.Mem.head xs)) ordered
              | tail _ member => exact selected.2 c (List.Mem.tail a member)
      · have chosen : min a b = b := if_neg ordered
        rw [chosen]
        have selected := ih b
        refine ⟨List.Mem.tail a selected.1, ?_⟩
        intro c member
        cases member with
        | head =>
            exact Nat.le_trans (selected.2 b (List.Mem.head xs))
              (Nat.le_of_lt (Nat.lt_of_not_ge ordered))
        | tail _ member => exact selected.2 c member

/-- The actual maximum fold selects a member and bounds all its inputs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcf215013572aef296345cce70a270690c10770a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
