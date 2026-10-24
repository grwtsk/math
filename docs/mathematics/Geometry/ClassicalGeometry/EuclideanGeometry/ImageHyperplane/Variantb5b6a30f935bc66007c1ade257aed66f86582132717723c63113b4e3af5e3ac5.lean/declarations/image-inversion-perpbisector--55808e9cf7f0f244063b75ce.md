# image_inversion_perpBisector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fda41c7-b816-261e-6ed3-43a7fdff7623",
  "kind": "theorem",
  "lexical_name": "image_inversion_perpBisector",
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
  "slug": "image-inversion-perpbisector--55808e9cf7f0f244063b75ce",
  "source": {
    "blob": "44a1c1f6c026f678d36c1d5b9b09d3a02ad48514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 70,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55808e9cf7f0f244063b75ceda75351208319fa0b54f4fae3889114f45a4ef90",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fda41c7-b816-261e-6ed3-43a7fdff7623`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_inversion_perpBisector (hR : R ≠ 0) (hy : y ≠ c) :
    inversion c R '' perpBisector c y = sphere (inversion c R y) (R ^ 2 / dist y c) \ {c} := by
  rw [image_eq_preimage_of_inverse (inversion_involutive _ hR) (inversion_involutive _ hR),
    preimage_inversion_perpBisector hR hy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variantb5b6a30f935bc66007c1ade257aed66f86582132717723c63113b4e3af5e3ac5.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44a1c1f6c026f678d36c1d5b9b09d3a02ad48514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
