# activateInjectiveTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:364ebbeb32d67a71eb68e7e287302771726d88d704278ea957102867a6daee38",
  "kind": "def",
  "lexical_name": "activateInjectiveTheorem",
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
  "slug": "activateinjectivetheorem--9396de608c12bebcc930545a",
  "source": {
    "blob": "33164ab9d00bfdda88417ea42e8846b49b9d596d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 320,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9396de608c12bebcc930545a339e7f854450b3b74bafa2aa591dcf69d0be07fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:364ebbeb32d67a71eb68e7e287302771726d88d704278ea957102867a6daee38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def activateInjectiveTheorem (injThm : InjectiveTheorem) (generation : Nat) : GoalM Unit := do
  let type ← inferType injThm.proof
  if type.isForall then
    let symPrios ← getSymbolPriorities
    let thm? ← mkEMatchTheoremWithKind'? injThm.origin injThm.levelParams injThm.proof .fwd symPrios
      <||>
      mkEMatchTheoremWithKind'? injThm.origin injThm.levelParams injThm.proof (.default false) symPrios
    let some thm := thm? | reportIssue! "failed to assert injectivity theorem `{injThm.origin.pp}`"
    activateTheorem thm generation
  else
    addNewRawFact injThm.proof type generation (.inj injThm.origin) .other

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33164ab9d00bfdda88417ea42e8846b49b9d596d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
