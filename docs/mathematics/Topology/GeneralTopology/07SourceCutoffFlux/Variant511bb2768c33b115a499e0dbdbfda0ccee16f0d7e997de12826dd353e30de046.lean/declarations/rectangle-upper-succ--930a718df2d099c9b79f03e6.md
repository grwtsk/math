# rectangle_upper_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f04aff7f-8051-09a3-aef2-e2f6f5673976",
  "kind": "theorem",
  "lexical_name": "rectangle_upper_succ",
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
  "slug": "rectangle-upper-succ--930a718df2d099c9b79f03e6",
  "source": {
    "blob": "8fd7bb04b663cbc0473dc12e1fb7876244d30960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 540,
    "path": "GRWTSK/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:930a718df2d099c9b79f03e650bc1836f691a0c02ebbae075008b216efae5e20",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f04aff7f-8051-09a3-aef2-e2f6f5673976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangle_upper_succ {A : ℝ} (hA : 1 ≤ A) (U N : ℕ)
    (hUN : U ≤ N) (hN : sourceKernelCutoff A ≤ N) (b : ℕ → ℝ) :
    rectangle (Finset.Ioc U (N + 1)) (sourceKernel A) b =
      rectangle (Finset.Ioc U N) (sourceKernel A) b := by
  classical
  have hk : N + 1 ∉ Finset.Ioc U N := by simp
  rw [upperInventory_succ U N hUN, rectangle_insert _ _ _ _ hk]
  have hr : rowBoundary (Finset.Ioc U N) (sourceKernel A) b (N + 1) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    rw [sourceKernel_upper_left hA N n hN (by have := (Finset.mem_Ioc.mp hn).1; omega),
      zero_mul]
  have hc : columnBoundary (Finset.Ioc U N) (sourceKernel A) b (N + 1) = 0 := by
    apply Finset.sum_eq_zero
    intro m hm
    rw [sourceKernel_upper_right hA N m hN (by have := (Finset.mem_Ioc.mp hm).1; omega),
      zero_mul]
  rw [hr, hc, sourceKernel_upper_right hA N (N + 1) hN (by omega)]
  ring

/-- The added upper diagonal atom also vanishes; it is never silently dropped. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fd7bb04b663cbc0473dc12e1fb7876244d30960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
