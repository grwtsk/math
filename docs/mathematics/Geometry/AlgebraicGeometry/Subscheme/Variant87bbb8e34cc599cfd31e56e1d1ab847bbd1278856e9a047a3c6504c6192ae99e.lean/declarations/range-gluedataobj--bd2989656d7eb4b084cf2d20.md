# range_glueDataObjι_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3993169f-369e-f2e3-fca0-e2011f8c390d",
  "kind": "lemma",
  "lexical_name": "range_glueDataObjι_ι",
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
  "slug": "range-gluedataobj--bd2989656d7eb4b084cf2d20",
  "source": {
    "blob": "f9f6f205d5b57b4704bac886301b2187c990b442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 103,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant87bbb8e34cc599cfd31e56e1d1ab847bbd1278856e9a047a3c6504c6192ae99e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd2989656d7eb4b084cf2d2039a9635c21e02fd42bb2c86ec5689eb36a34d45d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant87bbb8e34cc599cfd31e56e1d1ab847bbd1278856e9a047a3c6504c6192ae99e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3993169f-369e-f2e3-fca0-e2011f8c390d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_glueDataObjι_ι (U : X.affineOpens) :
    Set.range (I.glueDataObjι U ≫ U.1.ι) = X.zeroLocus (U := U) (I.ideal U) ∩ U := by
  simp only [Scheme.Hom.comp_base, TopCat.coe_comp, Set.range_comp, range_glueDataObjι]
  rw [← Set.image_comp, ← TopCat.coe_comp, ← Scheme.Hom.comp_base, IsAffineOpen.isoSpec_inv_ι,
    IsAffineOpen.fromSpec_image_zeroLocus]

/-- The underlying space of `Spec (𝒪ₓ(U)/I(U))` is homeomorphic to its image in `X`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant87bbb8e34cc599cfd31e56e1d1ab847bbd1278856e9a047a3c6504c6192ae99e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant87bbb8e34cc599cfd31e56e1d1ab847bbd1278856e9a047a3c6504c6192ae99e.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9f6f205d5b57b4704bac886301b2187c990b442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
