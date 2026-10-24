# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "690484c2b1f9159b84897de6fd7694db5b4b3a6b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `690484c2b1f9159b84897de6fd7694db5b4b3a6b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [directSum](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/declarations/directsum--47c2808ae125229caee7baec.md) | 61 | `declaration-track:47c2808ae125229caee7baec2c9a0e35cb98fc483f16c6df6e6077d7340627c3` |
| 2 | `def` | [directSumLeft](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/declarations/directsumleft--59b2369544629b77834b3cd4.md) | 131 | `declaration-track:59b2369544629b77834b3cd48990b3ceee5832bb0a4c7005b68bdd98e66156cb` |
| 3 | `def` | [directSumRight](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/declarations/directsumright--950086ef9259019bf7eca29f.md) | 152 | `declaration-track:950086ef9259019bf7eca29f13c2c8021a0f9c09faad54a425cce2882abf7ddd` |
| 4 | `theorem` | [directSum_lof_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/declarations/directsum-lof-tmul-lof--7d7c9ce715cd93446a166dfc.md) | 160 | `result-track:7d7c9ce715cd93446a166dfc1cce7c9e8b5e2333b17045cff536352505f4e776` |
| 5 | `theorem` | [directSumLeft_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/declarations/directsumleft-tmul-lof--8f4888cdb22bd4c3dc6c1aa5.md) | 167 | `result-track:8f4888cdb22bd4c3dc6c1aa51aae2e5d19256433e500e1c2ccc7ccbe97e70922` |
| 6 | `theorem` | [directSumLeft_symm_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/declarations/directsumleft-symm-lof-tmul--55d39f5ec10386ea0bcd80f0.md) | 176 | `result-track:55d39f5ec10386ea0bcd80f06d75aa22275e6d254abaf23a4a0a356ac3115f30` |
| 7 | `theorem` | [directSumRight_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/declarations/directsumright-tmul-lof--556fa2e6cde0e29fbe5c32b5.md) | 183 | `result-track:556fa2e6cde0e29fbe5c32b53fb7c430597f24dc07b5a5af1d24d771ff2a5f31` |
| 8 | `theorem` | [directSumRight_symm_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/declarations/directsumright-symm-lof-tmul--5af6992dd264a46e8056f6ba.md) | 192 | `result-track:5af6992dd264a46e8056f6ba35fb0c8d9484997c99d62999e6cae4b039cd7d9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
