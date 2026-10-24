# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1e9b6e5b11a8a6fb2e045ccf4081178a25b5760712d0afbaae17f73f84da39a",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--e7b09dc94998e60a1b6c72c0",
  "source": {
    "blob": "c3c2409cf140d5294503197589f0e2a9edd46e00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 17,
    "line": 14,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386ProductGateAudit/Variant2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7b09dc94998e60a1b6c72c02ab1eb2a95cc0a5781734702cf9d750f514a0631",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386ProductGateAudit/Variant2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1e9b6e5b11a8a6fb2e045ccf4081178a25b5760712d0afbaae17f73f84da39a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–17.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (hA : 0 < A) :
    Integrable (fun z : ℝ × ℝ ↦ EstimateNormalizedSourceProfile.unitProfile A z.2 *
      EstimateNormalizedSourceProfile.unitProfile A (z.2-z.1)) (volume.prod volume) :=
  EstimateUnitCorrelationMass.unitCorrelation_product_integrable A hA
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386ProductGateAudit/Variant2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386ProductGateAudit/Variant2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3c2409cf140d5294503197589f0e2a9edd46e00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
