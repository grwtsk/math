# Verification target: GRWTSK.Algebra.Norm.Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38091a6e74424b69bd5eecba531342ae6076866c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38091a6e74424b69bd5eecba531342ae6076866c`.

Source path: `GRWTSK/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FractionalIdeal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Norm.AbsNorm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NormTrace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [absNorm_div_norm_eq_absNorm_div_norm](../../../../mathematics/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/declarations/absnorm-div-norm-eq-absnorm-div-norm--c638a04db66dd48de97c454b.md) | 45 | `result-track:c638a04db66dd48de97c454bf69c223ee7ae3202db7fa9751d64b490a723db80` |
| 2 | `def` | [absNorm](../../../../mathematics/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/declarations/absnorm--5cb51165e7c1fb45fa7aa8a3.md) | 64 | `declaration-track:5cb51165e7c1fb45fa7aa8a3b324b830c0f8d0dd868be90644fd3c009f9a1dfd` |
| 3 | `theorem` | [absNorm_eq](../../../../mathematics/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/declarations/absnorm-eq--b58ba4ccb7305fb528b94a7f.md) | 82 | `result-track:b58ba4ccb7305fb528b94a7f8c56d1591c814ade77ce920fbda790c67c194f19` |
| 4 | `theorem` | [absNorm_eq'](../../../../mathematics/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/declarations/absnorm-eq--35fcc8e0f188a7024036de54.md) | 85 | `result-track:35fcc8e0f188a7024036de548c018a5573848f0bf63c3232a23d3ad04c56c01a` |
| 5 | `theorem` | [absNorm_nonneg](../../../../mathematics/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/declarations/absnorm-nonneg--2e0724efadfcf4c079d51998.md) | 91 | `result-track:2e0724efadfcf4c079d51998cb1754cee67e9b97b0aa17aca3fed3b3c654faf1` |
| 6 | `theorem` | [absNorm_bot](../../../../mathematics/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/declarations/absnorm-bot--9d4718186eaab57c9d427f07.md) | 93 | `result-track:9d4718186eaab57c9d427f0740e8b87769593c7b9af8c0dec70e60e3c172115c` |
| 7 | `theorem` | [absNorm_one](../../../../mathematics/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/declarations/absnorm-one--bc4092edebebb8ea2c190fed.md) | 95 | `result-track:bc4092edebebb8ea2c190fedbf6a62da639817b001c629c1cef53b2df681ad98` |
| 8 | `theorem` | [absNorm_eq_zero_iff](../../../../mathematics/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/declarations/absnorm-eq-zero-iff--564624ef9f39b582b41eec35.md) | 97 | `result-track:564624ef9f39b582b41eec35a08d67c90f642c86e4dbc91b698e781a141818bf` |
| 9 | `theorem` | [coeIdeal_absNorm](../../../../mathematics/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/declarations/coeideal-absnorm--73ab24da0d08372bca1df203.md) | 104 | `result-track:73ab24da0d08372bca1df203f41ea665e4c8ad1ee4f47d3f208b003f7fb7803d` |
| 10 | `theorem` | [abs_det_basis_change](../../../../mathematics/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/declarations/abs-det-basis-change--a8402d731bb3883dc63794c5.md) | 113 | `result-track:a8402d731bb3883dc63794c509bf79b9ba6c3ecfa9e9678e4412530d62da6629` |
| 11 | `theorem` | [absNorm_span_singleton](../../../../mathematics/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/declarations/absnorm-span-singleton--077b35c31e12a1707774462a.md) | 139 | `result-track:077b35c31e12a1707774462a0b19097f39661ecd920076f3bbb4cdb62a0aeb21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
