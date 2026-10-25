# builtinPassManager

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a806290e6c4338cb88fcf4784782c02f89b645c8e587dca2914294bb3634e881",
  "kind": "def",
  "lexical_name": "builtinPassManager",
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
  "slug": "builtinpassmanager--efa46a2fa640f51cbd483651",
  "source": {
    "blob": "743cd1642b0ee5ac2a732c49756f1e9e5f212876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Passes/Variant026fa79f50ea17a725ced71794ba2fec3e4e60002180c77e8a15a066961b6d88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efa46a2fa640f51cbd483651f710cdc9869f490fb636636f004a45e0de4e5019",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Passes/Variant026fa79f50ea17a725ced71794ba2fec3e4e60002180c77e8a15a066961b6d88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a806290e6c4338cb88fcf4784782c02f89b645c8e587dca2914294bb3634e881`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def builtinPassManager : PassManager := {
  basePasses := #[
    init,
    pullInstances,
    cse (shouldElimFunDecls := false),
    simp,
    floatLetIn,
    findJoinPoints,
    pullFunDecls,
    reduceJpArity,
    /-
    We apply `implementedBy` replacements before `specialize` to ensure we specialize the replacement.
    One possible improvement is to perform only the replacements if the target declaration is a specialization target,
    and on phase 2 (aka mono) perform the remaining replacements.
    -/
    simp { etaPoly := true, inlinePartial := true, implementedBy := true } (occurrence := 1),
    eagerLambdaLifting,
    -- Should be as early as possible but after `eagerLambdaLifting` to make sure instances are
    -- checked without nested functions whose bodies specialization does not require access to.
    checkTemplateVisibility,
    specialize,
    findJoinPoints (occurrence := 1),
    simp (occurrence := 2),
    cse (shouldElimFunDecls := false) (occurrence := 1),
    saveBase, -- End of base phase
    -- should come last so it can see all created decls
    -- pass must be run for each phase; see `base/monoTransparentDeclsExt`
    inferVisibility (phase := .base),
    toMono,
  ]
  monoPasses := #[
    simp (occurrence := 3) (phase := .mono),
    reduceJpArity (phase := .mono),
    structProjCases,
    extendJoinPointContext (phase := .mono) (occurrence := 0),
    floatLetIn (phase := .mono) (occurrence := 1),
    reduceArity,
    commonJoinPointArgs,
    simp (occurrence := 4) (phase := .mono),
    floatLetIn (phase := .mono) (occurrence := 2),
    lambdaLifting,
  ]
  monoPassesNoLambda := #[
    extendJoinPointContext (phase := .mono) (occurrence := 1),
    simp (occurrence := 5) (phase := .mono),
    elimDeadBranches,
    cse (occurrence := 2) (phase := .mono),
    saveMono,  -- End of mono phase
    inferVisibility (phase := .mono),
    extractClosed,
    toImpure,
  ]
  impurePasses := #[
    pushProj (occurrence := 0),
    insertResetReuse,
    elimDeadVars (phase := .impure) (occurrence := 0),
    simpCase,
    inferBorrow,
    explicitBoxing,
    explicitRc,
    expandResetReuse,
    coalesceRC,
    pushProj (occurrence := 1),
    detectSimpleGround,
    inferVisibility (phase := .impure),
    toposortPass,
    saveImpure, -- End of impure phase
  ]
}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Passes/Variant026fa79f50ea17a725ced71794ba2fec3e4e60002180c77e8a15a066961b6d88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Passes/Variant026fa79f50ea17a725ced71794ba2fec3e4e60002180c77e8a15a066961b6d88.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743cd1642b0ee5ac2a732c49756f1e9e5f212876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
