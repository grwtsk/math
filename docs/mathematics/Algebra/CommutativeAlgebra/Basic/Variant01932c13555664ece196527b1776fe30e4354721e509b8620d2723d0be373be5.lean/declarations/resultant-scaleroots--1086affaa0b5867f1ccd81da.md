# resultant_scaleRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0abd7dc1-0411-c2d5-eee6-0b751b856ef3",
  "kind": "lemma",
  "lexical_name": "resultant_scaleRoots",
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
  "slug": "resultant-scaleroots--1086affaa0b5867f1ccd81da",
  "source": {
    "blob": "5af96ec828f2fbad992039b9ff6e5febc791c3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 732,
    "line": 688,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1086affaa0b5867f1ccd81da30b499afdc9fca421a54fa4a488f8c36bd4f6089",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0abd7dc1-0411-c2d5-eee6-0b751b856ef3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 688–732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma resultant_scaleRoots (f g : R[X]) (r : R) :
    resultant (f.scaleRoots r) (g.scaleRoots r) =
      r ^ (f.natDegree * g.natDegree) * resultant f g := by
  rw [natDegree_scaleRoots, natDegree_scaleRoots]
  obtain rfl | hf := eq_or_ne f 0; · simp
  obtain rfl | hg := eq_or_ne g 0; · simp
  induction f using induction_of_Splits_of_injective_of_surjective with
  | Splits R f hf' =>
    by_cases hf0 : f.natDegree = 0
    · obtain ⟨a, rfl⟩ := natDegree_eq_zero.mp hf0; simp
    by_cases hg0 : g.natDegree = 0
    · obtain ⟨a, rfl⟩ := natDegree_eq_zero.mp hg0; simp
    obtain rfl | hr := eq_or_ne r 0
    · rw [scaleRoots_zero, scaleRoots_zero, Algebra.smul_def, Algebra.smul_def]
      simp [resultant_C_mul_right, resultant_X_pow_right, *, (Ne.symm hf0)]
    conv_lhs => rw [← natDegree_scaleRoots f r, ← natDegree_scaleRoots g r]
    rw [resultant_eq_prod_eval _ _ _ le_rfl hf',
      resultant_eq_prod_eval _ _ _ le_rfl (hf'.scaleRoots _),
      roots_scaleRoots _ (isUnit_iff_ne_zero.mpr hr)]
    simp only [Multiset.map_map, Function.comp_def, scaleRoots_eval_mul]
    simp only [leadingCoeff_scaleRoots, natDegree_scaleRoots, Multiset.prod_map_mul,
      Multiset.map_const', Multiset.prod_replicate, ← hf'.natDegree_eq_card_roots]
    ring
  | injective R S φ hφ f IH =>
    have := IH (g.map φ) (φ r) (by simpa using (map_injective _ hφ).ne hf)
      (by simpa using (map_injective _ hφ).ne hg)
    apply hφ
    rw [← map_scaleRoots, ← map_scaleRoots] at this
    · simpa [natDegree_map_eq_of_injective hφ] using this
    all_goals simpa [map_eq_zero_iff _ hφ]
  | surjective R S φ hφ f IH =>
    obtain ⟨f', hf', ef⟩ := exists_degree_eq_of_mem_lifts (Polynomial.map_surjective φ hφ f)
    obtain ⟨g', hg', eg⟩ := exists_degree_eq_of_mem_lifts (Polynomial.map_surjective φ hφ g)
    obtain ⟨r, rfl⟩ := hφ r
    have hfl : f.leadingCoeff = φ f'.leadingCoeff := by
      simp_rw [← coeff_natDegree, ← natDegree_eq_natDegree ef, ← hf', coeff_map]
    have hgl : g.leadingCoeff = φ g'.leadingCoeff := by
      simp_rw [← coeff_natDegree, ← natDegree_eq_natDegree eg, ← hg', coeff_map]
    rw [← hf', ← map_scaleRoots _ _ _ (by simpa [← hfl]), ← hg',
      ← map_scaleRoots _ _ _ (by simpa [← hgl]), hf', hg',
      ← natDegree_eq_natDegree ef, ← natDegree_eq_natDegree eg,
      resultant_map_map, IH f' g' r (by aesop) (by aesop)]
    rw [← hf', ← hg', resultant_map_map]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean#L688).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af96ec828f2fbad992039b9ff6e5febc791c3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
