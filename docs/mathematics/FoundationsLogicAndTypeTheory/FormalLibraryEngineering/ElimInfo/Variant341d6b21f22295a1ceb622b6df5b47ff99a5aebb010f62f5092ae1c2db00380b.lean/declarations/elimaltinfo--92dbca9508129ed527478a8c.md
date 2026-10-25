# ElimAltInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2472c6d33719dff5add51f740147f531120c1bcc2d2a9ada636c0cd000736e06",
  "kind": "structure",
  "lexical_name": "ElimAltInfo",
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
  "slug": "elimaltinfo--92dbca9508129ed527478a8c",
  "source": {
    "blob": "dc22ec5dd0315225ce106d3c8c1185aa21b327a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92dbca9508129ed527478a8c88c80d40a04ef851f8dd44bebc1bc80f6b3e73ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2472c6d33719dff5add51f740147f531120c1bcc2d2a9ada636c0cd000736e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ElimAltInfo where
  name      : Name
  /-- A declaration corresponding to the inductive constructor.
  (For custom recursors, the alternatives correspond to parameter names in the
  recursor, so we may not have a declaration to point to.)
  This is used for go-to-definition on the alternative name. -/
  declName? : Option Name
  numFields : Nat
  /-- If `provesMotive := true`, then this alternative has `motive` as its conclusion.
  Only for those alternatives the `induction` tactic should introduce reverted hypotheses.  -/
  provesMotive : Bool
  deriving Repr, Inhabited

/--
Information about an eliminator as used by `induction` or `cases`.

Created from an expression by `getElimInfo`. This typically contains level metavariables that
are instantiated as we go (e.g. in `addImplicitTargets`), so this is single use.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc22ec5dd0315225ce106d3c8c1185aa21b327a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
