# criticalBoundary_of_weightedMertensSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af787e7a-5a5c-914b-a26e-9bf2c610c698",
  "kind": "theorem",
  "lexical_name": "criticalBoundary_of_weightedMertensSquare",
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
  "slug": "criticalboundary-of-weightedmertenssquare--57f82629f6dac202d4b13670",
  "source": {
    "blob": "ecb7464bfe5798bbd49c0ecd60d1fb6f02d8865e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 145,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57f82629f6dac202d4b13670b091393ed549980027fd6ec09c75a9108ace5040",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af787e7a-5a5c-914b-a26e-9bf2c610c698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalBoundary_of_weightedMertensSquare {ε : ℝ}
    (hε0 : 0 < ε) (hε1 : ε < 1)
    (hs : CriticalWeightedMertensSquareSummable ε) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_incrementMeanSquare hε0 hε1
    (incrementMeanSquare_of_weightedMertensSquare hs)

end GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare

#print axioms GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare.criticalEndpointGap_le_inv_sqrt_mul_succ
#print axioms GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare.criticalEndpointGap_sq_le_inv_mul_succ_sq
#print axioms GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare.incrementMeanSquare_of_weightedMertensSquare
#print axioms GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare.criticalBoundary_of_weightedMertensSquare
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb7464bfe5798bbd49c0ecd60d1fb6f02d8865e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
