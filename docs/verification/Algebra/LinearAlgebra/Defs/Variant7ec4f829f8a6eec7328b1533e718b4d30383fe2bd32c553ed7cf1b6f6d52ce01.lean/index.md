# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba4aa9f535d6d8d731c60f2f87aa50dc99e9821f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba4aa9f535d6d8d731c60f2f87aa50dc99e9821f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Ideal](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/ideal--bc1c80ceeaf5f550fa195cb4.md) | 44 | `declaration-track:bc1c80ceeaf5f550fa195cb463c384669d639a639f1a33df347edf78d99e8bf4` |
| 2 | `class` | [IsTwoSided](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/istwosided--65bea2aca0a636f41d2e14b4.md) | 54 | `declaration-track:65bea2aca0a636f41d2e14b419c89052335867a55c765b5294e0e7b87fedd19c` |
| 3 | `theorem` | [zero_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/zero-mem--5ff764b7c5428a42e7fc3c65.md) | 57 | `result-track:5ff764b7c5428a42e7fc3c65ffb69c84391f64eacbad1b01dc01ee582a52d644` |
| 4 | `theorem` | [add_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/add-mem--7476a4bfc5fb328ffacf2301.md) | 60 | `result-track:7476a4bfc5fb328ffacf2301c16e9444058645ba1d83107c4678046c1237804d` |
| 5 | `theorem` | [mul_mem_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/mul-mem-left--82600369f87c23841997c522.md) | 65 | `result-track:82600369f87c23841997c522da8dc5f1f565ab25ff193261ecd48c282ee57b7a` |
| 6 | `theorem` | [mul_mem_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/mul-mem-right--e3d9b39c5f060e8ba5f8c102.md) | 68 | `result-track:e3d9b39c5f060e8ba5f8c1021bcb910cb77e2b1df3e800aaab5572b502d2042e` |
| 7 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/ext--63d612f5f4bb1e01a92b1beb.md) | 75 | `result-track:63d612f5f4bb1e01a92b1beb87197806ba9c3f99788017aafce447e4a5049c79` |
| 8 | `theorem` | [unit_mul_mem_iff_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/unit-mul-mem-iff-mem--a377593b161d863712dda77a.md) | 79 | `result-track:a377593b161d863712dda77a1d272878f0d183fcf34f429bdbb1a7f1251d27ec` |
| 9 | `theorem` | [pow_mem_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/pow-mem-of-mem--f1471a54b541433c08112189.md) | 85 | `result-track:f1471a54b541433c0811218966c14983cf2778b1a407e3ccb28267923ef3b0be` |
| 10 | `theorem` | [pow_mem_of_pow_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/pow-mem-of-pow-mem--d599919cb7a68aefb8dbb5d7.md) | 89 | `result-track:d599919cb7a68aefb8dbb5d7468194e699edf300105d604dabf8093ccfdaa682` |
| 11 | `def` | [Module.eqIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/module-eqideal--803818827a972e609f457baa.md) | 98 | `declaration-track:803818827a972e609f457baa3c3fbe093925235cc1d8504cbb486c99cd624ac1` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/instance--f5c6d4db791fcfb9e6253a96.md) | 116 | `declaration-track:f5c6d4db791fcfb9e6253a96d86076bb91d01e45ca53c10b38cb4e9a7931dca3` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/instance--f9a945747056effb040a010d.md) | 117 | `declaration-track:f9a945747056effb040a010d1f48e1e18e5c251e6aeea33912efe62e593ecb04` |
| 14 | `theorem` | [mul_unit_mem_iff_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/mul-unit-mem-iff-mem--ff2799eb72b1a51e185537e0.md) | 120 | `result-track:ff2799eb72b1a51e185537e090d2fae45957b982e01adfb4b0b04cb72afdde73` |
| 15 | `lemma` | [mem_of_dvd](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/mem-of-dvd--6da3a627544bc2c1dfbb9da3.md) | 123 | `result-track:6da3a627544bc2c1dfbb9da32e5da435621f6bb4e4de2c9505fd17680a284547` |
| 16 | `theorem` | [neg_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/neg-mem-iff--154b6dbc39b9ae8a86440cd8.md) | 136 | `result-track:154b6dbc39b9ae8a86440cd8e199bd29a1053188098c65386c16f365efb32426` |
| 17 | `theorem` | [add_mem_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/add-mem-iff-left--216df84b88ab594f78ac18ff.md) | 139 | `result-track:216df84b88ab594f78ac18ff59fbad7d3cef8f667eb4c5f1d4975a5f4e74c7f0` |
| 18 | `theorem` | [add_mem_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/add-mem-iff-right--77aa01a03727b89d94912ef2.md) | 142 | `result-track:77aa01a03727b89d94912ef2e8f8c46cb76b93f1a89b4f4288190cb48bc893b7` |
| 19 | `theorem` | [sub_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/sub-mem--e121a41a4fbcdee6dfe7b7a6.md) | 145 | `result-track:e121a41a4fbcdee6dfe7b7a6d02e9bf347227955815f8fbd505c3e68d2307921` |
| 20 | `theorem` | [mul_sub_mul_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ec4f829f8a6eec7328b1533e718b4d30383fe2bd32c553ed7cf1b6f6d52ce01.lean/declarations/mul-sub-mul-mem--4c92c0070c93daef6d911458.md) | 148 | `result-track:4c92c0070c93daef6d91145840838bb6a1936fcc3c25e9fb798a70f5d9fb26ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
