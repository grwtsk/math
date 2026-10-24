# actual_record_holder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dbbe60c-02e7-1b54-530f-f90d5e4cd280",
  "kind": "theorem",
  "lexical_name": "actual_record_holder",
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
  "slug": "actual-record-holder--5f7f427091c62d586b5d3546",
  "source": {
    "blob": "c65e6ca79cb68d6336beccc6b0f111fce983cd4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 57,
    "path": "GRWTSK/Analysis/WeightedLpReserve/Variantf4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f7f427091c62d586b5d3546d28b8118e3bca4c182847107dafb1bb2470c6069",
  "verification": {
    "reference": "docs/verification/Analysis/WeightedLpReserve/Variantf4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dbbe60c-02e7-1b54-530f-f90d5e4cd280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_record_holder {N : ℕ} (hN : 1 ≤ N) (K : ℕ)
    {p : ℝ} (hp : 1 ≤ p) :
    primeRecordLevel N K ≤ (2 / Real.sqrt N) ^ (1 - p⁻¹) *
      (nativePEnergy N K p) ^ p⁻¹ := by
  have hw (j : ℕ) : 0 < cellClock (N + j) (N + j + 1 : ℕ) := cellClock_pos (by omega)
  have hρ (j : ℕ) : 0 ≤ primeRecordIncrement N j := CausalRecords.recordIncrement_nonneg _ _
  have h := finite_weighted_holder (Finset.range K)
    (fun j => cellClock (N + j) (N + j + 1 : ℕ)) (primeRecordIncrement N) hp hw hρ
  rw [record_sum_eq_level] at h
  have hsum0 : 0 ≤ ∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ) :=
    Finset.sum_nonneg (fun j _ => (hw j).le)
  have hwidth : (∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ)) ≤
      2 / Real.sqrt N := by
    rw [native_width_telescope]
    have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + K : ℕ) := by positivity
    rw [show (2 : ℝ) / Real.sqrt N = 2 * (1 / Real.sqrt N) by ring]
    linarith
  have hexponent : 0 ≤ 1 - p⁻¹ := by
    have hpinv : p⁻¹ ≤ 1 := inv_le_one_of_one_le₀ hp
    linarith
  change primeRecordLevel N K ≤
    (∑ i ∈ Finset.range K, cellClock (N + i) (N + i + 1 : ℕ)) ^ (1 - p⁻¹) *
      (nativePEnergy N K p) ^ p⁻¹ at h
  exact h.trans (mul_le_mul_of_nonneg_right
    (Real.rpow_le_rpow hsum0 hwidth hexponent)
    (Real.rpow_nonneg (native_p_energy_nonneg hN K p) p⁻¹))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/WeightedLpReserve/Variantf4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/WeightedLpReserve/Variantf4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c65e6ca79cb68d6336beccc6b0f111fce983cd4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
