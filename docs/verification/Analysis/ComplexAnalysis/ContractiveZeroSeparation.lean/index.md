# Verification target: GRWTSK.Analysis.Complex.ContractiveZeroSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d92d23c8dc21df41c463ad79564330e50484b45a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/ContractiveZeroSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroSeparation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d92d23c8dc21df41c463ad79564330e50484b45a`.

Source path: `GRWTSK/Analysis/Complex/ContractiveZeroSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/ContractiveZeroSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ContractiveZeroDisk`](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [scaled_value_lower_of_pair](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroSeparation.lean/declarations/scaled-value-lower-of-pair--dd9a63c1d0d9f780f28214e6.md) | 31 | `result-track:dd9a63c1d0d9f780f28214e67ec42651dcadd13c1401d666514a0e7154db0077` |
| 2 | `theorem` | [scaled_value_lower_on_disk](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroSeparation.lean/declarations/scaled-value-lower-on-disk--84c1eb4617d43803d643ae36.md) | 46 | `result-track:84c1eb4617d43803d643ae3606c90f422a771c0784b1af43c294d6183dedb0da` |
| 3 | `theorem` | [value_lower_of_scaled](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroSeparation.lean/declarations/value-lower-of-scaled--fc3e6a36d0da29587f3912ba.md) | 57 | `result-track:fc3e6a36d0da29587f3912ba5add34bbed44dcd5fdaf036b128a8c67333cd2da` |
| 4 | `theorem` | [scaled_derivative_upper](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroSeparation.lean/declarations/scaled-derivative-upper--554592b4e70581444dfba9b0.md) | 67 | `result-track:554592b4e70581444dfba9b0a98f98ec5fe688de03a2bfa3c1df994dbb8dee04` |
| 5 | `theorem` | [quotient_bound_of_scaled](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroSeparation.lean/declarations/quotient-bound-of-scaled--7383fcdd49d2723325054b7e.md) | 74 | `result-track:7383fcdd49d2723325054b7e9455cd693d0e1d7770a0504c943b1c20cfb72e7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
