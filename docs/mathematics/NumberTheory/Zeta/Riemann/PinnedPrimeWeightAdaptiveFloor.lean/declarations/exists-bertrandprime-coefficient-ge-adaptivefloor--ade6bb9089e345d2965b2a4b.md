# exists_bertrandPrime_coefficient_ge_adaptiveFloor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31fea77a-63a4-b6ec-7e3a-21e3712e94b1",
  "kind": "theorem",
  "lexical_name": "exists_bertrandPrime_coefficient_ge_adaptiveFloor",
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
  "slug": "exists-bertrandprime-coefficient-ge-adaptivefloor--ade6bb9089e345d2965b2a4b",
  "source": {
    "blob": "dd5a2d44f860f38d56c58d3fc3ec5a15e5c27c79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 168,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ade6bb9089e345d2965b2a4bdddf80ec1a43431d9c96bfdcd0f954e38bc3d6c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31fea77a-63a4-b6ec-7e3a-21e3712e94b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_bertrandPrime_coefficient_ge_adaptiveFloor
    {X : ℕ} (hX : 0 < X) :
    ∃ p ∈ thetaPrimeWindow X,
      pinnedPrimeWeightAdaptiveBertrandFloor X ≤ coefficient p := by
  obtain ⟨p, hpPrime, hXp, hp2X⟩ :=
    Nat.exists_prime_lt_and_le_two_mul X (Nat.ne_of_gt hX)
  have hpWindow : p ∈ thetaPrimeWindow X :=
    prime_mem_thetaPrimeWindow hpPrime hXp hp2X
  refine ⟨p, hpWindow, ?_⟩
  rw [primeCoefficient_eq_log_div hpWindow]
  have hSuccP : X + 1 ≤ p := Nat.succ_le_iff.mpr hXp
  have hSuccPos : (0 : ℝ) < ((X + 1 : ℕ) : ℝ) := by
    positivity
  have hpPos : (0 : ℝ) < (p : ℝ) := by
    exact_mod_cast hpPrime.pos
  have hp2Xr : (p : ℝ) ≤ 2 * (X : ℝ) := by
    exact_mod_cast hp2X
  have hlogNonnegative :
      0 ≤ Real.log (((X + 1 : ℕ) : ℝ)) :=
    Real.log_nonneg (by
      exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (by omega : X + 1 ≠ 0)))
  have hlogMonotone :
      Real.log (((X + 1 : ℕ) : ℝ)) ≤
        Real.log (p : ℝ) :=
    Real.log_le_log hSuccPos (by exact_mod_cast hSuccP)
  unfold pinnedPrimeWeightAdaptiveBertrandFloor
  calc
    Real.log (((X + 1 : ℕ) : ℝ)) / (2 * (X : ℝ))
        ≤ Real.log (((X + 1 : ℕ) : ℝ)) / (p : ℝ) :=
      div_le_div_of_nonneg_left
        hlogNonnegative hpPos hp2Xr
    _ ≤ Real.log (p : ℝ) / (p : ℝ) :=
      div_le_div_of_nonneg_right hlogMonotone hpPos.le

/-- The complete pinned amplitude dominates the adaptive Bertrand floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd5a2d44f860f38d56c58d3fc3ec5a15e5c27c79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
