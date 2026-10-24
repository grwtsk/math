# isIntegral_of_isIntegralElem_of_monic_of_natDegree_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98122731c6ffb3714ba0aa2e741c563b58befd87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47f8e921-7ce4-593b-155b-490736eb3a98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6271365-865b-e902-598f-c3061a14a38f",
  "kind": "lemma",
  "lexical_name": "isIntegral_of_isIntegralElem_of_monic_of_natDegree_lt",
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
  "slug": "isintegral-of-isintegralelem-of-monic-of-natdegree-lt--cad73c4cd3a120c8e1bde696",
  "source": {
    "blob": "98122731c6ffb3714ba0aa2e741c563b58befd87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 144,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cad73c4cd3a120c8e1bde69660e37c6ba0f5b7bf0271503f84a2529b864ca865",
  "verification": {
    "reference": "docs/verification/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6271365-865b-e902-598f-c3061a14a38f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIntegral_of_isIntegralElem_of_monic_of_natDegree_lt
    (ht : φ.IsIntegralElem t) (hpm : p.Monic)
    (hpr : r.natDegree < p.natDegree) (hp : φ p * t = φ r) : IsIntegral R t := by
  let St := Localization.Away t
  let t' : St := IsLocalization.Away.invSelf t
  have ht't : t' * algebraMap S St t = 1 := by rw [mul_comm, IsLocalization.Away.mul_invSelf]
  let R₁ := Algebra.adjoin R {t'}
  let R₂ := Algebra.adjoin R₁ {algebraMap S St (φ X)}
  let : Algebra R₁ R₂ := R₂.algebra
  let : Algebra R₂ St := R₂.toAlgebra
  let : Algebra R₁ St := R₁.toAlgebra
  have : IsScalarTower R₁ R₂ St := Subalgebra.isScalarTower_mid _
  have : Algebra.IsIntegral R₁ R₂ := by
    cases subsingleton_or_nontrivial R₁
    · have := (algebraMap R₁ R₂).codomain_trivial; exact ⟨(Subsingleton.elim · 0 ▸ isIntegral_zero)⟩
    rw [← le_integralClosure_iff_isIntegral, Algebra.adjoin_le_iff, Set.singleton_subset_iff,
      SetLike.mem_coe, mem_integralClosure_iff]
    refine ⟨p.map (algebraMap R R₁) - C ⟨t', Algebra.self_mem_adjoin_singleton R t'⟩ *
        r.map (algebraMap R R₁), (hpm.map _).sub_of_left (degree_lt_degree ?_), ?_⟩
    · grw [natDegree_C_mul_le, natDegree_map_le, hpm.natDegree_map]; assumption
    · simp [← aeval_def, aeval_algebraMap_apply, aeval_algHom_apply,
        ← hp, ← mul_assoc, ht't, mul_right_comm]
  have : IsIntegral R₁ (algebraMap S St t) := by
    refine isIntegral_trans (A := R₂) (algebraMap S St t) ?_
    obtain ⟨q, hq, hq'⟩ := ht
    refine ⟨q.map (aeval ⟨_, Algebra.self_mem_adjoin_singleton _ _⟩).toRingHom, hq.map _, ?_⟩
    rw [AlgHom.toRingHom_eq_coe, eval₂_map, ← map_zero (algebraMap S St), ← hq',
      hom_eval₂]
    congr 1
    ext <;> simp [-Polynomial.algebraMap_apply, ← algebraMap_eq, ← IsScalarTower.algebraMap_apply]
  simpa using IsLocalization.Away.isIntegral_of_isIntegral_map t
    (isIntegral_of_isIntegral_adjoin_of_mul_eq_one _ _ ht't this)

@[stacks 00PT]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98122731c6ffb3714ba0aa2e741c563b58befd87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
