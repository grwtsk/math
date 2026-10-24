# eventProbability_mix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3fa677f-5288-34c4-1d4f-6ae274f18bcb",
  "kind": "theorem",
  "lexical_name": "eventProbability_mix",
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
  "slug": "eventprobability-mix--4aa8c682767fadb1dda66fb8",
  "source": {
    "blob": "e64ddef771d4f2a8c004d4b6c9193eaced0d8b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 243,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4aa8c682767fadb1dda66fb83ef390780f3275cb63aa7e341ebbc2669766823f",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3fa677f-5288-34c4-1d4f-6ae274f18bcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventProbability_mix [DecidableEq I]
    [∀ i, DecidableEq (Outcomes i)]
    (outer : SimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (events : ∀ i, Finset (Outcomes i)) :
    (mix outer packets).eventProbability (fiberEvent events) =
      ∑ i, outer i * (packets i).eventProbability (events i) := by
  classical
  unfold eventProbability fiberEvent
  rw [Finset.sum_sigma]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro outcome _
  simp only [mix_probability]

end FinitePacket

end BitMatrix.Spectral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64ddef771d4f2a8c004d4b6c9193eaced0d8b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
