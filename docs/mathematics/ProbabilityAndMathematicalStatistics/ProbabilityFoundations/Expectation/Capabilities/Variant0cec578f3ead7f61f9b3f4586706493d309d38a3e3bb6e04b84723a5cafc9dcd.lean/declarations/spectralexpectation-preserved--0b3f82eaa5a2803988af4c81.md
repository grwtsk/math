# spectralExpectation_preserved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ba92886-daad-9110-1901-6ff11d35bc10",
  "kind": "theorem",
  "lexical_name": "spectralExpectation_preserved",
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
  "slug": "spectralexpectation-preserved--0b3f82eaa5a2803988af4c81",
  "source": {
    "blob": "b6ed82a82c393517144842b2afe4cbf4dc496668",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 67,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b3f82eaa5a2803988af4c81921351de265c472f333e21de9eaa42bcc7c1b7d1",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ba92886-daad-9110-1901-6ff11d35bc10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralExpectation_preserved (equivalence : PacketEquiv left right)
    (observable : ℝ → ℝ) :
    right.spectralExpectation observable = left.spectralExpectation observable := by
  rw [FinitePacket.spectralExpectation, equivalence.expectation_preserved]
  apply Finset.sum_congr rfl
  intro outcome _
  change left.probability outcome *
      observable (right.spectralValue (equivalence.outcomeEquiv outcome)) =
    left.probability outcome * observable (left.spectralValue outcome)
  rw [equivalence.spectralValue_preserved]

end PacketEquiv

/-! ## Finite turn covariance -/

/-- Exact finite packet covariance under a permutation of packet indices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ed82a82c393517144842b2afe4cbf4dc496668` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
