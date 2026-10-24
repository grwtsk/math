# Verification target: GRWTSK.Algebra.LinearAlgebra.Prod.Variant0d3588c9897f95f23d16a3ba1e81446b1c7905a8ee0342908cbd78a06b2a2d00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fb1460848731b1914171ae4f38e01a344348586",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant0d3588c9897f95f23d16a3ba1e81446b1c7905a8ee0342908cbd78a06b2a2d00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant0d3588c9897f95f23d16a3ba1e81446b1c7905a8ee0342908cbd78a06b2a2d00.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant0d3588c9897f95f23d16a3ba1e81446b1c7905a8ee0342908cbd78a06b2a2d00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fb1460848731b1914171ae4f38e01a344348586`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variant0d3588c9897f95f23d16a3ba1e81446b1c7905a8ee0342908cbd78a06b2a2d00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variant0d3588c9897f95f23d16a3ba1e81446b1c7905a8ee0342908cbd78a06b2a2d00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prodRight](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant0d3588c9897f95f23d16a3ba1e81446b1c7905a8ee0342908cbd78a06b2a2d00.lean/declarations/prodright--49243c7ff055e1000436d32a.md) | 46 | `declaration-track:49243c7ff055e1000436d32aa61c427d84bfc1df9bf816faf0e561067f727838` |
| 2 | `theorem` | [prodRight_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant0d3588c9897f95f23d16a3ba1e81446b1c7905a8ee0342908cbd78a06b2a2d00.lean/declarations/prodright-tmul--31ba598836dc6d8080084b47.md) | 57 | `result-track:31ba598836dc6d8080084b474feb1a2a5316151cd38c28bfa5dc60e52a5e6fc9` |
| 3 | `theorem` | [prodRight_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant0d3588c9897f95f23d16a3ba1e81446b1c7905a8ee0342908cbd78a06b2a2d00.lean/declarations/prodright-symm-tmul--fd386e911458009913bfd11d.md) | 61 | `result-track:fd386e911458009913bfd11d4a53c4ef5dac665ea717b6d51106a60dedc10db5` |
| 4 | `def` | [prodLeft](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant0d3588c9897f95f23d16a3ba1e81446b1c7905a8ee0342908cbd78a06b2a2d00.lean/declarations/prodleft--b0904ba38e96267a4a243a25.md) | 68 | `declaration-track:b0904ba38e96267a4a243a251df8ab7a21a583c96d8dfdfbdda91420c20ff0c9` |
| 5 | `theorem` | [prodLeft_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant0d3588c9897f95f23d16a3ba1e81446b1c7905a8ee0342908cbd78a06b2a2d00.lean/declarations/prodleft-tmul--6cd9739e3f4f0dd024a9caaa.md) | 74 | `result-track:6cd9739e3f4f0dd024a9caaa22ea1abace1d12b9c69929867e43c8cdec561cae` |
| 6 | `theorem` | [prodLeft_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant0d3588c9897f95f23d16a3ba1e81446b1c7905a8ee0342908cbd78a06b2a2d00.lean/declarations/prodleft-symm-tmul--91c03f245c0dd729f0656e76.md) | 78 | `result-track:91c03f245c0dd729f0656e76e7446b467dc25ab3bfc8f2febde2a7fd6dd5ff05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
