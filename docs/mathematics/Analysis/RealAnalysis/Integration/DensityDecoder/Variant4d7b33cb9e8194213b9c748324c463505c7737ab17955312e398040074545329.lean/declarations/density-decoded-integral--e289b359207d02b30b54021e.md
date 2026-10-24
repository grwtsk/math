# density_decoded_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62694d99-c94b-c6d4-719a-c372e30943fb",
  "kind": "theorem",
  "lexical_name": "density_decoded_integral",
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
  "slug": "density-decoded-integral--e289b359207d02b30b54021e",
  "source": {
    "blob": "2d000b00ed2c3d18846409259044a65e427c6db9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e289b359207d02b30b54021ef1c8e4485f1b756786123beb8017a37a34eb36ba",
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

Occurrence: `result:62694d99-c94b-c6d4-719a-c372e30943fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_decoded_integral {h : ℝ} (hh : 0 ≤ h) (A : ℝ) (n : ℕ) :
    (∫ u in 0..(n:ℝ)*h, criticalDensity u*decodedTest A h n u) =
      ∑ j ∈ Finset.range n, pairedTailTest A (((j+1:ℕ):ℝ)*h)*
        (h+criticalDecay (((j+1:ℕ):ℝ)*h)-criticalDecay ((j:ℝ)*h)) := by
  unfold decodedTest
  simp_rw [Finset.mul_sum]
  rw [intervalIntegral.integral_finsetSum
    (fun j _ => (cell_density_integrable h _ j).intervalIntegrable)]
  apply Finset.sum_congr rfl
  intro j hj
  exact cell_density_integral hh (Finset.mem_range.mp hj) _

/-- Exact cycle18 cell ledger, preserving the same closed prime inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d000b00ed2c3d18846409259044a65e427c6db9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
