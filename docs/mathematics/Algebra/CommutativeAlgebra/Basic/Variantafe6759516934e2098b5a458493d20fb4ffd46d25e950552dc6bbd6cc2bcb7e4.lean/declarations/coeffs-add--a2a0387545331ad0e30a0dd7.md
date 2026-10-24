# coeffs_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7178d84d5d72120af9e5fa24a7ec65eb19c6c00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 857,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c119df79-4ddb-982c-a9fd-0c1f69935890",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f680a284-b8dd-efe3-4c60-02e9778547e4",
  "kind": "lemma",
  "lexical_name": "coeffs_add",
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
  "slug": "coeffs-add--a2a0387545331ad0e30a0dd7",
  "source": {
    "blob": "b7178d84d5d72120af9e5fa24a7ec65eb19c6c00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 881,
    "line": 857,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2a0387545331ad0e30a0dd71055cb8255d89bbd095b391dd31da7656454ae30",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f680a284-b8dd-efe3-4c60-02e9778547e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 857–881.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeffs_add [DecidableEq R] {p q : MvPolynomial σ R} (h : Disjoint p.support q.support) :
    (p + q).coeffs = p.coeffs ∪ q.coeffs := by
  ext r
  simp only [mem_coeffs_iff, mem_support_iff, coeff_add, ne_eq, Finset.mem_union]
  have hl (n : σ →₀ ℕ) (hne : p.coeff n ≠ 0) : q.coeff n = 0 :=
    notMem_support_iff.mp <| h.notMem_of_mem_left_finset (mem_support_iff.mpr hne)
  have hr (n : σ →₀ ℕ) (hne : q.coeff n ≠ 0) : p.coeff n = 0 :=
    notMem_support_iff.mp <| h.notMem_of_mem_right_finset (mem_support_iff.mpr hne)
  have hor (n) (h : ¬coeff n p + coeff n q = 0) : coeff n p ≠ 0 ∨ coeff n q ≠ 0 := by
    by_cases hp : coeff n p = 0 <;> aesop
  refine ⟨fun ⟨n, hn1, hn2⟩ ↦ ?_, ?_⟩
  · obtain (h|h) := hor n hn1
    · exact Or.inl ⟨n, by simp [h, hn2, hl n h]⟩
    · exact Or.inr ⟨n, by simp [h, hn2, hr n h]⟩
  · rintro (⟨n, hn, rfl⟩|⟨n, hn, rfl⟩)
    · exact ⟨n, by simp [hl n hn, hn]⟩
    · exact ⟨n, by simp [hr n hn, hn]⟩

end Coeff

section ConstantCoeff

/-- `constantCoeff p` returns the constant term of the polynomial `p`, defined as `coeff 0 p`.
This is a ring homomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean#L857).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7178d84d5d72120af9e5fa24a7ec65eb19c6c00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
