# impureTypeForEnum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00fa2880d9717329ea4cb9aa39a928f44ce50bf98fb95c7c0d9188f236b47538",
  "kind": "def",
  "lexical_name": "impureTypeForEnum",
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
  "slug": "impuretypeforenum--fc40899bd1a5423356965abd",
  "source": {
    "blob": "86d99ec473fae2ccdd241b8d6dda301656d835b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc40899bd1a5423356965abde0207598f4050ba897945dc0ef263a0878a4526c",
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

Occurrence: `declaration:00fa2880d9717329ea4cb9aa39a928f44ce50bf98fb95c7c0d9188f236b47538`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def impureTypeForEnum (numCtors : Nat) : Expr :=
  if numCtors == 1 then
    ImpureType.tagged
  else if numCtors < Nat.pow 2 8 then
    ImpureType.uint8
  else if numCtors < Nat.pow 2 16 then
    ImpureType.uint16
  else if numCtors < Nat.pow 2 32 then
    ImpureType.uint32
  else
    ImpureType.tagged

/--
Maps each inductive type to its IR (impure) type representation. Populated eagerly in the type's
defining module by `setImpureType` (driven from `compileDecls`); consumers read it via
`nameToImpureType`. Persisted across modules because computing an inductive's impure type walks each
constructor's field types, which can reference constants from non-transitively (privately) imported
modules.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86d99ec473fae2ccdd241b8d6dda301656d835b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
