# resultant_eq_prod_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d226ab5d-cfc7-c715-2133-118f3c34d1ba",
  "kind": "lemma",
  "lexical_name": "resultant_eq_prod_eval",
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
  "slug": "resultant-eq-prod-eval--5c1317aa6cef7b498f3c9738",
  "source": {
    "blob": "3ed264ee72c569807fee84ec7696bcf5a010dfb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 486,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c1317aa6cef7b498f3c9738e919e982838eb8ef6e6cdd13d4df53ffb5d4d479",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d226ab5d-cfc7-c715-2133-118f3c34d1ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma resultant_eq_prod_eval [IsDomain R]
    (f g : R[X]) (n : ℕ) (hg : g.natDegree ≤ n) (hf : f.Splits) :
    resultant f g f.natDegree n = f.leadingCoeff ^ n * (f.roots.map g.eval).prod := by
  wlog hR : IsField R
  · let K := FractionRing R
    apply FaithfulSMul.algebraMap_injective R K
    have := this (f.map (algebraMap R K)) (g.map (algebraMap R K)) n (natDegree_map_le.trans hg)
      (hf.map _) (Field.toIsField _)
    simp only [resultant_map_map, natDegree_map_eq_of_injective, leadingCoeff_map_of_injective,
      FaithfulSMul.algebraMap_injective R K, ← hf.natDegree_eq_card_roots,
      ← roots_map_of_injective_of_card_eq_natDegree] at this
    simpa [map_multiset_prod, aeval_algebraMap_apply, Multiset.map_map] using this
  by_cases hf0 : f = 0
  · simp [hf0]
  wlog hfm : f.Monic
  · let inst := hR.toField
    have H : (C f.leadingCoeff⁻¹ * f).Monic := by
      rw [Monic, ← coeff_natDegree, natDegree_C_mul (by simp [hf0]), coeff_C_mul]; simp [hf0]
    have := this (C f.leadingCoeff⁻¹ * f) g n hg (.mul (.C _) hf) hR (by simpa) H
    simpa [hf0, natDegree_C_mul, resultant_C_mul_left, inv_mul_eq_iff_eq_mul₀, roots_C_mul,
      H.leadingCoeff] using this
  simp only [hfm.leadingCoeff, one_pow, one_mul]
  clear hf0
  by_cases hg0 : g = 0
  · subst hg0
    by_cases hf' : f.natDegree = 0
    · obtain ⟨r, rfl⟩ := hfm.natDegree_eq_zero.mp hf'; simp
    simp [← hf.natDegree_eq_card_roots, hf']
  wlog hgm : g.Monic
  · let inst := hR.toField
    have := this f (C g.leadingCoeff⁻¹ * g) n (by simpa [hg0, natDegree_C_mul]) hf hR hfm (by simpa)
      (by rw [Monic, ← coeff_natDegree, natDegree_C_mul (by simp [hg0]), coeff_C_mul]; simp [hg0])
    rw [resultant_C_mul_right, inv_pow, inv_mul_eq_iff_eq_mul₀ (by simp [hg0])] at this
    simpa [← hf.natDegree_eq_card_roots, inv_pow, mul_left_comm (_ ^ g.natDegree), hg0] using this
  let inst := hR.toField
  let L := g.SplittingField
  apply (algebraMap R L).injective
  have := resultant_eq_prod_roots_sub (f.map (algebraMap R L))
    (g.map (algebraMap R L)) (hfm.map _) (hgm.map _) (hf.map _) (SplittingField.splits _)
  simp_rw [natDegree_map] at this
  rw [← resultant_map_map, ← Nat.add_sub_cancel' hg, resultant_add_right_deg _ _ _ _ _ (by simp),
    this, coeff_map, coeff_natDegree, hfm.leadingCoeff, map_one, one_pow, one_mul,
    map_sub_sprod_roots_eq_prod_map_eval _ _ (hgm.map _) (SplittingField.splits _),
    hf.roots_map, map_multiset_prod, Multiset.map_map]
  simp only [eval_map_algebraMap, Function.comp_apply, Multiset.map_map, L]
  congr; ext; simp [aeval_algebraMap_apply]

set_option linter.unusedVariables false in
-- the variable names are used in the code action of `induction`.
/-- An induction principle useful to prove statements about resultants.
Let `P` be a predicate on a polynomial.
If `R → S` injective implies `(∀ p : S[X], P p) → (∀ p : R[X], P p)`,
and if `R → S` surjective implies `(∀ p : R[X], P p) → (∀ p : S[X], P p)`,
then we may reduce to the case where `R` is a field and `p` splits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed264ee72c569807fee84ec7696bcf5a010dfb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
