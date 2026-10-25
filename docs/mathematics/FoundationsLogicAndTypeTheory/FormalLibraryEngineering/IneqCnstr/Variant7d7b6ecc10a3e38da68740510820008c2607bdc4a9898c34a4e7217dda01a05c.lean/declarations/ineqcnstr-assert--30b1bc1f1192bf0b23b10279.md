# IneqCnstr.assert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5b03301d5566a7bc8cce6bf8a29b5ed1e940d4e0ec1d9892d99a9b6ad92b162",
  "kind": "def",
  "lexical_name": "IneqCnstr.assert",
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
  "slug": "ineqcnstr-assert--30b1bc1f1192bf0b23b10279",
  "source": {
    "blob": "4aa1fe9309c256ba3f80d331bdfffe827ca0d21f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30b1bc1f1192bf0b23b10279653bf1ec797d72b942e54519868b7cbd321c5aef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5b03301d5566a7bc8cce6bf8a29b5ed1e940d4e0ec1d9892d99a9b6ad92b162`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def IneqCnstr.assert (c : IneqCnstr) : LinearM Unit := do
  trace[grind.linarith.assert] "{← c.denoteExpr}"
  match c.p with
  | .nil =>
    if c.strict then
      trace[grind.linarith.unsat] "{← c.denoteExpr}"
      setInconsistent (.lt c)
    else
      trace[grind.linarith.trivial] "{← c.denoteExpr}"
  | .add a x _ =>
    trace[grind.linarith.assert.store] "{← c.denoteExpr}"
    c.p.updateOccs
    if a < 0 then
      modifyStruct fun s => { s with lowers := s.lowers.modify x (·.push c) }
    else
      modifyStruct fun s => { s with uppers := s.uppers.modify x (·.push c) }
    if (← c.satisfied) == .false then
      resetAssignmentFrom x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa1fe9309c256ba3f80d331bdfffe827ca0d21f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
