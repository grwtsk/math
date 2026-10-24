# NumberField.exists_not_isUnramifiedAt_int_of_isGalois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bd5970b1d73db608d3d18928b78aa6c7caea49b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:476a3fa5-9267-ac1c-71b0-e5708c092ea8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a53fdce-15e6-eb18-708b-f3d9634e17c2",
  "kind": "lemma",
  "lexical_name": "NumberField.exists_not_isUnramifiedAt_int_of_isGalois",
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
  "slug": "numberfield-exists-not-isunramifiedat-int-of-isgalois--26d0c11c66b3efae786da227",
  "source": {
    "blob": "7bd5970b1d73db608d3d18928b78aa6c7caea49b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26d0c11c66b3efae786da227a019b172d06a5704052ac41e14853d087826194e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a53fdce-15e6-eb18-708b-f3d9634e17c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NumberField.exists_not_isUnramifiedAt_int_of_isGalois [IsGalois ℚ K]
    (H : 1 < Module.finrank ℚ K) :
    ∃ p : ℕ, p.Prime ∧ ∀ (P : Ideal 𝒪) (_ : P.IsPrime), ↑p ∈ P → ¬ Algebra.IsUnramifiedAt ℤ P := by
  have := (IsIntegralClosure.algebraMap_injective 𝒪 ℤ K).isDomain
  have := IsIntegralClosure.isDedekindDomain ℤ ℚ K 𝒪
  have := IsIntegralClosure.isFractionRing_of_finite_extension ℤ ℚ K 𝒪
  have := IsIntegralClosure.finite ℤ ℚ K 𝒪
  have := CharZero.of_module (R := 𝒪) K
  let : MulSemiringAction Gal(K/ℚ) 𝒪 := IsIntegralClosure.MulSemiringAction ℤ ℚ K 𝒪
  have := IsGaloisGroup.of_isFractionRing Gal(K/ℚ) ℤ 𝒪 ℚ K
  obtain ⟨P, _, hP'⟩ := NumberField.exists_not_isUnramifiedAt_int (𝒪 := 𝒪) H.ne'
  obtain ⟨p, hp : _ = Ideal.span _⟩ := IsPrincipalIdealRing.principal (P.under ℤ)
  have hp0 : p ≠ 0 := fun hp0 ↦ Ideal.IsMaximal.ne_bot_of_isIntegral_int _
    (Ideal.eq_bot_of_under_eq_bot (hp.trans (by aesop)))
  have : Prime p := by rw [← Ideal.span_singleton_prime hp0, ← hp]; infer_instance
  refine ⟨p.natAbs, Int.prime_iff_natAbs_prime.mp this, fun Q _ hQ ↦ ?_⟩
  replace hQ : (p : 𝒪) ∈ Q := Q.mem_of_dvd
    (map_dvd (algebraMap _ _) p.associated_natAbs.symm.dvd) (by simpa using hQ)
  have : .span {p} = Ideal.under ℤ Q :=
    ((Ideal.liesOver_span_iff Ideal.IsPrime.ne_top' this).mpr hQ).1
  rwa [← Ideal.ramificationIdx_eq_one_iff,
    ← Ideal.ramificationIdxIn_eq_ramificationIdx (Q.under ℤ) _ Gal(K/ℚ), ← this, ← hp,
    Ideal.ramificationIdxIn_eq_ramificationIdx _ P Gal(K/ℚ), Ideal.ramificationIdx_eq_one_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bd5970b1d73db608d3d18928b78aa6c7caea49b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
