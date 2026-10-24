# effectiveEpiStructOfQuotientMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6500b984e7b0a3124d34c973ff5642f11b045ba89e7b7ad84e907305d4554dac",
  "kind": "def",
  "lexical_name": "effectiveEpiStructOfQuotientMap",
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
  "slug": "effectiveepistructofquotientmap--4a389a72e0bd70ccc430de66",
  "source": {
    "blob": "3dc41cdf2faeabf0bd31e08eaa574e28e4ec2923",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 29,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a389a72e0bd70ccc430de66302d00c4503491b3c75b3d1197849077c7185194",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6500b984e7b0a3124d34c973ff5642f11b045ba89e7b7ad84e907305d4554dac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def effectiveEpiStructOfQuotientMap {B X : TopCat.{u}} (π : X ⟶ B) (hπ : IsQuotientMap π) :
    EffectiveEpiStruct π where
  /- `IsQuotientMap.lift` gives the required morphism -/
  desc e h := ofHom <| hπ.lift e.hom fun a b hab ↦
    CategoryTheory.congr_fun (h
      (ofHom ⟨fun _ ↦ a, continuous_const⟩)
      (ofHom ⟨fun _ ↦ b, continuous_const⟩)
    (by ext; exact hab)) a
  /- `IsQuotientMap.lift_comp` gives the factorisation -/
  fac e h := hom_ext (hπ.lift_comp e.hom
    fun a b hab ↦ CategoryTheory.congr_fun (h
      (ofHom ⟨fun _ ↦ a, continuous_const⟩)
      (ofHom ⟨fun _ ↦ b, continuous_const⟩)
    (by ext; exact hab)) a)
  /- Uniqueness follows from the fact that `IsQuotientMap.lift` is an equivalence (given by
  `IsQuotientMap.liftEquiv`). -/
  uniq e h g hm := by
    suffices g = ofHom (hπ.liftEquiv ⟨e.hom,
      fun a b hab ↦ CategoryTheory.congr_fun (h
          (ofHom ⟨fun _ ↦ a, continuous_const⟩)
          (ofHom ⟨fun _ ↦ b, continuous_const⟩)
          (by ext; exact hab))
        a⟩) by assumption
    apply hom_ext
    rw [hom_ofHom, ← Equiv.symm_apply_eq hπ.liftEquiv]
    ext
    simp only [IsQuotientMap.liftEquiv_symm_apply_coe, ContinuousMap.comp_apply, ← hm]
    rfl

/-- The effective epimorphisms in `TopCat` are precisely the quotient maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dc41cdf2faeabf0bd31e08eaa574e28e4ec2923` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
