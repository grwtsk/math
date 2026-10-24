# fixedKernel_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c2a0c2d-3380-0d3c-5d6d-94fa68499213",
  "kind": "theorem",
  "lexical_name": "fixedKernel_summable",
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
  "slug": "fixedkernel-summable--b7eee6f19608e0a85830ca1c",
  "source": {
    "blob": "bc7f2a6a4e05af82a89be0c7f2846cc2cfdbb731",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant4015855160d771d0987f873e0e2a8f4723b07e90ddf5dd61d43fa62adb62bf15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7eee6f19608e0a85830ca1cded5fc7bc893aebbc3d38e6bf1e72b62c10e50bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant4015855160d771d0987f873e0e2a8f4723b07e90ddf5dd61d43fa62adb62bf15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c2a0c2d-3380-0d3c-5d6d-94fa68499213`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedKernel_summable (t : ℝ) : Summable (fun n : ℕ => logSample t (n + 1)) := by
  apply summable_of_ne_finset_zero (s := Finset.range (⌊Real.exp t⌋₊ + 1))
  intro n hn
  have hnN : ⌊Real.exp t⌋₊ + 1 ≤ n := Nat.le_of_not_gt
    (by simpa only [Finset.mem_range] using hn)
  apply logSample_zero_of_exp_le t _ (by positivity)
  have hnr : ((⌊Real.exp t⌋₊ + 1 : ℕ) : ℝ) ≤ n := by exact_mod_cast hnN
  have hx := Nat.lt_floor_add_one (Real.exp t)
  push_cast at hnr
  linarith

/-- Source admission preserves the literal n^(-1/2) weights, not Mangoldt weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant4015855160d771d0987f873e0e2a8f4723b07e90ddf5dd61d43fa62adb62bf15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant4015855160d771d0987f873e0e2a8f4723b07e90ddf5dd61d43fa62adb62bf15.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc7f2a6a4e05af82a89be0c7f2846cc2cfdbb731` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
