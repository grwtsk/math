# criticalBoundary_of_reciprocalCauchyBlockUniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e0bd538-e823-2095-71ee-1b9eb48ae433",
  "kind": "theorem",
  "lexical_name": "criticalBoundary_of_reciprocalCauchyBlockUniform",
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
  "slug": "criticalboundary-of-reciprocalcauchyblockuniform--3d2fecb3d866c9f694e90b27",
  "source": {
    "blob": "9de53d34374dc10f7703d7a1de446b77b532f4b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d2fecb3d866c9f694e90b270e40bdb434a20c765916c3195f23a3421c4d3b7c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e0bd538-e823-2095-71ee-1b9eb48ae433`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalBoundary_of_reciprocalCauchyBlockUniform
    (hC : ReciprocalCauchyBlockUniform) : CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_iff_reciprocalVariationBlockUniform.mpr
    (reciprocalVariationBlockUniform_of_cauchyBlockUniform hC)

end GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy.reciprocalVariationBlock_le_cauchyBlock
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy.reciprocalVariationBlockUniform_of_cauchyBlockUniform
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy.criticalBoundary_of_reciprocalCauchyBlockUniform
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9de53d34374dc10f7703d7a1de446b77b532f4b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
