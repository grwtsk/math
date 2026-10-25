# RecursiveObstructionProgram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cedf9daae4fcf974634b30e3d79b498cd97357e97de5ae0ed46ac223ebb65621",
  "kind": "structure",
  "lexical_name": "RecursiveObstructionProgram",
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
  "slug": "recursiveobstructionprogram--3a3a77c6c088e977db265d28",
  "source": {
    "blob": "529683181de14a9b1fa669fdbec45d6ffea2c828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveBoundary/Variantff40e255a0744815186ba2d9980ac1573adfbef5d785c4a1fd0cd0ee188883b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a3a77c6c088e977db265d28458584d7af303c69067e08b9ddbea55e785de26d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveBoundary/Variantff40e255a0744815186ba2d9980ac1573adfbef5d785c4a1fd0cd0ee188883b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cedf9daae4fcf974634b30e3d79b498cd97357e97de5ae0ed46ac223ebb65621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RecursiveObstructionProgram where
  State : Type
  Invariant : Type
  Boundary : Type
  step : State → State
  compatible : Invariant → State → Prop
  obstruction : Invariant → State → Prop
  stickyBoundary : Boundary → Prop
  ForbiddenEscape : State → Prop
  preservesCompatibility :
    ∀ I S, compatible I S → ¬ obstruction I S →
      compatible I (step S)
  forbiddenEscapeDetected :
    ∀ I S, compatible I S → ForbiddenEscape S →
      obstruction I S

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveBoundary/Variantff40e255a0744815186ba2d9980ac1573adfbef5d785c4a1fd0cd0ee188883b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveBoundary/Variantff40e255a0744815186ba2d9980ac1573adfbef5d785c4a1fd0cd0ee188883b6.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `529683181de14a9b1fa669fdbec45d6ffea2c828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
