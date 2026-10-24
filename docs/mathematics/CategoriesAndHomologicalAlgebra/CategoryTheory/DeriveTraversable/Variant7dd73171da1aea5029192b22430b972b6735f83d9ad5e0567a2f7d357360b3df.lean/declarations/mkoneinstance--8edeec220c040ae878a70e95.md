# mkOneInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:239f32b926acf205cb82e6d2f8a9d2e8b57584448e938d226a48f1b1dcbff4db",
  "kind": "def",
  "lexical_name": "mkOneInstance",
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
  "slug": "mkoneinstance--8edeec220c040ae878a70e95",
  "source": {
    "blob": "a5410cfebb1eadedb8f55018f29fbe8a413c445b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 207,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant7dd73171da1aea5029192b22430b972b6735f83d9ad5e0567a2f7d357360b3df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8edeec220c040ae878a70e9530b8f627ed558c2d652c043286fdd3a518f62c8f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant7dd73171da1aea5029192b22430b972b6735f83d9ad5e0567a2f7d357360b3df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:239f32b926acf205cb82e6d2f8a9d2e8b57584448e938d226a48f1b1dcbff4db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkOneInstance (n cls : Name) (tac : MVarId → TermElabM Unit)
    (mkInst : Name → Expr → TermElabM Expr := fun n arg => mkAppM n #[arg]) : TermElabM Unit := do
  let .inductInfo decl ← getConstInfo n |
    throwError m!"failed to derive '{cls}', '{n}' is not an inductive type"
  let clsDecl ← getConstInfo cls
  let ls := decl.levelParams.map Level.param
  -- incrementally build up target expression `(hp : p) → [cls hp] → ... cls (n.{ls} hp ...)`
  -- where `p ...` are the inductive parameter types of `n`
  let tgt := Lean.mkConst n ls
  let tgt ← forallTelescope decl.type fun params _ => do
    let params := params.pop
    let tgt := mkAppN tgt params
    let tgt ← mkInst cls tgt
    params.zipIdx.foldrM (fun (param, i) tgt => do
      -- add typeclass hypothesis for each inductive parameter
      let tgt ← (do
        guard (i < decl.numParams)
        let paramCls ← mkAppM cls #[param]
        return mkForall `a .instImplicit paramCls tgt) <|> return tgt
      mkForallFVars #[param] tgt) tgt
  (discard <| liftM (synthInstance tgt)) <|> do
    let m := (← mkFreshExprSyntheticOpaqueMVar tgt).mvarId!
    let (_, m') ← m.intros
    withLevelNames decl.levelParams <| m'.withContext <| tac m'
    let val ← instantiateMVars (mkMVar m)
    let isUnsafe := decl.isUnsafe || clsDecl.isUnsafe
    let instN ← m'.withContext do
      let type ← m'.getType >>= instantiateMVars
      mkInstanceNameForTypeExpr type
    addPreDefinitions
      #[{ ref := .missing
          kind := .def
          levelParams := decl.levelParams
          modifiers :=
            { isUnsafe
              attrs :=
                #[{ kind := .global
                    name := `instance
                    stx := ← `(attr| instance) }] }
          declName := instN
          type := tgt
          value := val
          termination := .none }] {}

/-- Make the new deriving handler depends on other deriving handlers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant7dd73171da1aea5029192b22430b972b6735f83d9ad5e0567a2f7d357360b3df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant7dd73171da1aea5029192b22430b972b6735f83d9ad5e0567a2f7d357360b3df.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5410cfebb1eadedb8f55018f29fbe8a413c445b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
