# saturateLatticeOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd4aba1320fe888c836c2d9912fb64eba32e4ea9c333957919b79fe0e49ae5b2",
  "kind": "def",
  "lexical_name": "saturateLatticeOp",
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
  "slug": "saturatelatticeop--7d1b076ecef6dd2dc68d2333",
  "source": {
    "blob": "36551109b40f9de23c922c11950354862373b473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d1b076ecef6dd2dc68d233358ae7caca22301d2bb790ad72f3de792ffbdfbb1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd4aba1320fe888c836c2d9912fb64eba32e4ea9c333957919b79fe0e49ae5b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def saturateLatticeOp (rewrites : Array Name) (e : Expr) (fuel : Nat := 256) :
    MetaM (Expr × Option Expr) := do
  if fuel == 0 then
    throwError "lattice saturation did not terminate; a registered `@[frameproc]` rewrite set is \
      likely non-terminating on{indentExpr e}"
  for n in rewrites do
    let saved ← saveState
    let lemConst ← mkConstWithFreshMVarLevels n
    let (mvars, _, eqTy) ← forallMetaTelescopeReducing (← Meta.inferType lemConst)
    if let some (_, lhs, rhs) := (← instantiateMVars eqTy).eq? then
      let m := lhs.getAppNumArgs
      if m ≤ e.getAppNumArgs then
        let eArgs := e.getAppArgs
        let ePrefix := mkAppN e.getAppFn (eArgs.extract 0 m)
        let extra := eArgs.extract m eArgs.size
        if ← isDefEq lhs ePrefix then
          -- Lift the equation `lhs = rhs` across the over-application `extra` with iterated `congrFun`.
          let stepProof ← extra.foldlM (fun h a => mkCongrFun h a) (mkAppN lemConst mvars)
          let (reduced, rest?) ← saturateLatticeOp rewrites (mkAppN rhs extra) (fuel - 1)
          let proof ← match rest? with
            | none => pure stepProof
            | some restProof => mkEqTrans stepProof restProof
          return (reduced, some proof)
    saved.restore
  return (e, none)

/--
Point-frame the state chain `ss` of a goal `pre ⊑ opAs s₁ … sₙ`: peel the innermost argument via
`le_apply_of_point_meet_le`, gating the precondition to `fun u => ⌜u = sₙ⌝ ⊓ pre`, until the goal is
the function-level `gate ⊑ opAs`, then apply the terminal `introThm`, leaving its operand subgoals as
premises. An empty `ss` applies `introThm` directly. Returns the proof of `pre ⊑ opAs s₁ … sₙ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36551109b40f9de23c922c11950354862373b473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
