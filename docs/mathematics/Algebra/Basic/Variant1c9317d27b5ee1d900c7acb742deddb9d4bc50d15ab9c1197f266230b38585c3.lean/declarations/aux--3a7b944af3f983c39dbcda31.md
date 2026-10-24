# aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c45472d-1fee-adcd-73a2-174a5d8deb56",
  "kind": "theorem",
  "lexical_name": "aux₁",
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
  "slug": "aux--3a7b944af3f983c39dbcda31",
  "source": {
    "blob": "c9cd5466562cd3e81ed18a7605a7d47563c95592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 390,
    "path": "GRWTSK/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a7b944af3f983c39dbcda3117fe25a4e01455813bb08d4f4060d1cd96d92fb9",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c45472d-1fee-adcd-73a2-174a5d8deb56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem aux₁ : 0 < fract ξ := by
  have hv₀ : (0 : ℝ) < v := cast_pos.mpr (zero_lt_two.trans_le hv)
  obtain ⟨hv₁, hv₂⟩ := aux₀ (zero_lt_two.trans_le hv)
  obtain ⟨hcop, _, h⟩ := h
  refine fract_pos.mpr fun hf => ?_
  rw [hf] at h
  have H : (2 * v - 1 : ℝ) < 1 := by
    refine (mul_lt_iff_lt_one_right hv₀).1 ((inv_lt_inv₀ hv₀ (mul_pos hv₁ hv₂)).1 (h.trans_le' ?_))
    have h' : (⌊ξ⌋ : ℝ) - u / v = (⌊ξ⌋ * v - u) / v := by field_simp
    rw [h', abs_div, abs_of_pos hv₀, ← one_div, div_le_div_iff_of_pos_right hv₀]
    norm_cast
    rw [← zero_add (1 : ℤ), add_one_le_iff, abs_pos, sub_ne_zero]
    rintro rfl
    cases isUnit_iff.mp (isCoprime_self.mp (IsCoprime.mul_left_iff.mp hcop).2) <;> omega
  norm_cast at H
  linarith only [hv, H]

-- An auxiliary lemma for the inductive step.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9cd5466562cd3e81ed18a7605a7d47563c95592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
