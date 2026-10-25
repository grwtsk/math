# inlineMatchers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b6119f9e524612b68e43559300738faae15caba85de7642b541da13e0cc5a5c",
  "kind": "def",
  "lexical_name": "inlineMatchers",
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
  "slug": "inlinematchers--51802e258094e9de5a98eb50",
  "source": {
    "blob": "ca68757c58e03d31c29d547b6cd4323f82caf302",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51802e258094e9de5a98eb503257fbfb8e92150d496ca814f2f5ff2542d4682c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b6119f9e524612b68e43559300738faae15caba85de7642b541da13e0cc5a5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def inlineMatchers (e : Expr) : CoreM Expr :=
  Meta.MetaM.run' <| Meta.transform e fun e => do
    let .const declName us := e.getAppFn | return .continue
    if let some info ← Meta.getMatcherInfo? declName then
      let numArgs := e.getAppNumArgs
      if numArgs > info.arity then
        return .continue
      else if numArgs < info.arity then
        Meta.forallBoundedTelescope (← Meta.inferType e) (info.arity - numArgs) fun xs _ =>
          return .visit (← Meta.mkLambdaFVars xs (mkAppN e xs))
      else
        let mut args := e.getAppArgs
        let altNumParams := info.altNumParams
        let rec inlineMatcher (i : Nat) (args : Array Expr) (letFVars : Array Expr) : MetaM Expr := do
          if h : i < altNumParams.size then
            let altIdx := i + info.getFirstAltPos
            let numParams := altNumParams[i]
            let alt ← normalizeAlt args[altIdx]! numParams
            Meta.withLetDecl (← mkFreshUserName `_alt) (← Meta.inferType alt) alt fun altFVar =>
              inlineMatcher (i+1) (args.set! altIdx altFVar) (letFVars.push altFVar)
          else
            let info ← getConstInfo declName
            let value := (← Core.instantiateValueLevelParams info us).beta args
            Meta.mkLetFVars letFVars value
        return .visit (← inlineMatcher 0 args #[])
    else if ← Meta.isMatcherLike declName then
      let info ← getConstInfo declName
      let value ← Core.instantiateValueLevelParams info us
      /-
      Currently the only declarations that are "matcher like" are `match_on_same_ctor.het`, for them
      each alternative is used uniquely so we can just beta reduce without introducing code
      duplication. If more "matcher like" things are introduced we might have to extend this with a
      generalized notion of matcher information.
      -/
      return .visit (value.beta e.getAppArgs)
    else
      return .continue

/--
Replace nested occurrences of `unsafeRec` names with the safe ones.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca68757c58e03d31c29d547b6cd4323f82caf302` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
