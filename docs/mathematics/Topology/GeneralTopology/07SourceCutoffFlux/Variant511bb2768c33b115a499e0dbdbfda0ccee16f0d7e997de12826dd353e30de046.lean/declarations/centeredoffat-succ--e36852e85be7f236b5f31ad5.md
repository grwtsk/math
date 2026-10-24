# centeredOffAt_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:102916e5-0340-2f27-618e-cbe90d04df0b",
  "kind": "theorem",
  "lexical_name": "centeredOffAt_succ",
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
  "slug": "centeredoffat-succ--e36852e85be7f236b5f31ad5",
  "source": {
    "blob": "8fd7bb04b663cbc0473dc12e1fb7876244d30960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 290,
    "path": "GRWTSK/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e36852e85be7f236b5f31ad5f108600cda4fdd80d0351f0cabdadee4a4d18066",
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

Occurrence: `result:102916e5-0340-2f27-618e-cbe90d04df0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredOffAt_succ (A : ℝ) (U N : ℕ) (hUN : U < N) :
    centeredOffAt A (U + 1) N - centeredOffAt A U N =
      (moebius (U + 1) : ℝ) *
        (plainOffAt A (U + 1) N / (U + 1 : ℕ) -
          multiplesOffAt A (U + 1) N (U + 1)) -
      boundaryAt A U N (centeredBeta U) := by
  classical
  let S := Finset.Ioc (U + 1) N
  have hk : U + 1 ∉ S := by simp [S]
  have hr : offDiagonal S (sourceKernel A) (centeredBeta (U + 1)) =
      offDiagonal S (sourceKernel A) (fun n ↦ centeredBeta U n +
        (moebius (U + 1) : ℝ) *
          (1 / (U + 1 : ℕ) - if U + 1 ∣ n then 1 else 0)) := by
    apply offDiagonal_row_congr
    intro n hn
    exact centeredBeta_succ U n (by have := (Finset.mem_Ioc.mp hn).1; omega)
  have hc : offDiagonal S (sourceKernel A)
      (fun n ↦ 1 / (U + 1 : ℕ) - if U + 1 ∣ n then 1 else 0) =
      plainOffAt A (U + 1) N / (U + 1 : ℕ) -
        multiplesOffAt A (U + 1) N (U + 1) := by
    rw [offDiagonal_row_sub]
    have he : (fun _ : ℕ ↦ (1 : ℝ) / (U + 1 : ℕ)) =
        (fun _ ↦ ((1 : ℝ) / (U + 1 : ℕ)) * 1) := by funext n; ring
    rw [he, offDiagonal_row_smul]
    unfold plainOffAt multiplesOffAt S
    ring
  unfold centeredOffAt
  rw [hr, offDiagonal_row_add, offDiagonal_row_smul, hc,
    longInventory_succ U N hUN, offDiagonal_insert S (sourceKernel A) (centeredBeta U) _ hk]
  unfold boundaryAt S
  ring

/-- Deleting both axes changes the coefficient-one interaction by both boundary sectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fd7bb04b663cbc0473dc12e1fb7876244d30960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
