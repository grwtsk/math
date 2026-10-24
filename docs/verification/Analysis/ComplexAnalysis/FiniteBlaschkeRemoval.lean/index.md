# Verification target: GRWTSK.Analysis.Complex.FiniteBlaschkeRemoval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2c4e83c3ba6f77c85034e3e7e570411827cccdb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/FiniteBlaschkeRemoval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2c4e83c3ba6f77c85034e3e7e570411827cccdb`.

Source path: `GRWTSK/Analysis/Complex/FiniteBlaschkeRemoval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/FiniteBlaschkeRemoval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.DiskBlaschkeFactors`](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Meromorphic.NormalForm` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitCoefficient](../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/declarations/unitcoefficient--7e8eaf7a0b283077a3fb609a.md) | 29 | `declaration-track:7e8eaf7a0b283077a3fb609a5a2e13de12daa7e1ce440530b840b5ab8ee923d6` |
| 2 | `theorem` | [factor_eq_sub_mul_unit](../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/declarations/factor-eq-sub-mul-unit--01711bd453ac09960cd9dfd7.md) | 31 | `result-track:01711bd453ac09960cd9dfd7dc465e8dc402f1b69fc2908cfc3d3e10cdd8eab4` |
| 3 | `theorem` | [analyticAt_unit](../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/declarations/analyticat-unit--962337ca1e7201de0980b071.md) | 37 | `result-track:962337ca1e7201de0980b0710b3ccabebe83ebb72797398aea6ace4489adcb35` |
| 4 | `theorem` | [unit_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/declarations/unit-ne-zero--d56c3b392d3ca43d825df3a6.md) | 43 | `result-track:d56c3b392d3ca43d825df3a69e09f277de85c7a0a7a9751138cbd3517053d832` |
| 5 | `theorem` | [analyticAt_factor_three](../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/declarations/analyticat-factor-three--ffd2e720661fc1a88c14ec4c.md) | 47 | `result-track:ffd2e720661fc1a88c14ec4c40cf51169ae06b2866ca465a76727290aef59eb9` |
| 6 | `theorem` | [analyticAt_product](../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/declarations/analyticat-product--db65a634330158d01f24f678.md) | 55 | `result-track:db65a634330158d01f24f6780182b936b82896ecec9f8ab0116922cf186328dd` |
| 7 | `theorem` | [product_ne_zero_off_roots](../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/declarations/product-ne-zero-off-roots--69d646c2095215cfdf9fc371.md) | 60 | `result-track:69d646c2095215cfdf9fc37185a0aa7fb324dd1e3a103c004a5d3dbc20a2cc70` |
| 8 | `theorem` | [product_local_factorization](../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/declarations/product-local-factorization--15749270182d63d61c176da6.md) | 71 | `result-track:15749270182d63d61c176da62a7dd858ee52016c32c6f2bf8db38e2b9b1dff72` |
| 9 | `theorem` | [normalForm_germ](../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/declarations/normalform-germ--3308bbada4b6550d574ee8c5.md) | 98 | `result-track:3308bbada4b6550d574ee8c5160dca7236d273c27c32537950315b15c9a0dd6a` |
| 10 | `theorem` | [quotient_germ_of_matching_power](../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/declarations/quotient-germ-of-matching-power--41b6f6a370807d52a79b8d2b.md) | 107 | `result-track:41b6f6a370807d52a79b8d2be00188e76228a4a4b741447e9d5c5c4fd75573cf` |
| 11 | `theorem` | [exists_removed_quotient](../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/declarations/exists-removed-quotient--b3828aca09a5fbf8ee7074bd.md) | 122 | `result-track:b3828aca09a5fbf8ee7074bd224f639cb70c82bb8bef02e798e08bf262102ec0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
