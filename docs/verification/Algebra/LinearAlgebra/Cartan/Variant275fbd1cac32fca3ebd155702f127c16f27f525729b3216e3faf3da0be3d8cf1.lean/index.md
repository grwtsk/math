# Verification target: GRWTSK.Algebra.LinearAlgebra.Cartan.Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7940f3124b5bfdedaee336a9b50c1fef8819505f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7940f3124b5bfdedaee336a9b50c1fef8819505f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.CartanSubalgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Weights.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [rootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/rootspace--d736524faec276a655234b5b.md) | 44 | `declaration-track:d736524faec276a655234b5bc84a9bc5e57e731842509844e4ae450c443168c3` |
| 2 | `theorem` | [zero_rootSpace_eq_top_of_nilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/zero-rootspace-eq-top-of-nilpotent--97fd977baca69200c51e6ae0.md) | 47 | `result-track:97fd977baca69200c51e6ae05b903bc4a599a0e9d4366a552deac9e5f072f6dd` |
| 3 | `theorem` | [rootSpace_comap_eq_genWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/rootspace-comap-eq-genweightspace--11010a4f60de9066a86fd64d.md) | 52 | `result-track:11010a4f60de9066a86fd64d7159120c09b782d21931dc75356125dfee32a84d` |
| 4 | `theorem` | [lie_mem_genWeightSpace_of_mem_genWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/lie-mem-genweightspace-of-mem-genweightspace--f1f2d172428c2f67c88a5237.md) | 58 | `result-track:f1f2d172428c2f67c88a52371edbe99a74c5a9037d674535935e8558c9899aab` |
| 5 | `lemma` | [toEnd_pow_apply_mem](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/toend-pow-apply-mem--ea2b645028870456c0559940.md) | 69 | `result-track:ea2b645028870456c0559940174d71a5dc8dffdbe239f8d8cf832cfa54bbdfd0` |
| 6 | `def` | [rootSpaceWeightSpaceProductAux](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/rootspaceweightspaceproductaux--a99ab7dc4712e37266c87247.md) | 85 | `declaration-track:a99ab7dc4712e37266c872474de3abc6a1b95fe74148cf9b8fa22a2280c71385` |
| 7 | `def` | [rootSpaceWeightSpaceProduct](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/rootspaceweightspaceproduct--0f77dfe588ef2e8df714fe83.md) | 109 | `declaration-track:0f77dfe588ef2e8df714fe8373c009686e157643b5530a71df113015335c3a42` |
| 8 | `theorem` | [coe_rootSpaceWeightSpaceProduct_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/coe-rootspaceweightspaceproduct-tmul--2d9fa8495810fe4572512307.md) | 120 | `result-track:2d9fa8495810fe457251230750e6373d0fdf3d832ddb170d875c35d812234d67` |
| 9 | `theorem` | [mapsTo_toEnd_genWeightSpace_add_of_mem_rootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/mapsto-toend-genweightspace-add-of-mem-rootspace--3e7e552cd9086f11842123e3.md) | 127 | `result-track:3e7e552cd9086f11842123e36a47bc76442d8b9f3b1bc2822d22a250b8e75b03` |
| 10 | `def` | [rootSpaceProduct](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/rootspaceproduct--cb0e26267ec106be3d9bde19.md) | 137 | `declaration-track:cb0e26267ec106be3d9bde195d6cc394870d8cb073965c4fb2f4e2769fd8e07d` |
| 11 | `theorem` | [rootSpaceProduct_def](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/rootspaceproduct-def--f0b3d03d055d1d2673dc07bd.md) | 142 | `result-track:f0b3d03d055d1d2673dc07bd1e9ea1ef4eb569810f9161686c64c410930c68f6` |
| 12 | `theorem` | [rootSpaceProduct_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/rootspaceproduct-tmul--d6ccab76b28791e9ec4bfcbc.md) | 144 | `result-track:d6ccab76b28791e9ec4bfcbca2aba7c3a4ce20e235e08fcecabe520495e61002` |
| 13 | `def` | [zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/zerorootsubalgebra--e1f976fb30001d4f15415fc2.md) | 151 | `declaration-track:e1f976fb30001d4f15415fc23da5dad0771f599552fc238fc4a33601bbc6e68e` |
| 14 | `theorem` | [coe_zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/coe-zerorootsubalgebra--14c021843ea0e78020a25adc.md) | 160 | `result-track:14c021843ea0e78020a25adcedb895c2d0f46ec5f53dc9f910f6f8b4a53d06a3` |
| 15 | `theorem` | [mem_zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/mem-zerorootsubalgebra--72d757634f64cc96e6568440.md) | 162 | `result-track:72d757634f64cc96e6568440e56247979101adee4f5dda3de3f96f5cb3eb86ca` |
| 16 | `theorem` | [toLieSubmodule_le_rootSpace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/toliesubmodule-le-rootspace-zero--856e36fbfb26d6b6ef532377.md) | 167 | `result-track:856e36fbfb26d6b6ef5323779b2c29518b3eb0ae60e2feff551a099650aea960` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/instance--73bae0367429630342728467.md) | 191 | `declaration-track:73bae03674296303427284672b791b2c724a7540ab21c44a0d8effd085248680` |
| 18 | `theorem` | [le_zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/le-zerorootsubalgebra--c07a4d0c8088484cfdbbe1d9.md) | 196 | `result-track:c07a4d0c8088484cfdbbe1d98603bb434f218ea1e51c19c26641e5b3ee0b66c5` |
| 19 | `theorem` | [zeroRootSubalgebra_normalizer_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/zerorootsubalgebra-normalizer-eq-self--2b4229f1371647ba44f3ec07.md) | 202 | `result-track:2b4229f1371647ba44f3ec0729ff8f875f8b5b511af7ef8be2c299ea35c9c697` |
| 20 | `theorem` | [is_cartan_of_zeroRootSubalgebra_eq](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/is-cartan-of-zerorootsubalgebra-eq--7ac589a56f4c5ede0dbbf775.md) | 222 | `result-track:7ac589a56f4c5ede0dbbf7750c1821387401701befc3ee0de1434cfdc5fc836b` |
| 21 | `theorem` | [zeroRootSubalgebra_eq_of_is_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/zerorootsubalgebra-eq-of-is-cartan--0d6429e7b2db59b192c2d9c5.md) | 228 | `result-track:0d6429e7b2db59b192c2d9c53b8eee19e7dfbf35c24dc9a798c11bccc0ccee53` |
| 22 | `theorem` | [zeroRootSubalgebra_eq_iff_is_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/zerorootsubalgebra-eq-iff-is-cartan--d593d6ea2c448f6a5df7157a.md) | 235 | `result-track:d593d6ea2c448f6a5df7157a7b57407247d1a61086554976d2c283552e0d8ba7` |
| 23 | `theorem` | [rootSpace_zero_eq](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/rootspace-zero-eq--f27cc5c7f2461c2d8b76f1ed.md) | 240 | `result-track:f27cc5c7f2461c2d8b76f1ed11726692a053fef8070606eba35a32e138352691` |
| 24 | `def` | [corootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/corootspace--07442430e1395f4bf2d09a3a.md) | 258 | `declaration-track:07442430e1395f4bf2d09a3a289b9f426cf8fcfaa07c28c5f04e9132c394be19` |
| 25 | `lemma` | [mem_corootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/mem-corootspace--76e005c9aa10788901393b63.md) | 264 | `result-track:76e005c9aa10788901393b63b1c3c477bfdcdf44d3ae2344c680d4003059fdec` |
| 26 | `lemma` | [mem_corootSpace'](../../../../../mathematics/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/declarations/mem-corootspace--cf083997ed097510f9c1e86d.md) | 280 | `result-track:cf083997ed097510f9c1e86daf7058b76997b9972098d25c9693d5dd050f50a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
