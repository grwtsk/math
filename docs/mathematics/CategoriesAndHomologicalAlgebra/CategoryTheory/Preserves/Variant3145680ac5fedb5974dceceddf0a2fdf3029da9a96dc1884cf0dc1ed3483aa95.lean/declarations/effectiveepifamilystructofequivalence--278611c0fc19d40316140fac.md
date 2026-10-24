# effectiveEpiFamilyStructOfEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:994f81eae2ebfc49ebb62e055e238a414b0e74dde1ceb279ea1d86f78f9bd1da",
  "kind": "def",
  "lexical_name": "effectiveEpiFamilyStructOfEquivalence",
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
  "slug": "effectiveepifamilystructofequivalence--278611c0fc19d40316140fac",
  "source": {
    "blob": "b85e2adadfb3f1d155656274b6574134278b9173",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 47,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:278611c0fc19d40316140face3f7cb000ecdd2e9602862f623d11a2194407769",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:994f81eae2ebfc49ebb62e055e238a414b0e74dde1ceb279ea1d86f78f9bd1da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def effectiveEpiFamilyStructOfEquivalence : EffectiveEpiFamilyStruct (fun a ↦ e.functor.obj (X a))
    (fun a ↦ e.functor.map (π a)) where
  desc ε h := (e.toAdjunction.homEquiv _ _).symm
      (EffectiveEpiFamily.desc X π (fun a ↦ e.unit.app _ ≫ e.inverse.map (ε a))
      (effectiveEpiFamilyStructOfEquivalence_aux e X π ε h))
  fac ε h a := by
    simp only [Functor.comp_obj, Adjunction.homEquiv_counit, Functor.id_obj,
      Equivalence.toAdjunction_counit]
    have := congrArg ((fun f ↦ f ≫ e.counit.app _) ∘ e.functor.map)
      (EffectiveEpiFamily.fac X π (fun a ↦ e.unit.app _ ≫ e.inverse.map (ε a))
      (effectiveEpiFamilyStructOfEquivalence_aux e X π ε h) a)
    simp only [Functor.id_obj, Functor.comp_obj, Function.comp_apply, Functor.map_comp,
        Category.assoc, Equivalence.fun_inv_map, Iso.inv_hom_id_app, Category.comp_id] at this
    simp [this]
  uniq ε h m hm := by
    simp only [Functor.comp_obj, Adjunction.homEquiv_counit, Functor.id_obj,
      Equivalence.toAdjunction_counit]
    have := EffectiveEpiFamily.uniq X π (fun a ↦ e.unit.app _ ≫ e.inverse.map (ε a))
      (effectiveEpiFamilyStructOfEquivalence_aux e X π ε h)
    specialize this (e.unit.app _ ≫ e.inverse.map m) fun a ↦ ?_
    · rw [← congrArg e.inverse.map (hm a)]
      simp
    · simp [← this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b85e2adadfb3f1d155656274b6574134278b9173` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
