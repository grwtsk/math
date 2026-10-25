# preprocess

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b6b215db67f13fe9263001bb389af4da2dcb9f71ccae35cf8ff43ecaba409a6",
  "kind": "def",
  "lexical_name": "preprocess",
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
  "slug": "preprocess--9f72d6b6a45a924db3931b6f",
  "source": {
    "blob": "450d8edb60c648a3145eb1d9c2a410f4644debe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 737,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f72d6b6a45a924db3931b6fbf732cbf01e25a3f6ac8ec9391af9367cd97f156",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b6b215db67f13fe9263001bb389af4da2dcb9f71ccae35cf8ff43ecaba409a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def preprocess (type : Expr) : MetaM PreprocessResult :=
  let keyExprWildcard := mkFVar { name := `__wild__  }
  let keyLevelWildcard := mkLevelParam `__wild__
  forallTelescopeReducing type fun xs typeBody => do
    let typeBody ← whnf typeBody
    let type ← mkForallFVars xs typeBody
    if !type.hasMVar then return { type, kind := .noMVars }
    /-
    **Note**: Workaround for classes such as `class ToLevel.{u}`. They do not have any parameters,
    the universe parameter inference engine at `Class.lean` assumes `u` is an output parameter,
    but this is not correct. We can remove this check after we update `Class.lean` and perform an
    update stage0
    -/
    if typeBody.isConst then return { type, kind := .mvarsNoOutputParams }
    let c := typeBody.getAppFn
    let .const declName us := c | return { type, kind := .mvarsNoOutputParams }
    let env ← getEnv
    let some outParamsPos := getOutParamPositions? env declName | return { type, kind := .mvarsNoOutputParams }
    let some outLevelParamPos := getOutLevelParamPositions? env declName | unreachable!
    if outParamsPos.isEmpty && outLevelParamPos.isEmpty then return { type, kind := .mvarsNoOutputParams }
    let c := if outLevelParamPos.isEmpty then c else
      let rec normLevels (us : List Level) (i : Nat) : List Level :=
        match us with
        | [] => []
        | u :: us =>
          let u := if i ∈ outLevelParamPos then keyLevelWildcard else u
          u :: normLevels us (i+1)
      mkConst declName (normLevels us 0)
    let rec norm (e : Expr) (i : Nat) : Expr :=
      match e with
      | .app f a =>
        let a := if i ∈ outParamsPos then keyExprWildcard else a
        mkApp (norm f (i-1)) a
      | _ => c
    let typeBody := norm typeBody (typeBody.getAppNumArgs - 1)
    let cacheKeyType ← mkForallFVars xs typeBody
    return { type, cacheKeyType, kind := .mvarsOutputParams }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450d8edb60c648a3145eb1d9c2a410f4644debe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
