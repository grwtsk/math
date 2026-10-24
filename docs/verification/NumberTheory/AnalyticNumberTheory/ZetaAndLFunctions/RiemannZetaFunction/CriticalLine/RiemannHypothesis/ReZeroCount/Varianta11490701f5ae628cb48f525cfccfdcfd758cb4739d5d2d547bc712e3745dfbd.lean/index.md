# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReZeroCount.Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3544fe670aa3734da7c10f647de6dd749755068",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3544fe670aa3734da7c10f647de6dd749755068`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.BacklundDefs` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ZetaGrowth` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.LocalCount` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.ZetaReflect` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [finite_zeros_closedBall](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/declarations/finite-zeros-closedball--0c9cd9ad1236bd5681a814c7.md) | 35 | `result-track:0c9cd9ad1236bd5681a814c7b000f9653a3961ebb6113b2fcfb2759a9242668e` |
| 2 | `def` | [symZeta](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/declarations/symzeta--fc9c209ad9773859231db5ac.md) | 61 | `declaration-track:fc9c209ad9773859231db5acd0ed8dbdcda32e6e55f438130149654cc9b23f72` |
| 3 | `lemma` | [ne_one_of_im_large](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/declarations/ne-one-of-im-large--7e770362f45e34dba535e32b.md) | 63 | `result-track:7e770362f45e34dba535e32b60b025014d65842f4642831d782582203d64d884` |
| 4 | `lemma` | [symZeta_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/declarations/symzeta-analyticat--f7272e68c60cdb0fd5dab00f.md) | 79 | `result-track:f7272e68c60cdb0fd5dab00fc2a2a00b6de416c39779feca9ef7eac5ce382686` |
| 5 | `lemma` | [symZeta_ofReal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/declarations/symzeta-ofreal--5cf0258cb9c5ef4b5373ad4d.md) | 93 | `result-track:5cf0258cb9c5ef4b5373ad4d5ef9103070562790f19d9d58ac6fd46bf6c59d64` |
| 6 | `theorem` | [reZeroSet_card_le_of_growth](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/declarations/rezeroset-card-le-of-growth--a89607c57cb1291dbbb380e5.md) | 109 | `result-track:a89607c57cb1291dbbb380e506610649ef589931f46f66e24ef263f146fdc0c3` |
| 7 | `theorem` | [reZeroSet_card_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/declarations/rezeroset-card-le--d88b8143730bf47327f6f3ca.md) | 359 | `result-track:d88b8143730bf47327f6f3ca4354403469d60f9b8abddb86f6bbb6e00573ed20` |
| 8 | `theorem` | [reZeroSet_card_le_at](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Varianta11490701f5ae628cb48f525cfccfdcfd758cb4739d5d2d547bc712e3745dfbd.lean/declarations/rezeroset-card-le-at--3af2bc27f90cde7fb4d4c825.md) | 366 | `result-track:3af2bc27f90cde7fb4d4c825a9255e3a8f64070225de8ac45d1cc6186378c288` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
