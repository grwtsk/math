# sheafifyHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9066dfe90f93470b90d533fd11f41ee0fa9ed94239ebb3ab53b05235559c06aa",
  "kind": "def",
  "lexical_name": "sheafifyHomEquiv",
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
  "slug": "sheafifyhomequiv--59290c373ae257525e687ca2",
  "source": {
    "blob": "060af8b81f87c9a911eff19cabd08a88feb3835c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 363,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59290c373ae257525e687ca29f2af6883e1adcd3568fc988bb1d93b5315796c1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9066dfe90f93470b90d533fd11f41ee0fa9ed94239ebb3ab53b05235559c06aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sheafifyHomEquiv {F : SheafOfModules.{v} R} :
    (sheafify α φ ⟶ F) ≃
      (M₀ ⟶ (restrictScalars α).obj ((SheafOfModules.forget _).obj F)) :=
  (SheafOfModules.fullyFaithfulForget R).homEquiv.trans
    (sheafifyHomEquiv' α φ F.isSheaf)

section

variable {M₀' : PresheafOfModules.{v} R₀} {A' : Sheaf J AddCommGrp.{v}}
  (φ' : M₀'.presheaf ⟶ A'.val)
  [Presheaf.IsLocallyInjective J φ'] [Presheaf.IsLocallySurjective J φ']
  (τ₀ : M₀ ⟶ M₀') (τ : A ⟶ A')

/-- The morphism of sheaves of modules `sheafify α φ ⟶ sheafify α φ'`
induced by morphisms `τ₀ : M₀ ⟶ M₀'` and `τ : A ⟶ A'`
which satisfy `τ₀.hom ≫ φ' = φ ≫ τ.val`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `060af8b81f87c9a911eff19cabd08a88feb3835c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
