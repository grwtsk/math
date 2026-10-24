# expectation_preserved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5aa352fe-b400-38b0-874f-4914c545f2e9",
  "kind": "theorem",
  "lexical_name": "expectation_preserved",
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
  "slug": "expectation-preserved--8b131b6bb813d8bb152bbd03",
  "source": {
    "blob": "41d3a4e7eaebbbf508211350fa38a114af11608d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 59,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketRelabeling/Variante26f45b6dc8c71cf/WholeEquivalenceAndExpectations.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b131b6bb813d8bb152bbd0368c61551b3cd745935d695077f641343576d9abf",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketRelabeling/Variante26f45b6dc8c71cf/WholeEquivalenceAndExpectations.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aa352fe-b400-38b0-874f-4914c545f2e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expectation_preserved (equivalence : PacketEquiv left right)
    (observable : Right → ℝ) :
    right.expectation observable =
      left.expectation (fun outcome => observable (equivalence.outcomeEquiv outcome)) := by
  rw [FinitePacket.expectation, FinitePacket.expectation]
  symm
  calc
    (∑ outcome, left.probability outcome *
        observable (equivalence.outcomeEquiv outcome)) =
        ∑ outcome, right.probability (equivalence.outcomeEquiv outcome) *
          observable (equivalence.outcomeEquiv outcome) := by
      apply Finset.sum_congr rfl
      intro outcome _
      rw [equivalence.probability_preserved]
    _ = ∑ outcome, right.probability outcome * observable outcome :=
      Equiv.sum_comp equivalence.outcomeEquiv
        (fun outcome => right.probability outcome * observable outcome)

/-- Packet equivalence preserves every real spectral observable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketRelabeling/Variante26f45b6dc8c71cf/WholeEquivalenceAndExpectations.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketRelabeling/Variante26f45b6dc8c71cf/WholeEquivalenceAndExpectations.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41d3a4e7eaebbbf508211350fa38a114af11608d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
