# SimpleGroundValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0810935133f3000a6d0f9c06f93ebf6329ad8c72832726f893aede3a8b71d37",
  "kind": "inductive",
  "lexical_name": "SimpleGroundValue",
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
  "slug": "simplegroundvalue--61474f736d1a772c3c8f8bbd",
  "source": {
    "blob": "8a4553ccb6158850ca6d9e8653961e6cf94c0274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variantbea06d50da41c2c3e9dee75a20bafb4966ee9f400f871a8ee1431b2279a3607d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61474f736d1a772c3c8f8bbdfc6cf852214931fbbad7bb4daae7052123ac3634",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variantbea06d50da41c2c3e9dee75a20bafb4966ee9f400f871a8ee1431b2279a3607d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0810935133f3000a6d0f9c06f93ebf6329ad8c72832726f893aede3a8b71d37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive SimpleGroundValue where
  | arg (arg : SimpleGroundArg)
  | uint8 (val : UInt8)
  | uint16 (val : UInt16)
  | uint32 (val : UInt32)
  | uint64 (val : UInt64)
  | usize (val : UInt64)
  /--
  Contains the elements of the array in a list in reverse order to enable sharing as we traverse the
  expression instead.
  -/
  | arrayBuilder (elems : List SimpleGroundArg) (remainingCapacity : Nat)
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variantbea06d50da41c2c3e9dee75a20bafb4966ee9f400f871a8ee1431b2279a3607d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variantbea06d50da41c2c3e9dee75a20bafb4966ee9f400f871a8ee1431b2279a3607d.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a4553ccb6158850ca6d9e8653961e6cf94c0274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
