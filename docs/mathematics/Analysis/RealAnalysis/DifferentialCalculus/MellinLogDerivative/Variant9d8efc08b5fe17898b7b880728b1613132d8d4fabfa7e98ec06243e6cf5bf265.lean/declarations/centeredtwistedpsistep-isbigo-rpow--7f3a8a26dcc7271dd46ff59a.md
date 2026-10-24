# centeredTwistedPsiStep_isBigO_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "290f5ffc4bea1385f961f99cf14b89fcba315c8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90598e2d-dacd-500d-1a9d-0ce6f0ecb3bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b87ae5ca-3f6e-ad27-c109-3865c5605a92",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiStep_isBigO_rpow",
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
  "slug": "centeredtwistedpsistep-isbigo-rpow--7f3a8a26dcc7271dd46ff59a",
  "source": {
    "blob": "290f5ffc4bea1385f961f99cf14b89fcba315c8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f3a8a26dcc7271dd46ff59a7a01de9a56a82c51e26b6e59795610c0daf4e1da",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b87ae5ca-3f6e-ad27-c109-3865c5605a92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsiStep_isBigO_rpow
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ)
    {r : ℝ} (hr : (1 / 2 : ℝ) < r) :
    centeredTwistedPsiStep χ =O[atTop]
      (fun t : ℝ ↦ Real.rpow t r) := by
  obtain ⟨C, hC, hDiscrete⟩ :=
    hBound (r - 1 / 2) (sub_pos.mpr hr)
  have hr0 : 0 ≤ r := by linarith
  refine IsBigO.of_bound (C + 1) ?_
  filter_upwards [eventually_ge_atTop (2 : ℝ)] with t ht
  have ht1 : (1 : ℝ) ≤ t := by linarith
  have ht0 : (0 : ℝ) ≤ t := by linarith
  have hfloor2 : 2 ≤ ⌊t⌋₊ := Nat.le_floor ht
  have hfloor_nonneg : (0 : ℝ) ≤ (⌊t⌋₊ : ℝ) := Nat.cast_nonneg _
  have hfloor_le : (⌊t⌋₊ : ℝ) ≤ t := Nat.floor_le (by linarith)
  have hfloor_lt : t < (⌊t⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one t
  have herror_abs : |(⌊t⌋₊ : ℝ) - t| ≤ 1 := by
    rw [abs_of_nonpos (sub_nonpos.mpr hfloor_le)]
    linarith
  have hpow_mono : Real.rpow (⌊t⌋₊ : ℝ) r ≤ Real.rpow t r :=
    Real.rpow_le_rpow hfloor_nonneg hfloor_le hr0
  have hone_le_pow : (1 : ℝ) ≤ Real.rpow t r := by
    simpa using Real.one_le_rpow ht1 hr0
  rw [centeredTwistedPsiStep_eq_floor_add_error χ ht1]
  calc
    ‖centeredTwistedPsi χ ⌊t⌋₊ +
        dirichletPrincipalIndicator χ * ((⌊t⌋₊ : ℝ) - t)‖
        ≤ ‖centeredTwistedPsi χ ⌊t⌋₊‖ +
            ‖dirichletPrincipalIndicator χ * ((⌊t⌋₊ : ℝ) - t)‖ :=
      norm_add_le _ _
    _ ≤ C * Real.rpow (⌊t⌋₊ : ℝ) r + 1 := by
      gcongr
      · have h := hDiscrete ⌊t⌋₊ hfloor2
        rw [show (1 / 2 : ℝ) + (r - 1 / 2) = r by ring] at h
        exact h
      · rw [norm_mul]
        have herror_norm :
            ‖(((⌊t⌋₊ : ℝ) : ℂ) - (t : ℂ))‖ ≤ 1 := by
          simpa only [← Complex.ofReal_sub, Complex.norm_real,
            Real.norm_eq_abs] using herror_abs
        exact mul_le_one₀ (norm_dirichletPrincipalIndicator_le_one χ)
          (norm_nonneg _) herror_norm
    _ ≤ C * Real.rpow t r + Real.rpow t r :=
      add_le_add (mul_le_mul_of_nonneg_left hpow_mono hC) hone_le_pow
    _ = (C + 1) * ‖Real.rpow t r‖ := by
      rw [Real.norm_eq_abs]
      have hpownonneg : 0 ≤ Real.rpow t r := Real.rpow_nonneg ht0 r
      rw [abs_of_nonneg hpownonneg]
      ring

/-- The continuously centered step function is locally integrable on the
positive real axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290f5ffc4bea1385f961f99cf14b89fcba315c8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
