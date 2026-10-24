# binomial_sum_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cafa1d6-5a37-2345-279a-f98dd39773b0",
  "kind": "lemma",
  "lexical_name": "binomial_sum_eq",
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
  "slug": "binomial-sum-eq--c51bf06b69224f04731fffa0",
  "source": {
    "blob": "75df52912d641f12fc6ec94023ddbbf69f56672b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantc061ea38574fa1a1923ce8c243a11d594750bbc5691d190072bd5b0909eb4f74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c51bf06b69224f04731fffa0f23fcf7c256396d8c10169a65004a0da091ff059",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantc061ea38574fa1a1923ce8c243a11d594750bbc5691d190072bd5b0909eb4f74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cafa1d6-5a37-2345-279a-f98dd39773b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma binomial_sum_eq (h : n < m) :
    ∑ i ∈ range (n + 1), (n.choose i * (m - n) / ((m - i) * m.choose i) : ℚ) = 1 := by
  set f : ℕ → ℚ := fun i ↦ n.choose i * (m.choose i : ℚ)⁻¹ with hf
  suffices ∀ i ∈ range (n + 1), f i - f (i + 1) = n.choose i * (m - n) / ((m - i) * m.choose i) by
    rw [← sum_congr rfl this, sum_range_sub', hf]
    simp [choose_zero_right]
  intro i h₁
  rw [mem_range] at h₁
  have h₁ := le_of_lt_succ h₁
  have h₂ := h₁.trans_lt h
  have h₃ := h₂.le
  have hi₄ : (i + 1 : ℚ) ≠ 0 := i.cast_add_one_ne_zero
  have := congr_arg ((↑) : ℕ → ℚ) (choose_succ_right_eq m i)
  push_cast at this
  dsimp [f, hf]
  rw [(eq_mul_inv_iff_mul_eq₀ hi₄).mpr this]
  have := congr_arg ((↑) : ℕ → ℚ) (choose_succ_right_eq n i)
  push_cast at this
  rw [(eq_mul_inv_iff_mul_eq₀ hi₄).mpr this]
  have : (m - i : ℚ) ≠ 0 := sub_ne_zero_of_ne (cast_lt.mpr h₂).ne'
  have : (m.choose i : ℚ) ≠ 0 := cast_ne_zero.2 (choose_pos h₂.le).ne'
  simp [field, *]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantc061ea38574fa1a1923ce8c243a11d594750bbc5691d190072bd5b0909eb4f74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantc061ea38574fa1a1923ce8c243a11d594750bbc5691d190072bd5b0909eb4f74.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75df52912d641f12fc6ec94023ddbbf69f56672b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
