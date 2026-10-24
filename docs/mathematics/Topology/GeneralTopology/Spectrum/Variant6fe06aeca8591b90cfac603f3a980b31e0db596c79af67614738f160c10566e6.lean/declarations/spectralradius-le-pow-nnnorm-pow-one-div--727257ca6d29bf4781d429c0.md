# spectralRadius_le_pow_nnnorm_pow_one_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8047e6528b21f30cbf65849dca0d5a7a836fc76e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0d5bbac-50b8-a62d-a106-9d97773f214c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e79f88d7-0460-d78c-fab5-2ca833d8f599",
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
  "slug": "spectralradius-le-pow-nnnorm-pow-one-div--727257ca6d29bf4781d429c0",
  "source": {
    "blob": "8047e6528b21f30cbf65849dca0d5a7a836fc76e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:727257ca6d29bf4781d429c0f331cdbba8854d435d91c5d1db39c31de2ded274",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e79f88d7-0460-d78c-fab5-2ca833d8f599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–182.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8047e6528b21f30cbf65849dca0d5a7a836fc76e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
