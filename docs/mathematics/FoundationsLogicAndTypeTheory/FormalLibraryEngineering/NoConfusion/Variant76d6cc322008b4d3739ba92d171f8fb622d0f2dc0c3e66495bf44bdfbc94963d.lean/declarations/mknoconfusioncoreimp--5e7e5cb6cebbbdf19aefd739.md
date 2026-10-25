# mkNoConfusionCoreImp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:357764f0cc72e8db9f09b0a649cc62b3c1f7d481ce1fa365cef31ba406fcfcc2",
  "kind": "def",
  "lexical_name": "mkNoConfusionCoreImp",
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
  "slug": "mknoconfusioncoreimp--5e7e5cb6cebbbdf19aefd739",
  "source": {
    "blob": "3734c340f2c1712fdd0949b08c73acdc8245b613",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e7e5cb6cebbbdf19aefd7391300b2640ec3bd2cdec98e99be58adb4e70ed7ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:357764f0cc72e8db9f09b0a649cc62b3c1f7d481ce1fa365cef31ba406fcfcc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def mkNoConfusionCoreImp (indName : Name) : MetaM Unit := do
  let declName := Name.mkStr indName "noConfusion"
  let noConfusionTypeName := mkNoConfusionTypeName indName
  let ConstantInfo.inductInfo info ← getConstInfo indName | unreachable!
  let casesOnName := mkCasesOnName indName
  let casesOnInfo ← getConstVal casesOnName
  let v::us := casesOnInfo.levelParams.map mkLevelParam | panic! "unexpected universe levels on `casesOn`"
  trace[Meta.mkNoConfusion] m!"mkNoConfusionCoreImp for {declName}"
  let e ← forallBoundedTelescope (← inferType (mkConst noConfusionTypeName (v::us))) (some 1) fun xs t => do
    let P := xs[0]!
    forallBoundedTelescope t (some (info.numParams + info.numIndices + 1)) fun xs1 t => do -- params, indices and major
    forallBoundedTelescope t (some (info.numParams + info.numIndices + 1)) fun xs2 _ => do -- params, indices and major
    withImplicitBinderInfos ((xs1 ++ xs2).push P) do
      let params1 : Array Expr := xs1[:info.numParams]
      let ysx1    : Array Expr := xs1[info.numParams:]
      let target1 := mkAppN (mkConst noConfusionTypeName (v :: us)) (#[P] ++ xs1 ++ xs1)
      let motive1 ← mkLambdaFVars ysx1 target1
      let alts ← info.ctors.mapM fun ctor => do
        let ctorType ← inferType (mkAppN (mkConst ctor us) params1)
        forallTelescopeReducing ctorType fun fs1 _ => do
          let kType := (← mkNoConfusionCtorArg ctor P).beta (params1 ++ fs1 ++ params1 ++ fs1)
          withLocalDeclD `k kType fun k => do
            let mut e := k
            let eqns ← arrowDomainsN kType.getNumHeadForalls kType
            for eqn in eqns do
              if let some (_, x, _) := eqn.eq? then
                e := mkApp e (← mkEqRefl x)
              else if let some (_, x, _, _) := eqn.heq? then
                e := mkApp e (← mkHEqRefl x)
              else
                throwError "unexpected equation {eqn} in `mkNoConfusionCtorArg` for {ctor}"
            mkLambdaFVars (fs1 ++ #[k]) e
      let e := mkAppN (mkConst casesOnName (v :: us)) (params1 ++ #[motive1] ++ ysx1 ++ alts)
      let target2 := mkAppN (mkConst noConfusionTypeName (v :: us)) (#[P] ++ xs1 ++ xs2)
      let motive2 ← mkLambdaFVars xs2 target2
      let e ← mkEqNDRecTelescope motive2 e xs1 xs2
      mkLambdaFVars (#[P] ++ xs1 ++ xs2) e

  addDecl (.defnDecl (← mkDefinitionValInferringUnsafe
    (name        := declName)
    (levelParams := casesOnInfo.levelParams)
    (type        := (← inferType e))
    (value       := e)
    (hints       := ReducibilityHints.abbrev)))
  setReducibleAttribute declName
  let arity  := 1 + 3 * (info.numParams + info.numIndices + 1)
  let lhsPos := 1 + info.numParams + info.numIndices
  let rhsPos := 1 + 2 * info.numParams + 2 * info.numIndices + 1
  modifyEnv fun env => markNoConfusion env declName (.regular arity lhsPos rhsPos)
  modifyEnv fun env => addProtected env declName

/--
Creates per-constructor no-confusion definitions. These specialize the general noConfusion
declaration to (homogeneous!) equalities between two applications of the same constructor, to
effectively cache the computation of `noConfusionType` for that constructor:

```
def L.cons.noConfusion.{u_1, u} : {α : Type u} → {P : Sort u_1} →
  {x : α} → {xs : L α} → {x' : α} → {xs' : L α} →
  L.cons x xs = L.cons x' xs' →
  (x = x' → xs = xs' → P) →
  P

def Vec.cons.noConfusion.{u_1, u} : {α : Type u} → {P : Sort u_1} →
  {n : Nat} → {x : α} → {xs : Vec α n} →
  {n' : Nat} → {x' : α} → {xs' : Vec α n'} →
  n + 1 = n' + 1 → Vec.cons x xs ≍ Vec.cons x' xs' →
  (n = n' → x = x' → xs ≍ xs' → P)
  → P
```

These are specialized to equal parameters. The main use of these theorems is `injection` through
`Meta.mkNoConfusion`, which deals with homogeneous equalities, so no need for the generality.

These still accept a heterogeneous equality between the two constructor applications: if we tried
to phrase this theroem with a homogeneous equality, this would force those constructor fields that
appear in indices to be equal, which is too strong: we can have homogenenous equalities between
two constructor applications with different fields but same indices.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3734c340f2c1712fdd0949b08c73acdc8245b613` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
