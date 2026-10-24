# bklnw_eq_3_11_deriv_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31d573af61253eda377326baebeb36929353a168",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86aeff60-c513-87b1-0b9a-b649f738dcfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dae0ce23-a1a5-1e0c-b1c0-468bf2f1e092",
  "kind": "lemma",
  "lexical_name": "bklnw_eq_3_11_deriv_nonpos",
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
  "slug": "bklnw-eq-3-11-deriv-nonpos--a28ca2f50f98759751fc5a7a",
  "source": {
    "blob": "31d573af61253eda377326baebeb36929353a168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1180,
    "line": 1160,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a28ca2f50f98759751fc5a7aa314a0b077ac076cddc2fd057d7ba16c519f190e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dae0ce23-a1a5-1e0c-b1c0-468bf2f1e092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1160–1180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma bklnw_eq_3_11_deriv_nonpos (k : ℕ) (hk : 1 ≤ k) (ℓ : ℕ) (hℓ : 1 ≤ ℓ) (b : ℝ) (hbk : b ≥ 2 * k) :
    ∀ y ∈ interior (Set.Ici b),
      deriv (fun y ↦ y ^ k * exp (- ((ℓ:ℝ) / (ℓ + 1)) * y)) y ≤ 0 := by
  intro y hy
  have h_has_deriv : HasDerivAt (fun y ↦ y ^ k * exp (- ((ℓ:ℝ) / (ℓ + 1)) * y))
      (((y ^ (k - 1) * exp (- ((ℓ:ℝ) / (ℓ + 1)) * y)) * (k - ((ℓ:ℝ) / (ℓ + 1)) * y))) y := by
    have h1 := hasDerivAt_pow k y
    have h3 := ((hasDerivAt_id' y).const_mul (- ((ℓ:ℝ) / (ℓ + 1)))).exp
    convert h1.mul h3 using 1
    have h_pow_sub : y * y ^ (k - 1) = y ^ k := mul_pow_sub_one (by omega) y
    rw [← h_pow_sub]
    ring_nf
  have h_factor : (k : ℝ) - ((ℓ:ℝ) / (ℓ + 1)) * y ≤ 0 := by
    have hy_gt : b < y := by simpa using hy
    have h_mul : (1 / 2) * y ≤ ((ℓ : ℝ) / (ℓ + 1)) * y :=
      mul_le_mul_of_nonneg_right (by rw [le_div_iff₀ (by positivity)]; linarith [show 1 ≤ (ℓ:ℝ) by exact_mod_cast hℓ]) (by linarith)
    linarith
  have h_y_pow : 0 ≤ y ^ (k - 1) := pow_nonneg (by linarith [show b < y by simpa using hy]) (k - 1)
  rw [h_has_deriv.deriv]
  exact mul_nonpos_of_nonneg_of_nonpos (mul_nonneg h_y_pow (exp_pos _).le) h_factor

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean#L1160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d573af61253eda377326baebeb36929353a168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
