# inferMatchType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ca3ec95c1e09ecee251d514355f18293e3e60cb5e7267d84ad4451cca34d6fa",
  "kind": "def",
  "lexical_name": "inferMatchType",
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
  "slug": "infermatchtype--11178e2abac4b74f0bbb17f7",
  "source": {
    "blob": "4aa03371649f80e080246ca3b196456305e73e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 458,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11178e2abac4b74f0bbb17f7409256e44cf2f13d70c5e9aff172a869f372433d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ca3ec95c1e09ecee251d514355f18293e3e60cb5e7267d84ad4451cca34d6fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inferMatchType (matcherApp : MatcherApp) : MetaM MatcherApp := do
  -- In matcherApp.motive, replace the (dummy) matcher body with a type
  -- derived from the inferred types of the alternatives
  let nExtra := matcherApp.remaining.size
  matcherApp.transform (useSplitter := true)
    (onMotive := fun motiveArgs body => do
      let extraParams ← arrowDomainsN nExtra body
      let propMotive ← mkLambdaFVars motiveArgs (.sort Level.zero)
      let propAlts ← matcherApp.alts.mapM fun termAlt =>
        lambdaTelescope termAlt fun xs termAltBody => do
          -- We have alt parameters and parameters corresponding to the extra args
          let xs1 := xs[*...(xs.size - nExtra)]
          let xs2 := xs[(xs.size - nExtra)...xs.size]
          -- logInfo m!"altIH: {xs} => {altIH}"
          let altType ← inferType termAltBody
          for x in xs2 do
            if altType.hasAnyFVar (· == x.fvarId!) then
              throwError "Type {altType} of alternative {termAlt} still depends on {x}"
          -- logInfo m!"altIH type: {altType}"
          mkLambdaFVars xs1 altType
      let matcherLevels ← match matcherApp.uElimPos? with
        | none     => pure matcherApp.matcherLevels
        | some pos => pure <| matcherApp.matcherLevels.set! pos Level.one
      let typeMatcherApp := { matcherApp with
        motive := propMotive
        matcherLevels := matcherLevels
        discrs := motiveArgs
        alts := propAlts
        remaining := #[]
      }
      mkArrowN extraParams typeMatcherApp.toExpr
    )
    (onAlt := fun _altIdx expAltType _altFVars alt => do
      let altType ← inferType alt
      let eq ← mkEq expAltType altType
      let proof ← mkFreshExprSyntheticOpaqueMVar eq
      let goal := proof.mvarId!
      -- logInfo m!"Goal: {goal}"
      let goal ← Split.simpMatchTarget goal
      -- logInfo m!"Goal after splitting: {goal}"
      try
        goal.refl
      catch _ =>
        logInfo m!"Cannot close goal after splitting: {goal}"
        goal.admit
      mkEqMPR proof alt
    )

end Lean.Meta.MatcherApp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa03371649f80e080246ca3b196456305e73e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
