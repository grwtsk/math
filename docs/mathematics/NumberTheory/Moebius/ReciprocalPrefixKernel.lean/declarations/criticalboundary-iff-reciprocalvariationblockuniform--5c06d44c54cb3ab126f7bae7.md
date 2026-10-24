# criticalBoundary_iff_reciprocalVariationBlockUniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7d2b295-294e-3fd5-1ec4-1fda7233ee28",
  "kind": "theorem",
  "lexical_name": "criticalBoundary_iff_reciprocalVariationBlockUniform",
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
  "slug": "criticalboundary-iff-reciprocalvariationblockuniform--5c06d44c54cb3ab126f7bae7",
  "source": {
    "blob": "b1bb05abf62c335ef2cd4aa7b091133ab0d83abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 202,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c06d44c54cb3ab126f7bae764bab4c4ba6992c63e5b2533ead24390540fb7b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7d2b295-294e-3fd5-1ec4-1fda7233ee28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalBoundary_iff_reciprocalVariationBlockUniform :
    CriticalBoundaryVerticalLineUniform ↔ ReciprocalVariationBlockUniform :=
  criticalBoundary_iff_intervalBlockUniform.trans
    criticalIntervalBlockUniform_iff_reciprocalVariationBlockUniform

end GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.pickupWeightedPrefix_eq_reciprocalPartialSummation
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.reciprocalFluxWeight_sum_zero
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.pickupFlux_eq_reciprocalKernel
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.pickupFlux_eq_reciprocalVariationKernel
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.wholePickup_eq_reciprocalVariationKernel
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.criticalIntervalBlock_eq_reciprocalVariationKernel
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.criticalIntervalBlockUniform_iff_reciprocalVariationBlockUniform
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.criticalBoundary_iff_reciprocalVariationBlockUniform
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefixKernel.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bb05abf62c335ef2cd4aa7b091133ab0d83abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
