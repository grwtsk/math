# cardinal_eq_of_mem_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fd055c8-3f4e-9e49-12e0-b6958983b721",
  "kind": "lemma",
  "lexical_name": "cardinal_eq_of_mem_nhds_zero",
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
  "slug": "cardinal-eq-of-mem-nhds-zero--df390ad4f93f2d1dbe16d1a3",
  "source": {
    "blob": "6cdc33df79ecdc692115a2fe89b8d5c68b04758c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df390ad4f93f2d1dbe16d1a3ad69caf40d5cb37436bf0e2b679bee5427aebd37",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fd055c8-3f4e-9e49-12e0-b6958983b721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cardinal_eq_of_mem_nhds_zero
    {E : Type*} (𝕜 : Type*) [NontriviallyNormedField 𝕜] [Zero E] [MulActionWithZero 𝕜 E]
    [TopologicalSpace E] [ContinuousSMul 𝕜 E] {s : Set E} (hs : s ∈ 𝓝 (0 : E)) : #s = #E := by
  /- As `s` is a neighborhood of `0`, the space is covered by the rescaled sets `c^n • s`,
  where `c` is any element of `𝕜` with norm `> 1`. All these sets are in bijection and have
  therefore the same cardinality. The conclusion follows. -/
  obtain ⟨c, hc⟩ : ∃ x : 𝕜 , 1 < ‖x‖ := NormedField.exists_lt_norm 𝕜 1
  have cn_ne : ∀ n, c^n ≠ 0 := by
    intro n
    apply pow_ne_zero
    rintro rfl
    simp only [norm_zero] at hc
    exact lt_irrefl _ (hc.trans zero_lt_one)
  have A : ∀ (x : E), ∀ᶠ n in (atTop : Filter ℕ), x ∈ c^n • s := by
    intro x
    have : Tendsto (fun n ↦ (c^n) ⁻¹ • x) atTop (𝓝 ((0 : 𝕜) • x)) := by
      have : Tendsto (fun n ↦ (c^n)⁻¹) atTop (𝓝 0) := by
        simp_rw [← inv_pow]
        apply tendsto_pow_atTop_nhds_zero_of_norm_lt_one
        rw [norm_inv]
        exact inv_lt_one_of_one_lt₀ hc
      exact Tendsto.smul_const this x
    rw [zero_smul] at this
    filter_upwards [this hs] with n (hn : (c ^ n)⁻¹ • x ∈ s)
    exact (mem_smul_set_iff_inv_smul_mem₀ (cn_ne n) _ _).2 hn
  have B : ∀ n, #(c^n • s :) = #s := by
    intro n
    have : (c^n • s :) ≃ s :=
    { toFun := fun x ↦ ⟨(c^n)⁻¹ • x.1, (mem_smul_set_iff_inv_smul_mem₀ (cn_ne n) _ _).1 x.2⟩
      invFun := fun x ↦ ⟨(c^n) • x.1, smul_mem_smul_set x.2⟩
      left_inv := fun x ↦ by simp [smul_smul, mul_inv_cancel₀ (cn_ne n)]
      right_inv := fun x ↦ by simp [smul_smul, inv_mul_cancel₀ (cn_ne n)] }
    exact Cardinal.mk_congr this
  apply (Cardinal.mk_of_countable_eventually_mem A B).symm

/-- In a topological vector space over a nontrivially normed field, any neighborhood of a point has
the same cardinality as the whole space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cdc33df79ecdc692115a2fe89b8d5c68b04758c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
