# introArrayLit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16e348991147b0edd42f3b85ed26cea0bac3adfc35eec9f7a13aab0e930b222c",
  "kind": "def",
  "lexical_name": "introArrayLit",
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
  "slug": "introarraylit--cd192fb10d02aa689583df9d",
  "source": {
    "blob": "e189e1e7da65584024a8887b4b9dbde379a3cf41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd192fb10d02aa689583df9dd0d23be5c19dbc7ef6dd0ab40b57c5395e1f1062",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16e348991147b0edd42f3b85ed26cea0bac3adfc35eec9f7a13aab0e930b222c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def introArrayLit (mvarId : MVarId) (a : Expr) (n : Nat) (xNamePrefix : Name) (aSizeEqN : Expr) : MetaM MVarId := do
  let α ← getArrayArgType a
  let rec loop (i : Nat) (xs : Array Expr) (args : Array Expr) := do
    if i < n then
      withLocalDeclD (xNamePrefix.appendIndexAfter (i+1)) α fun xi => do
        let xs := xs.push xi
        let ai ← mkArrayGetLit a i n aSizeEqN
        let args := args.push ai
        loop (i+1) xs args
    else
      let xsLit     ← mkArrayLit α xs.toList
      let aEqXsLit  ← mkEq a xsLit
      let aEqLitPrf ← mkAppM ``Array.toArrayLit_eq #[a, mkRawNatLit n, aSizeEqN]
      withLocalDeclD `hEqALit aEqXsLit fun heq => do
        let target    ← mvarId.getType
        let newTarget ← mkForallFVars (xs.push heq) target
        pure (newTarget, args.push aEqLitPrf)
  let (newTarget, args) ← loop 0 #[] #[]
  let tag ← mvarId.getTag
  let newMVar   ← mkFreshExprSyntheticOpaqueMVar newTarget tag
  mvarId.assign (mkAppN newMVar args)
  pure newMVar.mvarId!

/--
  Split goal `... |- C a` into sizes.size + 1 subgoals
  1) `..., x_1 ... x_{sizes[0]} |- C #[x_1, ... x_{sizes[0]}]`
  ...
  n) `..., x_1 ... x_{sizes[n-1]}  |- C #[x_1, ..., x_{sizes[n-1]}]`
  n+1) `..., (h_1 : a.size != sizes[0]), ..., (h_n : a.size != sizes[n-1]) |- C a`
  where `n = sizes.size` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e189e1e7da65584024a8887b4b9dbde379a3cf41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
