# criticalBoundary_of_reciprocalPrefixVariationPowerSaving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:742c33db-757a-65b8-c296-5cb98f982679",
  "kind": "theorem",
  "lexical_name": "criticalBoundary_of_reciprocalPrefixVariationPowerSaving",
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
  "slug": "criticalboundary-of-reciprocalprefixvariationpowersaving--93ca4c731277cf5ebf762268",
  "source": {
    "blob": "a33c8dc857f4ab2859f3830f9313611613d83604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 137,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93ca4c731277cf5ebf762268930202982c83877a637d58d9a6c23ab721c542d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:742c33db-757a-65b8-c296-5cb98f982679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalBoundary_of_reciprocalPrefixVariationPowerSaving
    (hV : ReciprocalVariationPowerSaving) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_reciprocalLogVariationSummable
    (reciprocalLogVariationSummable_of_powerSaving hV)

end GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving.reciprocalPrefixVariationSquare_le_four_mul
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving.reciprocalLogVariationMajorant_le_of_powerSaving
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving.reciprocalLogVariationSummable_of_powerSaving
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving.criticalBoundary_of_reciprocalPrefixVariationPowerSaving
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a33c8dc857f4ab2859f3830f9313611613d83604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
