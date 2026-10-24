# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7254bf15417539482be0711fa673233148bfe484d0a351c1ed6efadf78b8207b",
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
  "slug": "instance--9fc9ea2418e2f79d35d092c4",
  "source": {
    "blob": "6585aee6a4155a8620b3a5499806de3788d7997e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 299,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fc9ea2418e2f79d35d092c433f51b428c6f2f4a222e10117416dc94550e79c1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7254bf15417539482be0711fa673233148bfe484d0a351c1ed6efadf78b8207b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private instance : TwoSquare.GuitartExact (iso C).hom :=
  TwoSquare.GuitartExact.quotient_of_nonempty_rightHomotopy (iso C).symm (by
    rintro ⟨K₁, n₁, hn₁⟩ ⟨K₂, n₂, hn₂⟩ f₀ f₁ hf
    obtain ⟨f₀, rfl⟩ := ObjectProperty.homMk_surjective f₀
    obtain ⟨f₁, rfl⟩ := ObjectProperty.homMk_surjective f₁
    dsimp [Functor.mapCochainComplexPlus] at f₀ f₁
    refine ⟨Plus.prepathObject _, ?_, ⟨?_⟩⟩
    · ext : 1
      exact eq_of_homotopy _ _ (pathObject.homotopy₀₁ _ (fun n ↦ ⟨n + 1, by simp⟩))
    · refine PrepathObject.RightHomotopy.fullSubcategoryEquiv.symm
        { h := pathObject.lift f₀ f₁ (homotopyOfEq _ _
          ((HomotopyCategory.Plus.ι C).congr_map hf)) ≫
          (pathObject.mapHomologicalComplexObjIso K₂ (InjectiveObject.ι C)
            (fun n ↦ ⟨n + 1, by simp⟩)).inv
          h₀ := ?_
          h₁ := ?_ }
      all_goals
        dsimp [Functor.mapCochainComplexPlus]
        cat_disch)

end isRightDerivabilityStructure

variable [EnoughInjectives C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6585aee6a4155a8620b3a5499806de3788d7997e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
