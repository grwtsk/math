# Verification target: GRWTSK.Algebra.LinearAlgebra.SourceRecognitionGuardAttempt05.Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3948f8399a8eb5dfa87e510fc431c38416837a06",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3948f8399a8eb5dfa87e510fc431c38416837a06`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Charpoly` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetric_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/symmetric-charpoly-zero-real--650a75f2651f99659fc39c94.md) | 21 | `result-track:650a75f2651f99659fc39c9453ebb9d308c8f44d1285725b8ff30de2e72ec98a` |
| 2 | `theorem` | [hermitian_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/hermitian-charpoly-zero-real--eebb66cab740d612f414c268.md) | 30 | `result-track:eebb66cab740d612f414c268c955753130553bbd4b64f8fdf6d255d1e4909a4e` |
| 3 | `def` | [ZeroTransport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/zerotransport--220cd6e1f563dce5d16a7884.md) | 40 | `declaration-track:220cd6e1f563dce5d16a7884391e5a26e5a952deda29c2d29ca65f93e2bb7c3b` |
| 4 | `def` | [RealAxisReflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/realaxisreflection--fb94c025c51a5c4edb7e57cd.md) | 44 | `declaration-track:fb94c025c51a5c4edb7e57cd9c5447a1b4692e2842ad8b0f5c7afa1efe941871` |
| 5 | `structure` | [Recognition](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/recognition--66f42c8cfac5c50739dbfe20.md) | 48 | `declaration-track:66f42c8cfac5c50739dbfe208da8434a83cf5cb86a0777dcbfd2fbfbd0680f98` |
| 6 | `theorem` | [recognition_transfers_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/recognition-transfers-real-zeros--12e08097f3454baef3394c23.md) | 53 | `result-track:12e08097f3454baef3394c23c1c73141076aaf195211ebc24d86f20a554f1d0a` |
| 7 | `theorem` | [exact_comparison_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/exact-comparison-zero-transport--3ec17fbde77a4f76a51f85dd.md) | 61 | `result-track:3ec17fbde77a4f76a51f85dde93dfeb191897d951d71a7e6f3f5b154429f374b` |
| 8 | `theorem` | [recognition_of_exact_comparison](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/recognition-of-exact-comparison--5d8be8e00ee4f001ed87cb10.md) | 70 | `result-track:5d8be8e00ee4f001ed87cb10ef1f2b29b916570cbd66f72a0f5ecb84abf5dc8a` |
| 9 | `theorem` | [real_affine_reflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/real-affine-reflection--8e09cce6b6bdde4d4ff2d502.md) | 77 | `result-track:8e09cce6b6bdde4d4ff2d502fe72c6eff601cf13317e478411db7d43ec883e38` |
| 10 | `theorem` | [same_point_comparison_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/same-point-comparison-real-zeros--511f5df4156b6890dd15f7ef.md) | 84 | `result-track:511f5df4156b6890dd15f7ef7c068552bf99921b12d1d469031f5740f5a41004` |
| 11 | `theorem` | [hermitian_real_affine_comparison_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/hermitian-real-affine-comparison-real-zeros--1d420998627f2630370b6681.md) | 93 | `result-track:1d420998627f2630370b6681dcda3fff35b1251523905b0134d05d8cac5e9a6f` |
| 12 | `def` | [zeroMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/zeromatrix--9c7e3c7ee8800cd228ceadcb.md) | 103 | `declaration-track:9c7e3c7ee8800cd228ceadcbed0e855a66581752dc701db27044e0eb724049fc` |
| 13 | `def` | [hostileSource](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/hostilesource--c9afd18781295e676709590a.md) | 105 | `declaration-track:c9afd18781295e676709590aec860b46fca17ef6c6157389b9325473fe126d2e` |
| 14 | `theorem` | [zeroMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/zeromatrix-hermitian--2b16027be50469ab89964ab2.md) | 107 | `result-track:2b16027be50469ab89964ab2472abc3d5cab8b09e5c480d3bd68312afeeb4cf6` |
| 15 | `theorem` | [zeroMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/zeromatrix-charpoly--9fca4fff8f65e46cd0947dd1.md) | 110 | `result-track:9fca4fff8f65e46cd0947dd1ec735a9ac148994b6732e1ee5122efcd9750952e` |
| 16 | `theorem` | [zeroMatrix_charpoly_zeros_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/zeromatrix-charpoly-zeros-real--518a6df72b40f46c3ea71e64.md) | 113 | `result-track:518a6df72b40f46c3ea71e648901b757c5a5a481c580e84f78b4c5701672ded7` |
| 17 | `theorem` | [hostileSource_nonreal_zero](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/hostilesource-nonreal-zero--0c232f7437e554484f07fed1.md) | 119 | `result-track:0c232f7437e554484f07fed1f21bd4328bc4b5171d6d35d88e34d687c8d9d8c6` |
| 18 | `theorem` | [finite_boundary_reality_does_not_identify_source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/finite-boundary-reality-does-not-identify-source--662dd1012752851888604d5e.md) | 124 | `result-track:662dd1012752851888604d5e4bef0753313b424f6f4e89690d1e22b56f7e53ea` |
| 19 | `def` | [shiftedBoundary](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/shiftedboundary--4a3146601a371fc46ef419ce.md) | 133 | `declaration-track:4a3146601a371fc46ef419cef67ce8d4e182b8bf78a97ffde086973f56188c00` |
| 20 | `def` | [squareMap](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/squaremap--2be7c6e68d54de069b01157a.md) | 135 | `declaration-track:2be7c6e68d54de069b01157a4061376e331ff34a655e8d23552b4bdced7405e8` |
| 21 | `def` | [negativeUnitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/negativeunitmatrix--fe534ef1265c594604886ab9.md) | 137 | `declaration-track:fe534ef1265c594604886ab95e233c0919288c1458a73046fde97fcb45e59e79` |
| 22 | `theorem` | [negativeUnitMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/negativeunitmatrix-hermitian--60f380c8744fbf45b6784b6d.md) | 139 | `result-track:60f380c8744fbf45b6784b6d0e97731e13cc57436a531d728bbdcfcfe8787700` |
| 23 | `theorem` | [negativeUnitMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/negativeunitmatrix-charpoly--f7fa7454fccb60d52060cd7e.md) | 142 | `result-track:f7fa7454fccb60d52060cd7e1ee3f4fb865a2f0e0b2e646bdfc873f11b1a9576` |
| 24 | `theorem` | [negativeUnitMatrix_characteristic_function](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/negativeunitmatrix-characteristic-function--03a76dc9bf3057c00e9376d6.md) | 150 | `result-track:03a76dc9bf3057c00e9376d61534aec586e1ac00fb0152ef40bdaf4eaf0cbf29` |
| 25 | `theorem` | [shiftedBoundary_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/shiftedboundary-real-zeros--af15bd4285a4842c798c4545.md) | 155 | `result-track:af15bd4285a4842c798c454539a3bcefde57c349cabc1375a06608a73ffd9af9` |
| 26 | `theorem` | [square_comparison_exact](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/square-comparison-exact--2cc8a8dc7688d56a991af792.md) | 160 | `result-track:2cc8a8dc7688d56a991af79220cd22150a7910759a7b00db7df0ba93f1a6b796` |
| 27 | `theorem` | [square_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/square-zero-transport--ecda619f38e185cfdd93d9cd.md) | 165 | `result-track:ecda619f38e185cfdd93d9cd34dcb5789811465f2bf44974ab69315c9428dc55` |
| 28 | `theorem` | [square_map_not_real_axis_reflecting](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant1f5733963ac73a8a59dca8584c6f5d6a9737b7d0d2e2e29f5fdf891e6a51865f.lean/declarations/square-map-not-real-axis-reflecting--d89a248f427692cde8ae5824.md) | 169 | `result-track:d89a248f427692cde8ae5824f74792a55bfeb862b0edaa3859ff79261186bcbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
