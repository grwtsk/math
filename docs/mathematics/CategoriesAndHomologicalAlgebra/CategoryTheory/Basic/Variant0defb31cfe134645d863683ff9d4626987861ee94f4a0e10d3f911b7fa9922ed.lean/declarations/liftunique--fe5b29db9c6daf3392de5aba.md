# liftUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b7c504df993150b1e4e9b157645a6ffd28f0e34918fc65f5cb71fe60ebcdb52",
  "kind": "def",
  "lexical_name": "liftUnique",
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
  "slug": "liftunique--fe5b29db9c6daf3392de5aba",
  "source": {
    "blob": "f4b2616460df1c777ef96fbb21d9c175356b322f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 736,
    "line": 711,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0defb31cfe134645d863683ff9d4626987861ee94f4a0e10d3f911b7fa9922ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe5b29db9c6daf3392de5abae3bce6646a38fd8bd82d06fa571d8c8cd93b3ba0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0defb31cfe134645d863683ff9d4626987861ee94f4a0e10d3f911b7fa9922ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b7c504df993150b1e4e9b157645a6ffd28f0e34918fc65f5cb71fe60ebcdb52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–736.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftUnique {D : Type*} [Category* D] {Z : D} (F : C ⥤ D) (M : ∀ x : C, Z ⟶ F.obj x)
    (hM : ∀ (x y : C) (f : x ⟶ y), M x ≫ F.map f = M y)
    (G : WithInitial C ⥤ D) (h : incl ⋙ G ≅ F)
    (hG : G.obj star ≅ Z)
    (hh : ∀ x : C, hG.symm.hom ≫ G.map (starInitial.to (incl.obj x)) = M x ≫ h.symm.hom.app x) :
    G ≅ lift F M hM :=
  NatIso.ofComponents
    (fun X =>
      match X with
      | of x => h.app x
      | star => hG)
    (by
      rintro (X | X) (Y | Y) f
      · apply h.hom.naturality
      · cases f
      · cases f
        change G.map _ ≫ h.hom.app _ = hG.hom ≫ _
        symm
        erw [← Iso.eq_inv_comp, ← Category.assoc, hh]
        simp
      · cases f
        change G.map (𝟙 _) ≫ hG.hom = hG.hom ≫ 𝟙 _
        simp)

/-- A variant of `lift` with `Z` an initial object. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0defb31cfe134645d863683ff9d4626987861ee94f4a0e10d3f911b7fa9922ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0defb31cfe134645d863683ff9d4626987861ee94f4a0e10d3f911b7fa9922ed.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4b2616460df1c777ef96fbb21d9c175356b322f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
