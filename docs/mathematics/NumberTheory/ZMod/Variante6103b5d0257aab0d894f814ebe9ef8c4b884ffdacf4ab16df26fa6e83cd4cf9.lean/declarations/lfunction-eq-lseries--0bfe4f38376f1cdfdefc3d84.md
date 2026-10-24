# LFunction_eq_LSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "877b3290807830b2260b8959a1fbfd32a04f196b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b06e8e32-cf66-7606-6237-1fe5047a8ae8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5c50d5a-ba2c-a070-7841-cd27e06192d2",
  "kind": "lemma",
  "lexical_name": "LFunction_eq_LSeries",
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
  "slug": "lfunction-eq-lseries--0bfe4f38376f1cdfdefc3d84",
  "source": {
    "blob": "877b3290807830b2260b8959a1fbfd32a04f196b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 95,
    "path": "GRWTSK/NumberTheory/ZMod/Variante6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bfe4f38376f1cdfdefc3d84f29a28c38fd1f8d74bba4d82edfac91604487c10",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZMod/Variante6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5c50d5a-ba2c-a070-7841-cd27e06192d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LFunction_eq_LSeries (Φ : ZMod N → ℂ) {s : ℂ} (hs : 1 < re s) :
    LFunction Φ s = LSeries (Φ ·) s := by
  rw [LFunction, LSeries, mul_sum, Nat.sumByResidueClasses (LSeriesSummable_of_one_lt_re Φ hs) N]
  congr 1 with j
  have : (j.val / N : ℝ) ∈ Set.Icc 0 1 := mem_Icc.mpr ⟨by positivity,
    (div_le_one (Nat.cast_pos.mpr <| NeZero.pos _)).mpr <| Nat.cast_le.mpr (val_lt j).le⟩
  rw [toAddCircle_apply, ← (hasSum_hurwitzZeta_of_one_lt_re this hs).tsum_eq, ← mul_assoc,
    ← tsum_mul_left]
  congr 1 with m
  -- The following manipulation is slightly delicate because `(x * y) ^ s = x ^ s * y ^ s` is
  -- false for general complex `x`, `y`, but it is true if `x` and `y` are non-negative reals, so
  -- we have to carefully juggle coercions `ℕ → ℝ → ℂ`.
  calc N ^ (-s) * Φ j * (1 / (m + (j.val / N : ℝ)) ^ s)
  _ = Φ j * (N ^ (-s) * (1 / (m + (j.val / N : ℝ)) ^ s)) := by
    rw [← mul_assoc, mul_comm _ (Φ _)]
  _ = Φ j * (1 / (N : ℝ) ^ s * (1 / ((j.val + N * m) / N : ℝ) ^ s)) := by
    simp only [cpow_neg, ← one_div, ofReal_div, ofReal_natCast, add_comm, add_div, ofReal_add,
      ofReal_mul, mul_div_cancel_left₀ (m : ℂ) (Nat.cast_ne_zero.mpr (NeZero.ne N))]
  _ = Φ j / ((N : ℝ) * ((j.val + N * m) / N : ℝ)) ^ s := by -- this is the delicate step!
    rw [one_div_mul_one_div, mul_one_div, mul_cpow_ofReal_nonneg] <;> positivity
  _ = Φ j / (N * (j.val + N * m) / N) ^ s := by
    simp only [ofReal_natCast, ofReal_div, ofReal_add, ofReal_mul, mul_div_assoc]
  _ = Φ j / (j.val + N * m) ^ s := by
    rw [mul_div_cancel_left₀ _ (Nat.cast_ne_zero.mpr (NeZero.ne N))]
  _ = Φ ↑(j.val + N * m) / (↑(j.val + N * m)) ^ s := by
    simp only [Nat.cast_add, Nat.cast_mul, natCast_zmod_val, natCast_self, zero_mul, add_zero]
  _ = LSeries.term (Φ ·) s (j.val + N * m) := by
    rw [LSeries.term_of_ne_zero' (ne_zero_of_one_lt_re hs)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZMod/Variante6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZMod/Variante6103b5d0257aab0d894f814ebe9ef8c4b884ffdacf4ab16df26fa6e83cd4cf9.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `877b3290807830b2260b8959a1fbfd32a04f196b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
