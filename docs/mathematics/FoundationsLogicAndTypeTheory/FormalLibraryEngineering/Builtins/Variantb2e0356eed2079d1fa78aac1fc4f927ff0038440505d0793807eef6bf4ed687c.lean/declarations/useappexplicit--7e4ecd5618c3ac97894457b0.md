# useAppExplicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bf4844908b9f3a36f9d01086ff8a5fb0c8a63230e16c7ae190b4fdf596ce3de",
  "kind": "def",
  "lexical_name": "useAppExplicit",
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
  "slug": "useappexplicit--7e4ecd5618c3ac97894457b0",
  "source": {
    "blob": "b0a25944216f1812aa0ff7d4d4685bb89f89dde9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 482,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e4ecd5618c3ac97894457b05659897bc49e2e14b312a5de23d917b63a99e60f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bf4844908b9f3a36f9d01086ff8a5fb0c8a63230e16c7ae190b4fdf596ce3de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def useAppExplicit (numArgs : Nat) (paramKinds : Array ParamKind) : DelabM Bool := do
  -- If `pp.explicit` is set, then use explicit mode.
  -- (Note that explicit mode can decide to omit `@` if the application has no implicit arguments.)
  if ← getPPOption getPPExplicit then return true

  if ← withBoundedAppFn numArgs <| withMDatasOptions <| getPPOption getPPAnalysisBlockImplicit then
    return true

  -- If there was an error collecting ParamKinds, fall back to explicit mode.
  if paramKinds.size < numArgs then return true

  if h : numArgs < paramKinds.size then
    let nextParam := paramKinds[numArgs]

    -- If the next parameter is implicit or inst implicit, fall back to explicit mode.
    -- This is necessary for `@Eq` for example.
    if nextParam.bInfo matches .implicit | .instImplicit then return true

  -- If any of the next parameters is explicit but has an optional value or is an autoparam, fall back to explicit mode.
  -- This is necessary since these are eagerly processed when elaborating.
  if paramKinds[numArgs...*].any fun param => param.bInfo.isExplicit && !param.isRegularExplicit then return true

  return false

/--
Delaborates applications. Removes up to `maxArgs` arguments to form the "head" of the application.
* `delabHead` is a delaborator to use for the head of the expression.
  It is passed whether the result needs to have `@` inserted.
* If `unexpand` is true, then allow unexpanders and field notation.
  This should likely be set to `false` except in the main `delabApp` delaborator.

Propagates `pp.tagAppFns` into the head for `delabHead`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a25944216f1812aa0ff7d4d4685bb89f89dde9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
