# arsinh_deriv_factor_mem_unitInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00c11673a88fd82b3a1e3761f0a7dd35fe088dc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bad4db72-aaf5-2e43-6494-1f90ef3dc545",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81e5513f-616f-3407-d211-fa693e6c5c54",
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
  "slug": "arsinh-deriv-factor-mem-unitinterval--b6e52e1a27b1780d1c79ebcc",
  "source": {
    "blob": "00c11673a88fd82b3a1e3761f0a7dd35fe088dc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6e52e1a27b1780d1c79ebccd090b7329b26d2f7c5f97f2ae95fbea9dc9142b7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81e5513f-616f-3407-d211-fa693e6c5c54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–84.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00c11673a88fd82b3a1e3761f0a7dd35fe088dc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
