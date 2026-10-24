# exampleFiniteDeterminantMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a326f238080fc252e2febedae9da4559ec4311e918fbb7c915cc83120bb10433",
  "kind": "def",
  "lexical_name": "exampleFiniteDeterminantMatrix",
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
  "slug": "examplefinitedeterminantmatrix--0b0f1b6ee67e36f22f75a346",
  "source": {
    "blob": "376daf3d9e361aaf3ea1132b8e0a7d4306fc8110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 33,
    "path": "GRWTSK/Algebra/LinearAlgebra/DeterminantExamples/Variantda92fd358d9ee38f675716072e065ea0de3e738c69f6c8114952a353a2e5bb8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b0f1b6ee67e36f22f75a3466fec3dea7b3d0b38d600de8a004e2096b76b74ce",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DeterminantExamples/Variantda92fd358d9ee38f675716072e065ea0de3e738c69f6c8114952a353a2e5bb8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a326f238080fc252e2febedae9da4559ec4311e918fbb7c915cc83120bb10433`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleFiniteDeterminantMatrix :
    _root_.Number.Determinant.FiniteDeterminantMatrix where
  matrix := exampleSquareMatrix
  determinantValue := -2
  determinantSound := True
  determinantSoundProof := trivial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DeterminantExamples/Variantda92fd358d9ee38f675716072e065ea0de3e738c69f6c8114952a353a2e5bb8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DeterminantExamples/Variantda92fd358d9ee38f675716072e065ea0de3e738c69f6c8114952a353a2e5bb8b.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `376daf3d9e361aaf3ea1132b8e0a7d4306fc8110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
