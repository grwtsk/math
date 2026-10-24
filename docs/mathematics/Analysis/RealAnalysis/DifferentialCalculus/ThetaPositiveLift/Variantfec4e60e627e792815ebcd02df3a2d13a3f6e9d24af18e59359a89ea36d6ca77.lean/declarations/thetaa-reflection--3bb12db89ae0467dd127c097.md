# thetaA_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad30a12da4cf20c1c25f5a5e173d9f019b4d9d7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31f862f5-f0c5-a66e-6ce3-155d0db4ef60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:082cdd55-bd06-924f-89fc-29d9c47f1a0a",
  "kind": "theorem",
  "lexical_name": "thetaA_reflection",
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
  "slug": "thetaa-reflection--3bb12db89ae0467dd127c097",
  "source": {
    "blob": "ad30a12da4cf20c1c25f5a5e173d9f019b4d9d7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 353,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bb12db89ae0467dd127c0978ae71eaf3d8025d1e5afdd5e540a9ff9ab5088ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:082cdd55-bd06-924f-89fc-29d9c47f1a0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaA_reflection (t : ℝ) :
    thetaA t - thetaA (-t) = (Real.exp (-t) - Real.exp t) / 2 := by
  have hpos : 0 < Real.exp (4 * t) := Real.exp_pos _
  have hposneg : 0 < Real.exp (-4 * t) := Real.exp_pos _
  have hfe := HurwitzZeta.evenKernel_functional_equation (0 : UnitAddCircle)
    (Real.exp (4 * t))
  rw [HurwitzZeta.evenKernel_eq_cosKernel_of_zero] at hfe
  rw [thetaA, thetaA, show 4 * -t = -4 * t by ring,
    thetaPsi_eq_cosKernel hpos, thetaPsi_eq_cosKernel hposneg]
  rw [exp_four_rpow_half, one_div_exp_four] at hfe
  have he : Real.exp t * (1 / Real.exp (2 * t)) = Real.exp (-t) := by
    rw [one_div, ← div_eq_mul_inv, ← Real.exp_sub]
    congr 1
    ring
  rw [hfe, ← he]
  ring

/-- The source boundary debt is exactly `A'(0) = -1/2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad30a12da4cf20c1c25f5a5e173d9f019b4d9d7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
