# Γ₀NondegComplexIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edd2a606b73d3e4e462bedd361bda8ea7778c3deff219140448c0744e8a8b27d",
  "kind": "def",
  "lexical_name": "Γ₀NondegComplexIso",
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
  "slug": "nondegcomplexiso--e71cb3340f21c097bed741d7",
  "source": {
    "blob": "82ef04695fa2d64e2ac1e8d15d65260ce0e6505c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 35,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e71cb3340f21c097bed741d7da8d9ab0c5c7d55b19c66d7ea3336cfbc8e6aea2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edd2a606b73d3e4e462bedd361bda8ea7778c3deff219140448c0744e8a8b27d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Γ₀NondegComplexIso (K : ChainComplex C ℕ) : (Γ₀.splitting K).nondegComplex ≅ K :=
  HomologicalComplex.Hom.isoOfComponents (fun n => Iso.refl _)
    (by
      rintro _ n (rfl : n + 1 = _)
      dsimp
      simp only [id_comp, comp_id, AlternatingFaceMapComplex.obj_d_eq, Preadditive.sum_comp,
        Preadditive.comp_sum]
      rw [Fintype.sum_eq_single (0 : Fin (n + 2))]
      · simp only [Fin.val_zero, pow_zero, one_zsmul]
        erw [Γ₀.Obj.mapMono_on_summand_id_assoc, Γ₀.Obj.Termwise.mapMono_δ₀,
          Splitting.ι_πSummand_eq_id, comp_id]
      · intro i hi
        dsimp
        simp only [Preadditive.zsmul_comp, Preadditive.comp_zsmul, assoc]
        erw [Γ₀.Obj.mapMono_on_summand_id_assoc, Γ₀.Obj.Termwise.mapMono_eq_zero, zero_comp,
          zsmul_zero]
        · intro h
          replace h := congr_arg SimplexCategory.len h
          change n + 1 = n at h
          linarith
        · simpa only [Isδ₀.iff] using hi)
#align algebraic_topology.dold_kan.Γ₀_nondeg_complex_iso AlgebraicTopology.DoldKan.Γ₀NondegComplexIso

/-- The natural isomorphism `(Γ₀.splitting K).nondegComplex ≅ K` for `K : ChainComplex C ℕ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82ef04695fa2d64e2ac1e8d15d65260ce0e6505c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
