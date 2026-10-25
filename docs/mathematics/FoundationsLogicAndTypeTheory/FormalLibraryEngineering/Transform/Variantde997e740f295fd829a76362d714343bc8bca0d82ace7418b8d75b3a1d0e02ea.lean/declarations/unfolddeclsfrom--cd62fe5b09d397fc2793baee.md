# unfoldDeclsFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb56474d0a4ccb10b646bf9b68b44365924084294370d083ca9a44ab10ede3b1",
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
  "slug": "unfolddeclsfrom--cd62fe5b09d397fc2793baee",
  "source": {
    "blob": "e526c71d75395cac41b2cf2e6bbaddf166cb5eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd62fe5b09d397fc2793baee8eef232be7fc485f09028cf55883458ffe5798ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb56474d0a4ccb10b646bf9b68b44365924084294370d083ca9a44ab10ede3b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–265.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e526c71d75395cac41b2cf2e6bbaddf166cb5eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
