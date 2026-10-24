# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "824becd80daee5ecad8fb5bb93bd23529318c875",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `824becd80daee5ecad8fb5bb93bd23529318c875`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Ideal](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/ideal--ff7a3caa393caa466c9a32ea.md) | 36 | `declaration-track:ff7a3caa393caa466c9a32ea9e3ffe3fb06ebfcb37a82f0cf74207c0bf4f0861` |
| 2 | `class` | [IsTwoSided](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/istwosided--82b60eb3dcaf4f6576791bf5.md) | 46 | `declaration-track:82b60eb3dcaf4f6576791bf5dfaa4e31475b53e347ec38d3d40881fdc1fed2b9` |
| 3 | `theorem` | [zero_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/zero-mem--1f49f41d5b8fc0947752e44a.md) | 49 | `result-track:1f49f41d5b8fc0947752e44aad510ab5692bd9ebeb2bcc500d2ba5fcd16a0d63` |
| 4 | `theorem` | [add_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/add-mem--f89f71914737e70c3e2bd17a.md) | 52 | `result-track:f89f71914737e70c3e2bd17a5f292399cf9872f2710046d6f30deb743b84b60c` |
| 5 | `theorem` | [mul_mem_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/mul-mem-left--05789055a62065e196ebf4c8.md) | 57 | `result-track:05789055a62065e196ebf4c8e2f27e0da393a17c80d54920a60b81fc3e1c02e3` |
| 6 | `theorem` | [mul_mem_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/mul-mem-right--d6f3835068596d7cb017ce46.md) | 60 | `result-track:d6f3835068596d7cb017ce4688b6ede119e782ec03649bd358f3f077a6e2a271` |
| 7 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/ext--95a89c812c1973e141f07afc.md) | 67 | `result-track:95a89c812c1973e141f07afc2d4cb960f5458776e22bde7bc9a05bca078d25c5` |
| 8 | `theorem` | [unit_mul_mem_iff_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/unit-mul-mem-iff-mem--97620ec026c4ad0e75995b30.md) | 71 | `result-track:97620ec026c4ad0e75995b30cf9a8fa83655878774d6fe620aeb4a1719b27e1f` |
| 9 | `theorem` | [pow_mem_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/pow-mem-of-mem--5a4e1891e2ae1dcb3d30bf63.md) | 77 | `result-track:5a4e1891e2ae1dcb3d30bf6395104b9de0a6ea90f8d11248e039e89db78a46fb` |
| 10 | `theorem` | [pow_mem_of_pow_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/pow-mem-of-pow-mem--ac060827d4b65213b28ac6c5.md) | 81 | `result-track:ac060827d4b65213b28ac6c5b6b27861c7b7261daa3c327e960f7f05f6b8658f` |
| 11 | `def` | [Module.eqIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/module-eqideal--61817d4c10a115a13e36aa1a.md) | 90 | `declaration-track:61817d4c10a115a13e36aa1a78e0b92d521f897ff159280dfbadbc490a6bea0b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/instance--65f6a4a1fbb6ab43a86e9e5f.md) | 108 | `declaration-track:65f6a4a1fbb6ab43a86e9e5f52cbd483e919ca00baf7aa3ed189caa891bb3625` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/instance--cbfe1b01793be534c3c46bbd.md) | 109 | `declaration-track:cbfe1b01793be534c3c46bbd05fb88cb32c3524107a986db1941372677e77e46` |
| 14 | `theorem` | [mul_unit_mem_iff_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/mul-unit-mem-iff-mem--1e30ef38688e7198b73cf06d.md) | 112 | `result-track:1e30ef38688e7198b73cf06d7a0dbf3317de73536a6355b5b9b4291f07f11358` |
| 15 | `lemma` | [mem_of_dvd](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/mem-of-dvd--74fbd25f341a263302f530e8.md) | 115 | `result-track:74fbd25f341a263302f530e8c0b1fe41207ebdc65ff45e0d64fdda0e9d038cf3` |
| 16 | `theorem` | [neg_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/neg-mem-iff--08a690d4f7900e1d47dd32a4.md) | 128 | `result-track:08a690d4f7900e1d47dd32a46028f817ff6bb4b3ab7df036818308f7fe407763` |
| 17 | `theorem` | [add_mem_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/add-mem-iff-left--4dbb29542001b8c6268d9194.md) | 131 | `result-track:4dbb29542001b8c6268d9194c7cc607f3eb41c6671f6214ef95eaea1f762aa45` |
| 18 | `theorem` | [add_mem_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/add-mem-iff-right--3b76f416b44b0e4b4dbd6931.md) | 134 | `result-track:3b76f416b44b0e4b4dbd69310c8c6d5a17188c010f944253fbd264aa80784fa6` |
| 19 | `theorem` | [sub_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/sub-mem--100cf879a7a10baff068d8c5.md) | 137 | `result-track:100cf879a7a10baff068d8c58b3fc9b3ab85d5c03dcc63e6a4b5eeb5e9984f19` |
| 20 | `theorem` | [mul_sub_mul_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3c04a0a9ad1e21fb2033c9e95020819ff1e669848b5a3a0e6b15237e50cc6dcb.lean/declarations/mul-sub-mul-mem--76acd19111d345929858e7d4.md) | 140 | `result-track:76acd19111d345929858e7d4b0ab9eaa267e7201c832fffc340b1e926ff5c652` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
