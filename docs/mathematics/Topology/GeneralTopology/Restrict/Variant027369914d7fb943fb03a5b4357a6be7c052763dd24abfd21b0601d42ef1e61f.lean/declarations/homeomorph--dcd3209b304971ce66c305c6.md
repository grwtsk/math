# homeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2deb7bcae21d73ac1aa382bc4f84d2aa4362a05410ad8ccea872f8c683f0d97",
  "kind": "def",
  "lexical_name": "homeomorph",
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
  "slug": "homeomorph--dcd3209b304971ce66c305c6",
  "source": {
    "blob": "7b7af7c56c709043e529b02c23079784ba5f351b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 205,
    "path": "GRWTSK/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcd3209b304971ce66c305c6505fe4c93ec69a012839b71840fd3418516ff13c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2deb7bcae21d73ac1aa382bc4f84d2aa4362a05410ad8ccea872f8c683f0d97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homeomorph {R S A : Type*} [Semifield R] [Field S] [NonUnitalRing A]
    [Algebra R S] [Module R A] [Module S A] [IsScalarTower R S A] [TopologicalSpace R]
    [TopologicalSpace S] [ContinuousSMul R S] [IsScalarTower S A A] [SMulCommClass S A A]
    {a : A} {f : C(S, R)} (h : QuasispectrumRestricts a f) :
    σₙ S a ≃ₜ σₙ R a where
  toFun := MapsTo.restrict f _ _ h.subset_preimage
  invFun := MapsTo.restrict (algebraMap R S) _ _ (image_subset_iff.mp h.algebraMap_image.subset)
  left_inv x := Subtype.ext <| h.rightInvOn x.2
  right_inv x := Subtype.ext <| h.left_inv x

universe u v w

open ContinuousMapZero
set_option backward.isDefEq.respectTransparency.types false in
/-- If the quasispectrum of an element restricts to a smaller scalar ring, then a non-unital
continuous functional calculus over the larger scalar ring descends to the smaller one. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7af7c56c709043e529b02c23079784ba5f351b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
