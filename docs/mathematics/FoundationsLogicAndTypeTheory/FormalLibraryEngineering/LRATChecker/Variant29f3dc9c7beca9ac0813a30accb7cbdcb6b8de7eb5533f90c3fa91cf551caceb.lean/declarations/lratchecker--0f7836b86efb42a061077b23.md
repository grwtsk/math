# lratChecker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64450d7bf762e3c40195688ba0ff66fc6d90cc248a168d475a6909f78df29491",
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
  "slug": "lratchecker--0f7836b86efb42a061077b23",
  "source": {
    "blob": "f8b208026f7910dc3590223076a5892c18a0064c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATChecker/Variant29f3dc9c7beca9ac0813a30accb7cbdcb6b8de7eb5533f90c3fa91cf551caceb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f7836b86efb42a061077b230998bb6a2b8e7257227b4bfdf919745cc51cff5f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATChecker/Variant29f3dc9c7beca9ac0813a30accb7cbdcb6b8de7eb5533f90c3fa91cf551caceb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64450d7bf762e3c40195688ba0ff66fc6d90cc248a168d475a6909f78df29491`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–59.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATChecker/Variant29f3dc9c7beca9ac0813a30accb7cbdcb6b8de7eb5533f90c3fa91cf551caceb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATChecker/Variant29f3dc9c7beca9ac0813a30accb7cbdcb6b8de7eb5533f90c3fa91cf551caceb.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8b208026f7910dc3590223076a5892c18a0064c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
