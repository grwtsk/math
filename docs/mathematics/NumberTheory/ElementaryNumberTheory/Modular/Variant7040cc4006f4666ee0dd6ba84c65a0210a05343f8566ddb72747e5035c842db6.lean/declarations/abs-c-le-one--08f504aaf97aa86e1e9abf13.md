# abs_c_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3d7a1c1cadb2ffa54e03513d5308040ea6b9b84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 478,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2c1461d-4b00-dc64-3e2c-9415a74a3859",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37bad936-6d95-f4a5-137f-e52f704a2a31",
  "kind": "theorem",
  "lexical_name": "abs_c_le_one",
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
  "slug": "abs-c-le-one--08f504aaf97aa86e1e9abf13",
  "source": {
    "blob": "f3d7a1c1cadb2ffa54e03513d5308040ea6b9b84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 478,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variant7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08f504aaf97aa86e1e9abf13f4ed6617b096042ae784faf2a81a9423c40ab009",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Modular/Variant7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37bad936-6d95-f4a5-137f-e52f704a2a31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_c_le_one (hz : z ∈ 𝒟ᵒ) (hg : g • z ∈ 𝒟ᵒ) : |(↑ₘg) 1 0| ≤ 1 := by
  let c' : ℤ := (↑ₘg) 1 0
  let c : ℝ := (c' : ℝ)
  suffices 3 * c ^ 2 < 4 by
    rw [← Int.cast_pow, ← Int.cast_three, ← Int.cast_four, ← Int.cast_mul, Int.cast_lt] at this
    replace this : c' ^ 2 ≤ 1 ^ 2; · linarith
    rwa [sq_le_sq, abs_one] at this
  suffices c ≠ 0 → 9 * c ^ 4 < 16 by
    rcases eq_or_ne c 0 with (hc | hc)
    · rw [hc]; norm_num
    · refine' (abs_lt_of_sq_lt_sq' _ (by norm_num)).2
      specialize this hc
      linarith
  intro hc
  replace hc : 0 < c ^ 4;
  · change 0 < c ^ (2 * 2); rw [pow_mul]; apply sq_pos_of_pos (sq_pos_of_ne_zero _ hc)
  have h₁ :=
    mul_lt_mul_of_pos_right
      (mul_lt_mul'' (three_lt_four_mul_im_sq_of_mem_fdo hg) (three_lt_four_mul_im_sq_of_mem_fdo hz)
        (by linarith) (by linarith))
      hc
  have h₂ : (c * z.im) ^ 4 / normSq (denom (↑g) z) ^ 2 ≤ 1 :=
    div_le_one_of_le
      (pow_four_le_pow_two_of_pow_two_le (UpperHalfPlane.c_mul_im_sq_le_normSq_denom z g))
      (sq_nonneg _)
  let nsq := normSq (denom g z)
  calc
    9 * c ^ 4 < c ^ 4 * z.im ^ 2 * (g • z).im ^ 2 * 16 := by linarith
    _ = c ^ 4 * z.im ^ 4 / nsq ^ 2 * 16 := by
      rw [SpecialLinearGroup.im_smul_eq_div_normSq, div_pow]
      ring
    _ ≤ 16 := by rw [← mul_pow]; linarith
#align modular_group.abs_c_le_one ModularGroup.abs_c_le_one

/-- An auxiliary result en route to `ModularGroup.eq_smul_self_of_mem_fdo_mem_fdo`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Modular/Variant7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variant7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3d7a1c1cadb2ffa54e03513d5308040ea6b9b84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
