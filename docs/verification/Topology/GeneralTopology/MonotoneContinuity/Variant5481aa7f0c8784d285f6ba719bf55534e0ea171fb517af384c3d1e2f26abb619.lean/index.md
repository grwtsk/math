# Verification target: GRWTSK.Topology.GeneralTopology.MonotoneContinuity.Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73d4df1f1c1aea4e7d1a68ddcf606b5c821777ee",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73d4df1f1c1aea4e7d1a68ddcf606b5c821777ee`.

Source path: `GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/strictmonoon-continuouswithinat-right-of-exists-between--97ab258ac5a4ffb91faa6d1a.md) | 51 | `result-track:97ab258ac5a4ffb91faa6d1a44b1e276374e98cb2438fd62d9721be48c853a24` |
| 2 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/continuouswithinat-right-of-monotoneon-of-exists-between--35cd0e014dd72d3cef0b2007.md) | 72 | `result-track:35cd0e014dd72d3cef0b20077cee77226a4c08e873f65e6686725a6ddc896073` |
| 3 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/continuouswithinat-right-of-monotoneon-of-closure-image-mem-nhdswithin--fb154aaa36309744b6f90f52.md) | 90 | `result-track:fb154aaa36309744b6f90f528a20f605dba47fc062e704dddd7d59990a77befa` |
| 4 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/continuouswithinat-right-of-monotoneon-of-image-mem-nhdswithin--f46913248876ecea14386c47.md) | 104 | `result-track:f46913248876ecea14386c47d17f31e2a889f789107645b33d7b406b7cfea185` |
| 5 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/strictmonoon-continuouswithinat-right-of-closure-image-mem-nhdswithin--ea56c2dc5414a5c563efb71f.md) | 114 | `result-track:ea56c2dc5414a5c563efb71f9c093cbde40bc8c06b2382b5d0879104f9de413c` |
| 6 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/strictmonoon-continuouswithinat-right-of-image-mem-nhdswithin--84e46fe52ad874ee6d553c1d.md) | 124 | `result-track:84e46fe52ad874ee6d553c1d67448c3949d0ec092f0653080457a51e6ee73a56` |
| 7 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_surjOn](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/strictmonoon-continuouswithinat-right-of-surjon--0e1124d4dc57a5a1b4222445.md) | 133 | `result-track:0e1124d4dc57a5a1b42224458768a23ce04691200f3957ea5d584ef5c3963431` |
| 8 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/strictmonoon-continuouswithinat-left-of-exists-between--93b90377b7919b22b1a4977a.md) | 148 | `result-track:93b90377b7919b22b1a4977a65ac6c22877a413fab0924cc48b804c85a61aa9a` |
| 9 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/continuouswithinat-left-of-monotoneon-of-exists-between--b1885679494976ad6a318ecc.md) | 162 | `result-track:b1885679494976ad6a318ecc96ad5410ebdcbb64f12320f570e59ec77871936c` |
| 10 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/continuouswithinat-left-of-monotoneon-of-closure-image-mem-nhdswithin--e4d93af767890859865bf1af.md) | 174 | `result-track:e4d93af767890859865bf1afcab2ea1bd0f0767092017b95d45da2c88d796d38` |
| 11 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/continuouswithinat-left-of-monotoneon-of-image-mem-nhdswithin--129a5a9198d3abbbd4a206a3.md) | 184 | `result-track:129a5a9198d3abbbd4a206a3edac4bfcdc5e0e175ee33526012bc9c0c11c6a1d` |
| 12 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/strictmonoon-continuouswithinat-left-of-closure-image-mem-nhdswithin--eba94b6206f1320257f60533.md) | 194 | `result-track:eba94b6206f1320257f60533550fa026e82fa8fbd9eafe3c5919b4c7e96f2e18` |
| 13 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/strictmonoon-continuouswithinat-left-of-image-mem-nhdswithin--4103d39062d5fd9b76585b7b.md) | 203 | `result-track:4103d39062d5fd9b76585b7b7d7ee3c7267a239b2a301db97223b71162e821ef` |
| 14 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_surjOn](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/strictmonoon-continuouswithinat-left-of-surjon--12cc56fc40a800bb00f68d63.md) | 211 | `result-track:12cc56fc40a800bb00f68d637d286ccc85a7b592b2da2d31f2d80b5372bce5d1` |
| 15 | `theorem` | [StrictMonoOn.continuousAt_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/strictmonoon-continuousat-of-exists-between--199b118dc43721200298ee17.md) | 220 | `result-track:199b118dc43721200298ee17594948d87e23ead77173bf643c13181cc8b7cd09` |
| 16 | `theorem` | [StrictMonoOn.continuousAt_of_closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/strictmonoon-continuousat-of-closure-image-mem-nhds--c2726d952e6b4b63fea4fa57.md) | 231 | `result-track:c2726d952e6b4b63fea4fa57fea2a224923f98887a0ace77a628ff53312e8f39` |
| 17 | `theorem` | [StrictMonoOn.continuousAt_of_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/strictmonoon-continuousat-of-image-mem-nhds--deaf41c63796e43625188703.md) | 243 | `result-track:deaf41c63796e43625188703001e88d56562f3886bc154be7c4ba7659e3d206b` |
| 18 | `theorem` | [continuousAt_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/continuousat-of-monotoneon-of-exists-between--6d463d8f5dc12662188f97b5.md) | 252 | `result-track:6d463d8f5dc12662188f97b5c5d465e58df093afd8f1e332d314e5e41bb8796c` |
| 19 | `theorem` | [continuousAt_of_monotoneOn_of_closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/continuousat-of-monotoneon-of-closure-image-mem-nhds--56c531f98db4b9b6812934ef.md) | 265 | `result-track:56c531f98db4b9b6812934efd0e96701663761a850d30a8c4be5af415abedc15` |
| 20 | `theorem` | [continuousAt_of_monotoneOn_of_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/continuousat-of-monotoneon-of-image-mem-nhds--25334e8a94bf09405f12bc27.md) | 277 | `result-track:25334e8a94bf09405f12bc27b969dc2dd18851e088584c40f08338ed44127e7d` |
| 21 | `theorem` | [Monotone.continuous_of_denseRange](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/monotone-continuous-of-denserange--f065fb3e7ae5f6dd73035491.md) | 284 | `result-track:f065fb3e7ae5f6dd7303549133be77597e897751bdc6c77ced11662d2b4a318f` |
| 22 | `theorem` | [Monotone.continuous_of_surjective](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/monotone-continuous-of-surjective--51c700cbb0233a1f695bfff2.md) | 293 | `result-track:51c700cbb0233a1f695bfff2b583a8aeb7561d387f7cd891fc7811f153fce160` |
| 23 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/continuous--f93b1227271719989fb1bd03.md) | 313 | `result-track:f93b1227271719989fb1bd030ec24a46336e23ecd959e068abcd05d9bbde7747` |
| 24 | `def` | [toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/tohomeomorph--e18863a805d171d9a1b36b6c.md) | 324 | `declaration-track:e18863a805d171d9a1b36b6cb580bc1398b2d4d7b71380d59ea35b630dcf7bfb` |
| 25 | `theorem` | [coe_toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/coe-tohomeomorph--74b642c25cc5a79763201d81.md) | 331 | `result-track:74b642c25cc5a79763201d8121ee257fc02b0d957f8b2300a93b88c450d33c94` |
| 26 | `theorem` | [coe_toHomeomorph_symm](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/declarations/coe-tohomeomorph-symm--e8371a52867ce32ea5494c7e.md) | 336 | `result-track:e8371a52867ce32ea5494c7e97364e7390e48a4cd3f0022bc028c89464cffb56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
