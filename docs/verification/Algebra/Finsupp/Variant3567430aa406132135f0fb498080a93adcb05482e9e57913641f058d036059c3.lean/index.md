# Verification target: GRWTSK.Algebra.Finsupp.Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "420f3916934a794eca80153a71e9e04de39df809",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `420f3916934a794eca80153a71e9e04de39df809`.

Source path: `GRWTSK/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean.json)

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
| 1 | `def` | [finsuppAntidiag](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/declarations/finsuppantidiag--1028936ba1ce8a3d876670a9.md) | 45 | `declaration-track:1028936ba1ce8a3d876670a9f352e74410e457ba23a6ce3f5567f14fd0c090be` |
| 2 | `lemma` | [mem_finsuppAntidiag](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/declarations/mem-finsuppantidiag--4926936902dccf28f2e87be2.md) | 49 | `result-track:4926936902dccf28f2e87be22c5df39666a9de501e4523e78f852ea5e518a228` |
| 3 | `lemma` | [mem_finsuppAntidiag'](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/declarations/mem-finsuppantidiag--0534fb2c78ad99416bd93bf0.md) | 52 | `result-track:0534fb2c78ad99416bd93bf0c170eac85a16c8f03ce278d769a4525b26f73f50` |
| 4 | `lemma` | [finsuppAntidiag_empty_zero](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/declarations/finsuppantidiag-empty-zero--2f1b3052b05e7bf982d01f98.md) | 58 | `result-track:2f1b3052b05e7bf982d01f9881d17bc911c4ed74d8f0484655f25e3a0bdab398` |
| 5 | `lemma` | [finsuppAntidiag_empty_of_ne_zero](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/declarations/finsuppantidiag-empty-of-ne-zero--f978a83784eed120d4dd6060.md) | 61 | `result-track:f978a83784eed120d4dd6060fb2d11f97a61b4d00c470b2e3b502e26b772346e` |
| 6 | `lemma` | [finsuppAntidiag_empty](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/declarations/finsuppantidiag-empty--9cdde38f008722fae3ef4617.md) | 65 | `result-track:9cdde38f008722fae3ef46179ccb1c94c0374e351edf1ef81cfc59641e41dd2c` |
| 7 | `theorem` | [mem_finsuppAntidiag_insert](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/declarations/mem-finsuppantidiag-insert--efe1d1c224ec34bb05c46b10.md) | 68 | `result-track:efe1d1c224ec34bb05c46b1061c8c73febf92270d06ff1898349980cfb508378` |
| 8 | `theorem` | [finsuppAntidiag_insert](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/declarations/finsuppantidiag-insert--7d2fd68c655c12dff7d696e8.md) | 92 | `result-track:7d2fd68c655c12dff7d696e810fbe337ab6db89d208a3499183e96401233e84a` |
| 9 | `theorem` | [finsuppAntidiag_mono](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/declarations/finsuppantidiag-mono--1824e04f0417586f3894d333.md) | 113 | `result-track:1824e04f0417586f3894d333adc232c5052a942c8d9c2819c9c0e5b26b391af9` |
| 10 | `lemma` | [mapRange_finsuppAntidiag_subset](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/declarations/maprange-finsuppantidiag-subset--58e2302f55036cca981f4836.md) | 124 | `result-track:58e2302f55036cca981f4836e31d6b4244d9252423ff8f0cb01dbbc9d8e6fc40` |
| 11 | `lemma` | [mapRange_finsuppAntidiag_eq](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/declarations/maprange-finsuppantidiag-eq--4322ac47ab39b2e235ae89a0.md) | 135 | `result-track:4322ac47ab39b2e235ae89a0806914352c3236733f13c5fef8cd102841b06bd9` |
| 12 | `lemma` | [finsuppAntidiag_zero](../../../../mathematics/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/declarations/finsuppantidiag-zero--fdc317dbd2ea3ef7701299e3.md) | 157 | `result-track:fdc317dbd2ea3ef7701299e3e6993b8a879a57f9568654f90ec48fc960f70860` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
