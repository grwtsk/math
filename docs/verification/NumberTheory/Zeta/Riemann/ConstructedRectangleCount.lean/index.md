# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConstructedRectangleCount

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "041dfeb24f0b143d1a9b2c447e8ad6582b79b820",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `041dfeb24f0b143d1a9b2c447e8ad6582b79b820`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleValue`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleCount`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Plan](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/plan--2236ef8aa22701428104ea55.md) | 24 | `declaration-track:2236ef8aa22701428104ea551865bcc1d270856398aa709ef31bafc459d17ef5` |
| 2 | `def` | [fallback](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/fallback--f61f6bd1361867942aaa1b3a.md) | 33 | `declaration-track:f61f6bd1361867942aaa1b3a39fcdca33bd8bf36cba5b51781e08ecfa5c91e53` |
| 3 | `def` | [planAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/planat--6a788217b1223b1aefe75ba2.md) | 35 | `declaration-track:6a788217b1223b1aefe75ba208e5fa95a70e16ea9b304185459acaab16899cfe` |
| 4 | `def` | [record](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/record--21e73ce9ba8231bfda539378.md) | 37 | `declaration-track:21e73ce9ba8231bfda53937869cb3143b021b7923f27edde6d91c8456e7b498f` |
| 5 | `def` | [records](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/records--8c66107c2e72e10ecec9aa95.md) | 40 | `declaration-track:8c66107c2e72e10ecec9aa95c47162f0e78156665afe1d0ac9f780550bbb173b` |
| 6 | `def` | [PlansValid](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/plansvalid--cb41277d6dc383feb913da45.md) | 42 | `declaration-track:cb41277d6dc383feb913da454b5282614d22d7fb97651da022e9da541110e460` |
| 7 | `instance` | [plansValidDecidable](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/plansvaliddecidable--e92b8d2a0b606a5b7013146a.md) | 46 | `declaration-track:e92b8d2a0b606a5b7013146a1d2f004697a8dcb3b15dc2db5fad2c105fb590ca` |
| 8 | `def` | [checkPlans](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/checkplans--c91686ea01e2cc884075a3b0.md) | 49 | `declaration-track:c91686ea01e2cc884075a3b03b52d83133e0d13c823c2106860cabbc0d443090` |
| 9 | `theorem` | [checkPlans_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/checkplans-iff--6af53a16d29d95c6c547a120.md) | 51 | `result-track:6af53a16d29d95c6c547a120e2cf33d9168542382ac62c4a0fdc4005086b216b` |
| 10 | `theorem` | [records_length](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/records-length--ac09f8f7264653352ff5c110.md) | 54 | `result-track:ac09f8f7264653352ff5c1105cad160e11d0c18e6d86e140035bd81ef492f68f` |
| 11 | `theorem` | [edgeAt_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/edgeat-records--f50c5133b90cc54204082a0c.md) | 58 | `result-track:f50c5133b90cc54204082a0c82174c7c0f948eb17fd577e4ce092acf15bbbd3f` |
| 12 | `theorem` | [enclosures_of_checkPlans](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/enclosures-of-checkplans--2121fca169c53a5605c3260c.md) | 66 | `result-track:2121fca169c53a5605c3260cf4893600fb2469a36029e44173d70fade479676a` |
| 13 | `def` | [evaluateBox](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/evaluatebox--67bcad9afa0be35225514a87.md) | 75 | `declaration-track:67bcad9afa0be35225514a872925631b9ab3c3b68762914658a7e855e7e451eb` |
| 14 | `theorem` | [evaluateBox_eq_some_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/evaluatebox-eq-some-iff--a83d6b5581c3dc70cc1e45d5.md) | 81 | `result-track:a83d6b5581c3dc70cc1e45d5aa94fb7030c61b1bf21e30f800f57869b66dbd5e` |
| 15 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/evaluate--e64b06d4f59bb0958b9835f5.md) | 87 | `declaration-track:e64b06d4f59bb0958b9835f5186bc8b0cf2cc9d39359501a460fc3654c38bcc8` |
| 16 | `theorem` | [count_eq_of_evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/count-eq-of-evaluate--2b9bf210bbcf6f9c3dc99b28.md) | 93 | `result-track:2b9bf210bbcf6f9c3dc99b28ff62c00fb458836cd76c9bc5287496bc0c6d6a89` |
| 17 | `theorem` | [result_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/result-nonnegative--623ceaeeb85c985567918c21.md) | 100 | `result-track:623ceaeeb85c985567918c21d5c7902699ed3df1a205179cdb9cd4e1481662a4` |
| 18 | `theorem` | [complete_pair_of_evaluate_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/declarations/complete-pair-of-evaluate-one--54b97b0e7802bc2eb8d79e46.md) | 108 | `result-track:54b97b0e7802bc2eb8d79e46143b5fa8ec8153904dc6d25007f4dc4b45aadb7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
