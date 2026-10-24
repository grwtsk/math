# boundary_bit_uses_height_and_residue_decrease

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b37402c0-3a5c-f681-aa85-a5405c6730a7",
  "kind": "theorem",
  "lexical_name": "boundary_bit_uses_height_and_residue_decrease",
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
  "slug": "boundary-bit-uses-height-and-residue-decrease--f58463ed0abef126f83c9465",
  "source": {
    "blob": "15712ec73c7da2bf44a4f95c367dbd67a0c86ff6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 535,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f58463ed0abef126f83c9465202a9eb5ac6ba8731efa3d9902fb1ad47f275c97",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b37402c0-3a5c-f681-aa85-a5405c6730a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_bit_uses_height_and_residue_decrease :
    boundaryBitFromLiftedSite 1 10
        (sphericalLiftSite positiveSphericalSite) =
        EmlBoundaryBit.one ∧
      boundaryBitFromLiftedSite 1 10
        (sphericalLiftSite negativeSphericalSite) =
        EmlBoundaryBit.zero ∧
      boundaryBitFromLiftedSite 1 10
        (sphericalLiftSite balancedSphericalSite) =
        EmlBoundaryBit.zero := by
  native_decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15712ec73c7da2bf44a4f95c367dbd67a0c86ff6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
