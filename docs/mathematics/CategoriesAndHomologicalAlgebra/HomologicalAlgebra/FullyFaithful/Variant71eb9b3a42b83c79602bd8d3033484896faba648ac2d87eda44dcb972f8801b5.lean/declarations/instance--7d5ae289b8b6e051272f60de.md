# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d0e5b0c2a236ac753c85dd5086fdb8bd93c81e982668e753cf3394928967e6c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7d5ae289b8b6e051272f60de",
  "source": {
    "blob": "876924b04458252d1f62b3e51e5a7b82e1cb80a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FullyFaithful/Variant71eb9b3a42b83c79602bd8d3033484896faba648ac2d87eda44dcb972f8801b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d5ae289b8b6e051272f60deb4bcea82060dae6ecfb7fb52f5479252f047642b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FullyFaithful/Variant71eb9b3a42b83c79602bd8d3033484896faba648ac2d87eda44dcb972f8801b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d0e5b0c2a236ac753c85dd5086fdb8bd93c81e982668e753cf3394928967e6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (n : ℤ) : (singleFunctor C n).Full where
  map_surjective {A B} f := by
    change Q.obj ((CochainComplex.singleFunctor C n).obj A) ⟶
      Q.obj ((CochainComplex.singleFunctor C n).obj B) at f
    suffices ∃ f', f = Q.map f' by
      obtain ⟨f', rfl⟩ := this
      obtain ⟨g, rfl⟩ := (CochainComplex.singleFunctor C n).map_surjective f'
      exact ⟨g, rfl⟩
    obtain ⟨X, _, _, s, _, g, rfl⟩ := right_fac_of_isStrictlyLE_of_isStrictlyGE n n f
    obtain ⟨A₀, ⟨e⟩⟩ := X.exists_iso_single n
    have ⟨φ, hφ⟩ := (CochainComplex.singleFunctor C n).map_surjective (e.inv ≫ s)
    have : IsIso ((singleFunctor C n).map φ) := by
      change IsIso (Q.map ((CochainComplex.singleFunctor C n).map φ))
      rw [hφ, Functor.map_comp]
      infer_instance
    have : IsIso φ := (NatIso.isIso_map_iff (singleFunctorCompHomologyFunctorIso C n) φ).1
        (by dsimp; infer_instance)
    have : IsIso (e.inv ≫ s) := by rw [← hφ]; infer_instance
    have : IsIso s := IsIso.of_isIso_comp_left e.inv s
    exact ⟨inv s ≫ g, by simp⟩

end DerivedCategory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FullyFaithful/Variant71eb9b3a42b83c79602bd8d3033484896faba648ac2d87eda44dcb972f8801b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FullyFaithful/Variant71eb9b3a42b83c79602bd8d3033484896faba648ac2d87eda44dcb972f8801b5.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `876924b04458252d1f62b3e51e5a7b82e1cb80a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
