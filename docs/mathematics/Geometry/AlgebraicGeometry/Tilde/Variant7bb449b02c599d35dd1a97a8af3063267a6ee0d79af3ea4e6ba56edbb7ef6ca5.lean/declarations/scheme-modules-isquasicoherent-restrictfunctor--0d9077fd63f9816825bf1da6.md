# Scheme.Modules.isQuasicoherent_restrictFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87636859493f63daa2e5dbde39f0e601898b7ffd6ff3de1f7f717b51910696ac",
  "kind": "instance",
  "lexical_name": "Scheme.Modules.isQuasicoherent_restrictFunctor",
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
  "slug": "scheme-modules-isquasicoherent-restrictfunctor--0d9077fd63f9816825bf1da6",
  "source": {
    "blob": "06d1d92a2293c66b68f27b9d03d863c6839eef5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 568,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d9077fd63f9816825bf1da6b0ffce6af0f4365c8bdd78322a02bbe2b90ce3b9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87636859493f63daa2e5dbde39f0e601898b7ffd6ff3de1f7f717b51910696ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Scheme.Modules.isQuasicoherent_restrictFunctor {X Y : Scheme.{u}} (f : X ⟶ Y)
    [IsOpenImmersion f] (M : Y.Modules) [M.IsQuasicoherent] :
    ((restrictFunctor f).obj M).IsQuasicoherent := by
  let α : X.presheaf ⟶ f.opensFunctor.op ⋙ Y.presheaf := { app U := (f.appIso U.unop).inv }
  have hα : IsIso α := NatIso.isIso_of_isIso_app _
  let φ : X.ringCatSheaf ⟶ (f.opensFunctor.sheafPushforwardContinuous _ _ _).obj Y.ringCatSheaf :=
    ⟨Functor.whiskerRight α (forget₂ CommRingCat RingCat)⟩
  have : IsIso φ := by
    rw [← isIso_iff_of_reflects_iso _ (ObjectProperty.ι _)]
    dsimp [φ]
    infer_instance
  exact SheafOfModules.isQuasicoherent_pushforward_of_isLeftAdjoint.{u}
    f.opensFunctor φ (Scheme.Modules.restrictUnitIso _)

set_option backward.isDefEq.respectTransparency false in
/-- The presentation of `M.restrict f` by restricting a presentation of `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06d1d92a2293c66b68f27b9d03d863c6839eef5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
