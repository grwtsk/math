# instDecidableRelSumLex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b87ff039bc7a7070f944f86a572b45965406c6363a5b7b4ad912aad15be4e491",
  "kind": "instance",
  "lexical_name": "instDecidableRelSumLex",
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
  "slug": "instdecidablerelsumlex--0dd965a6f66fc41f58beaefc",
  "source": {
    "blob": "84a7e0092c8d8d2057c0d7181e052692ffde1542",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 506,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09c2f9f2aa8561ba05a9a0b9d6afa936379d064bbdc886c710b2c904f51baf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dd965a6f66fc41f58beaefc5cd256a1be7b0c0edd41a5959d2c456558c64a42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09c2f9f2aa8561ba05a9a0b9d6afa936379d064bbdc886c710b2c904f51baf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b87ff039bc7a7070f944f86a572b45965406c6363a5b7b4ad912aad15be4e491`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instDecidableRelSumLex [DecidableRel r] [DecidableRel s] : DecidableRel (Lex r s)
  | inl _, inl _ => decidable_of_iff' _ lex_inl_inl
  | inl _, inr _ => Decidable.isTrue (Lex.sep _ _)
  | inr _, inl _ => Decidable.isFalse lex_inr_inl
  | inr _, inr _ => decidable_of_iff' _ lex_inr_inr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09c2f9f2aa8561ba05a9a0b9d6afa936379d064bbdc886c710b2c904f51baf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09c2f9f2aa8561ba05a9a0b9d6afa936379d064bbdc886c710b2c904f51baf1.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84a7e0092c8d8d2057c0d7181e052692ffde1542` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
