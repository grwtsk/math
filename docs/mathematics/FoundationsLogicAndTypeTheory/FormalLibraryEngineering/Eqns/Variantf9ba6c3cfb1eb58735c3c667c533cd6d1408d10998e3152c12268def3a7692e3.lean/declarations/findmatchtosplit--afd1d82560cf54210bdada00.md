# findMatchToSplit?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b703711f220a228ba3cc5d5e6f4f4b44aaeb09015a6704b218e5a29e5be0f9f0",
  "kind": "def",
  "lexical_name": "findMatchToSplit?",
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
  "slug": "findmatchtosplit--afd1d82560cf54210bdada00",
  "source": {
    "blob": "4b9b90ec88ea2d6f3cb663a78815dcbc7162e80c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afd1d82560cf54210bdada00037e8be9b796727e03578a74c358fc6d4f67f095",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b703711f220a228ba3cc5d5e6f4f4b44aaeb09015a6704b218e5a29e5be0f9f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findMatchToSplit? (deepRecursiveSplit : Bool) (env : Environment) (e : Expr)
    (declNames : Array Name) (exceptionSet : ExprSet) : Option Expr :=
  e.findExt? fun e => Id.run do
    if e.hasLooseBVars || exceptionSet.contains e then
      return Expr.FindStep.visit
    else if let some info := isMatcherAppCore? env e then
      let args := e.getAppArgs
      -- If none of the discriminants is a free variable, then it is not worth splitting the match
      let mut hasFVarDiscr := false
      for i in info.getFirstDiscrPos...(info.getFirstDiscrPos + info.numDiscrs) do
        let discr := args[i]!
        if discr.isFVar then
          hasFVarDiscr := true
          break
      unless hasFVarDiscr do
        return Expr.FindStep.visit
      -- For non-recursive functions (`declNames` empty), we split here
      if declNames.isEmpty then
          return Expr.FindStep.found
      -- For recursive functions, the “new” behavior is to likewise split
      if deepRecursiveSplit then
          return Expr.FindStep.found
      -- Else, the “old” behavior is split only when at least one alternative contains a `declNames`
      -- application with loose bound variables.
      for i in info.getFirstAltPos...(info.getFirstAltPos + info.numAlts) do
        let alt := args[i]!
        if Option.isSome <| alt.find? fun e => declNames.any e.isAppOf && e.hasLooseBVars then
          return Expr.FindStep.found
      return Expr.FindStep.visit
    else
      let Expr.const declName .. := e.getAppFn | return Expr.FindStep.visit
      if declName == ``WellFounded.fix || isBRecOnRecursor env declName then
        -- We should not go inside unfolded nested recursive applications
        return Expr.FindStep.done
      else
        return Expr.FindStep.visit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b9b90ec88ea2d6f3cb663a78815dcbc7162e80c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
