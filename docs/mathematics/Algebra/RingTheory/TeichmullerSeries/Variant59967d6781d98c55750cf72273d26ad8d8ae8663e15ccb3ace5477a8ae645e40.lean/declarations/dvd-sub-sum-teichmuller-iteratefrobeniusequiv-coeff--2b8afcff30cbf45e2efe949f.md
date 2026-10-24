# dvd_sub_sum_teichmuller_iterateFrobeniusEquiv_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8714ae7684d947f338959aee6e8abfdadb4027be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1380789-6679-269a-944a-5f3866c5a0cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:457b6d46-78ac-ea15-fcad-770cd3cc7b76",
  "kind": "theorem",
  "lexical_name": "dvd_sub_sum_teichmuller_iterateFrobeniusEquiv_coeff",
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
  "slug": "dvd-sub-sum-teichmuller-iteratefrobeniusequiv-coeff--2b8afcff30cbf45e2efe949f",
  "source": {
    "blob": "8714ae7684d947f338959aee6e8abfdadb4027be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 93,
    "path": "GRWTSK/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b8afcff30cbf45e2efe949fe689ae2610c0b753d2da4175f9579b37cb4f3f65",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:457b6d46-78ac-ea15-fcad-770cd3cc7b76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_sub_sum_teichmuller_iterateFrobeniusEquiv_coeff (x : 𝕎 R) (n : ℕ) :
    (p : 𝕎 R) ^ (n + 1) ∣ x - ∑ (i ≤ n), (teichmuller p
        (((_root_.frobeniusEquiv R p).symm ^ i) (x.coeff i)) * p ^ i) := by
  rw [← Ideal.mem_span_singleton, mem_span_p_pow_iff_le_coeff_eq_zero,
      ← le_coeff_eq_iff_le_sub_coeff_eq_zero]
  intro i hi
  rw [WittVector.sum_coeff_eq_coeff_sum]
  · rw [Finset.sum_eq_add_sum_sdiff_singleton_of_mem (Finset.mem_Iic.mpr (Nat.lt_succ_iff.mp hi))]
    let g := fun x : ℕ ↦ (0 : R)
    rw [Finset.sum_congr rfl (g := g)]
    · simp [g]
    · intro b hb
      simp only [Finset.mem_sdiff, Finset.mem_Iic, Finset.mem_singleton] at hb
      exact teichmuller_mul_pow_coeff_of_ne _ (Ne.intro hb.2).symm
  · refine fun n ↦ ⟨fun ⟨a, _, ha⟩ ⟨b, _, hb⟩ ↦ ?_⟩
    ext
    dsimp only [ne_eq, Set.mem_ofPred_eq]
    rw [← Not.imp_symm (teichmuller_mul_pow_coeff_of_ne _) ha]
    exact Not.imp_symm (teichmuller_mul_pow_coeff_of_ne _) hb

/--
Given a ring `S` such that `p` is nilpotent in `S`
and two ring maps `f g : 𝕎 R →+* S`, if they coincide on the teichmuller representatives,
then they are equal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8714ae7684d947f338959aee6e8abfdadb4027be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
