# homotopyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f799a6762c7300e21f496cacfac43801d7fe6d8d0719726e1c2cf4489ab498c",
  "kind": "def",
  "lexical_name": "homotopyEquiv",
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
  "slug": "homotopyequiv--04e2f65540043b71a4ddda8b",
  "source": {
    "blob": "9e96519b8a2ff1d219d1c723378e51e881efe884",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 362,
    "path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04e2f65540043b71a4ddda8bf0530c7118a76fbd0023d87a547ef85f7b0762d5",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f799a6762c7300e21f496cacfac43801d7fe6d8d0719726e1c2cf4489ab498c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homotopyEquiv [Preadditive C] [HasZeroObject C]
    {X : SimplicialObject.Augmented C} (ed : ExtraDegeneracy X) :
    HomotopyEquiv (AlgebraicTopology.AlternatingFaceMapComplex.obj (drop.obj X))
      ((ChainComplex.single₀ C).obj (point.obj X)) where
  hom := AlternatingFaceMapComplex.ε.app X
  inv := (ChainComplex.fromSingle₀Equiv _ _).symm (by exact ed.s')
  homotopyInvHomId := Homotopy.ofEq (by
    ext
    dsimp
    erw [AlternatingFaceMapComplex.ε_app_f_zero,
      ChainComplex.fromSingle₀Equiv_symm_apply_f_zero, s'_comp_ε]
    rfl)
  homotopyHomInvId :=
    { hom i := Pi.single (i + 1) (-ed.s i)
      zero i j hij := Pi.single_eq_of_ne (Ne.symm hij) _
      comm i := by
        cases i with
        | zero =>
          rw [Homotopy.prevD_chainComplex, Homotopy.dNext_zero_chainComplex, zero_add]
          dsimp
          erw [ChainComplex.fromSingle₀Equiv_symm_apply_f_zero]
          simp only [ComplexShape.down_Rel, AlternatingFaceMapComplex.obj_d_eq]
          rw [Fin.sum_univ_two]
          simp [s_comp_δ₀, s₀_comp_δ₁]
        | succ i =>
          rw [Homotopy.prevD_chainComplex, Homotopy.dNext_succ_chainComplex]
          simp [Fin.sum_univ_succ (n := i + 2), s_comp_δ₀, Preadditive.sum_comp,
            Preadditive.zsmul_comp, Preadditive.comp_sum, Preadditive.comp_zsmul,
            s_comp_δ, pow_succ] }

end ExtraDegeneracy

end Augmented

end SimplicialObject

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e96519b8a2ff1d219d1c723378e51e881efe884` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
