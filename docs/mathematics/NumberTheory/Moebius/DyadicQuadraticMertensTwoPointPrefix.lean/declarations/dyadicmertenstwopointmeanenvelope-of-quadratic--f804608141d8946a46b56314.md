# dyadicMertensTwoPointMeanEnvelope_of_quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1d61b21-c707-9cd3-8ef0-0123d02823e1",
  "kind": "theorem",
  "lexical_name": "dyadicMertensTwoPointMeanEnvelope_of_quadratic",
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
  "slug": "dyadicmertenstwopointmeanenvelope-of-quadratic--f804608141d8946a46b56314",
  "source": {
    "blob": "f34bb10d318c8dd2a2aebf3bfa4a0b07dde34f0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f804608141d8946a46b56314173fa51f61936895091c649d4d8a74f7bea53313",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1d61b21-c707-9cd3-8ef0-0123d02823e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicMertensTwoPointMeanEnvelope_of_quadratic
    {j : ℕ} {B : ℝ}
    (henv : DyadicMertensTwoPointQuadraticEnvelope j B) :
    DyadicMertensTwoPointMeanEnvelope j B := by
  let Y : ℕ := 2 ^ (j + 1)
  obtain ⟨hB, U, hshift, hquad⟩ := henv
  have hY : 1 ≤ Y := Nat.one_le_pow (j + 1) 2 (by norm_num)
  have hcard : (Finset.Ico 1 Y).card = Y - 1 := by
    rw [Nat.card_Ico]
  have hU : ∀ h ∈ Finset.Ico 1 Y, 0 ≤ U h := by
    intro h hh
    exact (hshift h (Finset.mem_Ico.mp hh).1
      (Finset.mem_Ico.mp hh).2).1
  have hsum_nonneg :
      0 ≤ ∑ h ∈ Finset.Ico 1 Y, U h :=
    Finset.sum_nonneg hU
  have hsumsq_nonneg :
      0 ≤ ∑ h ∈ Finset.Ico 1 Y, (U h) ^ 2 :=
    Finset.sum_nonneg fun h _ => sq_nonneg (U h)
  have hcard_le :
      (((Finset.Ico 1 Y).card : ℕ) : ℝ) ≤ (Y : ℝ) := by
    rw [hcard]
    exact_mod_cast Nat.sub_le Y 1
  have hcs :
      (∑ h ∈ Finset.Ico 1 Y, U h) ^ 2 ≤
        (((Finset.Ico 1 Y).card : ℕ) : ℝ) *
          ∑ h ∈ Finset.Ico 1 Y, (U h) ^ 2 := by
    simpa using
      (sq_sum_le_card_mul_sum_sq
        (s := Finset.Ico 1 Y) (f := U))
  have hquadY :
      (∑ h ∈ Finset.Ico 1 Y, (U h) ^ 2) ≤
        B ^ 2 * (Y : ℝ) := by
    simpa [Y] using hquad
  have hsquare :
      (∑ h ∈ Finset.Ico 1 Y, U h) ^ 2 ≤
        (B * (Y : ℝ)) ^ 2 := by
    calc
      (∑ h ∈ Finset.Ico 1 Y, U h) ^ 2 ≤
          (((Finset.Ico 1 Y).card : ℕ) : ℝ) *
            ∑ h ∈ Finset.Ico 1 Y, (U h) ^ 2 := hcs
      _ ≤ (Y : ℝ) *
            ∑ h ∈ Finset.Ico 1 Y, (U h) ^ 2 := by
        exact mul_le_mul_of_nonneg_right hcard_le hsumsq_nonneg
      _ ≤ (Y : ℝ) * (B ^ 2 * (Y : ℝ)) := by
        exact mul_le_mul_of_nonneg_left hquadY (Nat.cast_nonneg Y)
      _ = (B * (Y : ℝ)) ^ 2 := by ring
  have hBY : 0 ≤ B * (Y : ℝ) :=
    mul_nonneg hB (Nat.cast_nonneg Y)
  have hmean :
      (∑ h ∈ Finset.Ico 1 Y, U h) ≤ B * (Y : ℝ) :=
    (sq_le_sq₀ hsum_nonneg hBY).mp hsquare
  refine ⟨hB, U, ?_, ?_⟩
  · intro h hh hhY
    exact hshift h hh hhY
  · simpa [Y] using hmean

/-- The quadratic mean pays the complete signed packet through the inherited
mean-envelope estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f34bb10d318c8dd2a2aebf3bfa4a0b07dde34f0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
