# straightLineExt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:941e24c761a20c96aa003d78e44e1ee436c198e2963a37bf7931bbdcc0b5eccc",
  "kind": "def",
  "lexical_name": "straightLineExt",
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
  "slug": "straightlineext--8561e99779a29c2c36bc5749",
  "source": {
    "blob": "56d05e22463dbba63e77572be87f99fe1bbfa51c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant417cd6e84dd4555bb8926ef97f8ce2b179c71e23acff082608d76c230a8aca68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8561e99779a29c2c36bc5749702e2ff5880f23ea62595b7877e9cfd9dd7db894",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant417cd6e84dd4555bb8926ef97f8ce2b179c71e23acff082608d76c230a8aca68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:941e24c761a20c96aa003d78e44e1ee436c198e2963a37bf7931bbdcc0b5eccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def straightLineExt (goal : MVarId) : MetaM ExtResult :=
  go goal 0 #[]
where
  go (goal : MVarId) (depth : Nat) (commonFVarIds : Array FVarId) :
      MetaM ExtResult:= do
    withConstAesopTraceNode .debug (return m!"straightLineExt") do
    aesop_trace[debug] "goal:{indentD goal}"
    let goals? ← show MetaM _ from observing? $ applyExtTheoremAt goal
    if let some goals := goals? then
      aesop_trace[debug] "ext lemma applied; new goals:{indentD $ Elab.goalsToMessageData goals}"
      let goals := goals.toArray
      if goals.isEmpty then
        return { depth := depth + 1, goals := #[], commonFVarIds := #[] }
      let goals ← goals.mapM λ goal => do
        let (fvarIds, goal) ← goal.intros
        return (goal, fvarIds)
      if h : goals.size = 1 then
        let (goal, fvarIds) := goals[0]
        go goal (depth + 1) (commonFVarIds ++ fvarIds)
      else
        return { depth := depth + 1, goals, commonFVarIds }
    else
      aesop_trace[debug] "no applicable ext lemma"
      return { depth, goals := #[(goal, #[])], commonFVarIds }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant417cd6e84dd4555bb8926ef97f8ce2b179c71e23acff082608d76c230a8aca68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant417cd6e84dd4555bb8926ef97f8ce2b179c71e23acff082608d76c230a8aca68.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56d05e22463dbba63e77572be87f99fe1bbfa51c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
