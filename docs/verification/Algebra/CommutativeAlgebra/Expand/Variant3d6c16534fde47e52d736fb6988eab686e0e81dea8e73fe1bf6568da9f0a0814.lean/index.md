# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Expand.Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "130415f60eac51391498d259caeaa251028e41da",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `130415f60eac51391498d259caeaa251028e41da`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Frobenius` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.RingDivision` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand--c24102628f6b3d4b774c7d72.md) | 36 | `declaration-track:c24102628f6b3d4b774c7d72a71230482f136456c08dd6c42cdf0165510ef164` |
| 2 | `theorem` | [coe_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/coe-expand--d2047bf708b59887e82d4dd5.md) | 39 | `result-track:d2047bf708b59887e82d4dd529c142ed0d48f2686c7bfd996abc6acba1ada996` |
| 3 | `theorem` | [expand_eq_comp_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-eq-comp-x-pow--b68be0cbb5633d863c9f4b92.md) | 44 | `result-track:b68be0cbb5633d863c9f4b92bafce3a81f3762cea742b00c3ed15fbe7bc184a7` |
| 4 | `theorem` | [expand_eq_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-eq-sum--0e2f3b10d7d6e3c2832a3d07.md) | 46 | `result-track:0e2f3b10d7d6e3c2832a3d07c7fbfc4f093d15d9d5a4f6ad95b3382a5f38edc4` |
| 5 | `theorem` | [expand_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-c--1fc40701acea92df77b0e86f.md) | 50 | `result-track:1fc40701acea92df77b0e86fc8ae6c50c8e9ac826c9e99ab18688b6bc2ff20f2` |
| 6 | `theorem` | [expand_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-x--7f31a0d637140e2c8ad84f02.md) | 54 | `result-track:7f31a0d637140e2c8ad84f027045593af93a474a85c1903d6d439f698f237f1f` |
| 7 | `theorem` | [expand_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-monomial--182d5c0ff5324e191cb1525f.md) | 58 | `result-track:182d5c0ff5324e191cb1525f1fc55a4cb812c0620a3883aad5da9f6efdb603ee` |
| 8 | `theorem` | [expand_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-expand--52216b09bbfe9244a82f9cba.md) | 61 | `result-track:52216b09bbfe9244a82f9cba8df989f61c495fdfb2537afea55c15a5f11d817e` |
| 9 | `theorem` | [expand_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-mul--325f0ac9faf2c025b0361547.md) | 66 | `result-track:325f0ac9faf2c025b03615470ce31fa0bb5ca47e8aeaab864caa24d19a9009c5` |
| 10 | `theorem` | [expand_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-zero--795e28edcf93f4c2660de0af.md) | 70 | `result-track:795e28edcf93f4c2660de0af5ecbd0cc53ccca30e3a3c342432bf75acce628d9` |
| 11 | `theorem` | [expand_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-one--5565fc634d916ae2df4b6ecc.md) | 73 | `result-track:5565fc634d916ae2df4b6eccf5bfd6843cac7d97a22bfcdbf9fe0fa7a0479582` |
| 12 | `theorem` | [expand_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-pow--36f0d329d148f85071380b37.md) | 78 | `result-track:36f0d329d148f85071380b3770df1711896dc71e06324557292e67daafa2d494` |
| 13 | `theorem` | [derivative_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/derivative-expand--59430c3385f1e07e054d97bd.md) | 82 | `result-track:59430c3385f1e07e054d97bd08f83ea404a34d94124de334a0039e91f4d6abe7` |
| 14 | `theorem` | [coeff_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/coeff-expand--078a9cbcdae339db519f6954.md) | 86 | `result-track:078a9cbcdae339db519f69545c9f75dd57e578aeeaf99de394f499a5258405ba` |
| 15 | `theorem` | [coeff_expand_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/coeff-expand-mul--fa014524549cd0e1ac083acb.md) | 106 | `result-track:fa014524549cd0e1ac083acbfbcc8eb7400001fb78bdadb49d06d044a7a4437f` |
| 16 | `theorem` | [coeff_expand_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/coeff-expand-mul--b086d9267bc606a6959455cf.md) | 111 | `result-track:b086d9267bc606a6959455cf8ae901279ad8a7aa89c8831dfefbfdaef07abea5` |
| 17 | `theorem` | [expand_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-injective--a40b96eaf64faca0dc57fa3a.md) | 115 | `result-track:a40b96eaf64faca0dc57fa3aa8d62ecc0e10d7d6a240ffb26346c30ac3e5efd8` |
| 18 | `theorem` | [expand_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-inj--9ea35759206bac9f421e438b.md) | 118 | `result-track:9ea35759206bac9f421e438be42dfef6d1f9dc218c7f3f1bf645f552240c7c42` |
| 19 | `theorem` | [expand_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-eq-zero--f7c89aced73bab4e84d11d93.md) | 121 | `result-track:f7c89aced73bab4e84d11d93ad245c18bb635dab526819e58338bf14495f8fd2` |
| 20 | `theorem` | [expand_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-ne-zero--88648be151bfc43f9585aec4.md) | 124 | `result-track:88648be151bfc43f9585aec49f1690526946824017baa950f4d9fadc40a565dd` |
| 21 | `theorem` | [expand_eq_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-eq-c--7cdf8dcf4ab345b79bf3eda4.md) | 127 | `result-track:7cdf8dcf4ab345b79bf3eda40e424713ca5b786af7e6b70dc4875f5a410b165a` |
| 22 | `theorem` | [natDegree_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/natdegree-expand--8c6bf13369064cf8cf7ec467.md) | 130 | `result-track:8c6bf13369064cf8cf7ec467ebe2a98bfda0d2c0d284f94ab0681b3efe46641f` |
| 23 | `theorem` | [leadingCoeff_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/leadingcoeff-expand--0e986f32b105ad3d367734c0.md) | 150 | `result-track:0e986f32b105ad3d367734c017e89c717e5d01213bf926c541f475f11d25b8d0` |
| 24 | `theorem` | [monic_expand_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/monic-expand-iff--1b53df7ead9fb3e13ee110fd.md) | 154 | `result-track:1b53df7ead9fb3e13ee110fdb3262d3c301f4b3070fe5dad8097c69c5e280e1e` |
| 25 | `theorem` | [map_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/map-expand--7d6bdc77d0d638eb8a912373.md) | 159 | `result-track:7d6bdc77d0d638eb8a91237316869535d3531c71d991eff8a095f9195d2f5e33` |
| 26 | `theorem` | [expand_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-eval--12a511514042e239081cf8a3.md) | 168 | `result-track:12a511514042e239081cf8a3e389d76bbf605bad335ba0d30add2fdffa295fa9` |
| 27 | `theorem` | [expand_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-aeval--6c25104b8f091751730c6508.md) | 173 | `result-track:6c25104b8f091751730c6508d066d0656a9a1ea4ebfc817a35ec2218da6f323e` |
| 28 | `def` | [contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/contract--6d8b0e6aa3adf5b2c0f05792.md) | 179 | `declaration-track:6d8b0e6aa3adf5b2c0f05792ebbdca0378aeb8f8a4bb6c9f707d713397950602` |
| 29 | `theorem` | [coeff_contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/coeff-contract--c7abc4b54cc3fd93a9a63646.md) | 182 | `result-track:c7abc4b54cc3fd93a9a63646581dde619788449acccffaa3efc2970dc3290145` |
| 30 | `theorem` | [map_contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/map-contract--5341bb627300472253624da7.md) | 193 | `result-track:5341bb627300472253624da7c102fee5da39b99d3ff5cebb8c9392f7dca01ed4` |
| 31 | `theorem` | [contract_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/contract-expand--45ab802280870f1e278b257e.md) | 197 | `result-track:45ab802280870f1e278b257ea55fb6314afee4d3859691a546691a56d3269cf3` |
| 32 | `theorem` | [contract_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/contract-one--b67b30b299d5d42d1bc2bf88.md) | 201 | `result-track:b67b30b299d5d42d1bc2bf883170131565b12add4a62f250f2f3d81861bf98f6` |
| 33 | `theorem` | [contract_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/contract-c--4f33e3238e4aca542203f8dc.md) | 204 | `result-track:4f33e3238e4aca542203f8dc8fe68991e1320334d32f64346294831d4f7c80f7` |
| 34 | `theorem` | [contract_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/contract-add--c84d6e7e20eacee89d68b631.md) | 206 | `result-track:c84d6e7e20eacee89d68b6311fd650736c3cf75b0bce73f3a29f91d3de7b362b` |
| 35 | `theorem` | [contract_mul_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/contract-mul-expand--be9c94563f3f73e2dd4a96d3.md) | 210 | `result-track:be9c94563f3f73e2dd4a96d302ac3705c43dceeab48b211a8fdab199fb774dfa` |
| 36 | `theorem` | [isCoprime_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/iscoprime-expand--cf22b7868e17113b8184f12e.md) | 227 | `result-track:cf22b7868e17113b8184f12eed1922e8f904e0d69de4845660296fba6b82a223` |
| 37 | `theorem` | [expand_contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-contract--36b5f494cb7bdf3c05f5b9ec.md) | 234 | `result-track:36b5f494cb7bdf3c05f5b9eca28bc5b6eed601aa1221c5a144dee9c8c3260ab1` |
| 38 | `theorem` | [expand_contract'](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-contract--5f6d39ddc3504b9803a6b0d5.md) | 252 | `result-track:5f6d39ddc3504b9803a6b0d5deae317b0ddda1664b23049170ccd67651e380a3` |
| 39 | `theorem` | [expand_char](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/expand-char--60953118513c0d1849859e1d.md) | 258 | `result-track:60953118513c0d1849859e1d8d176128552883549f819e17007828b759d68a19` |
| 40 | `theorem` | [map_expand_pow_char](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/map-expand-pow-char--c3961a4252b7dc3ccda43b6c.md) | 265 | `result-track:c3961a4252b7dc3ccda43b6c7d2ab57b9ee41df3f4f8fb10c0de755ef0370c7e` |
| 41 | `theorem` | [rootMultiplicity_expand_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/rootmultiplicity-expand-pow--c968b14c72d700b720426c48.md) | 282 | `result-track:c968b14c72d700b720426c485f36bbc407e79a55cc1a5ff6a46dcb87c169e5de` |
| 42 | `theorem` | [rootMultiplicity_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/rootmultiplicity-expand--c594bc31ca8cf54ea88994ca.md) | 291 | `result-track:c594bc31ca8cf54ea88994ca7348f74606ff57b8502132eaa5de01b9d36127a5` |
| 43 | `theorem` | [isLocalHom_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/islocalhom-expand--0e2f66075271bdb0537e032a.md) | 301 | `result-track:0e2f66075271bdb0537e032aa568aec68cbbc9338036f09037fedca4cd9f76ae` |
| 44 | `theorem` | [of_irreducible_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/of-irreducible-expand--07f564558f652b91b3691861.md) | 309 | `result-track:07f564558f652b91b369186165925190cb59dfec7b06535636b252abc11d5848` |
| 45 | `theorem` | [of_irreducible_expand_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant3d6c16534fde47e52d736fb6988eab686e0e81dea8e73fe1bf6568da9f0a0814.lean/declarations/of-irreducible-expand-pow--a359e4b1249fa2d637344ce9.md) | 314 | `result-track:a359e4b1249fa2d637344ce9f16646a49e88fe6c36e33f10481080c501eee144` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
