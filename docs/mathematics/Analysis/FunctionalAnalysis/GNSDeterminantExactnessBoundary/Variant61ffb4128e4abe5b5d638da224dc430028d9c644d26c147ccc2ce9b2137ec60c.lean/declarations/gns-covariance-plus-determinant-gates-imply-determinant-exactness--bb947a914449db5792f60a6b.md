# gns_covariance_plus_determinant_gates_imply_determinant_exactness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6dc1718-5b6c-c1ac-6918-a760559f8f98",
  "kind": "theorem",
  "lexical_name": "gns_covariance_plus_determinant_gates_imply_determinant_exactness",
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
  "slug": "gns-covariance-plus-determinant-gates-imply-determinant-exactness--bb947a914449db5792f60a6b",
  "source": {
    "blob": "a13929c05b3b007f9a074d0aeb6936fa3f70a8f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 288,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/GNSDeterminantExactnessBoundary/Variant61ffb4128e4abe5b5d638da224dc430028d9c644d26c147ccc2ce9b2137ec60c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb947a914449db5792f60a6b3dd7facd7ac0f7fa48b77c271484c32ada04f1f6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/GNSDeterminantExactnessBoundary/Variant61ffb4128e4abe5b5d638da224dc430028d9c644d26c147ccc2ce9b2137ec60c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6dc1718-5b6c-c1ac-6918-a760559f8f98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gns_covariance_plus_determinant_gates_imply_determinant_exactness
    (boundary : GNSDeterminantExactnessBoundary)
    (hGns : boundary.gnsCovarianceAdmitted = true)
    (hDet : boundary.determinantClassAdmitted = true)
    (hReg : boundary.nonvanishingRegularizationAdmitted = true)
    (hMatch : boundary.spectralMatchingAdmitted = true)
    (hNoSpurious : boundary.noSpuriousSpectrum = true)
    (hConnes : boundary.connesPositiveBoundaryAdmitted = true)
    (hTao : boundary.taoHeatflowNegativeBoundaryAdmitted = true) :
    boundary.determinantExactness = true :=
  boundary.determinantExactness_of_all_gates
    hGns hDet hReg hMatch hNoSpurious hConnes hTao

/-- Connes positive boundary is admitted when the positive spectral triple gates
are all present. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/GNSDeterminantExactnessBoundary/Variant61ffb4128e4abe5b5d638da224dc430028d9c644d26c147ccc2ce9b2137ec60c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/GNSDeterminantExactnessBoundary/Variant61ffb4128e4abe5b5d638da224dc430028d9c644d26c147ccc2ce9b2137ec60c.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a13929c05b3b007f9a074d0aeb6936fa3f70a8f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
