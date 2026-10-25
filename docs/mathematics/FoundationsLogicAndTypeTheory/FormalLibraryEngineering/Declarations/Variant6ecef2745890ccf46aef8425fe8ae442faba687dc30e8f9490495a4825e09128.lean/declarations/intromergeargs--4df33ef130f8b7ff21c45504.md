# introMergeArgs?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bd3034c8a44738ae1a54540bc5a53c2c92c628f8335ddb44d451ee43b2b25d4",
  "kind": "def",
  "lexical_name": "introMergeArgs?",
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
  "slug": "intromergeargs--4df33ef130f8b7ff21c45504",
  "source": {
    "blob": "7a3ca29a2dba64302076428151b82ea4878868ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 582,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4df33ef130f8b7ff21c4550497d3ffc76de4f4f2d7572cb0492fd24efd3b7a4a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bd3034c8a44738ae1a54540bc5a53c2c92c628f8335ddb44d451ee43b2b25d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def introMergeArgs? (stx : TSyntax `tactic) : Option (Array Term) :=
  match stx with
  | `(tactic| intro%$x $args*) =>
      some <| if args.size = 0 then #[⟨mkHole x⟩] else args
  | `(tactic| intros $ids*) =>
      if ids.size = 0 then none else some <| ids.map fun stx => ⟨stx.raw⟩
  | `(tactic| rintro $pats*) =>
      pats.mapM introMergeArgOfRIntroPat?
  | _ => none

/-- Suggest merging adjacent `intro`-like tactics whose effect is equivalent to a single `intro`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a3ca29a2dba64302076428151b82ea4878868ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
