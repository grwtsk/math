# Verification target: GRWTSK.Algebra.ReduceModChar.Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68056efb788dc6c3a8d549ed90d159739be1dc60",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/index.md) · [Full source](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68056efb788dc6c3a8d549ed90d159739be1dc60`.

Source path: `GRWTSK/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CharP.isInt_of_mod](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/charp-isint-of-mod--a9f5f2ddfca165c5b81c3b9f.md) | 53 | `result-track:a9f5f2ddfca165c5b81c3b9f0cfc456892d9121cac0ed49243ab274fcb39e1c6` |
| 2 | `lemma` | [CharP.isNat_pow](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/charp-isnat-pow--f014a77d96530ce707862e1e.md) | 57 | `result-track:f014a77d96530ce707862e1e955c90bf3df7770f07668fb3e926394684c325cd` |
| 3 | `def` | [normBareNumeral](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/normbarenumeral--36df426ab4d8f25c312b8f94.md) | 66 | `declaration-track:36df426ab4d8f25c312b8f940e0b7920d7de5efc251eb086514f0e83fc26b51a` |
| 4 | `def` | [normPow](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/normpow--87c51b5de779bf0c97068cbd.md) | 78 | `declaration-track:87c51b5de779bf0c97068cbda1ef88d4f53c145bd6fc79c33e96e6a0a390b9c6` |
| 5 | `def` | [normIntNumeral'](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/normintnumeral--6c16b86a594d94973db2dd4d.md) | 92 | `declaration-track:6c16b86a594d94973db2dd4d3da446168bd6c12b51b6fee153086137679c2c36` |
| 6 | `lemma` | [CharP.intCast_eq_mod](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/charp-intcast-eq-mod--9c1a23a4c2e403d069fb0a5a.md) | 98 | `result-track:9c1a23a4c2e403d069fb0a5a8a0916df8eb45c01fb7c3f5cbc55f71624334f97` |
| 7 | `def` | [normIntNumeral](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/normintnumeral--9d961c8eeb819c2de07796c0.md) | 104 | `declaration-track:9d961c8eeb819c2de07796c0987d71c16cde33500e403f58283584223f3629e0` |
| 8 | `lemma` | [CharP.neg_eq_sub_one_mul](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/charp-neg-eq-sub-one-mul--3724c730fa1cefd16ca202e2.md) | 109 | `result-track:3724c730fa1cefd16ca202e2813e99bab843b382843fc38f4d361f400c3a805d` |
| 9 | `def` | [normNeg](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/normneg--dc8f9af13671d934887c791c.md) | 122 | `declaration-track:dc8f9af13671d934887c791c8a705ef4bb05862f8513f7bae17b2687c55b7036` |
| 10 | `lemma` | [CharP.neg_mul_eq_sub_one_mul](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/charp-neg-mul-eq-sub-one-mul--21ce8be6927992e15bd9b458.md) | 138 | `result-track:21ce8be6927992e15bd9b458aaa7ddfe27ac9e830967fe9b3935f2f4d0beb3ce` |
| 11 | `def` | [normNegCoeffMul](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/normnegcoeffmul--9ff9166d65b8be664cfbc4aa.md) | 147 | `declaration-track:9ff9166d65b8be664cfbc4aacf7c0a183ce58cce85fc6c99891f74d9f7153d63` |
| 12 | `inductive` | [TypeToCharPResult](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/typetocharpresult--a8821543a7b7e54262f23590.md) | 167 | `declaration-track:a8821543a7b7e54262f2359064b441c1ef669e886a7259b57b919dd76ee91e6d` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/instance--5650336d56bf1f5e16e00913.md) | 171 | `declaration-track:5650336d56bf1f5e16e009130f676695c1eb5e0bff53335b69cd7aa46e55344f` |
| 14 | `def` | [typeToCharP](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/typetocharp--3235f28668165df5a22678b0.md) | 178 | `declaration-track:3235f28668165df5a22678b0a01ad6e77cc1bee816c96e85da5fc785ee3fed96` |
| 15 | `def` | [matchAndNorm](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/matchandnorm--6ae3e429ea3bc84e4d12f6b4.md) | 211 | `declaration-track:6ae3e429ea3bc84e4d12f6b491619b74cb5a70e85cca1db35b8744b9c104fce3` |
| 16 | `def` | [derive](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/derive--33224b3e5db602fec20f480f.md) | 241 | `declaration-track:33224b3e5db602fec20f480ffe7618cc15b232f751a9f62e58cb9aafa2153ce1` |
| 17 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/syntax--1732f90d7fd52b277074812f.md) | 290 | `declaration-track:1732f90d7fd52b277074812f5fc0c91a57dfd93ecdd8a2acd4bf7727779f0362` |
| 18 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/syntax--700ea03fe335beb4be0a783b.md) | 292 | `declaration-track:700ea03fe335beb4be0a783bac13a7eaa31db0dc5023f53c055920e155adfb05` |
| 19 | `elab_rules` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/declarations/elab-rules--44e557245b4c72696ca76bc9.md) | 295 | `declaration-track:44e557245b4c72696ca76bc9a463d06ccdbfd63164b89b2896637f03ab068357` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
