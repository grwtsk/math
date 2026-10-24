# _root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.NumberFieldInfinitePlace.Variant93e9d5a99a8128e88e01b1cec9dd8e7429443eabbc984b63c7f0c5fc90bced91.NumberField.is_primitive_element_of_infinitePlace_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d90a80e-ef7d-047d-d54f-97a075f9d142",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.NumberFieldInfinitePlace.Variant93e9d5a99a8128e88e01b1cec9dd8e7429443eabbc984b63c7f0c5fc90bced91.NumberField.is_primitive_element_of_infinitePlace_lt",
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
  "slug": "root-grwtsk-numbertheory-algebraicnumbertheory-numberfieldinfiniteplace--14b99956fe8e414acc9d502f",
  "source": {
    "blob": "a1b1683265535421c7b8e4dfd69b024efd13b564",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 348,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant15159730d263aaac66986c70fa66a93589c711ca88f823034d642411a95b8a4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14b99956fe8e414acc9d502f6bfcaea340e0972dde86c88251b2adc588a218d2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant15159730d263aaac66986c70fa66a93589c711ca88f823034d642411a95b8a4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d90a80e-ef7d-047d-d54f-97a075f9d142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.NumberFieldInfinitePlace.Variant93e9d5a99a8128e88e01b1cec9dd8e7429443eabbc984b63c7f0c5fc90bced91.NumberField.is_primitive_element_of_infinitePlace_lt {x : 𝓞 K}
    {w : InfinitePlace K} (h₁ : x ≠ 0) (h₂ : ∀ ⦃w'⦄, w' ≠ w → w' x < 1)
    (h₃ : IsReal w ∨ |(w.embedding x).re| < 1) : ℚ⟮(x : K)⟯ = ⊤ := by
  rw [Field.primitive_element_iff_algHom_eq_of_eval ℚ ℂ ?_ _ w.embedding.toRatAlgHom]
  · intro ψ hψ
    have h : 1 ≤ w x := one_le_of_lt_one h₁ h₂
    have main : w = InfinitePlace.mk ψ.toRingHom := by
      simp at hψ
      rw [← norm_embedding_eq, hψ] at h
      contrapose! h
      exact h₂ h.symm
    rw [(mk_embedding w).symm, mk_eq_iff] at main
    cases h₃ with
    | inl hw =>
      rw [conjugate_embedding_eq_of_isReal hw, or_self] at main
      exact congr_arg RingHom.toRatAlgHom main
    | inr hw =>
      refine congr_arg RingHom.toRatAlgHom (main.resolve_right fun h' ↦ hw.not_le ?_)
      have : (embedding w x).im = 0 := by
        rw [← Complex.conj_eq_iff_im]
        have := RingHom.congr_fun h' x
        simp at this
        rw [this]
        exact hψ.symm
      rwa [← norm_embedding_eq, ← Complex.re_add_im (embedding w x), this, Complex.ofReal_zero,
        zero_mul, add_zero, Complex.norm_real] at h
  · exact fun x ↦ IsAlgClosed.splits_codomain (minpoly ℚ x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant15159730d263aaac66986c70fa66a93589c711ca88f823034d642411a95b8a4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant15159730d263aaac66986c70fa66a93589c711ca88f823034d642411a95b8a4d.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1b1683265535421c7b8e4dfd69b024efd13b564` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
