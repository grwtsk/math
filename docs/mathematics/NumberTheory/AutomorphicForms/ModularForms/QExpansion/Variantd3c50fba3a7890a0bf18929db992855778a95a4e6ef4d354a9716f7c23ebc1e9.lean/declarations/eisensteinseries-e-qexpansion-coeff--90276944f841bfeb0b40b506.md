# EisensteinSeries.E_qExpansion_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:addab525-c9ab-131f-7d33-ead8b71a0f63",
  "kind": "lemma",
  "lexical_name": "EisensteinSeries.E_qExpansion_coeff",
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
  "slug": "eisensteinseries-e-qexpansion-coeff--90276944f841bfeb0b40b506",
  "source": {
    "blob": "88cc488f2db65abe80b44588cd5be219a228526d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 332,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90276944f841bfeb0b40b50607e01b401a062b8a09598706aa675f4e1c07a337",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:addab525-c9ab-131f-7d33-ead8b71a0f63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma EisensteinSeries.E_qExpansion_coeff {k : ℕ} (hk : 3 ≤ k) (hk2 : Even k) (m : ℕ) :
    (qExpansion 1 (E hk)).coeff m =
    if m = 0 then 1 else -(2 * k / bernoulli k : ℂ) * (σ (k - 1) m) := by
  set β : ℂ := -(2 * k / bernoulli k : ℂ)
  set c : ℕ → ℂ := fun m ↦ if m = 0 then 1 else β * ↑(σ (k - 1) m)
  suffices ∀ τ : ℍ, HasSum (fun m ↦ c m • 𝕢 (1 : ℝ) τ ^ m) (E hk τ) from
    (ModularFormClass.qExpansion_coeff_unique one_pos one_mem_strictPeriods_SL this m).symm
  intro τ
  have hS : Summable fun n : ℕ ↦ (σ (k - 1) (n + 1) : ℂ) * cexp (2 * π * I * τ) ^ (n + 1) :=
    (summable_nat_add_iff 1).mpr (summable_sigma_mul_cexp_pow (by omega) τ)
  rw [← hasSum_nat_add_iff' 1]
  simp only [Nat.add_eq_zero_iff, one_ne_zero, and_false, ↓reduceIte, smul_eq_mul, Finset.range_one,
    ite_mul, one_mul, Finset.sum_singleton, pow_zero, c]
  have hval : E hk τ - 1 = β * ∑' n : ℕ, (σ (k - 1) (n + 1)) * cexp (2 * π * I * τ) ^ (n + 1) := by
    have := q_expansion_bernoulli hk hk2 τ
    simp_rw [zpow_natCast] at this
    rw [this, ← tsum_pnat_eq_tsum_succ (f := fun n ↦ (σ (k - 1) n : ℂ) * cexp (2 * π * I * τ) ^ n)]
    ring
  rw [hval]
  convert! (hS.mul_left β).hasSum using 1
  · grind [Periodic.qParam, ofReal_one, div_one]
  · rw [tsum_mul_left]

/-- The q-expansion constant coefficient of the normalised Eisenstein series `E k` is `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88cc488f2db65abe80b44588cd5be219a228526d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
