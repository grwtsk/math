# Verification target: GRWTSK.Algebra.LinearAlgebra.Subspace.Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b47353efee5ba592621cb1d57483d6a68122ba49",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b47353efee5ba592621cb1d57483d6a68122ba49`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ProjectiveSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subspace](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/subspace--9ee8dc5781a5adf2be000ebb.md) | 51 | `declaration-track:9ee8dc5781a5adf2be000ebb8ed95bfd295be8912bc3fe379aea4b472cba5f23` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/instance--7420510e8310eb98c4fb3888.md) | 63 | `declaration-track:7420510e8310eb98c4fb38880b2e3fd0a4868e4f2fb34ad486b7f7bc90db5092` |
| 3 | `theorem` | [mem_carrier_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/mem-carrier-iff--29a35ec475ea4f3c5a32a3c5.md) | 71 | `result-track:29a35ec475ea4f3c5a32a3c5c20b25dc7808829c00eda130672f617ffa824f3b` |
| 4 | `theorem` | [mem_add](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/mem-add--37e763380568fc9a1de3dd97.md) | 75 | `result-track:37e763380568fc9a1de3dd973d437d82ca3e57653b69021b95bac997fddd5667` |
| 5 | `inductive` | [spanCarrier](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/spancarrier--2674edc7a1038bae0dc300d7.md) | 84 | `declaration-track:2674edc7a1038bae0dc300d71479a2bab0c628ec1b0434ca406cfff549db0081` |
| 6 | `def` | [span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/span--2602dacfc416246e311e2dbd.md) | 92 | `declaration-track:2602dacfc416246e311e2dbd72320beb19643b965062226e373d3b559dcf5eca` |
| 7 | `theorem` | [subset_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/subset-span--5a5e59b6e90bbf5f221078d8.md) | 98 | `result-track:5a5e59b6e90bbf5f221078d8a21c724e40d015ac308ed711a16c0d886ae47cce` |
| 8 | `def` | [gi](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/gi--acec14632d9a6eeb4c6602f5.md) | 103 | `declaration-track:acec14632d9a6eeb4c6602f59b24d1d29777b095a3f540d59e7e00597400a98d` |
| 9 | `theorem` | [span_coe](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/span-coe--68e5667baaf8750c883dec5b.md) | 119 | `result-track:68e5667baaf8750c883dec5bb4beee3aeb1806f010f8ecd454116caba91ec202` |
| 10 | `instance` | [instInf](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/instinf--e3a20106adca306ed377f32c.md) | 124 | `declaration-track:e3a20106adca306ed377f32c3310db68f64f341eec2fa35e58c0af14799ad3f2` |
| 11 | `instance` | [instInfSet](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/instinfset--2ecdd8911ba81f6caa34e1e9.md) | 133 | `declaration-track:2ecdd8911ba81f6caa34e1e979bb856889dd424ccd9b4bae5a1e74cb3d19226a` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/instance--22598d13d3b7935f5cfeb19b.md) | 141 | `declaration-track:22598d13d3b7935f5cfeb19b1314a391b52320a008014c8c0a7dee68543c7850` |
| 13 | `instance` | [subspaceInhabited](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/subspaceinhabited--de57b6bdfae8a41b36266b18.md) | 152 | `declaration-track:de57b6bdfae8a41b36266b18bac2aa82a0bbdf88d4ba327097eff0b5e5ea16b1` |
| 14 | `theorem` | [span_empty](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/span-empty--98463195b465e92fbab99a40.md) | 157 | `result-track:98463195b465e92fbab99a407bb666e08cbf13d4e722bff7cdfe0e378441956c` |
| 15 | `theorem` | [span_univ](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/span-univ--dfa6cbe26c712f3e68072775.md) | 162 | `result-track:dfa6cbe26c712f3e680727757f28d23324a9c392392e05f5c286b135799523e6` |
| 16 | `theorem` | [span_le_subspace_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/span-le-subspace-iff--2679d6682a492ea4fbdfc4fe.md) | 170 | `result-track:2679d6682a492ea4fbdfc4fe7ca17cb1d0b8bb36505d189bf2d24cc1b29bb0df` |
| 17 | `theorem` | [monotone_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/monotone-span--45567408f0d0bc84d6502719.md) | 177 | `result-track:45567408f0d0bc84d65027197afd207ec707449163d54ee49d83f0891e8beb03` |
| 18 | `theorem` | [subset_span_trans](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/subset-span-trans--ff1127da349bf80518efdccb.md) | 181 | `result-track:ff1127da349bf80518efdccbc05dbc7547f86d7b1e2a3d4f64b499890cc3c2a3` |
| 19 | `theorem` | [span_union](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/span-union--9de4248830c651b0f2c91d6f.md) | 187 | `result-track:9de4248830c651b0f2c91d6fee84215b2d32b8b6eb7053f27a32fb18810b5b0c` |
| 20 | `theorem` | [span_iUnion](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/span-iunion--b3391bacc7a42991ec4c8b6a.md) | 193 | `result-track:b3391bacc7a42991ec4c8b6ab698812f0761c06c59b6c6816e4244109fc7e1c5` |
| 21 | `theorem` | [sup_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/sup-span--fc884fce799ebada23dd2431.md) | 199 | `result-track:fc884fce799ebada23dd2431372f99e37dbbaededa9b4d615c3dddf6f935e505` |
| 22 | `theorem` | [span_sup](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/span-sup--cdf2890c602a86ec3949c022.md) | 203 | `result-track:cdf2890c602a86ec3949c0226b12764f696797e52b8f65cd1241a383908554d4` |
| 23 | `theorem` | [mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/mem-span--72bff6c7d9b022c550ff5c0b.md) | 209 | `result-track:72bff6c7d9b022c550ff5c0b35bbdee99876a693dad36e81046803fe1e11703a` |
| 24 | `theorem` | [span_eq_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/span-eq-sinf--98ca578f509315f55ab865c8.md) | 217 | `result-track:98ca578f509315f55ab865c8fe3ec8f52addff19c870afca99cc2a262d3e3908` |
| 25 | `theorem` | [span_eq_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/span-eq-of-le--239c78d66301e09079c5c7ab.md) | 229 | `result-track:239c78d66301e09079c5c7ab5467fc0135e51837d357b67451f3ab4ab4abc9d8` |
| 26 | `theorem` | [span_eq_span_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant05782ca872b06f1991f27528b981d6cc84330d2a391eb4eedf4525365133a17a.lean/declarations/span-eq-span-iff--fdfdfa6e6f78fbd0188afd59.md) | 236 | `result-track:fdfdfa6e6f78fbd0188afd5927101b403ed311115065a87087339bc232f39cf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
