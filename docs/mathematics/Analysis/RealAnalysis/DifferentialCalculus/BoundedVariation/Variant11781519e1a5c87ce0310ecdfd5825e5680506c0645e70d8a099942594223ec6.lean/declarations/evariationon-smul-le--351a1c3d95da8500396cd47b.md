# eVariationOn_smul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f104d6db86e4506db5334ea53dff4a8dce0bb352",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11781519e1a5c87ce0310ecdfd5825e5680506c0645e70d8a099942594223ec6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecd271f2-8062-b025-20e7-69fa44485678",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2e3c753-bb06-85ba-4444-c791498f1fa5",
  "kind": "lemma",
  "lexical_name": "eVariationOn_smul_le",
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
  "slug": "evariationon-smul-le--351a1c3d95da8500396cd47b",
  "source": {
    "blob": "f104d6db86e4506db5334ea53dff4a8dce0bb352",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant11781519e1a5c87ce0310ecdfd5825e5680506c0645e70d8a099942594223ec6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:351a1c3d95da8500396cd47b42dae981a96781541e997a4d3c2ac6c159a98948",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant11781519e1a5c87ce0310ecdfd5825e5680506c0645e70d8a099942594223ec6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2e3c753-bb06-85ba-4444-c791498f1fa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eVariationOn_smul_le {𝕜 : Type*} {f : α → 𝕜} {g : α → F}
    [NormedRing 𝕜] [NormedAlgebra ℝ 𝕜] [Module 𝕜 F]
    [NormSMulClass 𝕜 F] [IsScalarTower ℝ 𝕜 F]
    {C D : ℝ≥0∞} {s : Set α} (hf : ∀ x ∈ s, ‖f x‖ₑ ≤ C) (hg : ∀ x ∈ s, ‖g x‖ₑ ≤ D) :
    eVariationOn (f • g) s ≤ C * eVariationOn g s + D * eVariationOn f s := by
  apply (eVariationOn_bilinear_comp_le hf hg (B := ContinuousLinearMap.lsmul ℝ 𝕜)).trans
  grw [ContinuousLinearMap.opENorm_lsmul_le, one_mul]

@[to_fun eVariationOn_fun_mul_le]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant11781519e1a5c87ce0310ecdfd5825e5680506c0645e70d8a099942594223ec6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant11781519e1a5c87ce0310ecdfd5825e5680506c0645e70d8a099942594223ec6.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f104d6db86e4506db5334ea53dff4a8dce0bb352` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
