# step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ef9f9aa0afb7e955491159007a3c85d0622bd48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:561e6399-4b18-0cf9-66f6-d29422b5610f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:adb04d14-100b-1e15-5d39-cf01f475d954",
  "kind": "theorem",
  "lexical_name": "step",
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
  "slug": "step--8d325bd5b25ac1fcca4f5f0b",
  "source": {
    "blob": "2ef9f9aa0afb7e955491159007a3c85d0622bd48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d325bd5b25ac1fcca4f5f0b5a9d310843e8c51f63c6f68471055260b70eafc2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adb04d14-100b-1e15-5d39-cf01f475d954`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem step (nonneg : ∀ x : f.domain, (x : E) ∈ s → 0 ≤ f x)
    (dense : ∀ y, ∃ x : f.domain, (x : E) + y ∈ s) (hdom : f.domain ≠ ⊤) :
    ∃ g, f < g ∧ ∀ x : g.domain, (x : E) ∈ s → 0 ≤ g x := by
  obtain ⟨y, -, hy⟩ : ∃ y ∈ ⊤, y ∉ f.domain := SetLike.exists_of_lt (lt_top_iff_ne_top.2 hdom)
  obtain ⟨c, le_c, c_le⟩ :
      ∃ c, (∀ x : f.domain, -(x : E) - y ∈ s → f x ≤ c) ∧
        ∀ x : f.domain, (x : E) + y ∈ s → c ≤ f x := by
    set Sp := f '' { x : f.domain | (x : E) + y ∈ s }
    set Sn := f '' { x : f.domain | -(x : E) - y ∈ s }
    suffices (upperBounds Sn ∩ lowerBounds Sp).Nonempty by
      simpa only [Sp, Sn, Set.Nonempty, upperBounds, lowerBounds, forall_mem_image] using this
    refine exists_between_of_forall_le (Nonempty.image f ?_) (Nonempty.image f (dense y)) ?_
    · rcases dense (-y) with ⟨x, hx⟩
      rw [← neg_neg x, NegMemClass.coe_neg, ← sub_eq_add_neg] at hx
      exact ⟨_, hx⟩
    rintro a ⟨xn, hxn, rfl⟩ b ⟨xp, hxp, rfl⟩
    have := s.add_mem hxp hxn
    rw [add_assoc, add_sub_cancel, ← sub_eq_add_neg, ← AddSubgroupClass.coe_sub] at this
    replace := nonneg _ this
    rwa [f.map_sub, sub_nonneg] at this
  refine ⟨f.supSpanSingleton y (-c) hy, ?_, ?_⟩
  · refine lt_iff_le_not_le.2 ⟨f.left_le_sup _ _, fun H => ?_⟩
    replace H := LinearPMap.domain_mono.monotone H
    rw [LinearPMap.domain_supSpanSingleton, sup_le_iff, span_le, singleton_subset_iff] at H
    exact hy H.2
  · rintro ⟨z, hz⟩ hzs
    rcases mem_sup.1 hz with ⟨x, hx, y', hy', rfl⟩
    rcases mem_span_singleton.1 hy' with ⟨r, rfl⟩
    simp only [Subtype.coe_mk] at hzs
    rw [LinearPMap.supSpanSingleton_apply_mk _ _ _ _ _ hx, smul_neg, ← sub_eq_add_neg, sub_nonneg]
    rcases lt_trichotomy r 0 with (hr | hr | hr)
    · have : -(r⁻¹ • x) - y ∈ s := by
        rwa [← s.smul_mem_iff (neg_pos.2 hr), smul_sub, smul_neg, neg_smul, neg_neg, smul_smul,
          mul_inv_cancel₀ hr.ne, one_smul, sub_eq_add_neg, neg_smul, neg_neg]
      replace := le_c (r⁻¹ • ⟨x, hx⟩) this
      rwa [← mul_le_mul_left (neg_pos.2 hr), neg_mul, neg_mul, neg_le_neg_iff, f.map_smul,
        smul_eq_mul, ← mul_assoc, mul_inv_cancel₀ hr.ne, one_mul] at this
    · subst r
      simp only [zero_smul, add_zero] at hzs ⊢
      apply nonneg
      exact hzs
    · have : r⁻¹ • x + y ∈ s := by
        rwa [← s.smul_mem_iff hr, smul_add, smul_smul, mul_inv_cancel₀ hr.ne', one_smul]
      replace := c_le (r⁻¹ • ⟨x, hx⟩) this
      rwa [← mul_le_mul_left hr, f.map_smul, smul_eq_mul, ← mul_assoc, mul_inv_cancel₀ hr.ne',
        one_mul] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef9f9aa0afb7e955491159007a3c85d0622bd48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
