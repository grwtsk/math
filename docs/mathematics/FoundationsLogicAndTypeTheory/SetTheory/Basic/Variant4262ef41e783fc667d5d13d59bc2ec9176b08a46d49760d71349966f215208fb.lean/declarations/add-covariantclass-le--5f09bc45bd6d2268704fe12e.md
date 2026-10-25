# add_covariantClass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb98d8f20335e46aa5afba829723e58d8fa6abc3bb4f80454b78dcc733805bd5",
  "kind": "instance",
  "lexical_name": "add_covariantClass_le",
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
  "slug": "add-covariantclass-le--5f09bc45bd6d2268704fe12e",
  "source": {
    "blob": "adac847c6d27de399acd85f231e0beb94f8e1a1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 948,
    "line": 924,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant4262ef41e783fc667d5d13d59bc2ec9176b08a46d49760d71349966f215208fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f09bc45bd6d2268704fe12e8422d9f487a2b365f1591df9583149005f61105d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant4262ef41e783fc667d5d13d59bc2ec9176b08a46d49760d71349966f215208fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb98d8f20335e46aa5afba829723e58d8fa6abc3bb4f80454b78dcc733805bd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 924–948.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance add_covariantClass_le : CovariantClass Ordinal.{u} Ordinal.{u} (· + ·) (· ≤ ·) where
  elim := fun c a b h => by
    revert h c
    refine inductionOn a (fun α₁ r₁ _ ↦ ?_)
    refine inductionOn b (fun α₂ r₂ _ ↦ ?_)
    rintro c ⟨⟨⟨f, fo⟩, fi⟩⟩
    refine inductionOn c (fun β s _ ↦ ?_)
    have := (Embedding.refl β).sumMap f
    refine ⟨⟨⟨(Embedding.refl.{u+1} _).sumMap f, ?_⟩, ?_⟩⟩
    · intros a b
      match a, b with
      | Sum.inl a, Sum.inl b => exact Sum.lex_inl_inl.trans Sum.lex_inl_inl.symm
      | Sum.inl a, Sum.inr b => apply iff_of_true <;> apply Sum.Lex.sep
      | Sum.inr a, Sum.inl b => apply iff_of_false <;> exact Sum.lex_inr_inl
      | Sum.inr a, Sum.inr b => exact Sum.lex_inr_inr.trans <| fo.trans Sum.lex_inr_inr.symm
    · intros a b H
      match a, b, H with
      | _, Sum.inl b, _ => exact ⟨Sum.inl b, rfl⟩
      | Sum.inl a, Sum.inr b, H => exact (Sum.lex_inr_inl H).elim
      | Sum.inr a, Sum.inr b, H =>
        let ⟨w, h⟩ := fi _ _ (Sum.lex_inr_inr.1 H)
        exact ⟨Sum.inr w, congr_arg Sum.inr h⟩
#align ordinal.add_covariant_class_le Ordinal.add_covariantClass_le

-- Porting note: Rewritten proof of elim, previous version was difficult to debug
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant4262ef41e783fc667d5d13d59bc2ec9176b08a46d49760d71349966f215208fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant4262ef41e783fc667d5d13d59bc2ec9176b08a46d49760d71349966f215208fb.lean#L924).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adac847c6d27de399acd85f231e0beb94f8e1a1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
