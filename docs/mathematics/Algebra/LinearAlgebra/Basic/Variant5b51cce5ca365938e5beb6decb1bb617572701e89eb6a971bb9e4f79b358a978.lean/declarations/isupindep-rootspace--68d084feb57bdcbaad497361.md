# iSupIndep_rootSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db4c889b1149f5b2b4a567d0913aa896612df039",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 397,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ae2d428-3332-00a4-032b-492a24c27af8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5044207f-224f-14b6-2311-63dbc911a1c2",
  "kind": "lemma",
  "lexical_name": "iSupIndep_rootSpace",
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
  "slug": "isupindep-rootspace--68d084feb57bdcbaad497361",
  "source": {
    "blob": "db4c889b1149f5b2b4a567d0913aa896612df039",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 397,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68d084feb57bdcbaad49736165489f57bcf311ccdb76ce86c8213136291bde85",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5044207f-224f-14b6-2311-63dbc911a1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iSupIndep_rootSpace :
    letI := b.isLieAbelian_cartan
    letI U := ⨆ (n : ι → ℕ) (_ : n ≠ 0), rootSpace H (∑ i, n i • (-b.baseSupp) i)
    letI V := ⨆ (n : ι → ℕ) (_ : n ≠ 0), rootSpace H (∑ i, n i • b.baseSupp i)
    iSupIndep ![rootSpace H 0, U, V] := by
  let := b.isLieAbelian_cartan
  set U := ⨆ (n : ι → ℕ) (_ : n ≠ 0), rootSpace H (∑ i, n i • (-b.baseSupp) i) with hU
  set V := ⨆ (n : ι → ℕ) (_ : n ≠ 0), rootSpace H (∑ i, n i • b.baseSupp i) with hV
  set s0 : Set (H → R) := {0} with hs0
  set sU : Set (H → R) := {f | ∃ n : ι → ℕ, n ≠ 0 ∧ f = ∑ i, n i • (-b.baseSupp) i} with hsU
  set sV : Set (H → R) := {f | ∃ n : ι → ℕ, n ≠ 0 ∧ f = ∑ i, n i • b.baseSupp i} with hsV
  have hs0' : rootSpace H 0 = ⨆ i ∈ s0, LieModule.genWeightSpace L i := by simp [hs0]
  have hsU' : U = ⨆ i ∈ sU, LieModule.genWeightSpace L i := by
    simp only [hU, hsU, mem_ofPred_eq, iSup_exists, iSup_and, iSup_comm (ι := H → R),
      iSup_iSup_eq_left, LinearMap.coe_sum, LinearMap.coe_smul]
  have hsV' : V = ⨆ i ∈ sV, LieModule.genWeightSpace L i := by
    simp only [hV, hsV, mem_ofPred_eq, iSup_exists, iSup_and, iSup_comm (ι := H → R),
      iSup_iSup_eq_left, LinearMap.coe_sum, LinearMap.coe_smul]
  have hU0 : Disjoint s0 sU := by
    suffices ∀ g ∈ sU, g ≠ 0 by
      refine Set.disjoint_iff_forall_ne.mpr fun f hf g hg ↦ ?_
      obtain ⟨rfl⟩ : f = 0 := by simpa [hs0] using hf
      exact (this _ hg).symm
    intro g hg contra
    obtain ⟨n, hn, rfl⟩ : ∃ n : ι → ℕ, n ≠ 0 ∧ g = -∑ i, n i • b.baseSupp i := by
      simpa [hsU] using hg
    rw [neg_eq_zero, LinearMap.coe_zero_iff] at contra
    have := Fintype.linearIndependent_iff.mp b.linearIndependent_baseSupp ((↑) ∘ n)
      (by simpa [Nat.cast_smul_eq_nsmul])
    exact hn <| funext fun i ↦ by simpa using this i
  have hV0 : Disjoint s0 sV := by
    suffices ∀ g ∈ sV, g ≠ 0 by
      refine Set.disjoint_iff_forall_ne.mpr fun f hf g hg ↦ ?_
      obtain ⟨rfl⟩ : f = 0 := by simpa [hs0] using hf
      exact (this _ hg).symm
    intro g hg contra
    obtain ⟨n, hn, rfl⟩ : ∃ n : ι → ℕ, n ≠ 0 ∧ g = ∑ i, n i • b.baseSupp i := by
      simpa [hsV] using hg
    rw [LinearMap.coe_zero_iff] at contra
    have := Fintype.linearIndependent_iff.mp b.linearIndependent_baseSupp ((↑) ∘ n)
      (by simpa [Nat.cast_smul_eq_nsmul])
    exact hn <| funext fun i ↦ by simpa using this i
  have hUV : Disjoint sU sV := by
    refine Set.disjoint_iff_forall_ne.mpr fun f hf g hg ↦ ?_
    rintro rfl
    obtain ⟨n, hn, hn'⟩ : ∃ n : ι → ℕ, n ≠ 0 ∧ f = -∑ i, n i • b.baseSupp i := by
      simpa [hsU] using hf
    obtain ⟨m, hm, rfl⟩ : ∃ m : ι → ℕ, m ≠ 0 ∧ f = ∑ i, m i • b.baseSupp i := by
      simpa [hsV] using hg
    replace hn' : ∑ i, (((↑) : ℕ → R) ∘ (m + n)) i • b.baseSupp i = 0 := by
      rw [eq_neg_iff_add_eq_zero] at hn'
      change ⇑(∑ i, m i • b.baseSupp i + ∑ i, n i • b.baseSupp i) = 0 at hn'
      simp_rw [LinearMap.coe_zero_iff, ← Finset.sum_add_distrib, ← add_smul, ← Pi.add_apply,
        ← Nat.cast_smul_eq_nsmul R] at hn'
      exact hn'
    have := Fintype.linearIndependent_iff.mp b.linearIndependent_baseSupp ((↑) ∘ (m + n)) hn'
    refine hn <| funext fun i ↦ ?_
    specialize this i
    rw [comp_apply, Nat.cast_eq_zero, Pi.add_apply, Nat.add_eq_zero_iff] at this
    simpa using this.2
  have key := LieModule.iSupIndep_genWeightSpace R H L
  have h₀ : Disjoint (rootSpace H 0) (U ⊔ V) := by
    convert! key.disjoint_biSup_biSup (hU0.union_right hV0)
    rw [iSup_union, hsU', hsV']
  have h₁ : Disjoint U (V ⊔ rootSpace H 0) := by
    convert! key.disjoint_biSup_biSup (hUV.union_right hU0.symm)
    rw [iSup_union, hs0', hsV']
  have h₂ : Disjoint V (rootSpace H 0 ⊔ U) := by
    convert! key.disjoint_biSup_biSup (Disjoint.union_left hV0 hUV).symm
    rw [iSup_union, hs0', hsU']
  simp [iSupIndep_fin_three, h₀, h₁, h₂]

set_option linter.unusedFintypeInType false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db4c889b1149f5b2b4a567d0913aa896612df039` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
