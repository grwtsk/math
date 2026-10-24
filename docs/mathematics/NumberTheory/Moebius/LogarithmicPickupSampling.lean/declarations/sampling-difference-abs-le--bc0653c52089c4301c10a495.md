# sampling_difference_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:636bd31a-8fe5-2ae1-2e92-2448ffcddf83",
  "kind": "theorem",
  "lexical_name": "sampling_difference_abs_le",
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
  "slug": "sampling-difference-abs-le--bc0653c52089c4301c10a495",
  "source": {
    "blob": "1eb0558ffdaf4ae826fea883a8c60a3e3fefdb5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 113,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicPickupSampling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc0653c52089c4301c10a4952af9a961d545b46ee56c7babc5dc645edc953a1d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicPickupSampling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:636bd31a-8fe5-2ae1-2e92-2448ffcddf83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampling_difference_abs_le {u : ℝ} (hu : 0 ≤ u) :
    |wholePickup u - sampledPickup u| ≤ Real.exp (-u / 2) := by
  let N : ℕ := ⌊Real.exp u⌋₊
  have hN : 1 ≤ N := floor_exp_ge_one hu
  have hNpos : (0 : ℝ) < N := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  have hNle : (N : ℝ) ≤ Real.exp u := Nat.floor_le (Real.exp_pos u).le
  have hlt : Real.exp u < (N : ℝ) + 1 := Nat.lt_floor_add_one _
  have hwidth : (Real.sqrt (Real.exp u)) ^ 2 - (Real.sqrt (N : ℝ)) ^ 2 ≤ 1 := by
    rw [Real.sq_sqrt (Real.exp_pos u).le, Real.sq_sqrt (Nat.cast_nonneg N)]
    linarith
  have hm : |mertensPrefix (N : ℝ)| ≤ (Real.sqrt (N : ℝ)) ^ 2 := by
    rw [Real.sq_sqrt (Nat.cast_nonneg N)]
    exact mertensPrefix_abs_le (Nat.cast_nonneg N)
  rw [sampling_difference hu]
  simp only [diagonal_negative_half_sqrt]
  exact cell_drift_bound (Real.sqrt_pos.mpr (Real.exp_pos u))
    (Real.sqrt_pos.mpr hNpos) (Real.sqrt_le_sqrt hNle) hwidth hm

/-- The density bound holds for any real damping; integrability needs sigma > -1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicPickupSampling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicPickupSampling.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eb0558ffdaf4ae826fea883a8c60a3e3fefdb5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
