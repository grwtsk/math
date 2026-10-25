# getFixedParamsInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:629a9f60ea5bd2b04dd8e11282453f20dd737a6771417e66a9210228e9f5118c",
  "kind": "def",
  "lexical_name": "getFixedParamsInfo",
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
  "slug": "getfixedparamsinfo--c45a850d0dcde32e16ca696e",
  "source": {
    "blob": "40a8b5d26013b73ac5fa85ff0e020f1e3b240148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c45a850d0dcde32e16ca696e5a02abfc977fe7d78c97a9e2c5589627e6563bfd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:629a9f60ea5bd2b04dd8e11282453f20dd737a6771417e66a9210228e9f5118c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getFixedParamsInfo (preDefs : Array PreDefinition) : MetaM FixedParams.Info := do
  let revDeps ← preDefs.mapM (getParamRevDeps ·.value)
  let arities := revDeps.map (·.size)
  let ref ← IO.mkRef (Info.init revDeps)

  ref.modify .addSelfCalls

  for h : callerIdx in *...preDefs.size do
    let preDef := preDefs[callerIdx]
    lambdaTelescope preDef.value fun params body => do
      assert! params.size = arities[callerIdx]!

      -- TODO: transform is overkill, a simple visit-all-subexpression that takes applications
      -- as whole suffices
      discard <| Meta.transform (skipConstInApp := true) body fun e => e.withApp fun f args => do
        unless f.isConst do
          return .continue
        let n := f.constName!
        let some calleeIdx := preDefs.findIdx? (·.declName = n) | return .continue
        for argIdx in *...arities[calleeIdx]! do
          if (← ref.get).mayBeFixed calleeIdx argIdx then
            if h : argIdx < args.size then
              let arg := args[argIdx]
              -- We have seen this before (or it is a self-call), so only check that one param
              if let some paramIdx := (← ref.get).getCallerParam? calleeIdx argIdx callerIdx then
                let param := params[paramIdx]!
                unless (← withoutProofIrrelevance <| withReducible <| isDefEq param arg) do
                  trace[Elab.definition.fixedParams] "getFixedParams: notFixed {calleeIdx} {argIdx}:\nIn {e}\n{param} =/= {arg}"
                  ref.modify (Info.setVarying calleeIdx argIdx)
              else
              -- Try all parameters
              let mut any := false
              for h : paramIdx in *...params.size do
                if (← ref.get).mayBeFixed callerIdx paramIdx then
                  let param := params[paramIdx]
                  if (← withoutProofIrrelevance <| withReducible <| isDefEq param arg) then
                    ref.modify (Info.setCallerParam calleeIdx argIdx callerIdx paramIdx)
                    any := true
              unless any do
                trace[Elab.definition.fixedParams] "getFixedParams: notFixed {calleeIdx} {argIdx}:\nIn {e}\n{arg} not matched"
                -- Argument is none of the plausible parameters, so it cannot be a fixed argument
                ref.modify (Info.setVarying calleeIdx argIdx)
            else
              -- Underapplication
              trace[Elab.definition.fixedParams] "getFixedParams: notFixed {calleeIdx} {argIdx}:\nIn {e}\ntoo few arguments for {argIdx}"
              ref.modify (Info.setVarying calleeIdx argIdx)
        return .continue

  let info ← ref.get
  trace[Elab.definition.fixedParams] "getFixedParams:{info.format.indentD}"
  return info

/--
For a given function, a mapping from its parameters to the (indices of the) fixed parameters of the
recursive group.
The length of the array is the arity of the function, as determined from its body, consistent
with the arity used by well-founded recursion.
For the first function, they appear in order; for other functions they may be reordered.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a8b5d26013b73ac5fa85ff0e020f1e3b240148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
