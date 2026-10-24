# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FinitePacketRelabeling.Variante26f45b6dc8c71cf.WholeEquivalenceAndExpectations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41d3a4e7eaebbbf508211350fa38a114af11608d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketRelabeling/Variante26f45b6dc8c71cf/WholeEquivalenceAndExpectations.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketRelabeling/Variante26f45b6dc8c71cf/WholeEquivalenceAndExpectations.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketRelabeling/Variante26f45b6dc8c71cf/WholeEquivalenceAndExpectations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41d3a4e7eaebbbf508211350fa38a114af11608d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketRelabeling/Variante26f45b6dc8c71cf/WholeEquivalenceAndExpectations.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketRelabeling/Variante26f45b6dc8c71cf/WholeEquivalenceAndExpectations.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Spectral.FinitePacket` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PacketEquiv](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketRelabeling/Variante26f45b6dc8c71cf/WholeEquivalenceAndExpectations.lean/declarations/packetequiv--863a0811bb2b7a1bd35c74e4.md) | 43 | `declaration-track:863a0811bb2b7a1bd35c74e4a36805c79d018a0bda1f3f4d2a2c5b38272eabb6` |
| 2 | `theorem` | [expectation_preserved](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketRelabeling/Variante26f45b6dc8c71cf/WholeEquivalenceAndExpectations.lean/declarations/expectation-preserved--8b131b6bb813d8bb152bbd03.md) | 59 | `result-track:8b131b6bb813d8bb152bbd0368c61551b3cd745935d695077f641343576d9abf` |
| 3 | `theorem` | [spectralExpectation_preserved](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketRelabeling/Variante26f45b6dc8c71cf/WholeEquivalenceAndExpectations.lean/declarations/spectralexpectation-preserved--8638280b2c20f11d2d9148c3.md) | 78 | `result-track:8638280b2c20f11d2d9148c3f167766412db6d17cbe18a53f20f75518bfb37bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
