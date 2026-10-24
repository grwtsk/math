# exists_algHom_adjoin_of_splits'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d094105b-dab6-e639-808a-5ac17bc00bc0",
  "kind": "theorem",
  "lexical_name": "exists_algHom_adjoin_of_splits'",
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
  "slug": "exists-alghom-adjoin-of-splits--5ad8d19c094ebaa4c1963056",
  "source": {
    "blob": "17d3d8ce10e3e901cd41cd8a423020b8c63c5a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 256,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ad8d19c094ebaa4c19630561c0c40f2ce0b359e4dfe3fc2f12275f7f88d1bfc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d094105b-dab6-e639-808a-5ac17bc00bc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_algHom_adjoin_of_splits' :
    ∃ φ : adjoin L S →ₐ[F] K, φ.restrictDomain L = f := by
  let L' := (IsScalarTower.toAlgHom F L E).fieldRange
  let f' : L' →ₐ[F] K := f.comp (AlgEquiv.ofInjectiveField _).symm.toAlgHom
  have := exists_algHom_adjoin_of_splits'' f' (S := S) fun s hs ↦ ?_
  · obtain ⟨φ, hφ⟩ := this; refine ⟨φ.comp <|
      inclusion (?_ : (adjoin L S).restrictScalars F ≤ (adjoin L' S).restrictScalars F), ?_⟩
    · simp_rw [← SetLike.coe_subset_coe, coe_restrictScalars, adjoin_subset_adjoin_iff]
      exact ⟨subset_adjoin_of_subset_left S (F := L'.toSubfield) le_rfl, subset_adjoin _ _⟩
    · ext x
      let y := (AlgEquiv.ofInjectiveField (IsScalarTower.toAlgHom F L E)) x
      refine Eq.trans congr($hφ y) ?_
      simp only [AlgEquiv.toAlgHom_eq_coe, AlgHom.coe_comp, AlgHom.coe_coe, Function.comp_apply, f']
      exact congr_arg f (AlgEquiv.symm_apply_apply _ _)
  letI : Algebra L L' := (AlgEquiv.ofInjectiveField _).toRingHom.toAlgebra
  have : IsScalarTower L L' E := IsScalarTower.of_algebraMap_eq' rfl
  refine ⟨(hK s hs).1.tower_top, (hK s hs).1.minpoly_splits_tower_top' ?_⟩
  convert (hK s hs).2
  ext
  simp only [AlgEquiv.toAlgHom_eq_coe, AlgHom.toRingHom_eq_coe, RingHom.coe_comp, RingHom.coe_coe,
    AlgHom.coe_comp, AlgHom.coe_coe, Function.comp_apply, f']
  exact congr_arg f (AlgEquiv.symm_apply_apply _ _)

include hK in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17d3d8ce10e3e901cd41cd8a423020b8c63c5a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
