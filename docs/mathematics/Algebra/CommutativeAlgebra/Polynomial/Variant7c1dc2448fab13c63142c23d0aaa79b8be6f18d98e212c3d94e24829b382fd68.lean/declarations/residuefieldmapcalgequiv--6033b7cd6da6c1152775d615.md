# residueFieldMapCAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d37c45474ee7d9c81d56f4d81f993b84160ea319c89d646871fec9889f97ea7",
  "kind": "def",
  "lexical_name": "residueFieldMapCAlgEquiv",
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
  "slug": "residuefieldmapcalgequiv--6033b7cd6da6c1152775d615",
  "source": {
    "blob": "0a9d7787952bdc5a050d2eb40a30145e195b89ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 43,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant7c1dc2448fab13c63142c23d0aaa79b8be6f18d98e212c3d94e24829b382fd68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6033b7cd6da6c1152775d615fad5887c8a52f8b39089c779fec28dbfb68d566c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant7c1dc2448fab13c63142c23d0aaa79b8be6f18d98e212c3d94e24829b382fd68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d37c45474ee7d9c81d56f4d81f993b84160ea319c89d646871fec9889f97ea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def residueFieldMapCAlgEquiv (hJ : J = I.map C) :
    J.ResidueField ≃ₐ[I.ResidueField] RatFunc I.ResidueField := by
  letI f : J.ResidueField →+* RatFunc I.ResidueField := by
    refine Ideal.ResidueField.lift _
        ((algebraMap I.ResidueField[X] _).comp (mapRingHom (algebraMap _ _))) ?_ ?_
    · simp [hJ, Ideal.map_le_iff_le_comap, RingHom.comap_ker _ C, mapRingHom_comp_C,
        RingHom.ker_comp_of_injective, C_injective,
        FaithfulSMul.algebraMap_injective I.ResidueField[X] (RatFunc I.ResidueField)]
    · rintro x (hx : x ∉ J)
      suffices ∃ i, x.coeff i ∉ I by simpa [IsUnit.mem_submonoid_iff, Polynomial.ext_iff]
      contrapose! hx
      rwa [hJ, Ideal.mem_map_C_iff]
  haveI hf : f.comp (algebraMap I.ResidueField _) = algebraMap _ _ := by
    ext
    simp [f, ← IsScalarTower.algebraMap_apply, IsScalarTower.algebraMap_apply R R[X] J.ResidueField]
  refine .ofAlgHom ⟨f, fun r ↦ congr($hf r)⟩
      (RatFunc.liftAlgHom (aeval (algebraMap R[X] _ X)) fun x ↦ ?_) ?_ ?_
  · suffices Function.Injective (aeval (R := I.ResidueField) (algebraMap R[X] J.ResidueField X)) by
      simp [← this.eq_iff]
    rw [injective_iff_map_eq_zero]
    intro x hx
    obtain ⟨r, hr⟩ := map_surjective _ Ideal.Quotient.mk_surjective
      (IsLocalization.integerNormalization (R ⧸ I)⁰ x)
    obtain ⟨s, hs, hr⟩ : ∃ s ∉ I, r.map (algebraMap _ _) = s • x := by
      obtain ⟨b, hb0, hb⟩ := IsLocalization.integerNormalization_spec (R ⧸ I)⁰ x
      obtain ⟨s, rfl⟩ := Ideal.Quotient.mk_surjective b
      refine ⟨s, by simpa [Ideal.Quotient.eq_zero_iff_mem] using! hb0, ?_⟩
      simpa [← hr, map_map, ← Ideal.Quotient.algebraMap_eq] using! hb
    replace hx : r ∈ J := by
      apply_fun aeval (algebraMap R[X] J.ResidueField X) at hr
      simpa [hx, aeval_map_algebraMap, aeval_algebraMap_apply, Algebra.smul_def] using! hr
    refine ((IsUnit.mk0 (algebraMap R I.ResidueField s) (by simpa)).map C).mul_right_injective ?_
    simp only [← algebraMap_eq, ← Algebra.smul_def]
    rw [algebraMap_smul]
    simp only [← hr]
    simpa [Polynomial.ext_iff, Ideal.mem_map_C_iff] using! hJ.le hx
  · apply AlgHom.coe_ringHom_injective
    apply IsFractionRing.injective_comp_algebraMap (A := I.ResidueField[X])
    dsimp [RatFunc.liftAlgHom]
    simp only [AlgHom.comp_toRingHom, AlgHom.coe_ringHom_mk, RingHom.comp_assoc,
      RatFunc.liftRingHom_comp_algebraMap, RingHomCompTriple.comp_eq, f]
    ext <;> simp [← IsScalarTower.algebraMap_apply,
      IsScalarTower.algebraMap_apply R R[X] J.ResidueField]
  · apply AlgHom.coe_ringHom_injective
    ext
    · simp [f, RatFunc.liftAlgHom, ← IsScalarTower.algebraMap_apply]; rfl
    · simp [f, RatFunc.liftAlgHom]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant7c1dc2448fab13c63142c23d0aaa79b8be6f18d98e212c3d94e24829b382fd68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant7c1dc2448fab13c63142c23d0aaa79b8be6f18d98e212c3d94e24829b382fd68.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a9d7787952bdc5a050d2eb40a30145e195b89ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
