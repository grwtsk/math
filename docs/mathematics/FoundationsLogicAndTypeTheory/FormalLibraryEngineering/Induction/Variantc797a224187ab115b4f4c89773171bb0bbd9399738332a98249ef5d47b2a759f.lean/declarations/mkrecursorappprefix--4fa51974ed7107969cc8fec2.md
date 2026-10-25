# mkRecursorAppPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:041a584fa7da3ea308f0b515e811d9bee0f4d2b35c237d7423dc2f7654f3f075",
  "kind": "def",
  "lexical_name": "mkRecursorAppPrefix",
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
  "slug": "mkrecursorappprefix--4fa51974ed7107969cc8fec2",
  "source": {
    "blob": "49bfb8b6e392784005edbb05d5ec0696dbd5024a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fa51974ed7107969cc8fec2806841bd4c7635eccfcd475a47cc55ec8fbbdf77",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:041a584fa7da3ea308f0b515e811d9bee0f4d2b35c237d7423dc2f7654f3f075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkRecursorAppPrefix (mvarId : MVarId) (tacticName : Name) (majorFVarId : FVarId) (recursorInfo : RecursorInfo) (indices : Array Expr) : MetaM Expr := do
  let major := mkFVar majorFVarId
  let target ← mvarId.getType
  let targetLevel ← getLevel target
  let targetLevel ← normalizeLevel targetLevel
  let majorLocalDecl ← majorFVarId.getDecl
  let some majorType ← whnfUntil majorLocalDecl.type recursorInfo.typeName
    | throwUnexpectedMajorType tacticName mvarId majorLocalDecl.type
  majorType.withApp fun majorTypeFn majorTypeArgs => do
    match majorTypeFn with
    | .const _ majorTypeFnLevels => do
      let majorTypeFnLevels := majorTypeFnLevels.toArray
      let (recursorLevels, foundTargetLevel) ← recursorInfo.univLevelPos.foldlM (init := (#[], false))
          fun (recursorLevels, foundTargetLevel) (univPos : RecursorUnivLevelPos) => do
            match univPos with
            | RecursorUnivLevelPos.motive => pure (recursorLevels.push targetLevel, true)
            | RecursorUnivLevelPos.majorType idx =>
              if h : idx ≥ majorTypeFnLevels.size then
                throwTacticEx tacticName mvarId "ill-formed recursor"
              else
                pure (recursorLevels.push majorTypeFnLevels[idx], foundTargetLevel)
      if !foundTargetLevel && !targetLevel.isZero then
        throwNamedError lean.propRecLargeElim
          (mkTacticExMsg tacticName mvarId m!"recursor `{recursorInfo.recursorName}` can only eliminate into `Prop`")
      let recursor := mkConst recursorInfo.recursorName recursorLevels.toList
      let recursor ← addRecParams mvarId majorTypeArgs recursorInfo.paramsPos recursor
      -- Compute motive
      let motive := target
      let motive ← if recursorInfo.depElim then
        pure <| mkLambda `x BinderInfo.default (← inferType major) (← motive.abstractM #[major])
      else
        pure motive
      let motive ← mkLambdaFVars indices motive
      return mkApp recursor motive
    | _ =>
      throwTacticEx tacticName mvarId "major premise is not of the form (C ...)"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49bfb8b6e392784005edbb05d5ec0696dbd5024a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
