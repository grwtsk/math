# nameToIRType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7575187b4023688ff6c392cb35981fe997a822d16793825f4c1a56a3827e4691",
  "kind": "def",
  "lexical_name": "nameToIRType",
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
  "slug": "nametoirtype--a09377e3036cd96109f28b0a",
  "source": {
    "blob": "eea9473e93fca0313928b54a862786069568c253",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIRType/Variant2457ae87c3358d39e4d7d167686d02470d6667d22571967da0e8df8cfcef99c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a09377e3036cd96109f28b0ad60c019b603cbe486d74fe33825131128131de9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIRType/Variant2457ae87c3358d39e4d7d167686d02470d6667d22571967da0e8df8cfcef99c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7575187b4023688ff6c392cb35981fe997a822d16793825f4c1a56a3827e4691`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nameToIRType (n : Name) : IRType :=
  match n with
  | ``Float => .float
  | ``Float32 => .float32
  | ``UInt8 => .uint8
  | ``UInt16 => .uint16
  | ``UInt32 => .uint32
  | ``UInt64 => .uint64
  | ``lcErased => .erased
  | `obj => .object
  | `tobj => .tobject
  | `tagged => .tagged
  | ``lcVoid => .void
  | _ => unreachable!


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIRType/Variant2457ae87c3358d39e4d7d167686d02470d6667d22571967da0e8df8cfcef99c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIRType/Variant2457ae87c3358d39e4d7d167686d02470d6667d22571967da0e8df8cfcef99c2.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eea9473e93fca0313928b54a862786069568c253` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
