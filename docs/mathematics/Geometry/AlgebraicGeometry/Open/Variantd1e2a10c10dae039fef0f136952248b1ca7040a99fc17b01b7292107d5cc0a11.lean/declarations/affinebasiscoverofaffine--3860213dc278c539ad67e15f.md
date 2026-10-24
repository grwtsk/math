# affineBasisCoverOfAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96605d9317a6e2263de8523efc944f1d9b3ab77fc7a27eb01e4252eda0ae8261",
  "kind": "def",
  "lexical_name": "affineBasisCoverOfAffine",
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
  "slug": "affinebasiscoverofaffine--3860213dc278c539ad67e15f",
  "source": {
    "blob": "8f8aa5beeeef1ef909f1abbd57e480dea0eacee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 262,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3860213dc278c539ad67e15fd2607daf6d3ccd1c639990fcceacaae92c320825",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96605d9317a6e2263de8523efc944f1d9b3ab77fc7a27eb01e4252eda0ae8261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def affineBasisCoverOfAffine (R : CommRingCat.{u}) : OpenCover (Spec R) where
  J := R
  obj r := Spec (CommRingCat.of <| Localization.Away r)
  map r := Spec.map (CommRingCat.ofHom (algebraMap R (Localization.Away r)))
  f _ := 1
  covers r := by
    rw [Set.range_eq_univ.mpr ((TopCat.epi_iff_surjective _).mp _)]
    · exact trivial
    · infer_instance
  map_prop x := AlgebraicGeometry.Scheme.basic_open_isOpenImmersion x

/-- We may bind the basic open sets of an open affine cover to form an affine cover that is also
a basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f8aa5beeeef1ef909f1abbd57e480dea0eacee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
