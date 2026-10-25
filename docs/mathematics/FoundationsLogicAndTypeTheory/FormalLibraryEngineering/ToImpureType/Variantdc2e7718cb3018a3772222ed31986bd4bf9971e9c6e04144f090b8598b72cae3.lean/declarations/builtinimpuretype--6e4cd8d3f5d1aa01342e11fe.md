# builtinImpureType?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:584846496c59a8995923c626b579c6285192b6d5dd2ed71f3366ae6c16fab997",
  "kind": "def",
  "lexical_name": "builtinImpureType?",
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
  "slug": "builtinimpuretype--6e4cd8d3f5d1aa01342e11fe",
  "source": {
    "blob": "86d99ec473fae2ccdd241b8d6dda301656d835b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e4cd8d3f5d1aa01342e11fe3d7cb89351ab9fc28b9282cd3c49dc4463248fd9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:584846496c59a8995923c626b579c6285192b6d5dd2ed71f3366ae6c16fab997`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def builtinImpureType? : Name → Option Expr
  | ``UInt8 => some ImpureType.uint8
  | ``UInt16 => some ImpureType.uint16
  | ``UInt32 => some ImpureType.uint32
  | ``UInt64 => some ImpureType.uint64
  | ``USize => some ImpureType.usize
  | ``Float => some ImpureType.float
  | ``Float32 => some ImpureType.float32
  | ``lcErased => some ImpureType.erased
  -- `Int` is specified as an inductive type with two constructors that have relevant arguments,
  -- but it has the same runtime representation as `Nat` and thus needs to be special-cased here.
  | ``Int => some ImpureType.tobject
  | ``lcVoid => some ImpureType.void
  | _ => none

/--
Computes the IR (impure) type of `name` from scratch by inspecting its constructors. For inductives
this walks the constructor field types, so it must run in the defining module, where those types
(including private ones) are accessible.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86d99ec473fae2ccdd241b8d6dda301656d835b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
