# _root_.NumberField.is_primitive_element_of_infinitePlace_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "568afd2a17d01d31917937ed1495b1a9c63786fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 398,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f21cc942-acd0-9e32-8b7c-d4fbeb8cd5e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e91d91e2-b4f7-0f04-d89a-ec5f5dd855b9",
  "kind": "theorem",
  "lexical_name": "_root_.NumberField.is_primitive_element_of_infinitePlace_lt",
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
  "slug": "root-numberfield-is-primitive-element-of-infiniteplace-lt--caf41419d4184456d708319d",
  "source": {
    "blob": "568afd2a17d01d31917937ed1495b1a9c63786fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 398,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caf41419d4184456d708319dc3e69aa529fd01944ab08c2f653bafcf7fcdcaf4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e91d91e2-b4f7-0f04-d89a-ec5f5dd855b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.NumberField.is_primitive_element_of_infinitePlace_lt {x : 𝓞 K}
    {w : InfinitePlace K} (h₁ : x ≠ 0) (h₂ : ∀ ⦃w'⦄, w' ≠ w → w' x < 1)
    (h₃ : IsReal w ∨ |(w.embedding x).re| < 1) : ℚ⟮(x : K)⟯ = ⊤ := by
  rw [Field.primitive_element_iff_algHom_eq_of_eval ℚ ℂ ?_ _ w.embedding.toRatAlgHom]
  · intro ψ hψ
    have h : 1 ≤ w x := one_le_of_lt_one h₁ h₂
    have main : w = InfinitePlace.mk ψ.toRingHom := by
      simp only [RingHom.toRatAlgHom_apply] at hψ
      rw [← norm_embedding_eq, hψ] at h
      contrapose! h
      exact h₂ h.symm
    rw [(mk_embedding w).symm, mk_eq_iff] at main
    cases h₃ with
    | inl hw =>
      rw [conjugate_embedding_eq_of_isReal hw, or_self] at main
      exact congr_arg RingHom.toRatAlgHom main
    | inr hw =>
      refine congr_arg RingHom.toRatAlgHom (main.resolve_right fun h' ↦ hw.not_ge ?_)
      have : (embedding w x).im = 0 := by
        rw [← Complex.conj_eq_iff_im]
        have := RingHom.congr_fun h' x
        simp only [ComplexEmbedding.conjugate_coe_eq, AlgHom.toRingHom_eq_coe,
          RingHom.coe_coe] at this
        rw [this]
        exact hψ.symm
      rwa [← norm_embedding_eq, ← Complex.re_add_im (embedding w x), this, Complex.ofReal_zero,
        zero_mul, add_zero, Complex.norm_real] at h
  · exact fun x ↦ IsAlgClosed.splits _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `568afd2a17d01d31917937ed1495b1a9c63786fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
