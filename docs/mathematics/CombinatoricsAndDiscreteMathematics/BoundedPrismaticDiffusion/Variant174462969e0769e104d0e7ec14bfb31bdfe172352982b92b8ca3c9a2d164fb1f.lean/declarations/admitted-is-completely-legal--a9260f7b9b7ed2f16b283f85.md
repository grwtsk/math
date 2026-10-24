# admitted_is_completely_legal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39d9e3bcf87be3e456d722f74b1fe28e0c22cf98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b43cf95d-7238-b922-7c19-689273911c75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:753fe937-ef18-f155-caca-04b94aec079b",
  "kind": "theorem",
  "lexical_name": "admitted_is_completely_legal",
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
  "slug": "admitted-is-completely-legal--a9260f7b9b7ed2f16b283f85",
  "source": {
    "blob": "39d9e3bcf87be3e456d722f74b1fe28e0c22cf98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9260f7b9b7ed2f16b283f852c33a71b3ac1540bcd13a646a54b00ededaa05f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:753fe937-ef18-f155-caca-04b94aec079b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admitted_is_completely_legal
    (gate : CompleteLegalityGate terrain boundary)
    {x y : V}
    (h : gate.admitted x y) :
    gate.exactGlobalLocus x y ∧
    gate.adjacencyBoundaryConservation x y ∧
    gate.obstacleCapacityConservation x y ∧
    gate.booleanSupportActionAgreement x y ∧
    gate.orientationAgreement x y ∧
    gate.binaryChargeCompatible x y ∧
    gate.windowOverlapCompatible x y ∧
    gate.matrixProjectionCompatible x y ∧
    gate.rasterMeshCompatible x y ∧
    gate.torsionModelCompatible x y ∧
    gate.determinantApplicable x y ∧
    gate.prismaticRealizationCompatible x y ∧
    gate.globalRulesetCompatible x y :=
  ⟨gate.exactGlobalLocus_proof h,
   gate.adjacencyBoundaryConservation_proof h,
   gate.obstacleCapacityConservation_proof h,
   gate.booleanSupportActionAgreement_proof h,
   gate.orientationAgreement_proof h,
   gate.binaryChargeCompatible_proof h,
   gate.windowOverlapCompatible_proof h,
   gate.matrixProjectionCompatible_proof h,
   gate.rasterMeshCompatible_proof h,
   gate.torsionModelCompatible_proof h,
   gate.determinantApplicable_proof h,
   gate.prismaticRealizationCompatible_proof h,
   gate.globalRulesetCompatible_proof h⟩

end CompleteLegalityGate

/--
A fixed-horizon legal round anchored in one maximal state and window system.
The vertex embedding supplies absolute placement; the diffusion operator can
use only the completely gated neighbor system.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39d9e3bcf87be3e456d722f74b1fe28e0c22cf98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
