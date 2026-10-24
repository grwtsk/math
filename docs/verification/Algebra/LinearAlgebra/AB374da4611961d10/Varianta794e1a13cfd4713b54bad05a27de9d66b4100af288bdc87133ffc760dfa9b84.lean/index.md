# Verification target: GRWTSK.Algebra.LinearAlgebra.AB374da4611961d10.Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a386fc9e8b41e712f302664a0874b009a92694e5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AB374da4611961d10/Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a386fc9e8b41e712f302664a0874b009a92694e5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AB374da4611961d10/Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AB374da4611961d10/Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Kernel.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 3; external provider; requires a separately pinned dependency.
- `MathDiscovery.Kernel.Channel` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [identityRegularizer](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84.lean/declarations/identityregularizer--2ef38f338adca70e9ab9b3db.md) | 22 | `declaration-track:2ef38f338adca70e9ab9b3db71ec962c7a2800e1fc9d8539c50709e9e54a1917` |
| 2 | `theorem` | [identityRegularizer_posDef](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84.lean/declarations/identityregularizer-posdef--847b3a5d695add240f7c6723.md) | 26 | `result-track:847b3a5d695add240f7c6723436d4030bf2b32b5a699bf3e338a26afacec70d0` |
| 3 | `def` | [regularizedKernel](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84.lean/declarations/regularizedkernel--05bda5b0222a060abfd3a503.md) | 32 | `declaration-track:05bda5b0222a060abfd3a503fb1251f397b080fe53f7f5ad0c45408cc69c6d5b` |
| 4 | `theorem` | [regularizedKernel_apply](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84.lean/declarations/regularizedkernel-apply--c873176c8b7d53ee681327a7.md) | 42 | `result-track:c873176c8b7d53ee681327a74d27c8f5e31af86edb7235b8f7f1b1879a91e9b6` |
| 5 | `theorem` | [regularizedKernel_posDef](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84.lean/declarations/regularizedkernel-posdef--e4c8260f50d87a0f1179b264.md) | 56 | `result-track:e4c8260f50d87a0f1179b26404f9a6e1004206abd5a68f2cac04b8c3f3a07192` |
| 6 | `theorem` | [regularizedKernel_strictOnDistinct](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84.lean/declarations/regularizedkernel-strictondistinct--9081cea1de05bd24c8095c61.md) | 65 | `result-track:9081cea1de05bd24c8095c61306b7d12ff9ae6e3e788c1b6bc9685ca7f2f9e75` |
| 7 | `def` | [zeroSemanticKernel](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84.lean/declarations/zerosemantickernel--852ea79f0e07b0dde15796dd.md) | 77 | `declaration-track:852ea79f0e07b0dde15796ddd23639ffd5fd4c3be035d8b1dae729fb824f0c97` |
| 8 | `theorem` | [zeroSemanticKernel_apply](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Varianta794e1a13cfd4713b54bad05a27de9d66b4100af288bdc87133ffc760dfa9b84.lean/declarations/zerosemantickernel-apply--ecce827040a6c97e91597b28.md) | 83 | `result-track:ecce827040a6c97e91597b2895c13e824f7d0529ea19e62aa4924f062ceac8e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
