# Verification target: GRWTSK.Algebra.LinearAlgebra.FixedHankelCutoff.Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "495eed1099ffcfddb307af2107ed4e7e9562cd25",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `495eed1099ffcfddb307af2107ed4e7e9562cd25`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutoffSequence](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean/declarations/cutoffsequence--61f64e320475243a2d288943.md) | 27 | `declaration-track:61f64e320475243a2d2889434fc74c799cadb267a7b85893e7dd247afe2258f8` |
| 2 | `theorem` | [unshifted_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean/declarations/unshifted-eq-one--c3e1512acbae0a0ca4c6e8c7.md) | 30 | `result-track:c3e1512acbae0a0ca4c6e8c705b3ce378808023bf59b72b1b810e924db0ce5f5` |
| 3 | `theorem` | [shifted_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean/declarations/shifted-eq-one--fee1d2e984ba709bea590168.md) | 40 | `result-track:fee1d2e984ba709bea5901683caa15b92e517efb1c476f97c1e68f880772e4ea` |
| 4 | `theorem` | [all_ones_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean/declarations/all-ones-possemidef--2b74cb182e81f28fccd34bec.md) | 50 | `result-track:2b74cb182e81f28fccd34bec94d2f32e41f5d9756d1f9902241d3f46ca0d285e` |
| 5 | `theorem` | [both_towers_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean/declarations/both-towers-possemidef--0f8473aca2f399fa71efb027.md) | 56 | `result-track:0f8473aca2f399fa71efb027814cea18a7367ea524d6774f7b3ddeb6df429a76` |
| 6 | `theorem` | [next_order_last_basis_quadratic](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean/declarations/next-order-last-basis-quadratic--b6d4e08f8515bd386ce340fb.md) | 64 | `result-track:b6d4e08f8515bd386ce340fb71d68b420e809b54e7bcce650eca9f289162579b` |
| 7 | `theorem` | [next_order_not_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean/declarations/next-order-not-possemidef--83153fe0d979cb6c6e810bed.md) | 72 | `result-track:83153fe0d979cb6c6e810bed0aebe591d0b171c1c11f447cdcf750844e2ab704` |
| 8 | `theorem` | [fixed_cutoff_counterexample](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean/declarations/fixed-cutoff-counterexample--80f253f88eaf51bc1c319ec5.md) | 80 | `result-track:80f253f88eaf51bc1c319ec532be073135bfa204a6894c202321c01f0ede54ac` |
| 9 | `theorem` | [fixed_cutoff_not_sufficient](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean/declarations/fixed-cutoff-not-sufficient--c9376b0b994edb5c1fd825b6.md) | 90 | `result-track:c9376b0b994edb5c1fd825b6186602643cabc250e2506dfee2ff16508366ac00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
