# classifyInvariantUse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c91d06cd383416099886e900e4ee676e7d383d7d451710333abbcff203e2e6c2",
  "kind": "def",
  "lexical_name": "classifyInvariantUse",
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
  "slug": "classifyinvariantuse--69798161fcdc28850d83dd47",
  "source": {
    "blob": "1a9f71310b5b8aa8cddc2ce4000cba3b2c13583a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69798161fcdc28850d83dd470193073e925ee5da33109d6fa72cd8bcf1129df0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c91d06cd383416099886e900e4ee676e7d383d7d451710333abbcff203e2e6c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def classifyInvariantUse (assertion : Expr) (inv : MVarId) : ClassifyInvariantUseResult := Id.run do
  -- Looking through metadata here is important because of the name hints the proof mode leaves behind
  let assertion := assertion.consumeMData
  -- `assertion` looks like `?inv.2.2....1 payload args`. The number of `2`s is the condition index.
  -- The 0 index case is the success condition case and by far the most common.
  -- There we have `assertion = ?inv.1 payload args`.
  -- The chain of `.2.2...1` is normalized to nested applications of `Prod.fst` and `Prod.snd`:
  --   `@Prod.fst _ _ (@Prod.snd _ _ (@Prod.snd _ _ ... ?inv)) payload args`
  if !assertion.isAppOf ``Prod.fst then return .notAnInvariantUse
  let mut head := assertion.getArg! 2 -- indices 0 and 1 are type args
  let mut conditionIdx := 0
  while head != mkMVar inv do
    if !head.isAppOfArity ``Prod.snd 4 then return .notAnInvariantUse -- cannot classify as a use of the invariant!
    conditionIdx := conditionIdx + 1
    head := head.getRevArg! 1
  -- `head` is ?inv => Found the end of the chain.
  -- conditionIdx is the number of `Prod.snd`s in the chain, and ?inv really is the end of the chain.

  let args := assertion.getAppArgs
  -- logWarning m!"Found Prod.fst. Args: {args}"
  if args.size < 4 then return .notAnInvariantUse -- not an overapplication of `Prod.fst`. Types should prohibit this case
  let payload := args[3]!
  let stateArgs := args[4:]
  -- `stateArgs` can be non-empty when `σs` is non-empty.
  -- logWarning m!"Payload: {payload}"

  let_expr Prod.mk _ _ cursor letMutsTuple := payload | return .unknownInvariantUse -- NB: be conservative here
  let_expr List.Cursor.mk _α _l pref suff _prf := cursor | return .unknownInvariantUse -- dito
  let mut acc := letMutsTuple
  let mut letMuts := #[]
  while acc.isAppOfArity ``Prod.mk 4 do
    letMuts := letMuts.push (acc.getArg! 2)
    acc := acc.getArg! 3
  letMuts := letMuts.push acc
  return .success { conditionIdx, cursorPrefix := pref, cursorSuffix := suff, letMuts, letMutsTuple, stateArgs }

/--
Returns `some (ρ, σ)` if `letMutsTy` is of the form `Prod (Option ρ) σ` and every VC in `vcs`
uses the `Option ρ` component according to early return semantics.
* `ρ` is the type of early return (`Unit` in case of `break`)
* `σ` is an `n`-ary `Prod`, carrying the current value of the `let mut` variables.
  NB: When `n=0`, we have `Prod (Option ρ) PUnit` rather than `Option ρ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a9f71310b5b8aa8cddc2ce4000cba3b2c13583a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
