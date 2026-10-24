# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SumOverResidueClass.Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7421d9d592cd0502a5e02c666614422214b5f110",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7421d9d592cd0502a5e02c666614422214b5f110`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Finset.sum_indicator_mod](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/declarations/finset-sum-indicator-mod--d256778b4cb3175d40f373cd.md) | 29 | `result-track:d256778b4cb3175d40f373cd79933bda5cd1ab25d6248c731ce31e7c1318c4d8` |
| 2 | `lemma` | [summable_indicator_mod_iff_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/declarations/summable-indicator-mod-iff-summable--68e30ad22edb5cb032a7eeef.md) | 38 | `result-track:68e30ad22edb5cb032a7eeef097cb958882f05ca52ffbae6ac09f7021d9bfa9d` |
| 3 | `lemma` | [not_summable_of_antitone_of_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/declarations/not-summable-of-antitone-of-neg--27536ebbe1feebbd1a90f826.md) | 56 | `result-track:27536ebbe1feebbd1a90f8264f38df5d5f1ceed591a9d73563f1afac575a85e1` |
| 4 | `lemma` | [not_summable_indicator_mod_of_antitone_of_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/declarations/not-summable-indicator-mod-of-antitone-of-neg--a9f22edceb9e67f9357e22eb.md) | 69 | `result-track:a9f22edceb9e67f9357e22eba4a3c7ae40cde8f530a73fe65df864e76a560d0d` |
| 5 | `lemma` | [summable_indicator_mod_iff_summable_indicator_mod](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/declarations/summable-indicator-mod-iff-summable-indicator-mod--e276a1453e8a0bcc66724a1b.md) | 79 | `result-track:e276a1453e8a0bcc66724a1be8009811547df7265dd8d6d1c8ad9a09f0ee3930` |
| 6 | `lemma` | [summable_indicator_mod_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/declarations/summable-indicator-mod-iff--5cb21aeaaabd4209a9a0e733.md) | 96 | `result-track:5cb21aeaaabd4209a9a0e733387bc9a9cc734ca1a53d1749149266d24cd78e27` |
| 7 | `lemma` | [Nat.sumByResidueClasses](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/declarations/nat-sumbyresidueclasses--00b48c261f08c50758d065f9.md) | 108 | `result-track:00b48c261f08c50758d065f9ff34882f96c4c636c48abb4a7ad4c1f7e9dffc3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
