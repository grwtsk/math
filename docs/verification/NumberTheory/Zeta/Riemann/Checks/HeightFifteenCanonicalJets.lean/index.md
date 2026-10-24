# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenCanonicalJets

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2be56777e2bf7c838c81d4c8e09c48291e30c8d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalJets.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalJets.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalJets.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2be56777e2bf7c838c81d4c8e09c48291e30c8d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalJets.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalJets.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalCheckedJetContour`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenCheckedJets`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCheckedJets.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [packets](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalJets.lean/declarations/packets--a9677d5d0ac2744474fd0e50.md) | 22 | `declaration-track:a9677d5d0ac2744474fd0e508eab9f1e417cb8b0532ab20b6c3e717eb53cf70a` |
| 2 | `def` | [result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalJets.lean/declarations/result--908c5a7d77450fd7b03cfe8e.md) | 25 | `declaration-track:908c5a7d77450fd7b03cfe8ece10f4ced35ed48ce360a77a00bae6d54588e988` |
| 3 | `theorem` | [result_eq_original](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalJets.lean/declarations/result-eq-original--f68a81908daafc3ea69ea8fd.md) | 28 | `result-track:f68a81908daafc3ea69ea8fd26fddd462affe940b9cee525563025b7ca87d4c5` |
| 4 | `theorem` | [success_iff](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalJets.lean/declarations/success-iff--c7ec66a46793e16dcc17168c.md) | 33 | `result-track:c7ec66a46793e16dcc17168c2c56bfea5f87348121bdceeea3f888d3c6a76d49` |
| 5 | `theorem` | [result_one_of_blocks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalJets.lean/declarations/result-one-of-blocks--687ed0fb569690e11457b3ab.md) | 38 | `result-track:687ed0fb569690e11457b3abcd3308c37d8cab18b4bd806db5effb28a176efec` |
| 6 | `theorem` | [count_one_of_result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalJets.lean/declarations/count-one-of-result--e0de718829fcc1dc68dd38c4.md) | 42 | `result-track:e0de718829fcc1dc68dd38c4858a3f8bb812d9abf35a38d5a0f83ac65ff1e694` |
| 7 | `theorem` | [complete_pair_of_result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalJets.lean/declarations/complete-pair-of-result--2d459df181988b709b01017c.md) | 47 | `result-track:2d459df181988b709b01017ccd48469bcd4294d29d658fa3606e5ccc92cf6a39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
