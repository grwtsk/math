# isValidCppName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b7c70460edbf0af693debfe486ec5e6d1030525f69661dd85b1b283b8e9c686",
  "kind": "def",
  "lexical_name": "isValidCppName",
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
  "slug": "isvalidcppname--3de808bf8de8e72b8a12815b",
  "source": {
    "blob": "17f74f867132c9353c6866d6cab7f3d7e11777c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExportAttr/Variant3de0bbe433d5933428777c0e8be582dfd266db3feb9d5e90fa6a7ac2d004c24d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3de808bf8de8e72b8a12815b18019378fe94898368bbe8fb12d6fe0a595414eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExportAttr/Variant3de0bbe433d5933428777c0e8be582dfd266db3feb9d5e90fa6a7ac2d004c24d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b7c70460edbf0af693debfe486ec5e6d1030525f69661dd85b1b283b8e9c686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def isValidCppName : Name → Bool
  | .str .anonymous s => isValidCppId s
  | .str p s          => isValidCppId s && isValidCppName p
  | _                 => false

/--
Exports a function under the provided unmangled symbol name. This can be used to refer to Lean
functions from other programming languages like C.

Example:
```
@[export lean_color_from_map]
def colorValue (properties : @& Std.HashMap String String) : UInt32 :=
  match properties["color"]? with
  | some "red" => 0xff0000
  | some "green" => 0x00ff00
  | some "blue" => 0x0000ff
  | _ => -1
```
C code:
```c
#include <lean/lean.h>

uint32_t lean_color_from_map(b_lean_obj_arg properties);

void fill_rectangle_from_map(b_lean_obj_arg properties) {
    uint32_t color = lean_color_from_map(properties);
    // ...
}
```

The opposite of this is `@[extern]`, which allows Lean functions to refer to functions from other
programming languages.
-/
@[builtin_doc]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExportAttr/Variant3de0bbe433d5933428777c0e8be582dfd266db3feb9d5e90fa6a7ac2d004c24d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExportAttr/Variant3de0bbe433d5933428777c0e8be582dfd266db3feb9d5e90fa6a7ac2d004c24d.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17f74f867132c9353c6866d6cab7f3d7e11777c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
