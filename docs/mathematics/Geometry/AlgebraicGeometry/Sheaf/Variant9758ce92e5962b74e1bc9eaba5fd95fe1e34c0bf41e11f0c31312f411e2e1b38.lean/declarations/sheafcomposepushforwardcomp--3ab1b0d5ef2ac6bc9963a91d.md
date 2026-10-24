# sheafComposePushforwardComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfc57a5a47dc0c584c2915dfcc39e11da136bf958a457a775e32a83602c02029",
  "kind": "def",
  "lexical_name": "sheafComposePushforwardComp",
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
  "slug": "sheafcomposepushforwardcomp--3ab1b0d5ef2ac6bc9963a91d",
  "source": {
    "blob": "8745af7611e0d31a11b9e912b41a5ce13546a17a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 530,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ab1b0d5ef2ac6bc9963a91db5e705d0dfb33929951a0dac4808bc88c8b93389",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfc57a5a47dc0c584c2915dfcc39e11da136bf958a457a775e32a83602c02029`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sheafComposePushforwardComp {R S : CommRingCat.{u}} (φ : R ⟶ S) :
    sheafCompose (Opens.grothendieckTopology (Spec S))
      (ModuleCat.restrictScalars (Spec.map φ).appTop.hom) ⋙
      TopCat.Sheaf.pushforward _ (Spec.map φ).base ⋙
      sheafCompose _ (ModuleCat.restrictScalars (Scheme.ΓSpecIso R).inv.hom) ≅
    sheafCompose _ (ModuleCat.restrictScalars (Scheme.ΓSpecIso S).inv.hom) ⋙
      TopCat.Sheaf.pushforward _ (Spec.map φ).base ⋙
      sheafCompose _ (ModuleCat.restrictScalars φ.hom) := by
  refine NatIso.ofComponents (fun M ↦ ObjectProperty.isoMk _ ?_) ?_
  · refine NatIso.ofComponents (fun U ↦ ?_) ?_
    · refine (ModuleCat.restrictScalarsComp'App _ _ _ ?_ _).symm ≪≫
        (ModuleCat.restrictScalarsComp φ.hom ((Scheme.ΓSpecIso S).inv).hom).app _
      rw [← CommRingCat.hom_comp, Scheme.ΓSpecIso_inv_naturality, CommRingCat.hom_comp]
    · cat_disch
  · cat_disch

/-- Sheaves of modules on `𝒪_X` restricted to `U` are equivalent to sheaves of `𝒪_U`-modules. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8745af7611e0d31a11b9e912b41a5ce13546a17a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
