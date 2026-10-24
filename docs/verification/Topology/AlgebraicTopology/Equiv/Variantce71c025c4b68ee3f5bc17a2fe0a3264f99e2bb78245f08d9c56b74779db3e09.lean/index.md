# Verification target: GRWTSK.Topology.AlgebraicTopology.Equiv.Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63d6ba84de80537a5ae626fb9abc2dc57d95dc1a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63d6ba84de80537a5ae626fb9abc2dc57d95dc1a`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HomotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/homotopyequiv--1464f1debee4ce38482e73b1.md) | 47 | `declaration-track:1464f1debee4ce38482e73b16c4353707ffb9d6f0c4f296df22cc810b96243be` |
| 2 | `def` | [toFun'](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/tofun--809a20fcdf0720b07f861af6.md) | 61 | `declaration-track:809a20fcdf0720b07f861af6e6a2cf5bfc69174336d86c941ab9a79eb854eea0` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/instance--35c8cf53a03545b37ac4fd17.md) | 63 | `declaration-track:35c8cf53a03545b37ac4fd175cfdc95fe1d99d1666d894f9ba521bb57295d9b7` |
| 4 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/tofun-eq-coe--7d9a55c3d1413334d2f180f6.md) | 66 | `result-track:7d9a55c3d1413334d2f180f6d303bb4a3169d5c1bad91df89e43247b32a3e9d3` |
| 5 | `theorem` | [continuous](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/continuous--9d41fc64269f97f72489c3b5.md) | 70 | `result-track:9d41fc64269f97f72489c3b5dc7677e8d8c63ef54f12be6d70b86e27bd4214da` |
| 6 | `def` | [toHomotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/tohomotopyequiv--03b3aef37f7806b4f66ce0b0.md) | 83 | `declaration-track:03b3aef37f7806b4f66ce0b0e50db21af71636b3ed709b4f3580a9e2c2a9ffd1` |
| 7 | `theorem` | [coe_toHomotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/coe-tohomotopyequiv--14a06dc29e182c4bc0ccb1e5.md) | 90 | `result-track:14a06dc29e182c4bc0ccb1e572c8924a315829aec459611cb15ae12951285cd7` |
| 8 | `def` | [symm](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/symm--d32dca33230f49beca18e6d6.md) | 101 | `declaration-track:d32dca33230f49beca18e6d643f3300f9ee04c17c2cd6eedd6ea5780ec088d22` |
| 9 | `theorem` | [coe_invFun](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/coe-invfun--ac46afe8f69fc57f1c214cd9.md) | 108 | `result-track:ac46afe8f69fc57f1c214cd9f487ec1e5f77a5eace03a322d1764a8ad4941fbf` |
| 10 | `def` | [Simps.apply](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/simps-apply--d7556a37c273a883230c1f75.md) | 113 | `declaration-track:d7556a37c273a883230c1f7574539a4c770872510b7b3fee4df400d4755c7baa` |
| 11 | `def` | [Simps.symm_apply](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/simps-symm-apply--ec6cfd995aa747d0e54b44a2.md) | 118 | `declaration-track:ec6cfd995aa747d0e54b44a26348cf32454a53d3b5807e7f577632df03327231` |
| 12 | `def` | [refl](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/refl--6b7f6c3711c8ad80517d548f.md) | 127 | `declaration-track:6b7f6c3711c8ad80517d548f09ccca36469969ce895b11364b9b3c48414ca351` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/instance--2955c7a885e91754a65c83bb.md) | 130 | `declaration-track:2955c7a885e91754a65c83bbd3bc70ccfbeee6f1be5f3c8abdc5491d4de24504` |
| 14 | `def` | [trans](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/trans--23127f35586fcb6dcbeaa284.md) | 138 | `declaration-track:23127f35586fcb6dcbeaa28466c65b360913e1f1fd556aa084e58628e424af9b` |
| 15 | `theorem` | [symm_trans](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/symm-trans--3f49777a875d405db19e474a.md) | 148 | `result-track:3f49777a875d405db19e474a4bae98dbdb3262411fa3e6505bc1bb4f0a3adc5c` |
| 16 | `def` | [prodCongr](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/prodcongr--05acce84f7e3ea37124f52f5.md) | 152 | `declaration-track:05acce84f7e3ea37124f52f53eacada4b98706c614ceca4d9953732fcf46bc37` |
| 17 | `def` | [piCongrRight](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/picongrright--3ad1cdbae7f3f68832ec9288.md) | 160 | `declaration-track:3ad1cdbae7f3f68832ec9288f1d2bd14907f16b150526951830400d3cc4f0898` |
| 18 | `theorem` | [refl_toHomotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/refl-tohomotopyequiv--48eaa0d3f8e928e75faad543.md) | 177 | `result-track:48eaa0d3f8e928e75faad543176c4145c1f26f658617c7421bbcb54090f0351f` |
| 19 | `theorem` | [symm_toHomotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/symm-tohomotopyequiv--70f143c4ce91b9e51b644be3.md) | 182 | `result-track:70f143c4ce91b9e51b644be39219aaea6ea27b57487db26189a9175176fbbb6f` |
| 20 | `theorem` | [trans_toHomotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/Equiv/Variantce71c025c4b68ee3f5bc17a2fe0a3264f99e2bb78245f08d9c56b74779db3e09.lean/declarations/trans-tohomotopyequiv--d8c3c4c3213369316820e686.md) | 186 | `result-track:d8c3c4c3213369316820e68617f7d9253b300afa169d6d5d4c34aba2d8009365` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
