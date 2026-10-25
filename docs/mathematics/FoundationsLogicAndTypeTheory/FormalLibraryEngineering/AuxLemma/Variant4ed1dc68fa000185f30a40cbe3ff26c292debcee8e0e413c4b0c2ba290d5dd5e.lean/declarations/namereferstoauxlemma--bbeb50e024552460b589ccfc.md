# nameRefersToAuxLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:040fd30009d68cc13f81aaf7ba0a1e6325df170b5a76f1e647c4122f37e52f6a",
  "kind": "def",
  "lexical_name": "nameRefersToAuxLemma",
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
  "slug": "namereferstoauxlemma--bbeb50e024552460b589ccfc",
  "source": {
    "blob": "c651168ba3f3f55a3f0c78e8b45ba3636b37c104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AuxLemma/Variant4ed1dc68fa000185f30a40cbe3ff26c292debcee8e0e413c4b0c2ba290d5dd5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbeb50e024552460b589ccfc087e5d9b7155d9839af2dd0eb332bafd9c1b6654",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AuxLemma/Variant4ed1dc68fa000185f30a40cbe3ff26c292debcee8e0e413c4b0c2ba290d5dd5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:040fd30009d68cc13f81aaf7ba0a1e6325df170b5a76f1e647c4122f37e52f6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def nameRefersToAuxLemma : Name → Bool
  | .str p s => isAuxName s || nameRefersToAuxLemma p
  | .num p _ => nameRefersToAuxLemma p
  | .anonymous => false

/-- The `auxLemma` linter emits a warning on any explicit reference to an auto-generated
auxiliary declaration (such as `_proof_1`, `match_1`, or `_sizeOf_1`).

These names are internal to the Lean elaborator and are not stable across refactors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AuxLemma/Variant4ed1dc68fa000185f30a40cbe3ff26c292debcee8e0e413c4b0c2ba290d5dd5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AuxLemma/Variant4ed1dc68fa000185f30a40cbe3ff26c292debcee8e0e413c4b0c2ba290d5dd5e.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c651168ba3f3f55a3f0c78e8b45ba3636b37c104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
