# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d8b3fae6e48ee0782ed9e9d70af88f3f103f0a54409a031588a9d66da7972db",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--ddb2c8e6a7424ae8408fa38c",
  "source": {
    "blob": "38793e5981209efca5c40d5440fc01234b5c780c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variant5536919c4f0732f359b1a4eb3aa7bef9b96b36f06929d70ae421df50f729c39e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddb2c8e6a7424ae8408fa38c428af37c0e9c4f0b4c4550a840dedc35f3f73520",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variant5536919c4f0732f359b1a4eb3aa7bef9b96b36f06929d70ae421df50f729c39e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d8b3fae6e48ee0782ed9e9d70af88f3f103f0a54409a031588a9d66da7972db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (topology : Nat) : Nat := topology

/-- error: <input>:1:3: π-Base ids must have exactly six digits after P/S/T. -/
#guard_msgs in #parse Mathlib.CrossRef.pibaseIdFn => "P42"

/-- error: <input>:1:7: π-Base ids must consist of P, S, or T followed by six digits. -/
#guard_msgs in #parse Mathlib.CrossRef.pibaseIdFn => "P00001X"

/-- error: <input>:1:7: π-Base ids must start with P, S, or T. -/
#guard_msgs in #parse Mathlib.CrossRef.pibaseIdFn => "Q000001"

/-- info: S000023 -/
#guard_msgs in #parse Mathlib.CrossRef.pibaseIdFn => "S000023"

end Pibase

namespace DLMF

@[dlmf 5.5.E1 "A vacuous comment"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variant5536919c4f0732f359b1a4eb3aa7bef9b96b36f06929d70ae421df50f729c39e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variant5536919c4f0732f359b1a4eb3aa7bef9b96b36f06929d70ae421df50f729c39e.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38793e5981209efca5c40d5440fc01234b5c780c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
