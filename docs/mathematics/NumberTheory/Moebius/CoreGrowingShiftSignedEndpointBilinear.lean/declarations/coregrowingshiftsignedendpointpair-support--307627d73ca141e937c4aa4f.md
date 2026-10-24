# coreGrowingShiftSignedEndpointPair_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83210900-d6f0-b047-c711-a334b3915db2",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftSignedEndpointPair_support",
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
  "slug": "coregrowingshiftsignedendpointpair-support--307627d73ca141e937c4aa4f",
  "source": {
    "blob": "f9c01da39b373e55afc2c551135031974fc4a6c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 66,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:307627d73ca141e937c4aa4fd83e4e9dd223feb3c118491230c58824108dec08",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83210900-d6f0-b047-c711-a334b3915db2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftSignedEndpointPair_support
    {j N n m : ℕ}
    (hp : (n, m) ∈ coreGrowingShiftSignedEndpointPairSet j N) :
    1 ≤ n ∧ n ≤ N ∧ n < m ∧ m < 2 ^ (j + 1) ∧
      coreGrowingShiftSignedStaircaseLower j N ≤ m - n ∧
      m - n < coreGrowingShiftSignedStaircaseUpper j N := by
  have hp' :=
    (mem_coreGrowingShiftSignedEndpointPairSet_iff).mp hp
  rcases hp' with
    ⟨⟨⟨hnlo, hnhi⟩, ⟨_hmlo, hmhi⟩⟩, hnm, hshift⟩
  have hshift' :
      coreGrowingShiftSignedStaircaseLower j N ≤ m - n ∧
        m - n < coreGrowingShiftSignedStaircaseUpper j N := by
    simpa [coreGrowingShiftSignedStaircaseShiftSet] using hshift
  exact ⟨hnlo, hnhi, hnm, hmhi, hshift'.1, hshift'.2⟩

/-- A source base and active shift never wrap around the ambient right dyadic
endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9c01da39b373e55afc2c551135031974fc4a6c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
