# instSubtractionCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f217de2d561cf095134a906c75ef9508baa37a6dc929216812c4be0bdee7666",
  "kind": "instance",
  "lexical_name": "instSubtractionCommMonoid",
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
  "slug": "instsubtractioncommmonoid--cbaac8c15c52da06576a0853",
  "source": {
    "blob": "bb182f960c90a7cf5298af980866d49165201cc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 547,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantd3e50087d4bdb28cbb89562ce501bfb72db8abb29b02d327b156de7bf0bc79c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbaac8c15c52da06576a085337702ea8661ffa3506612efbeff016a8f5a46878",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Variantd3e50087d4bdb28cbb89562ce501bfb72db8abb29b02d327b156de7bf0bc79c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f217de2d561cf095134a906c75ef9508baa37a6dc929216812c4be0bdee7666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSubtractionCommMonoid : SubtractionCommMonoid (E →ₗ.[R] F) where
  add_comm := add_comm
  sub_eq_add_neg f g := by
    ext x y h
    · rfl
    simp [sub_apply, add_apply, neg_apply, ← sub_eq_add_neg, h]
  neg_neg := neg_neg
  neg_add_rev f g := by
    ext x y h
    · simp [add_domain, sub_domain, neg_domain, And.comm]
    simp [sub_apply, add_apply, neg_apply, ← sub_eq_add_neg, h]
  neg_eq_of_add f g h' := by
    ext x y h
    · have : (0 : E →ₗ.[R] F).domain = ⊤ := zero_domain
      simp only [← h', add_domain, ge_iff_le, inf_eq_top_iff] at this
      rw [neg_domain, this.1, this.2]
    simp only [inf_coe, neg_domain, Eq.ndrec, Int.ofNat_eq_coe, neg_apply]
    rw [ext_iff] at h'
    rcases h' with ⟨hdom, h'⟩
    rw [zero_domain] at hdom
    simp only [inf_coe, neg_domain, Eq.ndrec, Int.ofNat_eq_coe, zero_domain, top_coe, zero_apply,
      Subtype.forall, mem_top, forall_true_left, forall_eq'] at h'
    specialize h' x.1 (by simp [hdom])
    simp only [inf_coe, neg_domain, Eq.ndrec, Int.ofNat_eq_coe, add_apply, Subtype.coe_eta,
      ← neg_eq_iff_add_eq_zero] at h'
    rw [h', h]

end Sub

section

variable {K : Type*} [DivisionRing K] [Module K E] [Module K F]

/-- Extend a `LinearPMap` to `f.domain ⊔ K ∙ x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Variantd3e50087d4bdb28cbb89562ce501bfb72db8abb29b02d327b156de7bf0bc79c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantd3e50087d4bdb28cbb89562ce501bfb72db8abb29b02d327b156de7bf0bc79c1.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb182f960c90a7cf5298af980866d49165201cc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
