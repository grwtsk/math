# spectralRadius_le_pow_nnnorm_pow_one_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a97a033-7f5c-5134-8df7-71c61b5ffd7e",
  "kind": "theorem",
  "lexical_name": "spectralRadius_le_pow_nnnorm_pow_one_div",
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
  "slug": "spectralradius-le-pow-nnnorm-pow-one-div--3d6cdcbfd9b6158153bf2afc",
  "source": {
    "blob": "34a2695c0503dfea021f3abf7c0114c663196023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 171,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d6cdcbfd9b6158153bf2afc6f18b75f2a8a3c1bb8e65a2361edb4e35b147ea3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a97a033-7f5c-5134-8df7-71c61b5ffd7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralRadius_le_pow_nnnorm_pow_one_div (a : A) (n : ℕ) :
    spectralRadius 𝕜 a ≤ (‖a ^ (n + 1)‖₊ : ℝ≥0∞) ^ (1 / (n + 1) : ℝ) *
      (‖(1 : A)‖₊ : ℝ≥0∞) ^ (1 / (n + 1) : ℝ) := by
  refine' iSup₂_le fun k hk => _
  -- apply easy direction of the spectral mapping theorem for polynomials
  have pow_mem : k ^ (n + 1) ∈ σ (a ^ (n + 1)) := by
    simpa only [one_mul, Algebra.algebraMap_eq_smul_one, one_smul, aeval_monomial, one_mul,
      eval_monomial] using subset_polynomial_aeval a (@monomial 𝕜 _ (n + 1) (1 : 𝕜)) ⟨k, hk, rfl⟩
  -- power of the norm is bounded by norm of the power
  have nnnorm_pow_le : (↑(‖k‖₊ ^ (n + 1)) : ℝ≥0∞) ≤ ‖a ^ (n + 1)‖₊ * ‖(1 : A)‖₊ := by
    simpa only [Real.toNNReal_mul (norm_nonneg _), norm_toNNReal, nnnorm_pow k (n + 1),
      ENNReal.coe_mul] using coe_mono (Real.toNNReal_mono (norm_le_norm_mul_of_mem pow_mem))
  -- take (n + 1)ᵗʰ roots and clean up the left-hand side
  have hn : 0 < ((n + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.succ_pos'
  convert monotone_rpow_of_nonneg (one_div_pos.mpr hn).le nnnorm_pow_le using 1
  all_goals dsimp
  erw [coe_pow, ← rpow_nat_cast, ← rpow_mul, mul_one_div_cancel hn.ne', rpow_one]
  rw [Nat.cast_succ, ENNReal.coe_mul_rpow]
#align spectrum.spectral_radius_le_pow_nnnorm_pow_one_div spectrum.spectralRadius_le_pow_nnnorm_pow_one_div

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a2695c0503dfea021f3abf7c0114c663196023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
