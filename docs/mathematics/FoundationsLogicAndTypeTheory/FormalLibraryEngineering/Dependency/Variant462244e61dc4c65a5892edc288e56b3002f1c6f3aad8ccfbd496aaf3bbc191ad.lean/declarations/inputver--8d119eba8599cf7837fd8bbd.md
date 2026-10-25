# InputVer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7f5b25fdc92e645c0f14a42c1a79526d1b7adf40367dfeea9f62fba04cecf7f",
  "kind": "inductive",
  "lexical_name": "InputVer",
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
  "slug": "inputver--8d119eba8599cf7837fd8bbd",
  "source": {
    "blob": "29227d59901aea8f7a120b04f60a71ae0a0881d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d119eba8599cf7837fd8bbd6fc61ccc9101e19d4e92b3b7354af06f54cf0269",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7f5b25fdc92e645c0f14a42c1a79526d1b7adf40367dfeea9f62fba04cecf7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public inductive InputVer
/-- No version was specified. -/
| protected none
/--
A Git revision to resolve to a commit hash.

This is specified by an `@ git <rev>` clause in Lean or `rev = <rev>` field in TOML.
-/
| protected git (rev : GitRev)
/--
A semantic version range of acceptable versions.

This is specified by an `@ <ver>` clause in Lean or `version = <ver>` field in TOML.
-/
| protected ver (ver : VerRange)
deriving Inhabited, Repr

namespace InputVer

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29227d59901aea8f7a120b04f60a71ae0a0881d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
