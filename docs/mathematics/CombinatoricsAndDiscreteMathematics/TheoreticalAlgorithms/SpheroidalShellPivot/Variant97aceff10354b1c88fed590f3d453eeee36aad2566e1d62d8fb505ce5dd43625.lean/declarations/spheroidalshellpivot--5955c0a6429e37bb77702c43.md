# SpheroidalShellPivot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8935b9226b4f11906406f896a594b207f7ac57d6116300f8dfe7c0de7c14aa6c",
  "kind": "structure",
  "lexical_name": "SpheroidalShellPivot",
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
  "slug": "spheroidalshellpivot--5955c0a6429e37bb77702c43",
  "source": {
    "blob": "3c106a660a5f91a1e7e52206cccb76c6b06dedd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant97aceff10354b1c88fed590f3d453eeee36aad2566e1d62d8fb505ce5dd43625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5955c0a6429e37bb77702c43ee2bf52c0555771f14e44c61ca98106b94f5df6f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant97aceff10354b1c88fed590f3d453eeee36aad2566e1d62d8fb505ce5dd43625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8935b9226b4f11906406f896a594b207f7ac57d6116300f8dfe7c0de7c14aa6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SpheroidalShellPivot where
  glitch : GlitchedTraversal
  shellLabel : String
  surroundsGlitch : Prop
  surroundsGlitch_certified : surroundsGlitch
  enoughRoomForNeedleAction : Prop
  enoughRoomForNeedleAction_certified : enoughRoomForNeedleAction
  sourceLabel : String

/--
Non-sticky pivot condition.

This says the obstruction does not form a persistent mass-gap-like boundary at
this pivot. It is supplied data, not a theorem about all glitches.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant97aceff10354b1c88fed590f3d453eeee36aad2566e1d62d8fb505ce5dd43625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant97aceff10354b1c88fed590f3d453eeee36aad2566e1d62d8fb505ce5dd43625.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c106a660a5f91a1e7e52206cccb76c6b06dedd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
