# elabDoCatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c1736fc75898e054e7a39760e844063ff6ea90b9c5434ea379c4e066e93fa53",
  "kind": "def",
  "lexical_name": "elabDoCatch",
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
  "slug": "elabdocatch--aeb8da0b2afa18a3971a1b87",
  "source": {
    "blob": "d51be163905840afe79df51c87a66425ba9baeeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryCatch/Variant6bd50d4b6864dbd770abcf83f89debd440fbd59cf5652e633f3cade58159cef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aeb8da0b2afa18a3971a1b87f5806c9d5a9e31f5e5153c81fe3365c8d34a620b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryCatch/Variant6bd50d4b6864dbd770abcf83f89debd440fbd59cf5652e633f3cade58159cef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c1736fc75898e054e7a39760e844063ff6ea90b9c5434ea379c4e066e93fa53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabDoCatch (lifter : EffectForwarder) (body : Expr) (catch_ : TSyntax ``doCatch) : DoElabM Expr := do
  let mi := (← read).monadInfo
  let `(doCatch| catch $x $[: $eType?]? => $catchSeq) := catch_ | throwUnsupportedSyntax
  let x := Term.mkExplicitBinder x <| match eType? with
    | some eType => eType
    | none => mkHole x
  controlAtTermElabM fun runInBase => do
    Term.elabBinder x fun x => runInBase do
      let ε ← inferType x
      let uε ← getDecLevel ε
      -- First thing we do is try and resolve the instance. This might instantiate `ε` and enables
      -- use of dot notation in `catch | .error .. => ..`.
      let catcher ←
        if eType?.isSome then
          let inst ← Term.mkInstMVar <| mkApp2 (mkConst ``MonadExceptOf [uε, mi.u, mi.v]) ε mi.m
          pure <| mkApp6 (mkConst ``tryCatchThe [uε, mi.u, mi.v])
            ε mi.m inst lifter.liftedDoBlockResultType body
        else
          let inst ← Term.mkInstMVar <| mkApp2 (mkConst ``MonadExcept [uε, mi.u, mi.v]) ε mi.m
          pure <| mkApp6 (mkConst ``MonadExcept.tryCatch [uε, mi.u, mi.v])
            ε mi.m inst lifter.liftedDoBlockResultType body
      let catch_ ← lifter.lift (elabDoSeq catchSeq)
      let catch_ ← mkLambdaFVars #[x] catch_
      return catcher catch_

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryCatch/Variant6bd50d4b6864dbd770abcf83f89debd440fbd59cf5652e633f3cade58159cef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryCatch/Variant6bd50d4b6864dbd770abcf83f89debd440fbd59cf5652e633f3cade58159cef7.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d51be163905840afe79df51c87a66425ba9baeeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
