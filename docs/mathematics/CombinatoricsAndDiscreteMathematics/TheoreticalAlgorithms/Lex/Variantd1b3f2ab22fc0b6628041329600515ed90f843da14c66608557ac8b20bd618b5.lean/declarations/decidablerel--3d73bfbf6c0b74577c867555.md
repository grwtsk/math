# decidableRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f18b55a096ba5cf12ec9c9a01bae942dd69916699ac4041f06ae7d577b6b7afd",
  "kind": "instance",
  "lexical_name": "decidableRel",
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
  "slug": "decidablerel--3d73bfbf6c0b74577c867555",
  "source": {
    "blob": "c24c947bbab158977493ec769d9440081fa24e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 134,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d73bfbf6c0b74577c867555cb64ec8470894f82eadee883c3aa71837d0ed13a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f18b55a096ba5cf12ec9c9a01bae942dd69916699ac4041f06ae7d577b6b7afd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableRel [DecidableEq α] (r : α → α → Prop) [DecidableRel r] : DecidableRel (Lex r)
  | l₁, [] => isFalse fun h => by cases h
  | [], b :: l₂ => isTrue Lex.nil
  | a :: l₁, b :: l₂ => by
    haveI := decidableRel r l₁ l₂
    refine' decidable_of_iff (r a b ∨ a = b ∧ Lex r l₁ l₂) ⟨fun h => _, fun h => _⟩
    · rcases h with (h | ⟨rfl, h⟩)
      · exact Lex.rel h
      · exact Lex.cons h
    · rcases h with (_ | h | h)
      · exact Or.inr ⟨rfl, h⟩
      · exact Or.inl h
#align list.lex.decidable_rel List.Lex.decidableRel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c24c947bbab158977493ec769d9440081fa24e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
