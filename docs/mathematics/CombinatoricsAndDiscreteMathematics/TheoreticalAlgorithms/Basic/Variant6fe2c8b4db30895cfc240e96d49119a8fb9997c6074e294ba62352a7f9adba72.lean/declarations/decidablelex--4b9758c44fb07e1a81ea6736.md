# decidableLex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:904b0ca6da61fb54df25979f3a87ccd0338b725c876dafc82528d3668976753a",
  "kind": "instance",
  "lexical_name": "decidableLex",
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
  "slug": "decidablelex--4b9758c44fb07e1a81ea6736",
  "source": {
    "blob": "a45b3110afdf9a53be21f7051742b2f364d8dd49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 216,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6fe2c8b4db30895cfc240e96d49119a8fb9997c6074e294ba62352a7f9adba72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b9758c44fb07e1a81ea6736afb5ccb0dcd36866b39cff220f3d1b3f3dc29b3f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6fe2c8b4db30895cfc240e96d49119a8fb9997c6074e294ba62352a7f9adba72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:904b0ca6da61fb54df25979f3a87ccd0338b725c876dafc82528d3668976753a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableLex [DecidableEq α] (r : α → α → Prop) [h : DecidableRel r] :
    (l₁ l₂ : List α) → Decidable (Lex r l₁ l₂)
  | [], [] => isFalse nofun
  | [], _::_ => isTrue Lex.nil
  | _::_, [] => isFalse nofun
  | a::as, b::bs =>
    match h a b with
    | isTrue h₁ => isTrue (Lex.rel h₁)
    | isFalse h₁ =>
      if h₂ : a = b then
        match decidableLex r as bs with
        | isTrue h₃ => isTrue (h₂ ▸ Lex.cons h₃)
        | isFalse h₃ => isFalse (fun h => match h with
          | Lex.rel h₁' => absurd h₁' h₁
          | Lex.cons h₃' => absurd h₃' h₃)
      else
        isFalse (fun h => match h with
          | Lex.rel h₁' => absurd h₁' h₁
          | Lex.cons h₂' => h₂ rfl)

/--
Lexicographic ordering of lists with respect to an ordering on their elements.

`as < bs` if
 * `as` is empty and `bs` is non-empty, or
 * both `as` and `bs` are non-empty, and the head of `as` is less than the head of `bs`, or
 * both `as` and `bs` are non-empty, their heads are equal, and the tail of `as` is less than the
   tail of `bs`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6fe2c8b4db30895cfc240e96d49119a8fb9997c6074e294ba62352a7f9adba72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6fe2c8b4db30895cfc240e96d49119a8fb9997c6074e294ba62352a7f9adba72.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a45b3110afdf9a53be21f7051742b2f364d8dd49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
