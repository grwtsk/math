# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d48a54ec7e55f5b2734579bce4e86884844d3a75e466b98995938d2034ecfb5",
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
  "slug": "instance--6fb9d254e93f6a752559d8ee",
  "source": {
    "blob": "d332b1c9c3f5d12ce3b417cabb860f09e0f4b603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant02a330fb811d8a1c6c7eeb48ba8640a609b786319f655435d5ae7fe584dd1f2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fb9d254e93f6a752559d8ee786e07a5fbb833d67eff44340db77e170e21bc9e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant02a330fb811d8a1c6c7eeb48ba8640a609b786319f655435d5ae7fe584dd1f2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d48a54ec7e55f5b2734579bce4e86884844d3a75e466b98995938d2034ecfb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : PreservesFiniteProducts (yonedaPresheaf'.{w, w'} Y) where
  preserves _ :=
    { preservesLimit := fun {K} =>
      have : ∀ {α : Type} (X : α → TopCat), PreservesLimit (Discrete.functor (fun x ↦ op (X x)))
          (yonedaPresheaf'.{w, w'} Y) := fun X => @PreservesProduct.of_iso_comparison _ _ _ _
          (yonedaPresheaf' Y) _ (fun x ↦ op (X x)) _ _ (by rw [piComparison_fac]; infer_instance)
      let i : K ≅ Discrete.functor (fun i ↦ op (unop (K.obj ⟨i⟩))) := Discrete.natIsoFunctor
      preservesLimit_of_iso_diagram _ i.symm }

end ContinuousMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant02a330fb811d8a1c6c7eeb48ba8640a609b786319f655435d5ae7fe584dd1f2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant02a330fb811d8a1c6c7eeb48ba8640a609b786319f655435d5ae7fe584dd1f2c.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d332b1c9c3f5d12ce3b417cabb860f09e0f4b603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
