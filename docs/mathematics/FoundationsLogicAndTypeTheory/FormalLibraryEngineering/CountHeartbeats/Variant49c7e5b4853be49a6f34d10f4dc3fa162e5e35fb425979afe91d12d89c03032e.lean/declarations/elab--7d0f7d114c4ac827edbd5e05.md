# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb09d66d0976a48d8b78e28282ed7051f98d1ffcaa6264581008a502aeeda1e4",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--7d0f7d114c4ac827edbd5e05",
  "source": {
    "blob": "bdd59548ea7aee17214e1c5a95e49c1a2c3cd52d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant49c7e5b4853be49a6f34d10f4dc3fa162e5e35fb425979afe91d12d89c03032e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d0f7d114c4ac827edbd5e0545589581f817167b90f14a3ec4e96d3fac660c36",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant49c7e5b4853be49a6f34d10f4dc3fa162e5e35fb425979afe91d12d89c03032e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb09d66d0976a48d8b78e28282ed7051f98d1ffcaa6264581008a502aeeda1e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "#count_heartbeats! " n:(num)? "in" ppLine tac:tacticSeq : tactic => do
  let n := match n with
           | some j => j.getNat
           | none => 10
  -- First run the tactic `n-1` times, reverting the state.
  let counts ← (List.range (n - 1)).mapM fun _ => runTacForHeartbeats tac
  -- Then run once more, keeping the state.
  let counts := (← runTacForHeartbeats tac (revert := false)) :: counts
  logVariation counts

/--
Round down the number `n` to the nearest thousand, if `approx` is `true`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant49c7e5b4853be49a6f34d10f4dc3fa162e5e35fb425979afe91d12d89c03032e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant49c7e5b4853be49a6f34d10f4dc3fa162e5e35fb425979afe91d12d89c03032e.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd59548ea7aee17214e1c5a95e49c1a2c3cd52d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
