# isLittleO_pow_const_const_pow_of_one_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:606081ff-c244-1a99-9b8c-69d05e426bf8",
  "kind": "theorem",
  "lexical_name": "isLittleO_pow_const_const_pow_of_one_lt",
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
  "slug": "islittleo-pow-const-const-pow-of-one-lt--6d94d0fb2122ed4aa0aab2a6",
  "source": {
    "blob": "37c38d7968afc5593b67c2ae4a6282dd9d370f42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 195,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantc743dc2ddf74727791fc3c36eeb3ba26ae5c864329f69ee1fd4629391e7b403c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d94d0fb2122ed4aa0aab2a6a6c9eaef643b284d52e85819f6a39e4c9d708182",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variantc743dc2ddf74727791fc3c36eeb3ba26ae5c864329f69ee1fd4629391e7b403c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:606081ff-c244-1a99-9b8c-69d05e426bf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_pow_const_const_pow_of_one_lt {R : Type*} [NormedRing R] (k : ℕ) {r : ℝ}
    (hr : 1 < r) : (fun n ↦ (n : R) ^ k : ℕ → R) =o[atTop] fun n ↦ r ^ n := by
  have : Tendsto (fun x : ℝ ↦ x ^ k) (𝓝[>] 1) (𝓝 1) :=
    ((continuous_id.pow k).tendsto' (1 : ℝ) 1 (one_pow _)).mono_left inf_le_left
  obtain ⟨r' : ℝ, hr' : r' ^ k < r, h1 : 1 < r'⟩ :=
    ((this.eventually (gt_mem_nhds hr)).and self_mem_nhdsWithin).exists
  have h0 : 0 ≤ r' := zero_le_one.trans h1.le
  suffices : (fun n ↦ (n : R) ^ k : ℕ → R) =O[atTop] fun n : ℕ ↦ (r' ^ k) ^ n
  exact this.trans_isLittleO (isLittleO_pow_pow_of_lt_left (pow_nonneg h0 _) hr')
  conv in (r' ^ _) ^ _ => rw [← pow_mul, mul_comm, pow_mul]
  suffices : ∀ n : ℕ, ‖(n : R)‖ ≤ (r' - 1)⁻¹ * ‖(1 : R)‖ * ‖r' ^ n‖
  exact (isBigO_of_le' _ this).pow _
  intro n
  rw [mul_right_comm]
  refine' n.norm_cast_le.trans (mul_le_mul_of_nonneg_right _ (norm_nonneg _))
  simpa [_root_.div_eq_inv_mul, Real.norm_eq_abs, abs_of_nonneg h0] using n.cast_le_pow_div_sub h1
#align is_o_pow_const_const_pow_of_one_lt isLittleO_pow_const_const_pow_of_one_lt

/-- For a real `r > 1` we have `n = o(r ^ n)` as `n → ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variantc743dc2ddf74727791fc3c36eeb3ba26ae5c864329f69ee1fd4629391e7b403c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantc743dc2ddf74727791fc3c36eeb3ba26ae5c864329f69ee1fd4629391e7b403c.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37c38d7968afc5593b67c2ae4a6282dd9d370f42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
