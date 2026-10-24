# arsinh_deriv_factor_mem_unitInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca3d344c-9117-2ff0-55b0-90fc3827cdb5",
  "kind": "theorem",
  "lexical_name": "arsinh_deriv_factor_mem_unitInterval",
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
  "slug": "arsinh-deriv-factor-mem-unitinterval--c8827f4cc35cafcf8032e4fa",
  "source": {
    "blob": "d541b49ed7d0224a11b2215b1f4531a5bc888f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8827f4cc35cafcf8032e4faf1d44ce828932aaa44c5231d14f9307ecfa5faff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca3d344c-9117-2ff0-55b0-90fc3827cdb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arsinh_deriv_factor_mem_unitInterval (y : ℝ) :
    (Real.sqrt (1 + y ^ 2))⁻¹ ∈ unitInterval := by
  simp only [unitInterval, IntervalRat.mem_def, Rat.cast_zero, Rat.cast_one]
  have h1 : 1 + y ^ 2 ≥ 1 := by nlinarith [sq_nonneg y]
  have hsqrt_ge_one : Real.sqrt (1 + y ^ 2) ≥ 1 := by
    calc Real.sqrt (1 + y ^ 2) ≥ Real.sqrt 1 := Real.sqrt_le_sqrt h1
      _ = 1 := Real.sqrt_one
  have hsqrt_pos : 0 < Real.sqrt (1 + y ^ 2) := by
    apply Real.sqrt_pos.mpr
    nlinarith [sq_nonneg y]
  constructor
  · exact inv_nonneg.mpr (le_of_lt hsqrt_pos)
  · exact inv_le_one_of_one_le₀ hsqrt_ge_one

/-- Dual for atan (chain rule: d(atan f) = f' / (1 + f²)) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d541b49ed7d0224a11b2215b1f4531a5bc888f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
