# mkExtIffType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d350e8ab79043691c95f1e70676759e308cddf38e9f7820368f3fcf7cb79a610",
  "kind": "def",
  "lexical_name": "mkExtIffType",
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
  "slug": "mkextifftype--a34bdd5e083e7b933b96b4c9",
  "source": {
    "blob": "9696f8a49876b9f79f9b348db541de0167786ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a34bdd5e083e7b933b96b4c9f092a9f89e6cc008d95c7c94681300c6bfbbb015",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d350e8ab79043691c95f1e70676759e308cddf38e9f7820368f3fcf7cb79a610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkExtIffType (extThmName : Name) : MetaM Expr := withLCtx {} {} do
  forallTelescopeReducing (← getConstInfo extThmName).type fun args ty => do
    let failNotEq := throwError "Expected a theorem proving a proposition of the form `x = y`, but `{.ofConstName extThmName}` proves{indentD ty}"
    let some (_, x, y) := ty.eq? | failNotEq
    let some xIdx := args.findIdx? (· == x) | failNotEq
    let some yIdx := args.findIdx? (· == y) | failNotEq
    unless xIdx + 1 == yIdx do
      throwError "Expected `{x}` and `{y}` to be consecutive arguments"
    let startIdx := yIdx + 1
    let toRevert := args[startIdx...*].toArray
    let fvars ← toRevert.foldlM (init := {}) (fun st e => return collectFVars st (← inferType e))
    for fvar in toRevert do
      unless ← Meta.isProof fvar do
        throwError "Argument `{fvar}` is not a proof, but all arguments after `{x}` and `{y}` must be proofs"
      if fvars.fvarSet.contains fvar.fvarId! then
        throwError "Argument `{fvar}` is depended upon by a subsequent argument, which is not supported for arguments after `{x}` and `{y}`"
    let conj := mkAndN (← toRevert.mapM (inferType ·)).toList
    -- Make everything implicit except for inst implicits
    let mut newBis := #[]
    for fvar in args[*...startIdx] do
      if (← fvar.fvarId!.getBinderInfo) matches .default | .strictImplicit then
        newBis := newBis.push (fvar.fvarId!, .implicit)
    withNewBinderInfos newBis do
      mkForallFVars args[*...startIdx] <| mkIff ty conj

/--
Ensures that the given structure has an ext theorem, without validating any pre-existing theorems.
Returns the name of the ext theorem.

See `Lean.Elab.Tactic.Ext.withExtHyps` for an explanation of the `flat` argument.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9696f8a49876b9f79f9b348db541de0167786ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
