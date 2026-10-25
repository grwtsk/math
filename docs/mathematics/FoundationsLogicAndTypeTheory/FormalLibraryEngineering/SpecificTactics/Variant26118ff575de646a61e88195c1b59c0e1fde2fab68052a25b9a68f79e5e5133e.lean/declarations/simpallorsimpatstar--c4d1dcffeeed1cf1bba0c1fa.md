# simpAllOrSimpAtStar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7175abc128b9d49f9be231273f24bddea2eb51d68662387879215ac14efedfc9",
  "kind": "def",
  "lexical_name": "simpAllOrSimpAtStar",
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
  "slug": "simpallorsimpatstar--c4d1dcffeeed1cf1bba0c1fa",
  "source": {
    "blob": "0ca53b0f315c2a00b100c90a0cac0c7a65d935d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4d1dcffeeed1cf1bba0c1fac975203df7e93d9a2513ba68db7aa1019157f45b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7175abc128b9d49f9be231273f24bddea2eb51d68662387879215ac14efedfc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpAllOrSimpAtStar (simpAll : Bool) (inGoal : MVarId)
    (configStx? : Option Term) (usedTheorems : Simp.UsedSimps) :
    TacticBuilder := do
  let simpTheorems ← getSimpTheorems
  let simprocs ← Simp.getSimprocs
  let (map, size) ←
    usedTheorems.map.foldlM (init := ({}, 0)) λ (map, size) origin thm => do
      if isGlobalSimpTheorem simpTheorems simprocs origin then
        return (map, size)
      else
        return (map.insert origin thm, size + 1)
  let stx ←
    match ← simpAllOrSimpAtStarOnlyStx simpAll inGoal configStx? { map, size } with
    | `(tactic| simp_all $cfg:optConfig only [$lems,*]) =>
      `(tactic| simp_all $cfg:optConfig [$lems,*])
    | `(tactic| simp $cfg:optConfig only [$lems,*] at *) =>
      `(tactic| simp $cfg:optConfig [$lems,*] at *)
    | `(tactic| simp_all $cfg:optConfig only) =>
      `(tactic| simp_all $cfg:optConfig)
    | `(tactic| simp $cfg:optConfig only at *) =>
      `(tactic| simp $cfg:optConfig at *)
    | stx => throwError "simp tactic builder: unexpected syntax:{indentD stx}"
  return .unstructured ⟨stx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ca53b0f315c2a00b100c90a0cac0c7a65d935d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
