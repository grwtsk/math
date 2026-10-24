# linearIndepOn_isGroupLikeElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e93368d6-3bb9-a961-b3a5-0e92bb35a28c",
  "kind": "lemma",
  "lexical_name": "linearIndepOn_isGroupLikeElem",
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
  "slug": "linearindepon-isgrouplikeelem--a093c88b66216764f40e8e28",
  "source": {
    "blob": "98baa3a10b601d3fec09a684ff644d2d1663735d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 111,
    "path": "GRWTSK/Algebra/RingTheory/GroupLike/Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a093c88b66216764f40e8e2803511254bb0c7856f32cfff75a293bf332f1fa8f",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/GroupLike/Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e93368d6-3bb9-a961-b3a5-0e92bb35a28c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma linearIndepOn_isGroupLikeElem : LinearIndepOn R id {a : A | IsGroupLikeElem R a} := by
  classical
  -- We show that any finset `s` of group-like elements is linearly independent.
  rw [linearIndepOn_iff_linearIndepOn_finset]
  rintro s hs
  -- For this, we do induction on `s`.
  induction s using Finset.cons_induction with
  -- The case `s = ∅` is trivial.
  | empty => simp
  -- Let's deal with the `s ∪ {a}` case.
  | cons a s has ih =>
  simp only [Finset.cons_eq_insert, Finset.coe_insert, Set.subset_def, Set.mem_insert_iff,
    Finset.mem_coe, Set.mem_ofPred_eq, forall_eq_or_imp] at hs
  obtain ⟨ha, hs⟩ := hs
  specialize ih hs
  -- Assume that there is some `c : A → R` and `d : R` such that `∑ x ∈ s, c x • x = d • a`.
  -- We want to prove `d = 0` and `∀ x ∈ s, c x = 0`.
  rw [Finset.coe_cons]
  refine ih.id_insert' ?_
  simp only [mem_span_finset, forall_exists_index, and_imp]
  rintro d c - hc
  -- `x ⊗ y` over `x, y ∈ s` are linearly independent since `s` is linearly independent and
  -- `R` is a domain.
  replace ih := ih.tmul_of_isDomain ih
  simp_rw [← Finset.coe_product, linearIndepOn_finset_iffₛ, id] at ih
  -- Tensoring the equality `∑ x ∈ s, c x • x = d • a` with itself, we get by linear independence
  -- that `c x ^ 2 = d * c x` and `c x * c y = 0` for `x ≠ y`.
  have key := calc
        ∑ x ∈ s, ∑ y ∈ s, (if x = y then d * c x else 0) • x ⊗ₜ[R] y
    _ = d • ∑ x ∈ s, c x • x ⊗ₜ[R] x := by simp [Finset.smul_sum, mul_smul]
    _ = d • comul (d • a) := by rw [← hc]; simp +contextual [(hs _ _).comul_eq_tmul_self]
    _ = (d • a) ⊗ₜ (d • a) := by simp [ha.comul_eq_tmul_self, smul_tmul, tmul_smul, -neg_smul]
    _ = ∑ x ∈ s, ∑ y ∈ s, (c x * c y) • x ⊗ₜ[R] y := by
      simp_rw [← hc, sum_tmul, smul_tmul, Finset.smul_sum, tmul_sum, tmul_smul, mul_smul]
  simp_rw [← Finset.sum_product'] at key
  apply ih at key
  -- Therefore, `c x = 0` for all `x ∈ s`.
  replace key x (hx : x ∈ s) : c x = 0 := by
    -- Otherwise, we deduce from `key` that `c y = 0` for any `y ≠ x` with `y ∈ s`.
    by_contra! hcx
    have hcy (y) (hys : y ∈ s) (hyx : y ≠ x) : c y = 0 := by
      simpa [*] using (key (y, x) (by simp [*])).symm
    -- Then substitute this into `hc` to get `c x • x = d • a`.
    rw [Finset.sum_eq_single x (by simp +contextual [hcy]) (by simp [hx])] at hc
    -- But `key` also says that `c x = d`.
    have hcxa : d = c x := mul_left_injective₀ hcx (by simpa using (key (x, x) (by simp [*])))
    -- So `x = a`...
    obtain rfl : x = a := by rwa [hcxa, smul_right_inj hcx] at hc
    -- ... which contradicts `x ∈ s` and `a ∉ s`.
    contradiction
  -- We are now done, since `d • a = ∑ x ∈ s, c x • x = 0`
  simp_all [ha.ne_zero, eq_comm]

/-- Group-like elements over a domain are linearly independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/GroupLike/Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/GroupLike/Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98baa3a10b601d3fec09a684ff644d2d1663735d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
