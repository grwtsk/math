# SimpleGroundExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97a9f4d8efdef07dd502cf322a82ac3e5032fa6429187bb5da9ddda72cac6222",
  "kind": "inductive",
  "lexical_name": "SimpleGroundExpr",
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
  "slug": "simplegroundexpr--5c9cdcd1ad52c97a9395a529",
  "source": {
    "blob": "c73f72919ec72d9f71678c83fa074470aaf6cd1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c9cdcd1ad52c97a9395a529bbf5df17b678e1078ddc80f0e42eda0b611dc033",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97a9f4d8efdef07dd502cf322a82ac3e5032fa6429187bb5da9ddda72cac6222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public inductive SimpleGroundExpr where
  /--
  Represents a `lean_ctor_object`. Crucially the `scalarArgs` array must have a size that is a
  multiple of 8.
  -/
  | ctor (cidx : Nat) (objArgs : Array SimpleGroundArg) (usizeArgs : Array UInt64) (scalarArgs : Array UInt8)
  /--
  A string literal, represented by a `lean_string_object`.
  -/
  | string (data : String)
  /--
  A partial application, represented by a `lean_closure_object`.
  -/
  | pap (func : Name) (args : Array SimpleGroundArg)
  /--
  An application of `Lean.Name.mkStrX`. This expression is represented separately to ensure that
  long name literals get extracted into statically initializable constants. The arguments contain
  both the name of the string literal it references as well as the hash of the name up to that
  point. This is done to make emitting the literal as simple as possible.
  -/
  | nameMkStr (args : Array (Name × UInt64))
  /--
  A reference to another declaration that was marked as a simple ground expression. This gets
  compiled to a reference to the mangled version of the name.
  -/
  | reference (n : Name)
  /--
  An array of `lean_object*` elements, represented by a `lean_array_object`.
  -/
  | array (elems : Array SimpleGroundArg)
  /--
  A byte array (scalar array with elem_size=1), represented by a `lean_sarray_object`.
  -/
  | byteArray (data : Array UInt8)
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c73f72919ec72d9f71678c83fa074470aaf6cd1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
