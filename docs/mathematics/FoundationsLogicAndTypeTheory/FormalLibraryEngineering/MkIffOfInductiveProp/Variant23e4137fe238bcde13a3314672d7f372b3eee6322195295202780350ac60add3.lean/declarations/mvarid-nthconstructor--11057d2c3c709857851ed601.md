# MVarId.nthConstructor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d75692eaab115b50cc489e479fd546d72985f546362e78a2d74db3616488420a",
  "kind": "def",
  "lexical_name": "MVarId.nthConstructor",
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
  "slug": "mvarid-nthconstructor--11057d2c3c709857851ed601",
  "source": {
    "blob": "69231d1701ca08e19c15c06fd8a26d085c5ffec3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11057d2c3c709857851ed6018ee3713451a39fb55adcf8ba03e68c657671292a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d75692eaab115b50cc489e479fd546d72985f546362e78a2d74db3616488420a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def MVarId.nthConstructor
    (name : Name) (idx : Nat) (expected? : Option Nat := none) (goal : MVarId) :
    MetaM (List MVarId) := do
  goal.withContext do
    goal.checkNotAssigned name
    matchConstInduct (← goal.getType').getAppFn
      (fun _ => throwTacticEx name goal "target is not an inductive datatype")
      fun ival us => do
        if let some e := expected? then unless ival.ctors.length == e do
          throwTacticEx name goal
            s!"{name} tactic works for inductive types with exactly {e} constructors"
        if h : idx < ival.ctors.length then
          goal.apply <| mkConst ival.ctors[idx] us
        else
          throwTacticEx name goal s!"index {idx} out of bounds, only {ival.ctors.length} constructors"

/-- `select m n` runs `right` `m` times; if `m < n`, then it also runs `left` once.
Fails if `n < m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69231d1701ca08e19c15c06fd8a26d085c5ffec3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
