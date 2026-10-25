# mkTFAEId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3111e00fcccc50c04cc925bd3cdc8102d434b85037e99b3788636dbea55efa0",
  "kind": "def",
  "lexical_name": "mkTFAEId",
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
  "slug": "mktfaeid--9ce6f58926cd9b960fe0fb98",
  "source": {
    "blob": "f795d1b2b4505dc6ff086fa3d8255955ede0ff2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 248,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variant47a488e17a32c1e190928f5b5522437bbf5ed5078e057fcfb9bf5eeb9ce437c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ce6f58926cd9b960fe0fb9824e6590d6ebf4570e4555d9dcdd7a62ffc71adfc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variant47a488e17a32c1e190928f5b5522437bbf5ed5078e057fcfb9bf5eeb9ce437c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3111e00fcccc50c04cc925bd3cdc8102d434b85037e99b3788636dbea55efa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkTFAEId : TSyntax ``tfaeType → MacroM Name
  | `(tfaeType|$i:num $arr:impArrow $j:num) => do
    let arr ← match arr with
    | `(impArrow| ← ) => pure "from"
    | `(impArrow| → ) => pure "to"
    | `(impArrow| ↔ ) => pure "iff"
    | _ => Macro.throwUnsupported
    return .mkSimple <| String.intercalate "_" ["tfae", s!"{i.getNat}", arr, s!"{j.getNat}"]
  | _ => Macro.throwUnsupported

/-- Turn syntax for a given index into a natural number, as long as it lies between `1` and
`maxIndex`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variant47a488e17a32c1e190928f5b5522437bbf5ed5078e057fcfb9bf5eeb9ce437c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variant47a488e17a32c1e190928f5b5522437bbf5ed5078e057fcfb9bf5eeb9ce437c2.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f795d1b2b4505dc6ff086fa3d8255955ede0ff2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
