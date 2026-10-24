# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MV.Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9766f4d9aa789d375046b1349d51cf038a79ebdf",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9766f4d9aa789d375046b1349d51cf038a79ebdf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Hypotheses` — import line 37; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 38; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MVDiag](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/mvdiag--a24287269812c9a98bce519e.md) | 52 | `declaration-track:a24287269812c9a98bce519e50f449a6649072f04af32e88f6ff9ef23e4538a6` |
| 2 | `def` | [coef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/coef--1db8b610c2d20c00fa41a68b.md) | 64 | `declaration-track:1db8b610c2d20c00fa41a68b087393d3c8022cf7c9f307ef528177f718d2e14e` |
| 3 | `def` | [B](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/b--96a74644853b05eeaada9b89.md) | 67 | `declaration-track:96a74644853b05eeaada9b89b66761647fac718680fa1ede04db2cc7e4cf0626` |
| 4 | `def` | [N2](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/n2--38c1e5ddf80bf50fa9c3b84e.md) | 70 | `declaration-track:38c1e5ddf80bf50fa9c3b84e2dfb22fccf17db36238172dc33eb9d2869dcf55b` |
| 5 | `lemma` | [sum_eq_B](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/sum-eq-b--eeb73487d5a97cc441e4de9b.md) | 72 | `result-track:eeb73487d5a97cc441e4de9b2abb3469b9edbdb3197d9a8f9e52998ddb20c5c4` |
| 6 | `lemma` | [polar_term](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/polar-term--91f5dadfa06bc6b5ba71740e.md) | 81 | `result-track:91f5dadfa06bc6b5ba71740e270b714dca3a9a82ff7614cf86fcafa243d727e8` |
| 7 | `lemma` | [B_polar](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/b-polar--b9776cf17789b3ced4f2a5f3.md) | 89 | `result-track:b9776cf17789b3ced4f2a5f3b3cabff3ce35fd6048531003a6b9477df700540c` |
| 8 | `lemma` | [N2_polar](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/n2-polar--0cc44eb0b6a0e437817d8ac7.md) | 102 | `result-track:0cc44eb0b6a0e437817d8ac7b304e8537d0dab70684bf1da77d703f48f0ba68d` |
| 9 | `lemma` | [N2_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/n2-nonneg--17953e785aa69f27d92a8a99.md) | 120 | `result-track:17953e785aa69f27d92a8a99ce0fdec078bfebdb711adca373378f7f62db2509` |
| 10 | `lemma` | [eq_zero_of_N2_eq_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/eq-zero-of-n2-eq-zero--0264520ea4cd68a61ef6b8c5.md) | 124 | `result-track:0264520ea4cd68a61ef6b8c5f8c5690565ba9b5d8efc93cfcb8a94812f927695` |
| 11 | `lemma` | [B_zero_left](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/b-zero-left--cf48087968db2e8c8329551b.md) | 135 | `result-track:cf48087968db2e8c8329551b91067861c7cb6abe129bd07bf967b215ada5b736` |
| 12 | `lemma` | [B_zero_right](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/b-zero-right--2c250d9827695bf24929952a.md) | 136 | `result-track:2c250d9827695bf24929952ac5ad9d4da97bd5a3251923a009c7a72b89dc9ea4` |
| 13 | `lemma` | [B_scale](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/b-scale--eb23816ad2ccf9c3b52b4059.md) | 139 | `result-track:eb23816ad2ccf9c3b52b40596af67d624aa83e90807b2ca2f3cdc1517330ef91` |
| 14 | `lemma` | [N2_scale](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/n2-scale--11e66b562f771181f2bebe6b.md) | 149 | `result-track:11e66b562f771181f2bebe6ba9b96b5317a285ad95f83f1c4f201ebe75b2ba89` |
| 15 | `lemma` | [N2_real_smul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/n2-real-smul--cb50ed1a80fdccac9fe5e281.md) | 159 | `result-track:cb50ed1a80fdccac9fe5e28192cbb7a597b46121a8cfec14d880c9e612a02c4c` |
| 16 | `lemma` | [norm_B_le_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/norm-b-le-add--e26eec7a968fd455fc86cd19.md) | 165 | `result-track:e26eec7a968fd455fc86cd191a18d7bf7f6941cca3ce009f19cf1de8fd089739` |
| 17 | `lemma` | [norm_B_le_sqrt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/norm-b-le-sqrt--68c26f1faabfa3086a804149.md) | 190 | `result-track:68c26f1faabfa3086a804149a4d5a6bff0ad5eced78a84f23e78d49cfd875f5d` |
| 18 | `theorem` | [MVHilbert_of_diag](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/mvhilbert-of-diag--7a9e9902292b36d5251137f0.md) | 224 | `result-track:7a9e9902292b36d5251137f070081f6c1a3f1343ae760c60a9f5b586142f5d75` |
| 19 | `theorem` | [exists_MVHilbert_of_diag](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Variant203f1b47b1f8c5cb945d35225d8f0c80db05446668d99c2a8a56fa0130043a7a.lean/declarations/exists-mvhilbert-of-diag--f16ce032127222852fdf9dd7.md) | 235 | `result-track:f16ce032127222852fdf9dd796096405665d84a94a09aef412f0eeb24989499f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
