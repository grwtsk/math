# declIsNotUnsafe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a708beb337d7b6098f1aab2d4beee55f4466f52d05b288b4a519f763a93dfd6",
  "kind": "def",
  "lexical_name": "declIsNotUnsafe",
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
  "slug": "declisnotunsafe--bfb632f14c05a488e34e3109",
  "source": {
    "blob": "71494c6f3ba6b15e1992051fd544564edd34936a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfb632f14c05a488e34e3109e4271964782d31feeb7c228544abe99724f16e9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a708beb337d7b6098f1aab2d4beee55f4466f52d05b288b4a519f763a93dfd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def declIsNotUnsafe (declName : Name) : CoreM Bool := do
  let env ← getEnv
  let some info := env.find? declName | return true
  if info.isUnsafe then
    return false
  else
    if info matches .opaqueInfo .. then
      -- check if its a partial def
      return env.find? (Compiler.mkUnsafeRecName declName) |>.isNone
    else
      return true

/--
Convert the given declaration from the Lean environment into `Decl`.
The steps for this are roughly:
- partially erasing type information of the declaration
- eta-expanding the declaration value.
- if the declaration has an unsafe-rec version, use it.
- expand declarations tagged with the `[macro_inline]` attribute
- turn the resulting term into LCNF declaration
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71494c6f3ba6b15e1992051fd544564edd34936a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
