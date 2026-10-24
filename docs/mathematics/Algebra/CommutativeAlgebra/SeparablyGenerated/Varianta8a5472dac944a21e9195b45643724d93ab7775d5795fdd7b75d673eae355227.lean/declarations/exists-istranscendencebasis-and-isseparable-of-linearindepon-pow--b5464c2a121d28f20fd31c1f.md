# exists_isTranscendenceBasis_and_isSeparable_of_linearIndepOn_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b43df4fcbf568c96076d936680befd256dcaef5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9c9ede3-ee0f-28b7-6057-5319f5044b8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd9d3799-221c-8f89-e8b5-f5d99773d86e",
  "kind": "lemma",
  "lexical_name": "exists_isTranscendenceBasis_and_isSeparable_of_linearIndepOn_pow",
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
  "slug": "exists-istranscendencebasis-and-isseparable-of-linearindepon-pow--b5464c2a121d28f20fd31c1f",
  "source": {
    "blob": "3b43df4fcbf568c96076d936680befd256dcaef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 201,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Varianta8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5464c2a121d28f20fd31c1f562f148e35a5ef1028c72af1ac187d4678b30bb8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Varianta8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd9d3799-221c-8f89-e8b5-f5d99773d86e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isTranscendenceBasis_and_isSeparable_of_linearIndepOn_pow
    (ha' : IsTranscendenceBasis k fun i : {i // i ≠ n} ↦ a i) :
    ∃ i : ι, IsTranscendenceBasis k (fun j : {j // j ≠ i} ↦ a j) ∧
      IsSeparable (adjoin k (a '' {i}ᶜ)) (a i) := by
  set S := {F : MvPolynomial ι k | F ≠ 0 ∧ F.aeval a = 0}
  obtain ⟨F, ⟨hF₀, hFa⟩, hFmin⟩ :
      ∃ F ∈ S, ∀ G : MvPolynomial ι k, G ≠ 0 → G.aeval a = 0 → totalDegree F ≤ totalDegree G := by
    suffices S.Nonempty from
      ⟨totalDegree.argminOn S this, totalDegree.argminOn_mem ..,
        fun _ h₁ h₂ ↦ totalDegree.argminOn_le S ⟨h₁, h₂⟩⟩
    suffices ¬ AlgebraicIndependent k a by simpa [S, algebraicIndependent_iff, and_comm] using! this
    intro h
    refine h.transcendental_adjoin (i := n) (s := {n}ᶜ) (by simp) ?_
    have : a '' {n}ᶜ = Set.range (ι := {i // i ≠ n}) (a ·) := by aesop
    convert! ha'.isAlgebraic.isAlgebraic _
  have hFirr : Irreducible F := irreducible_of_forall_totalDegree_le hFmin hF₀ hFa
  obtain ⟨i, σ, hσ, hi⟩ := exists_mem_support_not_dvd_of_forall_totalDegree_le p hp H hFmin hF₀ hFa
  have hσi : σ i ≠ 0 := by aesop
  have alg := isAlgebraic_of_mem_vars_of_forall_totalDegree_le hFmin hFa i <|
    (mem_vars_iff_mem_support i).mpr ⟨σ, hσ, by simpa⟩
  have Hi := ha'.of_isAlgebraic_adjoin_image_compl _ i _ alg
  refine ⟨i, Hi, ?_⟩
  let k' := adjoin k (a '' {i}ᶜ)
  have hF₁irr := irreducible_toPolynomialAdjoinImageCompl hFirr i Hi.1
  have := (AlgebraicIndepOn.aevalEquiv (s := {i}ᶜ) Hi.1).uniqueFactorizationMonoid inferInstance
  have coeff_ne := coeff_toPolynomialAdjoinImageCompl_ne_zero hFmin σ hσ i hσi
  open scoped algebraAdjoinAdjoin in
  have hF₂irr := (hF₁irr.isPrimitive fun h ↦ coeff_ne <| Polynomial.coeff_eq_zero_of_natDegree_lt <|
    h.trans_lt <| Nat.pos_iff_ne_zero.2 hσi).irreducible_iff_irreducible_map_fraction_map
    (K := k').1 hF₁irr
  contrapose coeff_ne with Hsep
  have : CharP k' p := (expChar_of_injective_algebraMap (algebraMap k k').injective p).casesOn
    (fun e ↦ (e rfl).elim) (fun _ _ _ ↦ ‹_›) hp.ne_one
  obtain ⟨g, hg, eq⟩ := (((minpoly k' (a i)).separable_or p (minpoly.irreducible
    (isAlgebraic_iff_isIntegral.mp <| isAlgebraic_adjoin_iff.mpr alg))).resolve_left Hsep).2
  replace eq := congr(Polynomial.coeff $eq (σ i))
  rwa [← minpoly.eq_of_irreducible hF₂irr ((Polynomial.aeval_map_algebraMap ..).trans
    (aeval_toPolynomialAdjoinImageCompl_eq_zero hFa i)), Polynomial.coeff_mul_C,
    Polynomial.coeff_expand hp.pos, ite_eq_right hi, eq_mul_inv_iff_mul_eq₀
    (by simpa using hF₂irr.ne_zero), zero_mul, eq_comm,
    Polynomial.coeff_map, map_eq_zero_iff _ (FaithfulSMul.algebraMap_injective ..)] at eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Varianta8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Varianta8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b43df4fcbf568c96076d936680befd256dcaef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
