# card_pow_quotient_mul_pow_inter_subgroup_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec6df81152a8b5bd81a9f8a180ebf96e674e4947",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a320fc6b21b315e61129756f7c31562599ca08f118c082f203928aebf247540.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a46ba62-eee8-f791-df32-f5bc0ab4ecf6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16a194c1-ba62-c4bd-32bf-cd9c750702de",
  "kind": "lemma",
  "lexical_name": "card_pow_quotient_mul_pow_inter_subgroup_le",
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
  "slug": "card-pow-quotient-mul-pow-inter-subgroup-le--d93d77bf5dc3e7a6c1223983",
  "source": {
    "blob": "ec6df81152a8b5bd81a9f8a180ebf96e674e4947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 25,
    "path": "GRWTSK/Algebra/GroupTheory/QuotientInter/Variant9a320fc6b21b315e61129756f7c31562599ca08f118c082f203928aebf247540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d93d77bf5dc3e7a6c12239831858ebc8f244ee2d214787be90382add71176c76",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/QuotientInter/Variant9a320fc6b21b315e61129756f7c31562599ca08f118c082f203928aebf247540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16a194c1-ba62-c4bd-32bf-cd9c750702de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_pow_quotient_mul_pow_inter_subgroup_le :
    #((A ^ m).image <| QuotientGroup.mk' H) * #{x ∈ A ^ n | x ∈ H} ≤ #(A ^ (m + n)) := by
  set π := QuotientGroup.mk' H
  let φ := invFunOn π (A ^ m)
  have hφ : Set.InjOn φ (π '' (A ^ m)) := invFunOn_injOn_image ..
  have hφA {a} (ha : a ∈ π '' (A ^ m)) : φ a ∈ A ^ m := by
    have := invFunOn_mem (by simpa using ha)
    norm_cast at this
    simpa using this
  have hπφ {a} (ha : a ∈ π '' (A ^ m)) : π (φ a) = a := invFunOn_eq (by simpa using ha)
  calc
    #((A ^ m).image π) * #{x ∈ A ^ n | x ∈ H}
    _ = #(((A ^ m).image π).image φ) * #{x ∈ A ^ n | x ∈ H} := by
      rw [Finset.card_image_of_injOn (f := φ) (mod_cast hφ)]
    _ ≤ #(((A ^ m).image π).image φ * {x ∈ A ^ n | x ∈ H}) := by
      rw [Finset.card_mul_iff.2]
      simp only [Set.InjOn, coe_image, coe_pow, coe_filter, Set.mem_prod, Set.mem_image,
        exists_exists_and_eq_and, Set.mem_setOf_eq, and_imp, forall_exists_index, Prod.forall,
        Prod.mk.injEq]
      rintro _ a₁ b₁ hb₁ rfl - ha₁ _ a₂ b₂ hb₂ rfl - ha₂ hab
      have hπa₁ : π a₁ = 1 := (QuotientGroup.eq_one_iff _).2 ha₁
      have hπa₂ : π a₂ = 1 := (QuotientGroup.eq_one_iff _).2 ha₂
      have hπb : π b₁ = π b₂ := by
        simpa [hπφ, Set.mem_image_of_mem π, hb₁, hb₂, hπa₁, hπa₂] using congr(π $hab)
      aesop
    _ ≤ #(A ^ (m + n)) := by
      gcongr
      simp only [mul_subset_iff, mem_image, exists_exists_and_eq_and, Finset.mem_filter, and_imp,
        forall_exists_index, forall_apply_eq_imp_iff₂, pow_add]
      rintro a ha b hb -
      exact mul_mem_mul (hφA <| Set.mem_image_of_mem _ <| mod_cast ha) hb

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/QuotientInter/Variant9a320fc6b21b315e61129756f7c31562599ca08f118c082f203928aebf247540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/QuotientInter/Variant9a320fc6b21b315e61129756f7c31562599ca08f118c082f203928aebf247540.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec6df81152a8b5bd81a9f8a180ebf96e674e4947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
