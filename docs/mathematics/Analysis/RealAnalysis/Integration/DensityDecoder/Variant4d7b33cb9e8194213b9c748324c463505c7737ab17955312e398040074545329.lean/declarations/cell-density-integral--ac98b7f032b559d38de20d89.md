# cell_density_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d682743-fa20-8db5-0fc1-84cbd7765aa8",
  "kind": "theorem",
  "lexical_name": "cell_density_integral",
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
  "slug": "cell-density-integral--ac98b7f032b559d38de20d89",
  "source": {
    "blob": "2d000b00ed2c3d18846409259044a65e427c6db9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 53,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac98b7f032b559d38de20d89232d537f59bbe5ee2cd395a731889566fc242b1d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d682743-fa20-8db5-0fc1-84cbd7765aa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cell_density_integral {h : ℝ} (hh : 0 ≤ h) {j n : ℕ} (hj : j<n) (c : ℝ) :
    (∫ u in 0..(n:ℝ)*h, criticalDensity u*(cell h j).indicator (fun _ => c) u) =
      c*(h+criticalDecay (((j+1:ℕ):ℝ)*h)-criticalDecay ((j:ℝ)*h)) := by
  have hs : Function.support
      (fun u => criticalDensity u*(cell h j).indicator (fun _ => c) u) ⊆
      Ioc 0 ((n:ℝ)*h) := by
    intro u hu
    apply cell_subset hh hj
    by_contra hn
    exact hu (by simp [indicator_of_notMem hn])
  have he : (fun u => criticalDensity u*(cell h j).indicator (fun _ => c) u) =
      (cell h j).indicator (fun u => criticalDensity u*c) := by
    funext u
    by_cases hu : u∈cell h j <;> simp [hu]
  have hle : (j:ℝ)*h ≤ ((j+1:ℕ):ℝ)*h :=
    mul_le_mul_of_nonneg_right (by exact_mod_cast Nat.le_succ j) hh
  rw [intervalIntegral.integral_eq_integral_of_support_subset hs,he,cell,
    integral_indicator measurableSet_Ioc]
  change (∫ u in Ioc ((j:ℝ)*h) (((j+1:ℕ):ℝ)*h), criticalDensity u*c) = _
  rw [← intervalIntegral.integral_of_le hle,intervalIntegral.integral_mul_const,
    density_interval_mass]
  push_cast
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d000b00ed2c3d18846409259044a65e427c6db9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
