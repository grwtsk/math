# withMetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03f46e0d4544d4f6304a7d7e2b1fc7af712ced2d6c8df51c626407b5fd4c14a6",
  "kind": "def",
  "lexical_name": "withMetric",
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
  "slug": "withmetric--1791086d5fd6f0c1bae5d157",
  "source": {
    "blob": "c61996d2481ccb955ae5c6b476636d5ed259b72b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 74,
    "path": "GRWTSK/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1791086d5fd6f0c1bae5d157ba0761b1a614bf5ca082164f66f0933c8a04079d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03f46e0d4544d4f6304a7d7e2b1fc7af712ced2d6c8df51c626407b5fd4c14a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withMetric
    (cover :
      TorsionRoundedCover
        LiftedBase Loop rank localSystem Torsion GluingClass)
    (metric : FiberGramField LiftedBase Loop rank localSystem) :
    TorsionRoundedCover
      LiftedBase Loop rank localSystem Torsion GluingClass :=
  { cover with metric := metric }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61996d2481ccb955ae5c6b476636d5ed259b72b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
