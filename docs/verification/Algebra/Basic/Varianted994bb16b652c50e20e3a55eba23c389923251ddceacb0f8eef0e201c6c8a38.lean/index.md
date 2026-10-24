# Verification target: GRWTSK.Algebra.Basic.Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64733349415b6ed955147939c3572e24a4f60ddd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64733349415b6ed955147939c3572e24a4f60ddd`.

Source path: `GRWTSK/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TensorAlgebra.SymRel](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/tensoralgebra-symrel--5acc6eb42295fa3b392ad0ae.md) | 31 | `declaration-track:5acc6eb42295fa3b392ad0ae95f43ae058e5b822648152c696f960f01fa8d91e` |
| 2 | `abbrev` | [SymmetricAlgebra](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/symmetricalgebra--9e5b5452eeab0fa32f35f920.md) | 38 | `declaration-track:9e5b5452eeab0fa32f35f920dafbebce46d379f3eb31bb7088b0ceb0ef0243a9` |
| 3 | `abbrev` | [algHom](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/alghom--5a723e847dc037f16a727d0a.md) | 43 | `declaration-track:5a723e847dc037f16a727d0ac299fe036dce2410880e3d6c7c40e184044a729d` |
| 4 | `lemma` | [algHom_surjective](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/alghom-surjective--4b6b6f5542bde322b6b1c52e.md) | 45 | `result-track:4b6b6f5542bde322b6b1c52e64f081f15015ff9f77334d5c022c93d147dd4e7a` |
| 5 | `def` | [ι](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/anonymous--0414e85e3cc59ea2447d491c.md) | 49 | `declaration-track:0414e85e3cc59ea2447d491cd3a65d8bc96da298688a61f9b121b0e5a14a24f7` |
| 6 | `theorem` | [induction](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/induction--0450378d194b658b8c377343.md) | 52 | `result-track:0450378d194b658b8c377343122bdb1a6120a5fa0eca66e3ee169f5b0a9c6de3` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/instance--20ea093e62ba4ab5c4b283e9.md) | 65 | `declaration-track:20ea093e62ba4ab5c4b283e9dddbd6ae08196818b345a6a4f4e53d557cf1a625` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/instance--1329b149937eefa03de36eb8.md) | 78 | `declaration-track:1329b149937eefa03de36eb849d686e26268d9ec6b21275fb614b22ecd50a245` |
| 9 | `def` | [lift](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/lift--4ff4088c8b267a3c1e662930.md) | 86 | `declaration-track:4ff4088c8b267a3c1e6629307547f3c4f2d19ffe32bd7591fc87bd87ba20478f` |
| 10 | `lemma` | [lift_ι_apply](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/lift-apply--1fff001b4f69e333bf155b10.md) | 96 | `result-track:1fff001b4f69e333bf155b10e5a3ef3b6281037b1236d300dae97690a20300b7` |
| 11 | `lemma` | [lift_comp_ι](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/lift-comp--06d6d942f791883aabeec62c.md) | 100 | `result-track:06d6d942f791883aabeec62cf1b065777ec6819896fcb5a2d5d177cf8c0f2eea` |
| 12 | `theorem` | [algHom_ext](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/alghom-ext--9eae569a3a5a2e92d7854e83.md) | 103 | `result-track:9eae569a3a5a2e92d7854e838209016df5bb5ec4711d70cbb24aaf47cd5c5918` |
| 13 | `lemma` | [lift_ι](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/lift--0ef8dd8c77b32190a7f3d3b5.md) | 109 | `result-track:0ef8dd8c77b32190a7f3d3b5f4fcfcab722b7bfec77c4f6b1e14dc9464f87f40` |
| 14 | `def` | [algebraMapInv](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/algebramapinv--4c541c227aebc06af5132d8c.md) | 116 | `declaration-track:4c541c227aebc06af5132d8c3222bafc93412dba2420ab3c3031dd825dd7fcc8` |
| 15 | `theorem` | [algebraMap_leftInverse](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/algebramap-leftinverse--991b596bce39647cd1c5e7bc.md) | 121 | `result-track:991b596bce39647cd1c5e7bcd53a4497326605ffc159db9072c60ebdb138a80e` |
| 16 | `theorem` | [algebraMap_inj](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/algebramap-inj--3a09ccaef9781cfda5897da1.md) | 126 | `result-track:3a09ccaef9781cfda5897da13169c2b2733ce804892978673872a85f404d3956` |
| 17 | `theorem` | [algebraMap_eq_zero_iff](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/algebramap-eq-zero-iff--591d72e9d8b622b6323afc51.md) | 131 | `result-track:591d72e9d8b622b6323afc51a542c0413e94b97a8ec278a544bbed9320a63156` |
| 18 | `theorem` | [algebraMap_eq_one_iff](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/algebramap-eq-one-iff--46d228a0e0e57e00f9b32e7f.md) | 135 | `result-track:46d228a0e0e57e00f9b32e7f3ab78d01900573ac6d5ee908f8bd2d9d8a565c78` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/declarations/instance--901322d4a2312817742dc813.md) | 139 | `declaration-track:901322d4a2312817742dc813e1fcbc2b91dfec0b61160af836d8730307b4efb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
