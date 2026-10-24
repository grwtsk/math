# Verification target: GRWTSK.Algebra.Pointwise.Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89cbf3483ec5f1698a972a5ed838e92425eda108",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89cbf3483ec5f1698a972a5ed838e92425eda108`.

Source path: `GRWTSK/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Pointwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_toSubmodule_le](../../../../mathematics/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/declarations/mul-tosubmodule-le--c3f6d9f223f4be1fdd3b84d5.md) | 31 | `result-track:c3f6d9f223f4be1fdd3b84d5a3f3ed816eeb4323f00a6a7dbf80177898849fdd` |
| 2 | `theorem` | [isIdempotentElem_toSubmodule](../../../../mathematics/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/declarations/isidempotentelem-tosubmodule--feb418044b0f4269da1cdb43.md) | 40 | `result-track:feb418044b0f4269da1cdb438ed207902c7b73bdf9d611ff8669398a228679f6` |
| 3 | `theorem` | [mul_toSubmodule](../../../../mathematics/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/declarations/mul-tosubmodule--c54ae79be3e7d192b9d610ee.md) | 52 | `result-track:c54ae79be3e7d192b9d610ee7c915c231c9d76d803f0a0f385f458e94c828f09` |
| 4 | `def` | [pointwiseMulAction](../../../../mathematics/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/declarations/pointwisemulaction--fe98ed87c31f3dd305a44855.md) | 77 | `declaration-track:fe98ed87c31f3dd305a44855dda366d07c4ad45c02cdd13171d2333bad99a9f8` |
| 5 | `theorem` | [coe_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/declarations/coe-pointwise-smul--00a8d847e69dee4efb354ca5.md) | 88 | `result-track:00a8d847e69dee4efb354ca5a830cd94e50f1b575185cab0254d9fcc8b56848c` |
| 6 | `theorem` | [pointwise_smul_toSubsemiring](../../../../mathematics/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/declarations/pointwise-smul-tosubsemiring--be6e98be98d62e6df73a6a95.md) | 92 | `result-track:be6e98be98d62e6df73a6a955439d39f19720875dc206490223365448f51d1cd` |
| 7 | `theorem` | [pointwise_smul_toSubmodule](../../../../mathematics/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/declarations/pointwise-smul-tosubmodule--711490ed304469b0b469d789.md) | 97 | `result-track:711490ed304469b0b469d789d67068debf032588102dedbf056352b66f03e2c4` |
| 8 | `theorem` | [pointwise_smul_toSubring](../../../../mathematics/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/declarations/pointwise-smul-tosubring--1ededc52a36048d9f275a69c.md) | 102 | `result-track:1ededc52a36048d9f275a69cf04c50ebbe784bb7b8ee58baf05a970294f413e4` |
| 9 | `theorem` | [smul_mem_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/declarations/smul-mem-pointwise-smul--f2b5914cd1e81e3512df5918.md) | 107 | `result-track:f2b5914cd1e81e3512df5918fc81bbbddb996d5f0b502e481e05648120c5e567` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/declarations/instance--57fed161e6da8b4cb0a6eed2.md) | 110 | `declaration-track:57fed161e6da8b4cb0a6eed2889eaa01a1d7bed5fb6fad77cca9d94b33111e7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
