# repr_gen_pow_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b212d3d246ecb1218921e7dd4acd97a576bd50d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:537c760b-06f0-cbf3-21a3-39651d83ec25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7127aa38-4829-74ad-b75e-3eb108b4e2b4",
  "kind": "theorem",
  "lexical_name": "repr_gen_pow_isIntegral",
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
  "slug": "repr-gen-pow-isintegral--9a00b5ffd33ba3a4422fdf37",
  "source": {
    "blob": "b212d3d246ecb1218921e7dd4acd97a576bd50d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 102,
    "path": "GRWTSK/Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a00b5ffd33ba3a4422fdf375262e66699c1ddd9a8d4fe68491746bb307208bc",
  "verification": {
    "reference": "docs/verification/Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7127aa38-4829-74ad-b75e-3eb108b4e2b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repr_gen_pow_isIntegral [IsDomain S]
    (hmin : minpoly S B.gen = (minpoly R B.gen).map (algebraMap R S)) (n : ℕ) :
    ∀ i, IsIntegral R (B.basis.repr (B.gen ^ n) i) := by
  intro i
  let Q := X ^ n %ₘ minpoly R B.gen
  have : B.gen ^ n = aeval B.gen Q := by
    rw [← @aeval_X_pow R _ _ _ _ B.gen, ← modByMonic_add_div (X ^ n) (minpoly.monic hB)]
    simp
  by_cases hQ : Q = 0
  · simp [this, hQ, isIntegral_zero]
  have hlt : Q.natDegree < B.dim := by
    rw [← B.natDegree_minpoly, hmin, (minpoly.monic hB).natDegree_map,
      natDegree_lt_natDegree_iff hQ]
    letI : Nontrivial R := Nontrivial.of_polynomial_ne hQ
    exact degree_modByMonic_lt _ (minpoly.monic hB)
  rw [this, aeval_eq_sum_range' hlt]
  simp only [LinearEquiv.map_sum, LinearEquiv.map_smulₛₗ, RingHom.id_apply, Finset.sum_apply']
  refine' IsIntegral.sum _ fun j hj => _
  replace hj := Finset.mem_range.1 hj
  rw [← Fin.val_mk hj, ← B.basis_eq_pow, Algebra.smul_def, IsScalarTower.algebraMap_apply R S A, ←
    Algebra.smul_def, LinearEquiv.map_smul]
  simp only [algebraMap_smul, Finsupp.coe_smul, Pi.smul_apply, B.basis.repr_self_apply]
  by_cases hij : (⟨j, hj⟩ : Fin _) = i
  · simp only [hij, eq_self_iff_true, if_true]
    rw [Algebra.smul_def, mul_one]
    exact isIntegral_algebraMap
  · simp [hij, isIntegral_zero]
#align power_basis.repr_gen_pow_is_integral PowerBasis.repr_gen_pow_isIntegral

/-- Let `B : PowerBasis S A` be such that `IsIntegral R B.gen`, and let `x y : A` be elements with
integral coordinates in the base `B.basis`. Then `IsIntegral R ((B.basis.repr (x * y) i)` for all
`i` if `minpoly S B.gen = (minpoly R B.gen).map (algebraMap R S)`. This is the case if `R` is a GCD
domain and `S` is its fraction ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b212d3d246ecb1218921e7dd4acd97a576bd50d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
