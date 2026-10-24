# FiniteDimensional.exists_is_basis_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ac44b4c-ecc9-aa38-0e4f-7b4715446c33",
  "kind": "theorem",
  "lexical_name": "FiniteDimensional.exists_is_basis_integral",
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
  "slug": "finitedimensional-exists-is-basis-integral--10b10a2aabc5089d50f92c69",
  "source": {
    "blob": "b013227984ab473e2ea4fc15f771a404391c0c9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 132,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10b10a2aabc5089d50f92c694dc27243bb687949615f316887c8ce99b05d373f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ac44b4c-ecc9-aa38-0e4f-7b4715446c33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteDimensional.exists_is_basis_integral :
    ∃ (s : Finset L) (b : Basis s K L), ∀ x, IsIntegral A (b x) := by
  letI := Classical.decEq L
  letI : IsNoetherian K L := IsNoetherian.iff_fg.2 inferInstance
  let s' := IsNoetherian.finsetBasisIndex K L
  let bs' := IsNoetherian.finsetBasis K L
  obtain ⟨y, hy, his'⟩ := exists_integral_multiples A K (Finset.univ.image bs')
  have hy' : algebraMap A L y ≠ 0 := by
    refine mt ((injective_iff_map_eq_zero (algebraMap A L)).mp ?_ _) hy
    rw [IsScalarTower.algebraMap_eq A K L]
    exact (algebraMap K L).injective.comp (IsFractionRing.injective A K)
  refine ⟨s', bs'.map {Algebra.lmul _ _ (algebraMap A L y) with
    toFun := fun x => algebraMap A L y * x
    invFun := fun x => (algebraMap A L y)⁻¹ * x
    left_inv := ?_
    right_inv := ?_}, ?_⟩
  · intro x; simp only [inv_mul_cancel_left₀ hy']
  · intro x; simp only [mul_inv_cancel_left₀ hy']
  · rintro ⟨x', hx'⟩
    simp only [Algebra.smul_def, Finset.mem_image, exists_prop, Finset.mem_univ,
      true_and] at his'
    simp only [Basis.map_apply, LinearEquiv.coe_mk]
    exact his' _ ⟨_, rfl⟩

variable [Algebra.IsSeparable K L]

/-- If `L` is a finite separable extension of `K = Frac(A)`, where `A` is
integrally closed and Noetherian, the integral closure `C` of `A` in `L` is
Noetherian over `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant2c006087877d901b9e83ceba0483a8112fe83a54145054e24f595e9c0f550997.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b013227984ab473e2ea4fc15f771a404391c0c9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
