# weightedHomogeneousComponent_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7058f553d4e5cbb412c381a098548b98c9524fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 451,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:802a88cd-a768-2440-1936-231bce5e5acf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a0b1e39-e13a-b5d4-3aed-e9f959179d46",
  "kind": "theorem",
  "lexical_name": "weightedHomogeneousComponent_zero",
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
  "slug": "weightedhomogeneouscomponent-zero--7b034d2700baac5ca4d82249",
  "source": {
    "blob": "c7058f553d4e5cbb412c381a098548b98c9524fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 451,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b034d2700baac5ca4d822491b6131afe2504ced56ca2a9a5ff1e8b8a01fc8d7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a0b1e39-e13a-b5d4-3aed-e9f959179d46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedHomogeneousComponent_zero [NoZeroSMulDivisors ℕ M] (hw : ∀ i : σ, w i ≠ 0) :
    weightedHomogeneousComponent w 0 φ = C (coeff 0 φ) := by
  classical
  ext1 d
  rcases Classical.em (d = 0) with (rfl | hd)
  · simp only [coeff_weightedHomogeneousComponent, if_pos, map_zero, coeff_zero_C]
  · rw [coeff_weightedHomogeneousComponent, if_neg, coeff_C, if_neg (Ne.symm hd)]
    simp only [weightedDegree', LinearMap.toAddMonoidHom_coe, Finsupp.total_apply, Finsupp.sum,
      sum_eq_zero_iff, Finsupp.mem_support_iff, Ne.def, smul_eq_zero, not_forall, not_or,
      and_self_left, exists_prop]
    simp only [FunLike.ext_iff, Finsupp.coe_zero, Pi.zero_apply, not_forall] at hd
    obtain ⟨i, hi⟩ := hd
    exact ⟨i, hi, hw i⟩
#align mv_polynomial.weighted_homogeneous_component_zero MvPolynomial.weightedHomogeneousComponent_zero

end CanonicallyOrderedAddMonoid

end MvPolynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7058f553d4e5cbb412c381a098548b98c9524fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
