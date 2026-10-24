# isIntegral_of_mem_ringOfIntegers'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8da426a4-68cf-d8c8-f614-77d801ecc424",
  "kind": "theorem",
  "lexical_name": "isIntegral_of_mem_ringOfIntegers'",
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
  "slug": "isintegral-of-mem-ringofintegers--f1dbc5cd1642814250308168",
  "source": {
    "blob": "656e2b3108f297edc4e27a897ce39dc1d16bbde0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 54,
    "path": "GRWTSK/Algebra/AlgebraInstances/Varianteb7d7a9e9b4ae7b4a679e352ad2e1abc36cd86eefa7791e86a24f1186a2ec1f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1dbc5cd1642814250308168095c17ac0043a1e4d174ff69d934381301f0f130",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraInstances/Varianteb7d7a9e9b4ae7b4a679e352ad2e1abc36cd86eefa7791e86a24f1186a2ec1f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8da426a4-68cf-d8c8-f614-77d801ecc424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_of_mem_ringOfIntegers' {x : (integralClosure v.valuationSubring L)} :
    IsIntegral v.valuationSubring (x : integralClosure v.valuationSubring L) := by
  apply isIntegral_of_mem_ringOfIntegers

variable (E : Type _) [Field E] [Algebra K E] [Algebra L E] [IsScalarTower K L E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraInstances/Varianteb7d7a9e9b4ae7b4a679e352ad2e1abc36cd86eefa7791e86a24f1186a2ec1f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraInstances/Varianteb7d7a9e9b4ae7b4a679e352ad2e1abc36cd86eefa7791e86a24f1186a2ec1f8.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `656e2b3108f297edc4e27a897ce39dc1d16bbde0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
