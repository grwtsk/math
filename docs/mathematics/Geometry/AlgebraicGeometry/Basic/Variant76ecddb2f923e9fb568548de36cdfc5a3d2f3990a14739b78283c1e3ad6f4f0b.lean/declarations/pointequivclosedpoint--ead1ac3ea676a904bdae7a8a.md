# pointEquivClosedPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0168987e6ceaf04da7e6c9ae40abd37a6d0d471378af04a2ebde5dda6daaf76e",
  "kind": "def",
  "lexical_name": "pointEquivClosedPoint",
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
  "slug": "pointequivclosedpoint--ead1ac3ea676a904bdae7a8a",
  "source": {
    "blob": "2c7901e4db37fccfef10e8f0f584ef5572c53512",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 76,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ead1ac3ea676a904bdae7a8a0ee51467dfac1233d810c53dd5510aa3e38422b6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0168987e6ceaf04da7e6c9ae40abd37a6d0d471378af04a2ebde5dda6daaf76e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pointEquivClosedPoint :
    {p : Spec ↧K ⟶ X // p ≫ f = 𝟙 _} ≃ closedPoints X where
  toFun p := ⟨p.1 (IsLocalRing.closedPoint K), by
    have := isClosedImmersion_of_comp_eq_id _ _ p.2
    have := p.1.isClosedEmbedding.isClosed_range
    rwa [Set.range_eq_singleton] at this
    exact fun x ↦ congr(p.1 $(Subsingleton.elim _ _))⟩
  invFun x := ⟨pointOfClosedPoint f x.1 x.2, pointOfClosedPoint_comp f x.1 x.2⟩
  left_inv p := by
    ext
    refine ((Scheme.SpecToEquivOfField _ _).symm_apply_eq (x := ⟨_, _⟩)).mpr ?_
    rw [Scheme.SpecToEquivOfField_eq_iff]
    dsimp [Scheme.SpecToEquivOfField]
    simp only [Category.id_comp, exists_const]
    generalize_proofs _ h
    refine (Category.comp_id _).symm.trans (((residueFieldIsoBase f _ h).eq_inv_comp).mp ?_)
    rw [← Spec.map_injective.eq_iff]
    simp only [Spec.map_id, Spec.map_comp, SpecMap_residueFieldIsoBase_inv]
    rw [reassoc_of% Scheme.descResidueField_stalkClosedPointTo_fromSpecResidueField, p.2]
  right_inv x := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c7901e4db37fccfef10e8f0f584ef5572c53512` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
