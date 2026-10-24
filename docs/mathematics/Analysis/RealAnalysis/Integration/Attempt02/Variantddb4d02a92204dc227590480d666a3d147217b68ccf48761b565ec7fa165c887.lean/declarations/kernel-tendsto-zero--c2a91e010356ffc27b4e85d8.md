# kernel_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:604e6166-767d-1764-0618-f14cea26669c",
  "kind": "theorem",
  "lexical_name": "kernel_tendsto_zero",
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
  "slug": "kernel-tendsto-zero--c2a91e010356ffc27b4e85d8",
  "source": {
    "blob": "4eb79a0638380e5b3a135de743ff7bd2dd108fe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variantddb4d02a92204dc227590480d666a3d147217b68ccf48761b565ec7fa165c887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2a91e010356ffc27b4e85d833f6e9ba7867dd82e6d77b21d5981bcd64fa5e7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variantddb4d02a92204dc227590480d666a3d147217b68ccf48761b565ec7fa165c887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:604e6166-767d-1764-0618-f14cea26669c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem kernel_tendsto_zero (r : ℝ) :
    Tendsto (fun T => actualF7NormalizedKernel T r) atTop (𝓝 0) := by
  have hb : Tendsto (fun T : ℝ => Real.exp (-T / 2)) atTop (𝓝 0) := by
    convert (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 0 (1 / 2) (by norm_num)) using 1
    funext T
    simp only [Real.rpow_zero, one_mul]
    congr 1
    ring
  have hp := hb.const_mul
    (actualXiInverseSquareTimeDensity r * Real.exp (r / 2))
  simp only [mul_zero] at hp
  apply hp.congr'
  filter_upwards [eventually_ge_atTop r] with T hT
  unfold actualF7NormalizedKernel
  rw [Set.indicator_of_mem hT]
  rw [show (r - T) / 2 = r / 2 + -T / 2 by ring, Real.exp_add]
  ring

/-- Actual PNT gives an ordinary zero limit for the full original normalized upper F7 trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variantddb4d02a92204dc227590480d666a3d147217b68ccf48761b565ec7fa165c887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variantddb4d02a92204dc227590480d666a3d147217b68ccf48761b565ec7fa165c887.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4eb79a0638380e5b3a135de743ff7bd2dd108fe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
