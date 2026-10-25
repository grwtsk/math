# HaveTelescopeInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51e8f1afd1c474b1c9dd2cdc5599a592485e3ca00cc85af25e9296716f8f3e4c",
  "kind": "structure",
  "lexical_name": "HaveTelescopeInfo",
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
  "slug": "havetelescopeinfo--b90ed29a5f2a2d8a3849b036",
  "source": {
    "blob": "4e020348ec2f18dbc5fa70001e85ec4b22868421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b90ed29a5f2a2d8a3849b0367ce2058182a253280a626cba2a2e77cd00d0e407",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51e8f1afd1c474b1c9dd2cdc5599a592485e3ca00cc85af25e9296716f8f3e4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HaveTelescopeInfo where
  /-- Information about each `have` in the telescope. -/
  haveInfo : Array HaveInfo := #[]
  /-- The set of `have`s that the body depends on, as indices into `haveInfo`.
  Used in `computeFixedUsed` to compute used `have`s. -/
  bodyDeps : Std.HashSet Nat := {}
  /-- The set of `have`s that the type of the body depends on, as indices into `haveInfo`.
  This is the set of fixed `have`s. -/
  bodyTypeDeps : Std.HashSet Nat := {}
  /-- A cached version of the telescope body, instantiated with fvars from each `HaveInfo.decl`. -/
  body : Expr := Expr.const `_have_telescope_info_dummy_ []
  /-- A cached version of the telescope body's type, instantiated with fvars from each `HaveInfo.decl`. -/
  bodyType : Expr := Expr.const `_have_telescope_info_dummy_ []
  /-- The universe level for the `have` expression, cached. -/
  level : Level := Level.param `_have_telescope_info_dummy_
  deriving Inhabited

/--
Efficiently collect dependency information for a `have` telescope.
This is part of a scheme to avoid quadratic overhead from the locally nameless discipline
(see `HaveTelescopeInfo` and `simpHaveTelescope`).

The expression `e` must not have loose bvars.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e020348ec2f18dbc5fa70001e85ec4b22868421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
