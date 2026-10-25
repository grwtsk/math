# lratChecker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2c340f8f7e7d38df4e4a363272447872e78141bf40f49b4eb35bafe6558e758",
  "kind": "def",
  "lexical_name": "lratChecker",
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
  "slug": "lratchecker--b99bfab06c7071c9b727ba81",
  "source": {
    "blob": "799dc3075dd109fb85e5922e9ce9df76daab55d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATChecker/Variantb84e7a5e34c53db37226a16b4f4903bcdd2625b2be0b1304f0cba751c04986da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b99bfab06c7071c9b727ba8145ee6e1d56fcf5b9a84b108b03baa4ad95fa38eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATChecker/Variantb84e7a5e34c53db37226a16b4f4903bcdd2625b2be0b1304f0cba751c04986da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2c340f8f7e7d38df4e4a363272447872e78141bf40f49b4eb35bafe6558e758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lratChecker [DecidableEq α] [Clause α β] [Entails α σ] [Formula α β σ] (f : σ)
    (prf : List (Action β α)) :
    Result :=
  match prf with
  | [] => .outOfProof
  | .addEmpty _ rupHints :: _ =>
    let (_, checkSuccess) := performRupAdd f Clause.empty rupHints
    if checkSuccess then
      .success
    else
      .rupFailure
  | .addRup _ c rupHints :: restPrf =>
    let (f, checkSuccess) := performRupAdd f c rupHints
    if checkSuccess then
      lratChecker f restPrf
    else
      .rupFailure
  | .addRat _ c pivot rupHints ratHints :: restPrf =>
    let (f, checkSuccess) := performRatAdd f c pivot rupHints ratHints
    if checkSuccess then
      lratChecker f restPrf
    else
      .rupFailure
  | .del ids :: restPrf => lratChecker (delete f ids) restPrf

end Internal
end LRAT
end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATChecker/Variantb84e7a5e34c53db37226a16b4f4903bcdd2625b2be0b1304f0cba751c04986da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATChecker/Variantb84e7a5e34c53db37226a16b4f4903bcdd2625b2be0b1304f0cba751c04986da.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `799dc3075dd109fb85e5922e9ce9df76daab55d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
