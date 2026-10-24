# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.MellinEqDirichlet.Variantd5a525183ec445c36049610ddbb1e0548ec7eaddd2a38c108d29d646a940c0a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74352ffe1e29bbe06a7cb6e6abedfff7d5768dc4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantd5a525183ec445c36049610ddbb1e0548ec7eaddd2a38c108d29d646a940c0a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantd5a525183ec445c36049610ddbb1e0548ec7eaddd2a38c108d29d646a940c0a7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantd5a525183ec445c36049610ddbb1e0548ec7eaddd2a38c108d29d646a940c0a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74352ffe1e29bbe06a7cb6e6abedfff7d5768dc4`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantd5a525183ec445c36049610ddbb1e0548ec7eaddd2a38c108d29d646a940c0a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantd5a525183ec445c36049610ddbb1e0548ec7eaddd2a38c108d29d646a940c0a7.lean.json)

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
| 1 | `lemma` | [hasSum_mellin](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantd5a525183ec445c36049610ddbb1e0548ec7eaddd2a38c108d29d646a940c0a7.lean/declarations/hassum-mellin--2c3c919e6969e7a5cf4eb2bb.md) | 32 | `result-track:2c3c919e6969e7a5cf4eb2bb6114e308fe9b191e7840922d560f51462cc49f68` |
| 2 | `lemma` | [hasSum_mellin_pi_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantd5a525183ec445c36049610ddbb1e0548ec7eaddd2a38c108d29d646a940c0a7.lean/declarations/hassum-mellin-pi-mul--a4894190f6f4a27fc9b35ccf.md) | 78 | `result-track:a4894190f6f4a27fc9b35ccf041972ae98e0348f71f0bce228a8958791004bfe` |
| 3 | `lemma` | [hasSum_mellin_pi_mul₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantd5a525183ec445c36049610ddbb1e0548ec7eaddd2a38c108d29d646a940c0a7.lean/declarations/hassum-mellin-pi-mul--2337fbad3c2751ea6ce2f8d5.md) | 99 | `result-track:2337fbad3c2751ea6ce2f8d5835a76e3b15f78436f21d694a37e56c0fa4e3667` |
| 4 | `lemma` | [hasSum_mellin_pi_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantd5a525183ec445c36049610ddbb1e0548ec7eaddd2a38c108d29d646a940c0a7.lean/declarations/hassum-mellin-pi-mul-sq--f0e58fac8310eba2b36fbdcb.md) | 126 | `result-track:f0e58fac8310eba2b36fbdcb36114fe47d86e8e861f41b9d017fa9fc31e19bfc` |
| 5 | `lemma` | [hasSum_mellin_pi_mul_sq'](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantd5a525183ec445c36049610ddbb1e0548ec7eaddd2a38c108d29d646a940c0a7.lean/declarations/hassum-mellin-pi-mul-sq--42536fd8dff977488cbbc2ea.md) | 142 | `result-track:42536fd8dff977488cbbc2eae18f24e8457c697f5ec86658be64be52ae1e5af4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
