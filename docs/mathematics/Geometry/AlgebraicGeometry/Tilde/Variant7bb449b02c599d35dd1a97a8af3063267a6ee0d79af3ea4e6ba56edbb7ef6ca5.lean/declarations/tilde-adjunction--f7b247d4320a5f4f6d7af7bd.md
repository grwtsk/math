# tilde.adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f14e92532b25dd2418a1b38f0c79319509d395eaf15d08590cea8f562562e49",
  "kind": "def",
  "lexical_name": "tilde.adjunction",
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
  "slug": "tilde-adjunction--f7b247d4320a5f4f6d7af7bd",
  "source": {
    "blob": "06d1d92a2293c66b68f27b9d03d863c6839eef5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 342,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7b247d4320a5f4f6d7af7bd5991d1c9f029074c3f775209ae931501b6da721b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f14e92532b25dd2418a1b38f0c79319509d395eaf15d08590cea8f562562e49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tilde.adjunction : tilde.functor R ⊣ moduleSpecΓFunctor where
  unit := toTildeΓNatIso.hom
  counit := fromTildeΓNatTrans
  left_triangle_components M := by
    apply SpecModulesToSheafFullyFaithful.map_injective
    apply CategoryTheory.Sheaf.hom_ext
    apply (TopCat.Sheaf.restrictHomEquivHom _ _ PrimeSpectrum.isBasis_basic_opens).symm.injective
    ext r : 3
    apply IsLocalizedModule.ext (.powers (M := R) r.unop)
      (toOpen _ (PrimeSpectrum.basicOpen (R := R) r.unop)).hom
    · rw [Subtype.forall]
      change Submonoid.powers _ ≤ (IsUnit.submonoid _).comap _
      simp only [Submonoid.powers_le, Submonoid.mem_comap, IsUnit.mem_submonoid_iff]
      exact Scheme.Modules.isUnit_algebraMap_end_of_le_basicOpen r.unop le_rfl
    dsimp [toTildeΓNatIso, isoTop,
      TopCat.Sheaf.restrictHomEquivHom, Functor.IsCoverDense.restrictHomEquivHom,
      fromTildeΓNatTrans, moduleSpecΓFunctor, Sheaf.forget, sheafToPresheaf]
    simp only [← ModuleCat.hom_comp, Functor.map_comp]
    congr 1
    rw [ObjectProperty.FullSubcategory.comp_hom]
    dsimp
    rw [toOpen_map_app_assoc, toOpen_fromTildeΓ_app]
    rfl
  right_triangle_components M := by
    dsimp [toTildeΓNatIso, fromTildeΓNatTrans, tilde.isoTop, moduleSpecΓFunctor, Sheaf.forget]
    rw [toOpen_fromTildeΓ_app]
    exact (modulesSpecToSheaf.obj M).obj.map_id _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06d1d92a2293c66b68f27b9d03d863c6839eef5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
