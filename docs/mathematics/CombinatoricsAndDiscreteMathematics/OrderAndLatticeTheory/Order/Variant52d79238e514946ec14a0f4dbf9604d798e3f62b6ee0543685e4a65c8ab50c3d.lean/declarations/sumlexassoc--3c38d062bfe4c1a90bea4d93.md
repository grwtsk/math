# sumLexAssoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edb64106f410a7626bda98a7a0cd7a696eb39e04a8c7b6c0ddf2a829ab7833d6",
  "kind": "def",
  "lexical_name": "sumLexAssoc",
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
  "slug": "sumlexassoc--3c38d062bfe4c1a90bea4d93",
  "source": {
    "blob": "7b74d4da4dc41f40731572271632a8e05634174e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 633,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant52d79238e514946ec14a0f4dbf9604d798e3f62b6ee0543685e4a65c8ab50c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c38d062bfe4c1a90bea4d93c62ac11493b68561d94cc85c9ee8f93424c3aa35",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant52d79238e514946ec14a0f4dbf9604d798e3f62b6ee0543685e4a65c8ab50c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edb64106f410a7626bda98a7a0cd7a696eb39e04a8c7b6c0ddf2a829ab7833d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumLexAssoc (α β γ : Type*) [LE α] [LE β] [LE γ] : (α ⊕ₗ β) ⊕ₗ γ ≃o α ⊕ₗ β ⊕ₗ γ :=
  { Equiv.sumAssoc α β γ with
    map_rel_iff' := @fun a b =>
      ⟨fun h =>
        match a, b, h with
        | inlₗ (inlₗ _), inlₗ (inlₗ _), Lex.inl h => Lex.inl <| Lex.inl h
        | inlₗ (inlₗ _), inlₗ (inrₗ _), Lex.sep _ _ => Lex.inl <| Lex.sep _ _
        | inlₗ (inlₗ _), inrₗ _, Lex.sep _ _ => Lex.sep _ _
        | inlₗ (inrₗ _), inlₗ (inrₗ _), Lex.inr (Lex.inl h) => Lex.inl <| Lex.inr h
        | inlₗ (inrₗ _), inrₗ _, Lex.inr (Lex.sep _ _) => Lex.sep _ _
        | inrₗ _, inrₗ _, Lex.inr (Lex.inr h) => Lex.inr h,
        fun h =>
        match a, b, h with
        | inlₗ (inlₗ _), inlₗ (inlₗ _), Lex.inl (Lex.inl h) => Lex.inl h
        | inlₗ (inlₗ _), inlₗ (inrₗ _), Lex.inl (Lex.sep _ _) => Lex.sep _ _
        | inlₗ (inlₗ _), inrₗ _, Lex.sep _ _ => Lex.sep _ _
        | inlₗ (inrₗ _), inlₗ (inrₗ _), Lex.inl (Lex.inr h) => Lex.inr <| Lex.inl h
        | inlₗ (inrₗ _), inrₗ _, Lex.sep _ _ => Lex.inr <| Lex.sep _ _
        | inrₗ _, inrₗ _, Lex.inr h => Lex.inr <| Lex.inr h⟩ }
#align order_iso.sum_lex_assoc OrderIso.sumLexAssoc

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant52d79238e514946ec14a0f4dbf9604d798e3f62b6ee0543685e4a65c8ab50c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant52d79238e514946ec14a0f4dbf9604d798e3f62b6ee0543685e4a65c8ab50c3d.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b74d4da4dc41f40731572271632a8e05634174e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
