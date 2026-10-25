# ControlInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ba2726acb56551654dcb60767d2f8ee572fcdd07340ba0515860461351115bc",
  "kind": "structure",
  "lexical_name": "ControlInfo",
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
  "slug": "controlinfo--c14ae46d131b7f28cc278590",
  "source": {
    "blob": "95a73b1bf28eedcd687850d390aab8746894329b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c14ae46d131b7f28cc278590ca2e8dddfb36996d7a2813bf929f1b26e2c2ae38",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ba2726acb56551654dcb60767d2f8ee572fcdd07340ba0515860461351115bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ControlInfo where
  /-- The `do` block syntactically contains a `break`. -/
  breaks : Bool := false
  /-- The `do` block syntactically contains a `continue`. -/
  continues : Bool := false
  /-- The `do` block syntactically contains an early `return`. -/
  returnsEarly : Bool := false
  /--
  The number of times the block wires the enclosing continuation into its elaborated expression.
  Consumed by `withDuplicableCont` to decide whether to introduce a join point (`> 1`).
  -/
  numRegularExits : Nat := 1
  /--
  When `true`, asserts that the next doElem in the enclosing sequence is semantically irrelevant
  (control never falls through to it). `false` asserts nothing.
  -/
  noFallthrough : Bool := false
  /-- The variables that are syntactically reassigned somewhere in the `do` block. -/
  reassigns : NameSet := {}
  deriving Inhabited

/--
The left identity of `ControlInfo.sequence`: a `ControlInfo` describing an element that always
falls through normally with a single regular exit.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95a73b1bf28eedcd687850d390aab8746894329b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
