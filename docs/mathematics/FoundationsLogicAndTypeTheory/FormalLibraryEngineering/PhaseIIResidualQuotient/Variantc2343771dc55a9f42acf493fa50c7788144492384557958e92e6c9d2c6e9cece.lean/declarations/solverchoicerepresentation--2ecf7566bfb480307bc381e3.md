# solverChoiceRepresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:609e4a08f7d316c04757e79333fbdb8ae12ac0406bbdc51d653345d3512f3c8b",
  "kind": "def",
  "lexical_name": "solverChoiceRepresentation",
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
  "slug": "solverchoicerepresentation--2ecf7566bfb480307bc381e3",
  "source": {
    "blob": "6e9cdda7a65069676d16fb773622b937a167d6dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variantc2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ecf7566bfb480307bc381e37e0d8d27bf247239b7a60a046139dfaea4b908c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variantc2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:609e4a08f7d316c04757e79333fbdb8ae12ac0406bbdc51d653345d3512f3c8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def solverChoiceRepresentation
    (Q : PhaseIIResidualQuotient G) :
    SufficientRepresentation.{max u v, v, 0, 0} (phaseIIResidualCertificateFamily G) where
  carrier := Unit
  compress := fun _ => ()
  recover := fun uv _ => Q.geometry.form uv.1 uv.2
  recover_compress := by
    intro uv S
    exact Q.representative.schur_pairing_independent S uv.1 uv.2

/-- The one-point solver-choice representation is minimal among all exact
sufficient representations of the Phase-II residual certificates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variantc2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variantc2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e9cdda7a65069676d16fb773622b937a167d6dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
