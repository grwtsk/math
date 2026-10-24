# Verification target: GRWTSK.Analysis.ComplexAnalysis.IntegerCompl.Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59a26eb3ab4fff9271c79dfa08db43036e6f8f63",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/IntegerCompl/Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59a26eb3ab4fff9271c79dfa08db43036e6f8f63`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/IntegerCompl/Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/IntegerCompl/Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Complex.integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c.lean/declarations/complex-integercomplement--7648ef824b787dee43bad860.md) | 28 | `declaration-track:7648ef824b787dee43bad860f1da4ef072de4b7ff7b1a6bad375a721bdc15c15` |
| 2 | `lemma` | [integerComplement_eq](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c.lean/declarations/integercomplement-eq--432e746169ee5391eb4dbdb2.md) | 34 | `result-track:432e746169ee5391eb4dbdb2d9df62ab810814fea79b7839f7a9c1adb42079ae` |
| 3 | `lemma` | [integerComplement.mem_iff](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c.lean/declarations/integercomplement-mem-iff--66433649c920a818448f3de4.md) | 36 | `result-track:66433649c920a818448f3de4d386bee4ee8d4792af89006c7887bfab1d003f89` |
| 4 | `lemma` | [UpperHalfPlane.coe_mem_integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c.lean/declarations/upperhalfplane-coe-mem-integercomplement--708386c223ff184a4309f73a.md) | 38 | `result-track:708386c223ff184a4309f73a6683623b0dda8b01c4b343abf6c5022fc553bd55` |
| 5 | `lemma` | [integerComplement.add_coe_int_mem](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c.lean/declarations/integercomplement-add-coe-int-mem--5a3c57e3265c955e9f476b04.md) | 41 | `result-track:5a3c57e3265c955e9f476b043f5020d3066d13f15d9f1df0cb62c8a049789858` |
| 6 | `lemma` | [integerComplement.ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c.lean/declarations/integercomplement-ne-zero--3947a8345749d8b593a3af85.md) | 46 | `result-track:3947a8345749d8b593a3af85d48afcf47e51047087a02bc652c4ead3ee540bfb` |
| 7 | `lemma` | [integerComplement_add_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c.lean/declarations/integercomplement-add-ne-zero--55f6e74d517298be2fcf6171.md) | 49 | `result-track:55f6e74d517298be2fcf617173f89a4be63df9c19635523f66d0fc32135600ca` |
| 8 | `lemma` | [integerComplement.ne_one](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c.lean/declarations/integercomplement-ne-one--f0bdd974287904034ac125e4.md) | 52 | `result-track:f0bdd974287904034ac125e4f2138fc310553d43af49b9c5a60a95e29566a2ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
