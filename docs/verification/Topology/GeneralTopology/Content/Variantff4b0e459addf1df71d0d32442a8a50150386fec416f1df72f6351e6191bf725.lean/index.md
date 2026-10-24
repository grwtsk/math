# Verification target: GRWTSK.Topology.GeneralTopology.Content.Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a2539b7b86548703cbfbeaf15060a2de2c04683",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a2539b7b86548703cbfbeaf15060a2de2c04683`.

Source path: `GRWTSK/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Content](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/content--344492a8c7df97187d60292d.md) | 75 | `declaration-track:344492a8c7df97187d60292d3ca95e1a63346fbfe4ff8107e7ffd684459c06cf` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/instance--cf56b4896cc70d724a3d1c97.md) | 83 | `declaration-track:cf56b4896cc70d724a3d1c972e3ddb64285d76a3f440ad8f5021cf467969d095` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/instance--9e45a0123e1862272acdd782.md) | 92 | `declaration-track:9e45a0123e1862272acdd782b47788107e5700d2b5302dbfff8c18ee54dc99c5` |
| 4 | `theorem` | [apply_eq_coe_toFun](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/apply-eq-coe-tofun--eff379d9c94af5003f5d05b6.md) | 99 | `result-track:eff379d9c94af5003f5d05b657bf45b4d771280c70a491f54071c200f931c1f4` |
| 5 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/mono--25223f0c391d8f394169c7d6.md) | 103 | `result-track:25223f0c391d8f394169c7d62e7af7368d0cb4da022e692596327b06ac6a5451` |
| 6 | `theorem` | [sup_disjoint](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/sup-disjoint--21813584b376e63799f9a37b.md) | 107 | `result-track:21813584b376e63799f9a37b7fce9ed4978a2c5648f0dbb59667e41ead523bb3` |
| 7 | `theorem` | [sup_le](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/sup-le--97dc63c50d4329f02f9131e7.md) | 112 | `result-track:97dc63c50d4329f02f9131e7be86040bbf209461026b0dc1a78d2c0680a952fa` |
| 8 | `theorem` | [lt_top](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/lt-top--c38181df5f40e6e2d40bf0fb.md) | 118 | `result-track:c38181df5f40e6e2d40bf0fb09280852d22c3b94220e1e500d65295a6667f868` |
| 9 | `theorem` | [empty](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/empty--b515a17d7237b956499d4efb.md) | 122 | `result-track:b515a17d7237b956499d4efb78ef47f2f0d17994ddd55dbbd245d1717b8a0014` |
| 10 | `def` | [innerContent](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/innercontent--977998edb440def9e3271372.md) | 130 | `declaration-track:977998edb440def9e327137229b84d2e24697f92ebd8ebcbe5e6143780141ace` |
| 11 | `theorem` | [le_innerContent](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/le-innercontent--067184d2d596711d4357266d.md) | 134 | `result-track:067184d2d596711d4357266d53514ac959974f0029838b1c320eab40dac9c8e9` |
| 12 | `theorem` | [innerContent_le](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/innercontent-le--523dfa370187d240d0ec3f2b.md) | 139 | `result-track:523dfa370187d240d0ec3f2bddfa48bcb66ea5a8ad4676670e32a2093b41a989` |
| 13 | `theorem` | [innerContent_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/innercontent-of-iscompact--5bfe9b3900ea7e516123c09d.md) | 144 | `result-track:5bfe9b3900ea7e516123c09d7d28414906e89cebba7cbbbd3ea0b8888a3a95a1` |
| 14 | `theorem` | [innerContent_bot](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/innercontent-bot--58fef5e1aa2d5c966320a0ed.md) | 149 | `result-track:58fef5e1aa2d5c966320a0ed279f7f832a91c8acbd073802c2d72dfb452a324e` |
| 15 | `theorem` | [innerContent_mono](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/innercontent-mono--338eb8fd3a9803e2bbc71adf.md) | 160 | `result-track:338eb8fd3a9803e2bbc71adf74c1ebd2d38cebe6fd161485fc41088c8062faa6` |
| 16 | `theorem` | [innerContent_exists_compact](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/innercontent-exists-compact--9c71a2424be685b6bf059a91.md) | 165 | `result-track:9c71a2424be685b6bf059a91f8e2c308bd1c29fa6657a47462b1df37d89933ad` |
| 17 | `theorem` | [innerContent_iSup_nat](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/innercontent-isup-nat--5228eeb769e14d567d6cb3ea.md) | 178 | `result-track:5228eeb769e14d567d6cb3ea3303523f1352fb10d09cae19a2c1c5d0570d8733` |
| 18 | `theorem` | [innerContent_iUnion_nat](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/innercontent-iunion-nat--9df6bb67d738cc196491b4e0.md) | 207 | `result-track:9df6bb67d738cc196491b4e0d44dd5f27a303e2debe2b5a7d58b6bd23ef41989` |
| 19 | `theorem` | [innerContent_comap](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/innercontent-comap--678fa2fbe36eb44b6e0ff73d.md) | 213 | `result-track:678fa2fbe36eb44b6e0ff73d03a380845074bf70d4ecc74103fea4f678bd2478` |
| 20 | `theorem` | [is_mul_left_invariant_innerContent](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/is-mul-left-invariant-innercontent--bf09d9f98293b921e5ec93d8.md) | 222 | `result-track:bf09d9f98293b921e5ec93d865096645336f22383bf72cc6daa61ca979fdefd1` |
| 21 | `theorem` | [innerContent_pos_of_is_mul_left_invariant](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/innercontent-pos-of-is-mul-left-invariant--f973ce2f8e4cfe73639c8a59.md) | 231 | `result-track:f973ce2f8e4cfe73639c8a59dac7b038f53d8d6e2cfbd8e0c38cdc5be99042c0` |
| 22 | `theorem` | [innerContent_mono'](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/innercontent-mono--e11ddadbe8aaef03c7b80122.md) | 248 | `result-track:e11ddadbe8aaef03c7b8012287233fafc21c559f86fb873fa2c1f730a7ad1474` |
| 23 | `def` | [outerMeasure](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/outermeasure--1ec3bba3bcd0f111d15e8013.md) | 256 | `declaration-track:1ec3bba3bcd0f111d15e8013f1f7299771c47d6b7533171d3c8fa74f1c3759fb` |
| 24 | `theorem` | [outerMeasure_opens](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/outermeasure-opens--472591e3c107d5cbfd1d06e8.md) | 262 | `result-track:472591e3c107d5cbfd1d06e80e7b7b5b8393890fd1fd2f938ac72a0d45180f81` |
| 25 | `theorem` | [outerMeasure_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/outermeasure-of-isopen--e4baffcbd7cc9700da602194.md) | 266 | `result-track:e4baffcbd7cc9700da60219421ec5e60c875c296c512179505d21f2dd88b8b1b` |
| 26 | `theorem` | [outerMeasure_le](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/outermeasure-le--5ede00c9830ed7cf3b3eeeb8.md) | 271 | `result-track:5ede00c9830ed7cf3b3eeeb8207e00270d4727a906fa0d8dad447dc44e5a47f6` |
| 27 | `theorem` | [le_outerMeasure_compacts](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/le-outermeasure-compacts--ca3dfc0a86d549380c67f694.md) | 276 | `result-track:ca3dfc0a86d549380c67f6947a9056ace296729d3512920e7901c8c4ee442060` |
| 28 | `theorem` | [outerMeasure_eq_iInf](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/outermeasure-eq-iinf--06f0bdf6eb17f121861c86fd.md) | 284 | `result-track:06f0bdf6eb17f121861c86fda976ecf309d63055a9aea95076c8a6a9fc056ac6` |
| 29 | `theorem` | [outerMeasure_interior_compacts](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/outermeasure-interior-compacts--e211f1712b499139905e8572.md) | 289 | `result-track:e211f1712b499139905e8572437838888a7239e117b3a454082e06128978c890` |
| 30 | `theorem` | [outerMeasure_exists_compact](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/outermeasure-exists-compact--b9b55d6b2cc18ca2750afb1e.md) | 293 | `result-track:b9b55d6b2cc18ca2750afb1eb0d2c36a5b55832d546653bb1acb41b7f7013a30` |
| 31 | `theorem` | [outerMeasure_exists_open](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/outermeasure-exists-open--5f7769d421a91081d15ea8e8.md) | 300 | `result-track:5f7769d421a91081d15ea8e89be0f6f39f4aba667ad4ac176fe7d41f2ffd6611` |
| 32 | `theorem` | [outerMeasure_preimage](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/outermeasure-preimage--4709b5d2c7b29e5011ad6ec0.md) | 308 | `result-track:4709b5d2c7b29e5011ad6ec04dc3ebc5b3d6ee697a3f8625a434e9f10d644e77` |
| 33 | `theorem` | [outerMeasure_lt_top_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/outermeasure-lt-top-of-iscompact--bb5df570d9e9cb8987751a4f.md) | 316 | `result-track:bb5df570d9e9cb8987751a4f455a89a426cd5de1a18b2a361218da92cba8f8ae` |
| 34 | `theorem` | [is_mul_left_invariant_outerMeasure](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/is-mul-left-invariant-outermeasure--a02bed3c71cc45affa571723.md) | 327 | `result-track:a02bed3c71cc45affa571723460c849cf05b328ad46c5509549ede2a8ed5f4fb` |
| 35 | `theorem` | [outerMeasure_caratheodory](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/outermeasure-caratheodory--c070ffd145891b9ad6bac27a.md) | 334 | `result-track:c070ffd145891b9ad6bac27a64c947f31c427f1d7d7910f303e57224c69ce82b` |
| 36 | `theorem` | [outerMeasure_pos_of_is_mul_left_invariant](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/outermeasure-pos-of-is-mul-left-invariant--506c53532bfbd783f86eab8b.md) | 344 | `result-track:506c53532bfbd783f86eab8b59d3e51bd3622199ca007a219e549c55a52e3a04` |
| 37 | `theorem` | [borel_le_caratheodory](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/borel-le-caratheodory--79f0a6aa31927b5c32495915.md) | 355 | `result-track:79f0a6aa31927b5c3249591509a425f7670136b8535a9e7b6a88c461d19349e6` |
| 38 | `def` | [measure](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/measure--f274fda4e52cd3202338d7d3.md) | 387 | `declaration-track:f274fda4e52cd3202338d7d30dad6777fab3e0b920fbe03edbebadd8473ddd1c` |
| 39 | `theorem` | [measure_apply](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/measure-apply--f3e8f45ddeecd0cfb330a363.md) | 391 | `result-track:f3e8f45ddeecd0cfb330a36369ff1aa9c966ff3fa1ad9b8574f23bfdf2a42e1b` |
| 40 | `instance` | [regular](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/regular--d12165ba00536485dc598dc8.md) | 396 | `declaration-track:d12165ba00536485dc598dc8d5b70bb4edcbda44af7b831e897dc699efd29d7e` |
| 41 | `def` | [ContentRegular](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/contentregular--1a0ff8162a0225b6b80984d0.md) | 422 | `declaration-track:1a0ff8162a0225b6b80984d0265ca87f4decb02d4414ba2ff37e18e1c2740206` |
| 42 | `theorem` | [contentRegular_exists_compact](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/contentregular-exists-compact--5d8bfcdd9efdef2675229935.md) | 427 | `result-track:5d8bfcdd9efdef26752299351dd1f5287fb0b492277cba6112cc3791c1abde03` |
| 43 | `theorem` | [measure_eq_content_of_regular](../../../../../mathematics/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/declarations/measure-eq-content-of-regular--568060fc9f6f198f2201af4b.md) | 444 | `result-track:568060fc9f6f198f2201af4b0081b3b70b82ee19854e42d9e203392ac6b95551` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
