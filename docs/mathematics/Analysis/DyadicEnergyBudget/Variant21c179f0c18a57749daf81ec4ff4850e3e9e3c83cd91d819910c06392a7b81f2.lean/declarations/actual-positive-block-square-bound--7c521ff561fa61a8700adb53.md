# actual_positive_block_square_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00138494-8b1f-9308-274e-9b52a67eb36f",
  "kind": "theorem",
  "lexical_name": "actual_positive_block_square_bound",
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
  "slug": "actual-positive-block-square-bound--7c521ff561fa61a8700adb53",
  "source": {
    "blob": "4dfbf39e3adeee3f07c836458ebdb73ac8e2ee56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 36,
    "path": "GRWTSK/Analysis/DyadicEnergyBudget/Variant21c179f0c18a57749daf81ec4ff4850e3e9e3c83cd91d819910c06392a7b81f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c521ff561fa61a8700adb53d22b1040376691130439022220c6a7ef1ed10945",
  "verification": {
    "reference": "docs/verification/Analysis/DyadicEnergyBudget/Variant21c179f0c18a57749daf81ec4ff4850e3e9e3c83cd91d819910c06392a7b81f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00138494-8b1f-9308-274e-9b52a67eb36f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_positive_block_square_bound {N K : ℕ} (hN : 1 ≤ N) (hK : 0 < K) :
    (positiveDebt N K) ^ 2 ≤ width N K * positiveCellPEnergy N K 2 := by
  let w : ℕ → ℝ := fun j => cellClock (N + j) (N + j + 1 : ℕ)
  let B : ℕ → ℝ := fun j => max (storage N j) 0
  have hw : ∀ j, 0 < w j := fun j => cellClock_pos (by omega : 1 ≤ N + j)
  have h : rootEnergy (Finset.range K) w B (2 : ℝ) ≤ moment (Finset.range K) w B 2 :=
    positive_panel_root_le_moment (Finset.nonempty_range_iff.mpr hK.ne') hw
      (fun j => le_max_right (storage N j) 0) (by norm_num : (1 : ℝ) ≤ 2)
  rw [rootEnergy, Real.rpow_two, show (2 : ℝ) - 1 = 1 by norm_num, Real.rpow_one] at h
  have hm : mass (Finset.range K) w = width N K := native_width_telescope N K
  have he : moment (Finset.range K) w B 2 = positiveCellPEnergy N K 2 := by
    simp only [moment, positiveCellPEnergy, w, B, storage, Real.rpow_two, mul_comm]
  rw [hm, he] at h
  have h := (div_le_iff₀ (width_pos hN hK)).mp h
  simpa only [load, positiveDebt, w, B, mul_comm] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DyadicEnergyBudget/Variant21c179f0c18a57749daf81ec4ff4850e3e9e3c83cd91d819910c06392a7b81f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DyadicEnergyBudget/Variant21c179f0c18a57749daf81ec4ff4850e3e9e3c83cd91d819910c06392a7b81f2.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dfbf39e3adeee3f07c836458ebdb73ac8e2ee56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
