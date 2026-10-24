# coreGrowingShiftEndpointTransverse_phaseMatchedReciprocal_Ico_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63f7a0cf-02a4-87a3-326d-46380c5a5886",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverse_phaseMatchedReciprocal_Ico_norm",
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
  "slug": "coregrowingshiftendpointtransverse-phasematchedreciprocal-ico-norm--9969a87edaf8f3ac3ad1c568",
  "source": {
    "blob": "7ebdf07ce6a031d0aa07e028925a5064498dbe2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 57,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicReciprocalObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9969a87edaf8f3ac3ad1c568497ea753bb6e2c142b9cfb0ad7d238a4cd923fd4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicReciprocalObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63f7a0cf-02a4-87a3-326d-46380c5a5886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverse_phaseMatchedReciprocal_Ico_norm
    (j A B R : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    ‖∑ n ∈ Finset.Ico A B,
        ZMod.stdAddChar
            ((n : CoreGrowingShiftEndpointDoubledFourierIndex j) * u) *
          (coreGrowingShiftEndpointTransverseNatCharacter j u n /
            (((n + R : ℕ) : ℂ)))‖ =
      GRWTSK.NumberTheory.CharacterSums.finiteCyclicReciprocalMass A B R := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter] using
    GRWTSK.NumberTheory.CharacterSums.norm_stdAddChar_phaseMatched_reciprocal_Ico
      (q := coreGrowingShiftEndpointDoubledFourierModulus j) u A B R

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicReciprocalObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicReciprocalObstruction.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ebdf07ce6a031d0aa07e028925a5064498dbe2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
