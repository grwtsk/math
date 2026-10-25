# generalizedFieldInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d04171e31282b9a906e2ef1ce68ddb94cbf850999c792d726efefbc75cb0d67",
  "kind": "def",
  "lexical_name": "generalizedFieldInfo",
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
  "slug": "generalizedfieldinfo--449d7efa0070e5e8dd9b13ca",
  "source": {
    "blob": "432745b9e6f1b8c5bf6f0bd34f0af9fd30fa65fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant958c8e578120741b823d8ccdfb4218a389a1598dce7456d91722e0663a45938d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:449d7efa0070e5e8dd9b13ca60e577f6b75671149dadf3c6c24e9c426f99e8c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant958c8e578120741b823d8ccdfb4218a389a1598dce7456d91722e0663a45938d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d04171e31282b9a906e2ef1ce68ddb94cbf850999c792d726efefbc75cb0d67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def generalizedFieldInfo (c : Name) (args : Array Expr) : MetaM (Name × Nat) := do
  let .str baseName field := c | failure
  let baseName := privateToUserName baseName
  guard <| !baseName.isAnonymous
  let field := Name.mkSimple field
  -- Disallow `Function` since it is used for pi types.
  guard <| baseName != `Function
  let info ← getConstInfo c
  -- Search for the first argument that could be used for field notation
  -- and make sure it is the first explicit argument.
  forallBoundedTelescope info.type args.size fun params _ => do
    for h : i in *...params.size do
      let fvarId := params[i].fvarId!
      -- If there is a motive, we will treat this as a sort of control flow structure and so we won't use field notation.
      -- Plus, recursors tend to be riskier when using dot notation.
      if (← fvarId.getUserName) == `motive then
        failure
      if (← typeMatchesBaseName (← fvarId.getType) baseName) then
        guard (← fvarId.getBinderInfo).isExplicit
        -- We require an exact match for the base name.
        -- While `Lean.Elab.Term.resolveLValLoop` is able to unfold the type and iterate, we do not attempt to exploit this feature.
        -- (To get it right, we would need to check that each relevant namespace does not contain a declaration named `field`.)
        guard (← isAppOfBaseName (← instantiateMVars <| ← inferType args[i]!) baseName)
        return (field, i)
      else
        -- We only use the first explicit argument for field notation.
        guard !(← fvarId.getBinderInfo).isExplicit
    failure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant958c8e578120741b823d8ccdfb4218a389a1598dce7456d91722e0663a45938d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant958c8e578120741b823d8ccdfb4218a389a1598dce7456d91722e0663a45938d.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `432745b9e6f1b8c5bf6f0bd34f0af9fd30fa65fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
