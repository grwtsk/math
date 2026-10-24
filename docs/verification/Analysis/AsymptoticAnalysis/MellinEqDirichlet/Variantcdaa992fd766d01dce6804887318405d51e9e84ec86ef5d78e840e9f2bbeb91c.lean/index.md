# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.MellinEqDirichlet.Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e521b3b85faa5f0348ba221bfa9d1e93c20e280",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e521b3b85faa5f0348ba221bfa9d1e93c20e280`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasSum_mellin](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean/declarations/hassum-mellin--656323a8db46c12660c0e12c.md) | 29 | `result-track:656323a8db46c12660c0e12c928574f7ee24759f0f7b1f98b27e9e7c0a830488` |
| 2 | `lemma` | [hasSum_mellin_pi_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean/declarations/hassum-mellin-pi-mul--ac7af97e63424a037f147a63.md) | 73 | `result-track:ac7af97e63424a037f147a630d0c76d0ade5627407abcdb8ebbe72f0d07136ed` |
| 3 | `lemma` | [hasSum_mellin_pi_mul₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean/declarations/hassum-mellin-pi-mul--b5bf4f48133d84bc4983548c.md) | 94 | `result-track:b5bf4f48133d84bc4983548ce9ea051f8578c4c3492fc2e51618a63b634b74a3` |
| 4 | `lemma` | [hasSum_mellin_pi_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean/declarations/hassum-mellin-pi-mul-sq--c558aabd4648e4be7386d6cb.md) | 121 | `result-track:c558aabd4648e4be7386d6cbdd430d4efbb004231c2bc85da2b5bc9bbdc3e78c` |
| 5 | `lemma` | [hasSum_mellin_pi_mul_sq'](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean/declarations/hassum-mellin-pi-mul-sq--bd2ffbb13ebe948fdda3b630.md) | 137 | `result-track:bd2ffbb13ebe948fdda3b6305bcf9c39cc4d3f5fe727839aaa2612593f43af14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
