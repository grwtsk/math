# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SumOverResidueClass.Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "470ee87f1654513f0284dac03521b8a8f2443cab",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `470ee87f1654513f0284dac03521b8a8f2443cab`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean.json)

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
| 1 | `lemma` | [Finset.sum_indicator_mod](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean/declarations/finset-sum-indicator-mod--430e62125b07087927c83e91.md) | 25 | `result-track:430e62125b07087927c83e91d19cd5dc288cfd3fcdc22f1e05ca56ae5998daf1` |
| 2 | `lemma` | [summable_indicator_mod_iff_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean/declarations/summable-indicator-mod-iff-summable--50fe29e47a8c2474d2d6c26e.md) | 34 | `result-track:50fe29e47a8c2474d2d6c26ef2e6ee31be15081356dbd7c46a7c3cb4f2e3a3cf` |
| 3 | `lemma` | [not_summable_of_antitone_of_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean/declarations/not-summable-of-antitone-of-neg--61a098997ba3871414b237cd.md) | 52 | `result-track:61a098997ba3871414b237cd95e65b10a665d3bd75c9fe895045e0574ea7207e` |
| 4 | `lemma` | [not_summable_indicator_mod_of_antitone_of_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean/declarations/not-summable-indicator-mod-of-antitone-of-neg--bb0c9312bf585715342e1287.md) | 65 | `result-track:bb0c9312bf585715342e12879616aaf737e4afa4194eac2ae68a458cab5ccd5b` |
| 5 | `lemma` | [summable_indicator_mod_iff_summable_indicator_mod](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean/declarations/summable-indicator-mod-iff-summable-indicator-mod--28b0e7ad79e5aeb6d43c9d38.md) | 75 | `result-track:28b0e7ad79e5aeb6d43c9d38da4d5fcc76d777cf48a825e58f6fbb36fa433a99` |
| 6 | `lemma` | [summable_indicator_mod_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean/declarations/summable-indicator-mod-iff--f10275a2069a89a1f94fe230.md) | 91 | `result-track:f10275a2069a89a1f94fe230bf9fd21dad891e1306ca6029f82fba3ac9a5f9cb` |
| 7 | `lemma` | [Nat.sumByResidueClasses](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variantf14050037bebca9603d5aa8551d9c07abfc830fa966c8764f048426e2ae7c90e.lean/declarations/nat-sumbyresidueclasses--39d9d2efa0f7183573271f01.md) | 104 | `result-track:39d9d2efa0f7183573271f0101d521ada322986a8235deb8f96792bb2bff06da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
