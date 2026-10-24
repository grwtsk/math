# restrictHomEquivOfIsLocallySurjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b74f1687f7ebe5c82933df4669fd74619b7576a739e12131471f90ab8a4afba5",
  "kind": "def",
  "lexical_name": "restrictHomEquivOfIsLocallySurjective",
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
  "slug": "restricthomequivofislocallysurjective--fa5a13e1d95bbb57b2b3f826",
  "source": {
    "blob": "8a4f34115abb2e4fd2c0ad7945ab2b31b2950a9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variante0c21e90754470e4ab7d5399fba98c12f91d7276fdba0f296492852275f14589.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa5a13e1d95bbb57b2b3f82697ffa4bd1325aa55e2fa27f7925ac1720c239748",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variante0c21e90754470e4ab7d5399fba98c12f91d7276fdba0f296492852275f14589.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b74f1687f7ebe5c82933df4669fd74619b7576a739e12131471f90ab8a4afba5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def restrictHomEquivOfIsLocallySurjective
    (hM₂ : Presheaf.IsSheaf J M₂.presheaf) [Presheaf.IsLocallySurjective J α] :
    (M₁ ⟶ M₂) ≃ ((restrictScalars α).obj M₁ ⟶ (restrictScalars α).obj M₂) where
  toFun f := (restrictScalars α).map f
  invFun g := homMk ((toPresheaf R).map g) (fun X r' m ↦ by
    apply hM₂.isSeparated _ _ (Presheaf.imageSieve_mem J α r')
    rintro Y p ⟨r : R.obj _, hr⟩
    have hg : ∀ (z : M₁.obj X), g.app _ (M₁.map p.op z) = M₂.map p.op (g.app X z) :=
      fun z ↦ CategoryTheory.congr_fun (g.naturality p.op) z
    change M₂.map p.op (g.app X (r' • m)) = M₂.map p.op (r' • show M₂.obj X from g.app X m)
    dsimp at hg ⊢
    rw [← hg, M₂.map_smul, ← hg, ← hr]
    erw [← (g.app _).hom.map_smul]
    rw [M₁.map_smul, ← hr]
    rfl)
  left_inv _ := rfl
  right_inv _ := rfl

end PresheafOfModules
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variante0c21e90754470e4ab7d5399fba98c12f91d7276fdba0f296492852275f14589.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variante0c21e90754470e4ab7d5399fba98c12f91d7276fdba0f296492852275f14589.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a4f34115abb2e4fd2c0ad7945ab2b31b2950a9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
