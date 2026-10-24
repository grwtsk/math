# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ce69511ffa0d9e995ca5c39bca2d07309691d82bd83170b5139ae7f97820a53",
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
  "slug": "instance--08b8e8a5b8a1ea13edd86f39",
  "source": {
    "blob": "be6467ae0007cbc8775f3c8a664e9d991fabbdf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf00d6d1e7b2b27653a44a8a26040e99716b94397ee42d6d1252f4dadbdcaa589.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08b8e8a5b8a1ea13edd86f39b3cba0961565edfdb61492d92f074ae6816a819d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf00d6d1e7b2b27653a44a8a26040e99716b94397ee42d6d1252f4dadbdcaa589.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ce69511ffa0d9e995ca5c39bca2d07309691d82bd83170b5139ae7f97820a53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (functorToContAction F).EssSurj := by
  let F' : C ⥤ FintypeCat.{u₁} := F ⋙ FintypeCat.uSwitch.{w, u₁}
  letI : FiberFunctor F' := FiberFunctor.comp_right _
  have : (functorToContAction F').EssSurj := inferInstance
  let f : Aut F ≃ₜ* Aut F' :=
    (autEquivAutWhiskerRight F (FintypeCat.uSwitchEquivalence.{w, u₁}).fullyFaithfulFunctor)
  let equiv : ContAction FintypeCat.{u₁} (Aut F') ≌ ContAction FintypeCat.{w} (Aut F) :=
    (FintypeCat.uSwitchEquivalence.{u₁, w}.mapContAction (Aut F')
       (fun X ↦ by
          rw [Action.isContinuous_def]
          show Continuous ((fun p ↦ (FintypeCat.uSwitchEquiv X.obj.V).symm p) ∘
              (fun p : Aut F' × _ ↦ (X.obj.ρ p.1) p.2) ∘
              (fun p : Aut F' × _ ↦ (p.1, FintypeCat.uSwitchEquiv _ p.2)))
          have : Continuous (fun p : Aut F' × _ ↦ (X.obj.ρ p.1) p.2) := X.2.1
          fun_prop)
       (fun X ↦ by
          rw [Action.isContinuous_def]
          show Continuous ((fun p ↦ (FintypeCat.uSwitchEquiv X.obj.V).symm p) ∘
              (fun p : Aut F' × _ ↦ (X.obj.ρ p.1) p.2) ∘
              (fun p : Aut F' × _ ↦ (p.1, FintypeCat.uSwitchEquiv _ p.2)))
          have : Continuous (fun p : Aut F' × _ ↦ (X.obj.ρ p.1) p.2) := X.2.1
          fun_prop)).trans <|
      ContAction.resEquiv _ f
  have : functorToContAction F ≅ functorToContAction F' ⋙ equiv.functor :=
    NatIso.ofComponents
      (fun X ↦ ObjectProperty.isoMk _ (Action.mkIso (FintypeCat.uSwitchEquivalence.unitIso.app _)
      (fun g ↦ FintypeCat.uSwitchEquivalence.unitIso.hom.naturality (g.hom.app X))))
      (fun f ↦ by
        ext : 2
        exact FintypeCat.uSwitchEquivalence.unitIso.hom.naturality (F.map f))
  exact Functor.essSurj_of_iso this.symm

/-- Any fiber functor `F` induces an equivalence of categories with the category of finite and
discrete `Aut F`-sets. -/
@[stacks 0BN4]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf00d6d1e7b2b27653a44a8a26040e99716b94397ee42d6d1252f4dadbdcaa589.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf00d6d1e7b2b27653a44a8a26040e99716b94397ee42d6d1252f4dadbdcaa589.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be6467ae0007cbc8775f3c8a664e9d991fabbdf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
