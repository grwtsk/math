# Pi.equivalenceOfEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26849b7378826e3e660497fca38f7af0adc025b13045d9890b238576ef0f0a1a",
  "kind": "def",
  "lexical_name": "Pi.equivalenceOfEquiv",
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
  "slug": "pi-equivalenceofequiv--230d5af85654da9cf9ae5cd9",
  "source": {
    "blob": "89af3e2b4242962362af1fb2ca4365eed19234dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 321,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4d309e6dc0f0f4eb3ff17e598586cf621bd88f53ca3ba1aeca0156e2527c5919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:230d5af85654da9cf9ae5cd9dd7d22a4c1c794a3d12955e80cc0f8b5f76e7ff5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4d309e6dc0f0f4eb3ff17e598586cf621bd88f53ca3ba1aeca0156e2527c5919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26849b7378826e3e660497fca38f7af0adc025b13045d9890b238576ef0f0a1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Pi.equivalenceOfEquiv (e : J ≃ I) :
    (∀ j, C (e j)) ≌ (∀ i, C i) where
  functor := pi' (fun i => Pi.eval _ (e.symm i) ⋙
    (Pi.eqToEquivalence C (by simp)).functor)
  inverse := Functor.pi' (fun i' => Pi.eval _ (e i'))
  unitIso := NatIso.pi' (fun i' => leftUnitor _ ≪≫
    (Pi.evalCompEqToEquivalenceFunctor (fun j => C (e j)) (e.symm_apply_apply i')).symm ≪≫
    isoWhiskerLeft _ ((Pi.eqToEquivalenceFunctorIso C e (e.symm_apply_apply i')).symm) ≪≫
    (pi'CompEval _ _).symm ≪≫ isoWhiskerLeft _ (pi'CompEval _ _).symm ≪≫
    (associator _ _ _).symm)
  counitIso := NatIso.pi' (fun i => (associator _ _ _).symm ≪≫
    isoWhiskerRight (pi'CompEval _ _) _ ≪≫
    Pi.evalCompEqToEquivalenceFunctor C (e.apply_symm_apply i) ≪≫
    (leftUnitor _).symm)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- A product of categories indexed by `Option J` identifies to a binary product. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4d309e6dc0f0f4eb3ff17e598586cf621bd88f53ca3ba1aeca0156e2527c5919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4d309e6dc0f0f4eb3ff17e598586cf621bd88f53ca3ba1aeca0156e2527c5919.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89af3e2b4242962362af1fb2ca4365eed19234dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
