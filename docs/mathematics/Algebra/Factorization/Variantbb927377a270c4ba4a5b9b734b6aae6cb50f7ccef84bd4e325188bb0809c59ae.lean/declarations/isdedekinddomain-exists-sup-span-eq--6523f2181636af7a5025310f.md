# IsDedekindDomain.exists_sup_span_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88647c45574d4f4a8bd2224cdc49b47cfacbd607",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 611,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b6f4593-5d31-a396-06e6-11e97a77f042",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c399195-112d-c3fa-7b75-aa842afeef1d",
  "kind": "lemma",
  "lexical_name": "IsDedekindDomain.exists_sup_span_eq",
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
  "slug": "isdedekinddomain-exists-sup-span-eq--6523f2181636af7a5025310f",
  "source": {
    "blob": "88647c45574d4f4a8bd2224cdc49b47cfacbd607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 611,
    "path": "GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6523f2181636af7a5025310f041ca46bee83e460f612f66d21df84047bdaa34b",
  "verification": {
    "reference": "docs/verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c399195-112d-c3fa-7b75-aa842afeef1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 611–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsDedekindDomain.exists_sup_span_eq {I J : Ideal R} (hIJ : I ≤ J) (hI : I ≠ 0) :
    ∃ a, I ⊔ Ideal.span {a} = J := by
  classical
  obtain ⟨I, rfl⟩ := Ideal.dvd_iff_le.mpr hIJ
  simp only [ne_eq, mul_eq_zero, not_or] at hI
  obtain ⟨hJ, hI⟩ := hI
  suffices ∃ a, ∃ K, J * K = Ideal.span {a} ∧ I + K = ⊤ by
    obtain ⟨a, K, e, e'⟩ := this
    exact ⟨a, by rw [← e, ← Ideal.add_eq_sup, ← mul_add, e', Ideal.mul_top]⟩
  let s := (I.finite_factors hI).toFinset
  have : ∀ p ∈ s, J * ∏ q ∈ s, q.asIdeal < J * ∏ q ∈ s \ {p}, q.asIdeal := by
    intro p hps
    conv_rhs => rw [← mul_one (J * _)]
    rw [Finset.prod_eq_mul_prod_sdiff_singleton_of_mem hps, ← mul_assoc,
      mul_right_comm _ p.asIdeal]
    refine mul_lt_mul_of_pos_left ?_ ?_
    · rw [Ideal.one_eq_top, lt_top_iff_ne_top]
      exact p.2.ne_top
    · rw [Ideal.zero_eq_bot, bot_lt_iff_ne_bot, ← Ideal.zero_eq_bot,
        mul_ne_zero_iff, Finset.prod_ne_zero_iff]
      exact ⟨hJ, fun x _ ↦ x.3⟩
  choose! a ha ha' using fun p hps ↦ SetLike.exists_of_lt (this p hps)
  obtain ⟨K, hK⟩ : J ∣ Ideal.span {∑ p ∈ s, a p} := by
    rw [Ideal.dvd_iff_le, Ideal.span_singleton_le_iff_mem]
    exact sum_mem fun p hp ↦ Ideal.mul_le_left (ha p hp)
  refine ⟨_, _, hK.symm, ?_⟩
  by_contra H
  obtain ⟨p, hp, h⟩ := Ideal.exists_le_maximal _ H
  let p' : HeightOneSpectrum R := ⟨p, hp.isPrime, fun e ↦ hI (by simp_all)⟩
  have hp's : p' ∈ s := by simpa [p', s, Ideal.dvd_iff_le] using le_sup_left.trans h
  have H₁ : J * K ≤ J * p := Ideal.mul_mono_right (le_sup_right.trans h)
  replace H₁ := hK.trans_le H₁ (Ideal.mem_span_singleton_self _)
  have H₂ : ∑ q ∈ s \ {p'}, a q ∈ J * p := by
    refine sum_mem fun q hq ↦ ?_
    rw [Finset.mem_sdiff, Finset.mem_singleton] at hq
    refine Ideal.mul_mono_right ?_ (ha q hq.1)
    exact Ideal.prod_le_inf.trans (Finset.inf_le (b := p') (by simpa [hp's] using Ne.symm hq.2))
  apply ha' _ hp's
  have := IsDedekindDomain.inf_pow_eq_prod_of_prime s (fun i ↦ i.asIdeal) (fun _ ↦ 1)
    (fun i _ ↦ i.prime) (fun i _ j _ e ↦ mt HeightOneSpectrum.ext e)
  simp only [pow_one] at this
  have inst : Nonempty {x // x ∈ s} := ⟨_, hp's⟩
  rw [← this, Finset.inf_eq_iInf, iInf_subtype', Ideal.mul_iInf, Ideal.mem_iInf]
  rintro ⟨q, hq⟩
  by_cases hqp : q = p'
  · subst hqp
    convert! sub_mem H₁ H₂
    rw [Finset.sum_eq_add_sum_sdiff_singleton_of_mem hp's, add_sub_cancel_right]
  · refine Ideal.mul_mono_right ?_ (ha p' hp's)
    exact Ideal.prod_le_inf.trans (Finset.inf_le (b := q) (by simpa [hq] using hqp))

/-- In a Dedekind domain, any ideal is spanned by two elements, where one of the element
could be any fixed non-zero element in the ideal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean#L611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88647c45574d4f4a8bd2224cdc49b47cfacbd607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
