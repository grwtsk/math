# unfoldDeclsFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cccc577e45dfe9337b6f0da6aeb7bc7ba287949ea5950cee859af8d773afa100",
  "kind": "def",
  "lexical_name": "unfoldDeclsFrom",
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
  "slug": "unfolddeclsfrom--6caeb3750759348d718fecda",
  "source": {
    "blob": "e50c746d3704023bfbd43a7a027eb238c7fa5446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 241,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6caeb3750759348d718fecda263ac8ad3514b5d1d876ff12be63e7f0e7dcfded",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cccc577e45dfe9337b6f0da6aeb7bc7ba287949ea5950cee859af8d773afa100`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unfoldDeclsFrom (biggerEnv : Environment) (e : Expr) : CoreM Expr := do
  withoutModifyingEnv do
    let env ← getEnv
    -- There might have been nested proof abstractions, which yield private helper theorems, so
    -- make sure we can find them. They will later be re-abstracted again.
    let biggerEnv := biggerEnv.setExporting false
    setEnv biggerEnv -- `e` has declarations from `biggerEnv` that are not in `env`
    let pre (e : Expr) : CoreM TransformStep := do
      let .const declName us := e | return .continue
      if env.contains declName then
        return .done e
      let some info := biggerEnv.find? declName | return .done e
      if info.hasValue (allowOpaque := true) then
        return .visit (← instantiateValueLevelParams info us (allowOpaque := true))
      else
        return .done e
    Core.transform e (pre := pre)

/--
Unfolds theorems that are applied to `f x₁ .. xₙ` where `f` is in `fnNames` and
`n ≤ numSectionVars` (i.e., an unsaturated application of `f`).

This is used to undo proof abstraction for termination checking, as otherwise the bare
occurrence of the recursive function prevents termination checking from succeeding.

Usually, the argument is just `f` (the constant), arising from `mkAuxTheorem` abstracting over the
aux decl representing `f`. If the mutual function is defined within the scope of `variable` commands,
it is `f x y` where `x y` are the variables in scope, so we use the `numSectionVars` to recognize that
while avoiding to unfold theorems applied to saturated applications of `f`.

This unfolds from the private environment. The resulting definitions are (usually) not
exposed anyways.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e50c746d3704023bfbd43a7a027eb238c7fa5446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
