# any_true_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57f49afe-df60-e219-ed87-bf8f775a57bd",
  "kind": "theorem",
  "lexical_name": "any_true_iff",
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
  "slug": "any-true-iff--9aa494760b3bd38c2cc04809",
  "source": {
    "blob": "6a871da55bab141b1f6ab8617872291cffd60b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aa494760b3bd38c2cc048091faec435def9ad7e72c090583b0a818c0d8ce0a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57f49afe-df60-e219-ed87-bf8f775a57bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem any_true_iff (inventory : List Trace) (predicate : Trace → Bool) :
    inventory.any predicate = true ↔
      ∃ trace, trace ∈ inventory ∧ predicate trace = true := by
  have boolOr (left right : Bool) :
      (left || right) = true ↔ left = true ∨ right = true := by
    cases left with
    | false =>
        constructor
        · intro result
          exact Or.inr result
        · intro either
          cases either with
          | inl impossible => cases impossible
          | inr result => exact result
    | true => exact ⟨fun _ => Or.inl rfl, fun _ => rfl⟩
  induction inventory with
  | nil =>
      constructor
      · intro impossible
        cases impossible
      · intro witness
        obtain ⟨trace, member, _⟩ := witness
        cases member
  | cons head tail inductionHypothesis =>
      constructor
      · intro result
        cases (boolOr (predicate head) (tail.any predicate)).mp result with
        | inl first => exact ⟨head, List.Mem.head tail, first⟩
        | inr rest =>
            obtain ⟨trace, member, holds⟩ := inductionHypothesis.mp rest
            exact ⟨trace, List.Mem.tail head member, holds⟩
      · intro witness
        obtain ⟨trace, member, holds⟩ := witness
        cases member with
        | head =>
            exact (boolOr _ _).mpr (Or.inl holds)
        | tail _ member =>
            exact (boolOr _ _).mpr
              (Or.inr (inductionHypothesis.mpr ⟨trace, member, holds⟩))

/-- Admissibility in the explicitly listed model, without an ambient claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a871da55bab141b1f6ab8617872291cffd60b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
