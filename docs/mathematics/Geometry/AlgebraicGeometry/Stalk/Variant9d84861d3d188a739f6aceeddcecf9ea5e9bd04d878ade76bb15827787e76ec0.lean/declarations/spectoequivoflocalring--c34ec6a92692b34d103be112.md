# SpecToEquivOfLocalRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fb38cc4d36d52e549ddf2550d52d19e7df7a36739289660df74d2d989162144",
  "kind": "def",
  "lexical_name": "SpecToEquivOfLocalRing",
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
  "slug": "spectoequivoflocalring--c34ec6a92692b34d103be112",
  "source": {
    "blob": "22ef2229574d1a86a051c065d170f01f4e725f96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 377,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c34ec6a92692b34d103be112b22e3a33b94709b663974427ea9b4472ee922fab",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fb38cc4d36d52e549ddf2550d52d19e7df7a36739289660df74d2d989162144`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SpecToEquivOfLocalRing :
    (Spec R ⟶ X) ≃ Σ x, { f : X.presheaf.stalk x ⟶ R // IsLocalHom f.hom } where
  toFun f := ⟨f.base (closedPoint R), Scheme.stalkClosedPointTo f, inferInstance⟩
  invFun xf := Spec.map xf.2.1 ≫ X.fromSpecStalk xf.1
  left_inv := Scheme.Spec_stalkClosedPointTo_fromSpecStalk
  right_inv xf := by
    obtain ⟨x, ⟨f, hf⟩⟩ := xf
    symm
    refine SpecToEquivOfLocalRing_eq_iff.mpr ⟨?_, ?_⟩
    · simp only [Scheme.comp_coeBase, TopCat.coe_comp, Function.comp_apply, Spec_closedPoint,
        Scheme.fromSpecStalk_closedPoint]
    · refine TopCat.Presheaf.stalk_hom_ext _ fun U hxU ↦ ?_
      simp only [Scheme.germ_stalkClosedPointTo_Spec_fromSpecStalk,
        TopCat.Presheaf.stalkCongr_hom, TopCat.Presheaf.germ_stalkSpecializes_assoc]

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22ef2229574d1a86a051c065d170f01f4e725f96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
