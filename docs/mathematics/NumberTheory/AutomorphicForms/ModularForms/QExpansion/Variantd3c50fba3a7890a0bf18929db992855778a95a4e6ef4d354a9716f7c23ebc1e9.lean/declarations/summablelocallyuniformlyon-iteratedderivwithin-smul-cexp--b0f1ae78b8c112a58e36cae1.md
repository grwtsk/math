# summableLocallyUniformlyOn_iteratedDerivWithin_smul_cexp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea3cc339-6250-b475-4a38-1da00a924150",
  "kind": "theorem",
  "lexical_name": "summableLocallyUniformlyOn_iteratedDerivWithin_smul_cexp",
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
  "slug": "summablelocallyuniformlyon-iteratedderivwithin-smul-cexp--b0f1ae78b8c112a58e36cae1",
  "source": {
    "blob": "88cc488f2db65abe80b44588cd5be219a228526d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0f1ae78b8c112a58e36cae1df7a0745de66ab43e89f79ff677892ee1f8ada5c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea3cc339-6250-b475-4a38-1da00a924150`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summableLocallyUniformlyOn_iteratedDerivWithin_smul_cexp (k l : ℕ) {f : ℕ → ℂ} {p : ℝ}
    (hp : 0 < p) (hf : f =O[atTop] (fun n ↦ ((n ^ l) : ℝ))) :
    SummableLocallyUniformlyOn (fun n ↦ (f n) •
      iteratedDerivWithin k (fun z ↦ cexp (2 * π * I * z / p) ^ n) ℍₒ) ℍₒ := by
  apply SummableLocallyUniformlyOn_of_locally_bounded isOpen_upperHalfPlaneSet
  intro K hK hKc
  have : CompactSpace K := isCompact_univ_iff.mp (isCompact_iff_isCompact_univ.mp hKc)
  let c : ContinuousMap K ℂ := ⟨fun r : K ↦ Complex.exp (2 * π * I * r / p), by fun_prop⟩
  let r : ℝ := ‖mkOfCompact c‖
  have hr : ‖r‖ < 1 := by
    simp only [norm_norm, r, norm_lt_iff_of_compact Real.zero_lt_one, mkOfCompact_apply,
      ContinuousMap.coe_mk, c]
    intro x
    have h1 : cexp (2 * π * I * (x / p)) = cexp (2 * π * I * x / p) := by
      ring_nf
    simpa using h1 ▸ norm_exp_two_pi_I_lt_one ⟨((x : ℂ) / p), by aesop⟩
  refine ⟨fun n ↦ ‖f n‖ * (2 * π * n / |p|) ^ k * |r| ^ n, by
    simpa using (summable_norm_mul_geometric_of_norm_lt_one' hr
      (Asymptotics.isBigO_norm_left.mpr (aux_IsBigO_mul k l p hf))), fun n z hz ↦ ?_⟩
  have h0 := pow_le_pow_left₀ (norm_nonneg _) (norm_coe_le_norm (mkOfCompact c) ⟨z, hz⟩) n
  simp only [norm_mkOfCompact, mkOfCompact_apply, ContinuousMap.coe_mk, ← exp_nsmul', Pi.smul_apply,
    iteratedDerivWithin_cexp_aux k n p isOpen_upperHalfPlaneSet (hK hz), smul_eq_mul,
    norm_mul, norm_pow, Complex.norm_div, norm_ofNat, norm_real, Real.norm_eq_abs, norm_I, mul_one,
    norm_natCast, abs_norm, ge_iff_le, Real.abs_pi, r, c] at *
  rw [← mul_assoc]
  gcongr
  convert! h0
  rw [← norm_pow, ← exp_nsmul']

/-- This is a version of `summableLocallyUniformlyOn_iteratedDerivWithin_smul_cexp` for level one
and q-expansion coefficients all `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88cc488f2db65abe80b44588cd5be219a228526d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
