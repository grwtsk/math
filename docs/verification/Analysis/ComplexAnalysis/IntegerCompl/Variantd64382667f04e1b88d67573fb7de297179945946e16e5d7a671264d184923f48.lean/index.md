# Verification target: GRWTSK.Analysis.ComplexAnalysis.IntegerCompl.Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b44932dcd48b175b5d4886c1277facf61f77146",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b44932dcd48b175b5d4886c1277facf61f77146`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Complex.integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean/declarations/complex-integercomplement--4c9c87ce27c30b224b480afc.md) | 23 | `declaration-track:4c9c87ce27c30b224b480afc6e4b18904a400232107813cc7047c9c3ca4d758e` |
| 2 | `lemma` | [integerComplement_eq](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean/declarations/integercomplement-eq--8a20556927f75c8474ba32b9.md) | 29 | `result-track:8a20556927f75c8474ba32b975fb26e0a707610ebd74a3585fd83a45da33b9ba` |
| 3 | `lemma` | [mem_integerComplement_iff](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean/declarations/mem-integercomplement-iff--379c1ccff542aa7efef7c47c.md) | 31 | `result-track:379c1ccff542aa7efef7c47ccbaf8a07aa846b8d2f66e0e4da2264d531f103c3` |
| 4 | `lemma` | [_root_.UpperHalfPlane.coe_mem_integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean/declarations/root-upperhalfplane-coe-mem-integercomplement--6f4be69e33b79edcdceb311e.md) | 34 | `result-track:6f4be69e33b79edcdceb311e4ca95b429015a37ed1270ec78513d01318faab85` |
| 5 | `lemma` | [add_intCast_mem_integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean/declarations/add-intcast-mem-integercomplement--5dd0a82972fedcacf5093e66.md) | 38 | `result-track:5dd0a82972fedcacf5093e66f577cf346823893d6b1a986e5494a957a512d0e4` |
| 6 | `lemma` | [integerComplement.ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean/declarations/integercomplement-ne-zero--993d7c9dae82ad0e3b46b7de.md) | 43 | `result-track:993d7c9dae82ad0e3b46b7de4f59e7685bc81d94eca067158187fa338a668490` |
| 7 | `lemma` | [integerComplement_add_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean/declarations/integercomplement-add-ne-zero--bc2f629aabb7353141da4262.md) | 46 | `result-track:bc2f629aabb7353141da4262d80917dfc577c6a8d1ea6e1633bcaa2fb5e8cf5f` |
| 8 | `lemma` | [integerComplement.ne_one](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean/declarations/integercomplement-ne-one--02925fc04718059ff08d7717.md) | 49 | `result-track:02925fc04718059ff08d771755c214961f214bce3f769a0452125dfe763b702d` |
| 9 | `lemma` | [integerComplement_pow_two_ne_pow_two](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean/declarations/integercomplement-pow-two-ne-pow-two--284e229ee0307e6549f6fe22.md) | 52 | `result-track:284e229ee0307e6549f6fe22b21726d9455ec498e69f8915e56dedddbf83695e` |
| 10 | `lemma` | [upperHalfPlane_inter_integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean/declarations/upperhalfplane-inter-integercomplement--f2e80c181c663b2145f9641e.md) | 57 | `result-track:f2e80c181c663b2145f9641e95e5b0115f18f7eb9f9c810ec48e16b022d885f2` |
| 11 | `lemma` | [_root_.UpperHalfPlane.int_div_mem_integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.lean/declarations/root-upperhalfplane-int-div-mem-integercomplement--4bf1bbef986153c3e552c323.md) | 62 | `result-track:4bf1bbef986153c3e552c323f1d12a6e3e6c638f21076d5fd138ca24ec9ea60a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
