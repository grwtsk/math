# cubicCompanion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d274f5811e744b15857fdc92befb0e432cc8998498723c8ccefc3c47c9e29b37",
  "kind": "def",
  "lexical_name": "cubicCompanion",
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
  "slug": "cubiccompanion--eca2f855b85dacbfc939a0c6",
  "source": {
    "blob": "681117ffc168e44ee61400a4a62a5998f7cc4447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 189,
    "path": "GRWTSK/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eca2f855b85dacbfc939a0c66cb8f4746b22c3c0c0f2df1b648be8457bbc392c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d274f5811e744b15857fdc92befb0e432cc8998498723c8ccefc3c47c9e29b37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cubicCompanion (b c d : ℝ) : Matrix (Fin 3) (Fin 3) ℝ :=
  !![0, 0, d; 1, 0, -c; 0, 1, b]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `681117ffc168e44ee61400a4a62a5998f7cc4447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
