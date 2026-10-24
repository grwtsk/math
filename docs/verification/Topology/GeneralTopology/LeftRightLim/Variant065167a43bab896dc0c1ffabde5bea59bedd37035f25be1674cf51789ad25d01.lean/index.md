# Verification target: GRWTSK.Topology.GeneralTopology.LeftRightLim.Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12d452910bbfd935ce0bf2621137b6c9c89e7957",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12d452910bbfd935ce0bf2621137b6c9c89e7957`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.LeftRight` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/function-leftlim--e335174d1913650041bd1553.md) | 56 | `declaration-track:e335174d1913650041bd1553cbf6d89492c38662aa21390e708428b00238d72b` |
| 2 | `def` | [Function.rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/function-rightlim--e034d3eda3ca19e58c3a4ea2.md) | 67 | `declaration-track:e034d3eda3ca19e58c3a4ea2075bcfb1095cfb0d4623766bc007335b2a742291` |
| 3 | `theorem` | [leftLim_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/leftlim-eq-of-tendsto--f84a0d7c446ca5d14ca26c09.md) | 73 | `result-track:f84a0d7c446ca5d14ca26c09b1e42a958b16bf33608de405bb9801f191ac4519` |
| 4 | `theorem` | [leftLim_eq_of_eq_bot](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/leftlim-eq-of-eq-bot--5649f67a224d258eb5ae23dd.md) | 83 | `result-track:5649f67a224d258eb5ae23dd129a94c44d6033b4afb0b7965a7df317bfd5cffb` |
| 5 | `theorem` | [rightLim_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/rightlim-eq-of-tendsto--c5062b929ec436a1c40de676.md) | 89 | `result-track:c5062b929ec436a1c40de67612cc9aaa2ee67768165af56f0051f02cbf963059` |
| 6 | `theorem` | [rightLim_eq_of_eq_bot](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/rightlim-eq-of-eq-bot--c703ebe896b123699cb04676.md) | 95 | `result-track:c703ebe896b123699cb04676a0b0cae372ac27fccd447d7b867829bcd499c1c8` |
| 7 | `theorem` | [leftLim_eq_sSup](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/leftlim-eq-ssup--61c14a22d3577acb45205470.md) | 108 | `result-track:61c14a22d3577acb45205470284a92bd000f518f2dffc8d8b0477d87c475fb1c` |
| 8 | `theorem` | [rightLim_eq_sInf](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/rightlim-eq-sinf--74d08d8e1899a4fb3a677e80.md) | 113 | `result-track:74d08d8e1899a4fb3a677e80d1f38a0d62617394b59d97eebd92a89de826897e` |
| 9 | `theorem` | [leftLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/leftlim-le--b61add3903e9004fce3e2732.md) | 118 | `result-track:b61add3903e9004fce3e273229cacb235a076a7c07308fe6cf7581a1251e9fda` |
| 10 | `theorem` | [le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/le-leftlim--114de479c28ff14187fc1bd0.md) | 133 | `result-track:114de479c28ff14187fc1bd007203938e50b0685e6092f22bd0e44113874a61e` |
| 11 | `theorem` | [leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/leftlim--fbad4f22454e22cfdde552f2.md) | 148 | `result-track:fbad4f22454e22cfdde552f294b7113c2191ce78c285d3e550a49de4c033394b` |
| 12 | `theorem` | [le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/le-rightlim--f8f1aed6808e2fcb78bbfd26.md) | 155 | `result-track:f8f1aed6808e2fcb78bbfd269a7c680ff9bfd5a8ee7b8c7218466239649a84f9` |
| 13 | `theorem` | [rightLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/rightlim-le--7c83eb019817b5639d546b89.md) | 159 | `result-track:7c83eb019817b5639d546b892af6d35987fe913828f4fb2222bafb780e1c5244` |
| 14 | `theorem` | [rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/rightlim--8c172d9e29f31424d8b8d281.md) | 164 | `result-track:8c172d9e29f31424d8b8d28144a5702fee3ac7f992f8dbc00d8e48a3365a0089` |
| 15 | `theorem` | [leftLim_le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/leftlim-le-rightlim--aa25619f9fd19c379da3c94b.md) | 167 | `result-track:aa25619f9fd19c379da3c94bcf91e85eea3b582d9ed62e21595538313ba23584` |
| 16 | `theorem` | [rightLim_le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/rightlim-le-leftlim--68d8e1035298a6371e965228.md) | 171 | `result-track:68d8e1035298a6371e965228f29c0b43ddd28b5e0847f4afe1c99fd3d6ab0a02` |
| 17 | `theorem` | [tendsto_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/tendsto-leftlim--cca250209752610e256848a7.md) | 187 | `result-track:cca250209752610e256848a7c3a322454c2bf0e43737ffeffc6aefc0b49ba976` |
| 18 | `theorem` | [tendsto_leftLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/tendsto-leftlim-within--f7eba640e660e58f8d3d935e.md) | 194 | `result-track:f7eba640e660e58f8d3d935e080ba1de64c7f21e0844dde3342e844b39e9e255` |
| 19 | `theorem` | [tendsto_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/tendsto-rightlim--a62ff05279472caefa4b0d06.md) | 199 | `result-track:a62ff05279472caefa4b0d0624ea691cf0fa96c9458b7e47522c2bb269555069` |
| 20 | `theorem` | [tendsto_rightLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/tendsto-rightlim-within--9fd10432e81ac6e82c0b0d4f.md) | 203 | `result-track:9fd10432e81ac6e82c0b0d4ffacb4e60c7b8421a4fbbec300232d061e3348e2f` |
| 21 | `theorem` | [continuousWithinAt_Iio_iff_leftLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/continuouswithinat-iio-iff-leftlim-eq--160502156ab266d8037700a6.md) | 209 | `result-track:160502156ab266d8037700a676b06e6f0706359a0abc202672a3de3ae0aa5507` |
| 22 | `theorem` | [continuousWithinAt_Ioi_iff_rightLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/continuouswithinat-ioi-iff-rightlim-eq--23aa16a89eaaa3b2ed8bf3a6.md) | 221 | `result-track:23aa16a89eaaa3b2ed8bf3a67e5e40b56fbd0c9b11977c96bc43799852320a6a` |
| 23 | `theorem` | [continuousAt_iff_leftLim_eq_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/continuousat-iff-leftlim-eq-rightlim--70bac1e54a68db99bfceaa2f.md) | 228 | `result-track:70bac1e54a68db99bfceaa2f451d60bad30718051c95bdd3fcbdad6d20e8f52d` |
| 24 | `theorem` | [countable_not_continuousWithinAt_Ioi](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/countable-not-continuouswithinat-ioi--7a827e6d1e793a177ae9ce2b.md) | 248 | `result-track:7a827e6d1e793a177ae9ce2b2aebb04bf9fc7a765689722b5cebf91351aaa2f2` |
| 25 | `theorem` | [countable_not_continuousWithinAt_Iio](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/countable-not-continuouswithinat-iio--46aeea0a0846f00906291354.md) | 295 | `result-track:46aeea0a0846f00906291354a530fb2ac9eefab630f199119f35109c10913b83` |
| 26 | `theorem` | [countable_not_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/countable-not-continuousat--02dc09c6343a51202c43f103.md) | 302 | `result-track:02dc09c6343a51202c43f103b930df92a585759b7f1aeec28ed2124ae21423fb` |
| 27 | `theorem` | [le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/le-leftlim--89e16cd5315e7d34c99d5eab.md) | 321 | `result-track:89e16cd5315e7d34c99d5eab78cc5c65fde777924e33106672b184e72f09f131` |
| 28 | `theorem` | [leftLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/leftlim-le--b8bc308efe1f68b545bdf2f4.md) | 325 | `result-track:b8bc308efe1f68b545bdf2f4863dedadc9980e91fa194087acbe8d9ff6a28751` |
| 29 | `theorem` | [leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/leftlim--50f3c73186b539ae26aafadc.md) | 330 | `result-track:50f3c73186b539ae26aafadceb728ac1c17cb4cd50e06fcc64c819bf2427c637` |
| 30 | `theorem` | [rightLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/rightlim-le--5d7db48dc6307c4f7599a7d2.md) | 334 | `result-track:5d7db48dc6307c4f7599a7d2cc5dd10b4d4f53fd3caebd927fd7681d29f17e60` |
| 31 | `theorem` | [le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/le-rightlim--d83bb1729a422ae1302504d0.md) | 338 | `result-track:d83bb1729a422ae1302504d081da16cd6cf436952bfefb96d714f4ea5030d2e7` |
| 32 | `theorem` | [rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/rightlim--9524199aa4e35f14dffaad27.md) | 343 | `result-track:9524199aa4e35f14dffaad27c74e8ff884ef2385da4d5216ea4234ecae58ea9c` |
| 33 | `theorem` | [rightLim_le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/rightlim-le-leftlim--4503371d8c2c650e70df67c4.md) | 347 | `result-track:4503371d8c2c650e70df67c40126884d7cd5b7082e5200b3a91c14ea7b60bf95` |
| 34 | `theorem` | [leftLim_le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/leftlim-le-rightlim--9e9e5280afe5b9364fc9816e.md) | 351 | `result-track:9e9e5280afe5b9364fc9816e7379188a972c14b849361e99117151f051ed2cf7` |
| 35 | `theorem` | [tendsto_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/tendsto-leftlim--71bd9ce9f4ac97b299ea17af.md) | 357 | `result-track:71bd9ce9f4ac97b299ea17afea9b92eaf5f6adc3a5f6b07c1d499a5c764b7395` |
| 36 | `theorem` | [tendsto_leftLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/tendsto-leftlim-within--bd8edb4c40eb2f8f42001ae9.md) | 361 | `result-track:bd8edb4c40eb2f8f42001ae98b6333a19b5913d24cb53ad7631affe35757a2f1` |
| 37 | `theorem` | [tendsto_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/tendsto-rightlim--798a2c8ba7bfc1a39a7aea51.md) | 365 | `result-track:798a2c8ba7bfc1a39a7aea51e4761af04b6c07531f081fb0f193e85b18bc257d` |
| 38 | `theorem` | [tendsto_rightLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/tendsto-rightlim-within--095201fc972aa1a318e2e1b4.md) | 369 | `result-track:095201fc972aa1a318e2e1b47ba4780ccc733aaec32cd7b9a2704a579cc6465c` |
| 39 | `theorem` | [continuousWithinAt_Iio_iff_leftLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/continuouswithinat-iio-iff-leftlim-eq--62cf63c9abc33ce746c108da.md) | 375 | `result-track:62cf63c9abc33ce746c108da9d0cc2da302ec33038b2547e71702bee72cee991` |
| 40 | `theorem` | [continuousWithinAt_Ioi_iff_rightLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/continuouswithinat-ioi-iff-rightlim-eq--7f1734bf75848bb4ef970806.md) | 382 | `result-track:7f1734bf75848bb4ef970806361d69e7677102d34c4cd48c867b50fd81748938` |
| 41 | `theorem` | [continuousAt_iff_leftLim_eq_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/continuousat-iff-leftlim-eq-rightlim--e5face9b9f955dda5da8e11c.md) | 389 | `result-track:e5face9b9f955dda5da8e11c0c7549f16e6f5986e64e44ef588e8f525d8d290d` |
| 42 | `theorem` | [countable_not_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/declarations/countable-not-continuousat--d35458a715d9748e6fc5f50e.md) | 395 | `result-track:d35458a715d9748e6fc5f50ef5768a2e2c3b239a95ec09c988d92049abf10d2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
