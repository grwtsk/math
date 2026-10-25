# getCompositeOfProjectionsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6ccebb5fe6b99cffb8068de059f375817cf7d33eef951497127fc64d0b57710",
  "kind": "def",
  "lexical_name": "getCompositeOfProjectionsAux",
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
  "slug": "getcompositeofprojectionsaux--e085640353cd1b40f97c0c3a",
  "source": {
    "blob": "480167c71f00d66f8d03ba37b08b0eea09686bb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 484,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e085640353cd1b40f97c0c3adcc3eb1156cb50615ceadb2d3eedc0e06c8d4eed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6ccebb5fe6b99cffb8068de059f375817cf7d33eef951497127fc64d0b57710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def getCompositeOfProjectionsAux
    (proj : String) (e : Expr) (pos : Array ℕ) (args : Array Expr) : MetaM (Expr × Array ℕ) := do
  let env ← getEnv
  let .const structName _ := (← whnf (←inferType e)).getAppFn |
    throwError "{e} doesn't have a structure as type"
  let projs := getStructureFieldsFlattened env structName
  let projInfo := projs.toList.map fun p ↦ do
    ((← proj.dropPrefix? (p.getString ++ "_")).toString, p)
  let some (projRest, projName) := projInfo.reduceOption.getLast? |
    throwError "Failed to find constructor {proj.dropRight 1} in structure {structName}."
  let newE ← mkProjection e projName
  let newPos := pos ++ (← findProjectionIndices structName projName)
  -- we do this here instead of in a recursive call in order to not get an unnecessary eta-redex
  if projRest.isEmpty then
    let newE ← mkLambdaFVars args newE
    return (newE, newPos)
  let type ← inferType newE
  forallTelescopeReducing type fun typeArgs _tgt ↦ do
    getCompositeOfProjectionsAux projRest (mkAppN newE typeArgs) newPos (args ++ typeArgs)

/-- Suppose we are given a structure `str` and a projection `proj`, that could be multiple nested
  projections (separated by `_`), where each projection could be a projection of a parent structure.
  This function returns an expression that is the composition of these projections and a
  list of natural numbers, that are the projection numbers of the applied projections.
  Note that this function is similar to elaborating dot notation, but it can do a little more.
  Example: if we do
  ```
  structure gradedFun (A : ℕ → Type*) where
    toFun := ∀ i j, A i →+ A j →+ A (i + j)
  initialize_simps_projections (toFun_toFun_toFun → myMul)
  ```
  we will be able to generate the "projection"
    `λ {A} (f : gradedFun A) (x : A i) (y : A j) ↦ ↑(↑(f.toFun i j) x) y`,
  which projection notation cannot do. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480167c71f00d66f8d03ba37b08b0eea09686bb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
