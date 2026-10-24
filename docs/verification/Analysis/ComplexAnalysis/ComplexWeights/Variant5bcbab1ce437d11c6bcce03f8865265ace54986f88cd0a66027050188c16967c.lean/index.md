# Verification target: GRWTSK.Analysis.ComplexAnalysis.ComplexWeights.Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "917c91929ca14e5960311444697672fc878f4a72",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `917c91929ca14e5960311444697672fc878f4a72`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.WeightMultiplicativity` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.MultiplicativeFunction` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexWeight](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean/declarations/complexweight--bb7ab8c2f00bdc5ebb425e95.md) | 16 | `declaration-track:bb7ab8c2f00bdc5ebb425e9597a1c8af13b289f3108849539fe46abd35fb7727` |
| 2 | `theorem` | [complexWeight_zero](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean/declarations/complexweight-zero--9993b53beae832f4fc37b0bc.md) | 21 | `result-track:9993b53beae832f4fc37b0bcd5e123709d21d591b4e92434091038df10a5617d` |
| 3 | `theorem` | [complexWeight_one](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean/declarations/complexweight-one--f78ff98b89ace144ecadb000.md) | 26 | `result-track:f78ff98b89ace144ecadb00018861b45544aa384bab8ce41db2de808ac9a2449` |
| 4 | `theorem` | [complexWeight_of_pos](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean/declarations/complexweight-of-pos--23d867decc79ba7c7721eda6.md) | 31 | `result-track:23d867decc79ba7c7721eda6f2c44c7a6a8aaf65d8570456930476881de519cf` |
| 5 | `theorem` | [norm_complexWeight_eq_posWeightReal_re](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean/declarations/norm-complexweight-eq-posweightreal-re--5d0a271556e3ad0c5a82b01f.md) | 39 | `result-track:5d0a271556e3ad0c5a82b01fe4b7397c3fde90b3314778a71ade8fdb61505e55` |
| 6 | `theorem` | [norm_complexWeight_le_posWeightReal_re](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean/declarations/norm-complexweight-le-posweightreal-re--63078f3af6cb2688ecf1c313.md) | 52 | `result-track:63078f3af6cb2688ecf1c313a932da40f2f1c6fb4a76b536f14d00aa9517e951` |
| 7 | `theorem` | [complexWeight_mul](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean/declarations/complexweight-mul--121924b2315c54617e64f109.md) | 60 | `result-track:121924b2315c54617e64f10985284a87fc04287f0e69a76ed3a261670799c174` |
| 8 | `theorem` | [complexWeight_completely_multiplicative](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean/declarations/complexweight-completely-multiplicative--aa153ad0f1f7149561a2a62b.md) | 83 | `result-track:aa153ad0f1f7149561a2a62bccb80037bfc7dddbc9d23b96015074a48db288d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
