# deriveFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b02b17271ce81b42441255f1f6fe21d081b9c8e72c442ea6de72aa459361a010",
  "kind": "def",
  "lexical_name": "deriveFunctor",
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
  "slug": "derivefunctor--3967c10ef038ed0cda3a44e0",
  "source": {
    "blob": "2590560cc65d18f50e9ee47dd1f177b7f4c62318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3967c10ef038ed0cda3a44e0addd705b749e7468eb70b79dc81bf46e06bba703",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b02b17271ce81b42441255f1f6fe21d081b9c8e72c442ea6de72aa459361a010`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deriveFunctor (m : MVarId) : TermElabM Unit := do
  let levels ← getLevelNames
  let vars ← getFVarsNotImplementationDetails
  let .app (.const ``Functor _) F ← m.getType >>= instantiateMVars | failure
  let some n := F.getAppFn.constName? | failure
  let d ← getConstInfo n
  let [m] ← run m <| evalTactic (← `(tactic| refine { map := @(?_) })) | failure
  let t ← m.getType >>= instantiateMVars
  let n' := n ++ "map"
  withDeclName n' <| withAuxDecl "map" t n' fun ad => do
    let m' := (← mkFreshExprSyntheticOpaqueMVar t).mvarId!
    mkMap n m'
    let e ← instantiateMVars (mkMVar m')
    let e := e.replaceFVar ad (mkAppN (.const n' (levels.map Level.param)) vars.toArray)
    let e' ← mkLambdaFVars vars.toArray e
    let t' ← mkForallFVars vars.toArray t
    addPreDefinitions
      #[{ ref := .missing
          kind := .def
          levelParams := levels
          modifiers :=
            { isUnsafe := d.isUnsafe
              attrs :=
                #[{ kind := .global
                    name := `specialize
                    stx := ← `(attr| specialize) }] }
          declName := n'
          type := t'
          value := e' }] {}
  m.assign (mkAppN (mkConst n' (levels.map Level.param)) vars.toArray)

/-- Similar to `mkInstanceName`, but for a `Expr` type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2590560cc65d18f50e9ee47dd1f177b7f4c62318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
