# Verification target: GRWTSK.Analysis.FunctionalAnalysis.LpHolder.Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0abc04f3413df1771c66fd13001241ad6b9672b6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0abc04f3413df1771c66fd13001241ad6b9672b6`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/mapclm--5714c659334e854db54bb531.md) | 53 | `declaration-track:5714c659334e854db54bb531db66888ce52f3280ea1d5ffcc198b66a1fd4ede4` |
| 2 | `lemma` | [norm_mapCLM_le](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/norm-mapclm-le--e6efb582d6519a1bba0df091.md) | 69 | `result-track:e6efb582d6519a1bba0df09121889efcb0e4980892daeb4fadde3b9e75ffaa6d` |
| 3 | `lemma` | [norm_tsumCLM_le](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/norm-tsumclm-le--706f103179e8a28f35d554cb.md) | 76 | `result-track:706f103179e8a28f35d554cb04e48219aee522f243a82449591f677626a3ccf9` |
| 4 | `theorem` | [bilin_of_top_left](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/bilin-of-top-left--c3b233e402c4e107c6eab0b7.md) | 94 | `result-track:c3b233e402c4e107c6eab0b754e9b4fc7a71bfe602e2d67c9d88285cf52234d2` |
| 5 | `theorem` | [bilin_of_top_right](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/bilin-of-top-right--5a7dc439c492fce57db7b57d.md) | 108 | `result-track:5a7dc439c492fce57db7b57d0e40522cf943c5bc0d880083945d28de79986ce8` |
| 6 | `theorem` | [bilin_of_zero_left](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/bilin-of-zero-left--651606a1e4032c37b1cce8cd.md) | 114 | `result-track:651606a1e4032c37b1cce8cdd6bf7af681061ed06cf3116cb7063258b6a9506c` |
| 7 | `theorem` | [bilin_of_zero_right](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/bilin-of-zero-right--72bf65123d0c07e39502d489.md) | 120 | `result-track:72bf65123d0c07e39502d489057f73591b0d5f6bd4691f1887789d5cb1ea9a13` |
| 8 | `lemma` | [holder_top_left_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/holder-top-left-bound--29a094d52e7e2bd93d01cc39.md) | 125 | `result-track:29a094d52e7e2bd93d01cc39bde63276226133efa73a256a7da487d2e4ada4ac` |
| 9 | `lemma` | [holder_top_right_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/holder-top-right-bound--e62cab3d829675dab4333b3a.md) | 136 | `result-track:e62cab3d829675dab4333b3a61a9bb4279a21f154cab77480157eea98696b236` |
| 10 | `lemma` | [holder_gen_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/holder-gen-bound--3c99e2145b955282bf6e0995.md) | 143 | `result-track:3c99e2145b955282bf6e0995d12fc3e2c740af8762f0f4b25133b0aa59abae1d` |
| 11 | `lemma` | [holder](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/holder--8b2876ef5a4267c4de214025.md) | 173 | `result-track:8b2876ef5a4267c4de214025967f06bb60911d2356b98ca05adb95f7484e45fd` |
| 12 | `def` | [holder](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/holder--a5bd2f501a38721b7b43b0b4.md) | 201 | `declaration-track:a5bd2f501a38721b7b43b0b4c185b7edb21951061d422e2e016894bc8d5c343d` |
| 13 | `def` | [holderₗ](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/holder--3ef25663783be772f1cdd9a2.md) | 209 | `declaration-track:3ef25663783be772f1cdd9a2da998d45ea981405e4c610408df4d3945c21e7a8` |
| 14 | `def` | [holderL](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/holderl--dd91e81159c98a4bfe5f4ec5.md) | 215 | `declaration-track:dd91e81159c98a4bfe5f4ec5e1511c510b70400de3defb2d282b99db070ed74c` |
| 15 | `lemma` | [norm_holderL_le](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/norm-holderl-le--86be331e5d5e380fda75d4cd.md) | 254 | `result-track:86be331e5d5e380fda75d4cd3940853aa89288202927bb6687721de41fb3555f` |
| 16 | `def` | [dualPairing](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/dualpairing--fecb25f747b2e26c04a739c5.md) | 271 | `declaration-track:fecb25f747b2e26c04a739c5d1b10991920d8502b6040c00fb30cba622f3d3c6` |
| 17 | `lemma` | [dualPairing_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/dualpairing-apply--18212fda5c1ff2207db8d8d8.md) | 276 | `result-track:18212fda5c1ff2207db8d8d89e88c1b466c3f9d6acb7d9b5ad98a0888c5ff04c` |
| 18 | `lemma` | [norm_dualPairing](../../../../../mathematics/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/declarations/norm-dualpairing--4f138aae08602859d15aa420.md) | 282 | `result-track:4f138aae08602859d15aa4207a19ffd97c2b1037d62e071c39910db27419b605` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
