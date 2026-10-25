# linearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dad70f74a67484416cb8266fba16277b20f0a1341353ebd458a815c580c55a9e",
  "kind": "instance",
  "lexical_name": "linearOrder",
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
  "slug": "linearorder--bf127a34b959fa04e4c5c445",
  "source": {
    "blob": "9ba557babeaeb9b7a8102f8396bc55a92dba3650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 983,
    "line": 966,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf127a34b959fa04e4c5c445227d2e687f414b1a2911779270ab40eb6aedc3e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dad70f74a67484416cb8266fba16277b20f0a1341353ebd458a815c580c55a9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 966–983.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance linearOrder : LinearOrder Ordinal :=
  {inferInstanceAs (PartialOrder Ordinal) with
    le_total := fun a b =>
      match lt_or_eq_of_le (le_add_left b a), lt_or_eq_of_le (le_add_right a b) with
      | Or.inr h, _ => by rw [h]; exact Or.inl (le_add_right _ _)
      | _, Or.inr h => by rw [h]; exact Or.inr (le_add_left _ _)
      | Or.inl h₁, Or.inl h₂ => by
        revert h₁ h₂
        refine inductionOn a ?_
        intro α₁ r₁ _
        refine inductionOn b ?_
        intro α₂ r₂ _ ⟨f⟩ ⟨g⟩
        rw [← typein_top f, ← typein_top g, le_iff_lt_or_eq, le_iff_lt_or_eq,
                 typein_lt_typein, typein_lt_typein]
        rcases trichotomous_of (Sum.Lex r₁ r₂) g.top f.top with (h | h | h) <;>
          [exact Or.inl (Or.inl h); (left; right; rw [h]); exact Or.inr (Or.inl h)]
    decidableLE := Classical.decRel _ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean#L966).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba557babeaeb9b7a8102f8396bc55a92dba3650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
