# Join.refl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:855898730857477b29958a7f9c0de383428e7354eace250790658f53f6332a2e",
  "kind": "instance",
  "lexical_name": "Join.refl",
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
  "slug": "join-refl--445a86b04126cdebc05b50cd",
  "source": {
    "blob": "d0922cc4358685f7574fcf0005edd2ea61f7fdad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 977,
    "line": 973,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4fec7f4e29d1d7e173c46390261ccb689c96c7508294985af69d67b3611d9adf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:445a86b04126cdebc05b50cd6bce90d92a00ab43581a6207398339d2ebb533fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4fec7f4e29d1d7e173c46390261ccb689c96c7508294985af69d67b3611d9adf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:855898730857477b29958a7f9c0de383428e7354eace250790658f53f6332a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 973–977.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected instance Join.refl [Std.Refl r] : Std.Refl (Join r) where
  refl a := ⟨a, _root_.refl a, _root_.refl a⟩

@[deprecated (since := "2026-06-10")] alias reflexive_join := Join.refl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4fec7f4e29d1d7e173c46390261ccb689c96c7508294985af69d67b3611d9adf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4fec7f4e29d1d7e173c46390261ccb689c96c7508294985af69d67b3611d9adf.lean#L973).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0922cc4358685f7574fcf0005edd2ea61f7fdad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
