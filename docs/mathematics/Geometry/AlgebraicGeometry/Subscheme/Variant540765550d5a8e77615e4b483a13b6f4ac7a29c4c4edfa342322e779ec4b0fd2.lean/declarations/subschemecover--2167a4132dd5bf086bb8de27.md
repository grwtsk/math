# subschemeCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f15477c8a4f16c5ad0dbba56e885c1c3aaa3accac071d290c5b77b326ad6673",
  "kind": "def",
  "lexical_name": "subschemeCover",
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
  "slug": "subschemecover--2167a4132dd5bf086bb8de27",
  "source": {
    "blob": "694fe45fcdcccce46e4dc883f56b70c042fb362a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 481,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2167a4132dd5bf086bb8de27ae7ac578d8d128ec30f553e4fff43d7ec1adaceb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f15477c8a4f16c5ad0dbba56e885c1c3aaa3accac071d290c5b77b326ad6673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subschemeCover : I.subscheme.AffineOpenCover where
  J := X.affineOpens
  obj U := .of <| Γ(X, U) ⧸ I.ideal U
  map U := I.glueData.ι U ≫ I.subschemeIso.inv
  f x := (X.openCoverOfISupEqTop _ (iSup_affineOpens_eq_top X)).f x.1
  covers x := by
    let U := (X.openCoverOfISupEqTop _ (iSup_affineOpens_eq_top X)).f x.1
    obtain ⟨⟨y, hy : y ∈ U.1⟩, rfl : y = x.1⟩ :=
      (X.openCoverOfISupEqTop _ (iSup_affineOpens_eq_top X)).covers x.1
    exact (I.opensRange_glueData_ι_subschemeIso_inv U).ge hy

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694fe45fcdcccce46e4dc883f56b70c042fb362a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
