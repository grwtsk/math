# neighbor_has_complete_legality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39e99444-45a0-abce-8029-c4a1adb547ab",
  "kind": "theorem",
  "lexical_name": "neighbor_has_complete_legality",
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
  "slug": "neighbor-has-complete-legality--b5e0f0d4805dd85a29648358",
  "source": {
    "blob": "7ab9f19667fd227990cc20cd89c55030c4933179",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 187,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variante8a880e024977c70f2c9468a90efe3810acf1bd4d7d749aeaf6110484999e209.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5e0f0d4805dd85a296483586d88b6baeec03a17be8a5c0b75b674fccb0c0a13",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variante8a880e024977c70f2c9468a90efe3810acf1bd4d7d749aeaf6110484999e209.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39e99444-45a0-abce-8029-c4a1adb547ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neighbor_has_complete_legality
    (round : LegalBoundedPrismaticDiffusion G V terrain boundary flow windows)
    {x y : V}
    (hy : y ∈ round.gate.legalNeighbors x) :
    round.gate.exactGlobalLocus x y ∧
    round.gate.adjacencyBoundaryConservation x y ∧
    round.gate.obstacleCapacityConservation x y ∧
    round.gate.booleanSupportActionAgreement x y ∧
    round.gate.orientationAgreement x y ∧
    round.gate.binaryChargeCompatible x y ∧
    round.gate.windowOverlapCompatible x y ∧
    round.gate.matrixProjectionCompatible x y ∧
    round.gate.rasterMeshCompatible x y ∧
    round.gate.torsionModelCompatible x y ∧
    round.gate.determinantApplicable x y ∧
    round.gate.prismaticRealizationCompatible x y ∧
    round.gate.globalRulesetCompatible x y := by
  apply round.gate.admitted_is_completely_legal
  exact (round.gate.mem_legalNeighbors_iff x y).mp hy

/-- The complete pre-threshold horizon is a linear deviation map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variante8a880e024977c70f2c9468a90efe3810acf1bd4d7d749aeaf6110484999e209.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variante8a880e024977c70f2c9468a90efe3810acf1bd4d7d749aeaf6110484999e209.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ab9f19667fd227990cc20cd89c55030c4933179` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
