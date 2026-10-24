# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Support.Variantf54185995113736a4381f896b4cec74feea2d0799d16a92e48b4dff33452d1a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f0464a6a486d06180fef9637888a7dd9fe46ddc",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantf54185995113736a4381f896b4cec74feea2d0799d16a92e48b4dff33452d1a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantf54185995113736a4381f896b4cec74feea2d0799d16a92e48b4dff33452d1a4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantf54185995113736a4381f896b4cec74feea2d0799d16a92e48b4dff33452d1a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f0464a6a486d06180fef9637888a7dd9fe46ddc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantf54185995113736a4381f896b4cec74feea2d0799d16a92e48b4dff33452d1a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantf54185995113736a4381f896b4cec74feea2d0799d16a92e48b4dff33452d1a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [support_deriv_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantf54185995113736a4381f896b4cec74feea2d0799d16a92e48b4dff33452d1a4.lean/declarations/support-deriv-subset--4f11c9d93dca6022f854022c.md) | 46 | `result-track:4f11c9d93dca6022f854022c79181a696b0927b842ed5126de17f75df2661132` |
| 2 | `theorem` | [HasCompactSupport.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantf54185995113736a4381f896b4cec74feea2d0799d16a92e48b4dff33452d1a4.lean/declarations/hascompactsupport-deriv--50c75565dfa0746ab825ce64.md) | 54 | `result-track:50c75565dfa0746ab825ce6474e25c677afbe9d83d06f8e9d9dd4f1ce7fb7bb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
