# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Extension.Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c66d614d34c63918738c6c80c779bb74d6b5c401",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c66d614d34c63918738c6c80c779bb74d6b5c401`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.IsROrC` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Extend` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_extension_norm_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean/declarations/exists-extension-norm-eq--97993fe8591503eef361c6c1.md) | 42 | `result-track:97993fe8591503eef361c6c1cf5ad10c5dca4fa0e8b9ec3f5f42d3369ada8009` |
| 2 | `theorem` | [exists_extension_norm_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean/declarations/exists-extension-norm-eq--bec8faea7a26e6880f2ec013.md) | 69 | `result-track:bec8faea7a26e6880f2ec013ed3e7c59d4642e626db4a75faeaa4852dfc3dfcf` |
| 3 | `theorem` | [coord_norm'](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean/declarations/coord-norm--deb4176f5d4ab52ea2a99399.md) | 117 | `result-track:deb4176f5d4ab52ea2a993998322d780ce2d5b3947ed41bb29ca2b4fa959ab98` |
| 4 | `theorem` | [exists_dual_vector](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean/declarations/exists-dual-vector--2982c788e84ad05e0de804d1.md) | 124 | `result-track:2982c788e84ad05e0de804d1b772315624b76f18aba7f4fab731fa4b211d9881` |
| 5 | `theorem` | [exists_dual_vector'](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean/declarations/exists-dual-vector--48f4636abbaccf4bc8092afb.md) | 138 | `result-track:48f4636abbaccf4bc8092afb8fb86e0d7042502af6eb216cb2abaaecb5078cc1` |
| 6 | `theorem` | [exists_dual_vector''](../../../../../mathematics/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean/declarations/exists-dual-vector--eb24b7888dcac6570160c1e8.md) | 150 | `result-track:eb24b7888dcac6570160c1e8f6a146a2d0f0e736200e794c5550ddea31267dd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
