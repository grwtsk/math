# pickup_poly_of_compensated_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f872677e-727a-29eb-b7ba-775d8d5d72d6",
  "kind": "theorem",
  "lexical_name": "pickup_poly_of_compensated_step",
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
  "slug": "pickup-poly-of-compensated-step--3925701cd3ad568d42949b81",
  "source": {
    "blob": "e300e722b9da7add5e68de24a3f47e5817e8412f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 68,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFilterGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3925701cd3ad568d42949b8195dfdc96ea072b52ac3e8d008427b45d22ab1e5a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeFilterGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f872677e-727a-29eb-b7ba-775d8d5d72d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pickup_poly_of_compensated_step {C q : ℝ} (hC : 0 ≤ C) (hq : 0 ≤ q)
    (hstep : ∀ P : Finset ℕ, (∀ p ∈ P, p.Prime) → ∀ p : ℕ, p.Prime → p ∉ P →
      ∀ T : ℝ, 0 ≤ T →
      noteEnergy (primeNoteCascade (insert p P)) T + (1 + T)^q ≤
        exp (C / p) * (noteEnergy (primeNoteCascade P) T + (1 + T)^q)) :
    PickupEnergyPoly := by
  let K := log 4 * ((log 2)⁻¹ + |log (log 2)|)
  let L := log 4
  have hL : 0 ≤ L := log_nonneg (by norm_num)
  refine ⟨5 * exp (C * K), C * L + max 1 q, by positivity,
    add_nonneg (mul_nonneg hC hL) (le_trans hq (le_max_right _ _)), ?_⟩
  intro T hT
  have hb : 1 ≤ 1 + T := by linarith
  have hbpos : 0 < 1 + T := by linarith
  have hP : ∀ p ∈ pickupPrimes T, p.Prime := fun p hp ↦ (Finset.mem_filter.mp hp).2
  have hc := cascade_compensated_bound hC hT (fun P hP p hp hn ↦ hstep P hP p hp hn T hT) hP
  have hm : exp (C * harmonicPrimeMass (pickupPrimes T)) ≤
      exp (C * K) * (1 + T)^(C * L) := by
    calc
      _ ≤ exp (C * (K + L * log (1 + T))) :=
        exp_le_exp.mpr (mul_le_mul_of_nonneg_left (harmonicPrimeMass_log_bound hT) hC)
      _ = _ := by rw [Real.rpow_def_of_pos hbpos, ← exp_add]; congr 1; dsimp [K, L]; ring
  have hp1 : 1 + T ≤ (1 + T)^(max 1 q) := by
    simpa only [Real.rpow_one] using Real.rpow_le_rpow_of_exponent_le hb (le_max_left 1 q)
  have hpq := Real.rpow_le_rpow_of_exponent_le hb (le_max_right 1 q)
  have hbase : 4 * T + (1 + T)^q ≤ 5 * (1 + T)^(max 1 q) := by linarith
  rw [pickupEnergy_eq_cascade_energy hT]
  calc
    _ ≤ noteEnergy (primeNoteCascade (pickupPrimes T)) T + (1 + T)^q :=
      le_add_of_nonneg_right (Real.rpow_nonneg hbpos.le _)
    _ ≤ _ := hc
    _ ≤ (exp (C * K) * (1 + T)^(C * L)) * (5 * (1 + T)^(max 1 q)) :=
      mul_le_mul hm hbase (by positivity) (by positivity)
    _ = _ := by rw [Real.rpow_add hbpos]; ring

/-- Exact scale induction: the only source-specific premise is the open block bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFilterGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFilterGrowth.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e300e722b9da7add5e68de24a3f47e5817e8412f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
