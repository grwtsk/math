# loop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6203e7763c1f97fe70e2311e67257accba221050a1721c6f2ed47a5a232ecc41",
  "kind": "def",
  "lexical_name": "loop",
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
  "slug": "loop--6af0741ecefe9d2182668bef",
  "source": {
    "blob": "7cb9d3e7fc4618537374ff683593639a106d3175",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpAll/Variant3d615858816caebc666d895bf97736670cb24ef220f346051e63e91fd7d3ee53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6af0741ecefe9d2182668bef6a86a1f388fa34e173cb91756775f924e70665d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpAll/Variant3d615858816caebc666d895bf97736670cb24ef220f346051e63e91fd7d3ee53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6203e7763c1f97fe70e2311e67257accba221050a1721c6f2ed47a5a232ecc41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def loop : M Bool := do
  modify fun s => { s with modified := false }
  let simprocs := (← get).simprocs
  -- simplify entries
  let entries := (← get).entries
  for h : i in *...entries.size do
    let entry := entries[i]
    let ctx := (← get).ctx
    -- We disable the current entry to prevent it to be simplified to `True`
    let simpThmsWithoutEntry := (← getSimpTheorems).eraseTheorem entry.id
    let ctx := ctx.setSimpTheorems simpThmsWithoutEntry
    let (r, stats) ← simpStep (← get).mvarId entry.proof entry.type ctx simprocs (stats := { (← get) with })
    modify fun s => { s with usedTheorems := stats.usedTheorems, diag := stats.diag }
    match r with
    | none => return true -- closed the goal
    | some (proofNew, typeNew) =>
      unless typeNew == entry.type do
        /- We must erase the `id` for the simplified theorem. Otherwise,
           the previous versions can be used to self-simplify the new version. For example, suppose we have
           ```
            x : Nat
            h : x ≠ 0
            ⊢ Unit
           ```
           In the first round, `h : x ≠ 0` is simplified to `h : ¬ x = 0`.

           It is also important for avoiding identical hypotheses to simplify each other to `True`.
           Example
           ```
           ...
           h₁ : p a
           h₂ : p a
           ⊢ q a
           ```
           `h₁` is first simplified to `True`. If we don't remove `h₁` from the set of simp theorems, it will
           be used to simplify `h₂` to `True` and information is lost.

           We must use `mkExpectedTypeHint` because `inferType proofNew` may not be equal to `typeNew` when
           we have theorems marked with `rfl`.
        -/
        trace[Meta.Tactic.simp.all] "entry.id: {← ppOrigin entry.id}, {entry.type} => {typeNew}"
        let mut simpThmsNew := (← getSimpTheorems).eraseTheorem (.fvar entry.fvarId)
        let idNew ← mkFreshId
        simpThmsNew ← simpThmsNew.addTheorem (.other idNew) (← mkExpectedTypeHint proofNew typeNew) (config := ctx.indexConfig)
        modify fun s => { s with
          modified         := true
          ctx              := ctx.setSimpTheorems simpThmsNew
          entries[i]       := { entry with type := typeNew, proof := proofNew, id := .other idNew }
        }
  -- simplify target
  let mvarId := (← get).mvarId
  let (r, stats) ← simpTarget mvarId (← get).ctx simprocs (stats := { (← get) with })
  modify fun s => { s with usedTheorems := stats.usedTheorems, diag := stats.diag }
  match r with
  | none => return true
  | some mvarIdNew =>
    unless mvarId == mvarIdNew do
      modify fun s => { s with
        modified := true
        mvarId   := mvarIdNew
      }
  if (← get).modified then
    loop
  else
    return false

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpAll/Variant3d615858816caebc666d895bf97736670cb24ef220f346051e63e91fd7d3ee53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpAll/Variant3d615858816caebc666d895bf97736670cb24ef220f346051e63e91fd7d3ee53.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cb9d3e7fc4618537374ff683593639a106d3175` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
