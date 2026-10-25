# simpProj?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b15a5b5f64b7b84c98e30fffbaa6173a6881a7ec7eb2a3628477db00c88acca9",
  "kind": "def",
  "lexical_name": "simpProj?",
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
  "slug": "simpproj--800d29ebbd6daecb69d844cc",
  "source": {
    "blob": "0b63db84144527f9f601452daa5ab40f545a3b26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpValue/Varianted5dd54b58f6340d4916962d3cbf2dd3aa184ff61eae5029518f8e67863de138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:800d29ebbd6daecb69d844cc17d9432a88d89d2466a74548b356ac8c434bc149",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpValue/Varianted5dd54b58f6340d4916962d3cbf2dd3aa184ff61eae5029518f8e67863de138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b15a5b5f64b7b84c98e30fffbaa6173a6881a7ec7eb2a3628477db00c88acca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def simpProj? (e : LetValue .pure) : OptionT SimpM (LetValue .pure) := do
  let .proj _ i s := e | failure
  let some ctorInfo ← findCtor? s | failure
  match ctorInfo with
  | .ctor ctorVal args => return args[ctorVal.numParams + i]!.toLetValue
  | .natVal .. => failure

/--
Application over application.
```
let g := f a
g b
```
is simplified to `f a b`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpValue/Varianted5dd54b58f6340d4916962d3cbf2dd3aa184ff61eae5029518f8e67863de138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpValue/Varianted5dd54b58f6340d4916962d3cbf2dd3aa184ff61eae5029518f8e67863de138.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b63db84144527f9f601452daa5ab40f545a3b26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
