# actualEulerLogBoundaryConstant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd70dd56b233361b6a74f5b8e78ef7380e8dc943c141c3a6fa9219d588b431b0",
  "kind": "def",
  "lexical_name": "actualEulerLogBoundaryConstant",
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
  "slug": "actualeulerlogboundaryconstant--2474c27ea38408b48d39ce9b",
  "source": {
    "blob": "ec0b0cfb7294392f1e40e395d02ead1e05686674",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 278,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitive/Variant4540bf6ca716d58cecc7be531ccdb029699c1bc4e28941f8e59473f47659a2bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2474c27ea38408b48d39ce9b2edbff7fcd06a6cc1b542d4ef39f0f7fd70a9f31",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitive/Variant4540bf6ca716d58cecc7be531ccdb029699c1bc4e28941f8e59473f47659a2bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd70dd56b233361b6a74f5b8e78ef7380e8dc943c141c3a6fa9219d588b431b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualEulerLogBoundaryConstant (c : ℝ) : ℝ :=
  mellinEndpointConstant c * actualRightLineMass c / (Real.pi*Real.log 2)

/-- Both oriented endpoints have a genuinely exponentially decaying moving-height budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitive/Variant4540bf6ca716d58cecc7be531ccdb029699c1bc4e28941f8e59473f47659a2bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitive/Variant4540bf6ca716d58cecc7be531ccdb029699c1bc4e28941f8e59473f47659a2bf.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec0b0cfb7294392f1e40e395d02ead1e05686674` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
