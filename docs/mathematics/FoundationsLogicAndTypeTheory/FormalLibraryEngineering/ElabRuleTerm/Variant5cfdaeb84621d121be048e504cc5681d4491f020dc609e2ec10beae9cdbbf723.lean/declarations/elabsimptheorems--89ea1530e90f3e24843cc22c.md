# elabSimpTheorems

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ceca4271be8e76be9510179e63918e943ff5deeefaac151c35d65e0935d1c3c",
  "kind": "def",
  "lexical_name": "elabSimpTheorems",
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
  "slug": "elabsimptheorems--89ea1530e90f3e24843cc22c",
  "source": {
    "blob": "97e019e0f14308d56e960711bddf3a98a4001030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRuleTerm/Variant5cfdaeb84621d121be048e504cc5681d4491f020dc609e2ec10beae9cdbbf723.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89ea1530e90f3e24843cc22c5bc4bd71badade2a765f5b95f180c342b6adc23e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRuleTerm/Variant5cfdaeb84621d121be048e504cc5681d4491f020dc609e2ec10beae9cdbbf723.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ceca4271be8e76be9510179e63918e943ff5deeefaac151c35d65e0935d1c3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabSimpTheorems (stx : Syntax) (ctx : Simp.Context)
    (simprocs : Simp.SimprocsArray) (isSimpAll : Bool) :
    TacticM (Simp.Context × Simp.SimprocsArray) :=
  withoutRecover do
    let kind : SimpKind := if isSimpAll then .simpAll else .simp
    let result ←
      elabSimpArgs stx ctx simprocs (eraseLocal := true) (kind := kind)
    if result.simpArgs.any fun | (_, .star) => true | _ => false then
      throwError "aesop: simp builder currently does not support wildcard '*'"
    return (result.ctx, result.simprocs)

-- HACK: This produces the syntax "[" lemmas,* "]" which is parsed by
-- `elabSimpArgs`. This syntax doesn't have an associated parser, so I don't
-- know how to ensure that the produced syntax is valid.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRuleTerm/Variant5cfdaeb84621d121be048e504cc5681d4491f020dc609e2ec10beae9cdbbf723.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRuleTerm/Variant5cfdaeb84621d121be048e504cc5681d4491f020dc609e2ec10beae9cdbbf723.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97e019e0f14308d56e960711bddf3a98a4001030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
