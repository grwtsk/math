# Rcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd0362a99c87165199aec7c27fe5baa8ceae362d9ce9f557e9b20dae70e7259a",
  "kind": "structure",
  "lexical_name": "Rcc",
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
  "slug": "rcc--e6d42b75cbfbc2187ee2893e",
  "source": {
    "blob": "9d74c9eb408a6f303655b1cd9f3a1f0af2eac346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant471cd59627cf6b1e4b743f0375a3eb3f43ab5978ebb87b7b6fca6ec3e7c89f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6d42b75cbfbc2187ee2893effcf45b3f98f4081efef4fa9c69fc288573b40be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant471cd59627cf6b1e4b743f0375a3eb3f43ab5978ebb87b7b6fca6ec3e7c89f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd0362a99c87165199aec7c27fe5baa8ceae362d9ce9f557e9b20dae70e7259a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Rcc (α : Type u) where
  /--
  The lower bound of the range. {name (full := Rcc.lower)}`lower` is included in the range.
  -/
  lower : α
  /--
  The upper bound of the range. {name (full := Rcc.upper)}`upper` is included in the range.
  -/
  upper : α
deriving DecidableEq

/--
A range of elements of {given}`α` with a closed lower bound and an open upper bound.

{lit}`a...b` or {lit}`a...<b` is the range of all values greater than or equal to {given}`a : α` and
less than {given}`b : α`. This is notation for {lean}`Rco.mk a b`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant471cd59627cf6b1e4b743f0375a3eb3f43ab5978ebb87b7b6fca6ec3e7c89f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant471cd59627cf6b1e4b743f0375a3eb3f43ab5978ebb87b7b6fca6ec3e7c89f94.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d74c9eb408a6f303655b1cd9f3a1f0af2eac346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
