# openCoverOfBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a80892f628ebf57abf68f300a654619fca21582ec3a8c8c07116ef4bdbda9b9b",
  "kind": "def",
  "lexical_name": "openCoverOfBase",
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
  "slug": "opencoverofbase--de5f9ffd109cc1ba002cb2b7",
  "source": {
    "blob": "fed0f2b6152def8612c8694efa1ef83a71099cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 586,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de5f9ffd109cc1ba002cb2b7cc4d472149f083451e3ce52e20505b9803c54793",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a80892f628ebf57abf68f300a654619fca21582ec3a8c8c07116ef4bdbda9b9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def openCoverOfBase (𝒰 : OpenCover.{v} Z) (f : X ⟶ Z) (g : Y ⟶ Z) :
    OpenCover.{v} (pullback f g) := by
  apply
    (openCoverOfBase' 𝒰 f g).copy 𝒰.I₀
      (fun i =>
        pullback (pullback.snd _ _ : pullback f (𝒰.f i) ⟶ _)
          (pullback.snd _ _ : pullback g (𝒰.f i) ⟶ _))
      (fun i =>
        pullback.map _ _ _ _ (pullback.fst _ _) (pullback.fst _ _) (𝒰.f i)
          pullback.condition.symm pullback.condition.symm)
      ((Equiv.prodPUnit 𝒰.I₀).symm.trans (Equiv.sigmaEquivProd 𝒰.I₀ PUnit).symm) fun _ => Iso.refl _
  intro i
  rw [Iso.refl_hom, Category.id_comp, openCoverOfBase'_f]
  ext : 1 <;>
  · simp only [limit.lift_π, PullbackCone.mk_π_app, Equiv.trans_apply, Category.assoc,
    limit.lift_π_assoc, cospan_left, Category.comp_id,
      limit.isoLimitCone_inv_π_assoc, PullbackCone.π_app_left, IsPullback.cone_fst,
      pullbackSymmetry_hom_comp_snd_assoc, limit.isoLimitCone_inv_π,
      PullbackCone.π_app_right, IsPullback.cone_snd, pullbackSymmetry_hom_comp_fst_assoc]
    rfl

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
-- TODO: generalize to covers in subcanonical topologies
open pullback in
attribute [local simp] condition condition_assoc in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fed0f2b6152def8612c8694efa1ef83a71099cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
