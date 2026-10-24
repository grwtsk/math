# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "170d3801a16ab06d49d6646f009f5199e85b8cbc",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `170d3801a16ab06d49d6646f009f5199e85b8cbc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.FilteredColimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.ULift` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semiringObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/semiringobj--150c6c2d103cd25cda50b158.md) | 56 | `declaration-track:150c6c2d103cd25cda50b15819d0b18b156ac5644cf8c3be5b5a0aef96eeb664` |
| 2 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/r--8ba914df58b96e8c6c06222a.md) | 65 | `declaration-track:8ba914df58b96e8c6c06222a0f724c84a72c2f4e2812fb1e83270ddb48ee2293` |
| 3 | `instance` | [colimitSemiring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimitsemiring--c39c197a28331f8b6b9c6775.md) | 68 | `declaration-track:c39c197a28331f8b6b9c67753952eabd25d90832a2473fe664afbf40e0ddf7ce` |
| 4 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimit--e9c75517fedc11177666ca66.md) | 116 | `declaration-track:e9c75517fedc11177666ca663b340dc0e9708a71aaa0b202f06265b633d36ade` |
| 5 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimitcocone--ca600920450ffbd88bae1753.md) | 120 | `declaration-track:ca600920450ffbd88bae17537936b2c62faa1d0588bcdceaea1387ef6b708581` |
| 6 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimitcoconeiscolimit--6005fa90d613e14c33ff7a4a.md) | 132 | `declaration-track:6005fa90d613e14c33ff7a4a381aef3b0f464692f3f35198a4d1a0086330e12d` |
| 7 | `instance` | [forget₂Mon_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/forget-mon-preservesfilteredcolimits--5edee780ccfed71619fbcd6c.md) | 150 | `declaration-track:5edee780ccfed71619fbcd6c55908c9f0086965fb447409a0f181590bad8608d` |
| 8 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/forget-preservesfilteredcolimits--2f49edf94805be3df479799f.md) | 158 | `declaration-track:2f49edf94805be3df479799fb613317c2f62c36221790c821f30ff926fa1f34d` |
| 9 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/r--254374936b173e6abda1a070.md) | 176 | `declaration-track:254374936b173e6abda1a0700e1c620f8e5ae8aab70e4904e592e7e2d8944d6f` |
| 10 | `instance` | [colimitCommSemiring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimitcommsemiring--948e84e81a8d21a882d13bc1.md) | 179 | `declaration-track:948e84e81a8d21a882d13bc100d90c9737d455c8d660298c8c33a0124e116ef2` |
| 11 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimit--0e9fe21a6c218aa9c2501995.md) | 185 | `declaration-track:0e9fe21a6c218aa9c2501995ecb5308efb6ca9064e562cf94d4a84a3e416a1ff` |
| 12 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimitcocone--7560e586d7ac253bb6da9ebb.md) | 189 | `declaration-track:7560e586d7ac253bb6da9ebb3d08dad1131bc16960d275edf4322d2a7fbcf006` |
| 13 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimitcoconeiscolimit--68c0f37e4460434ffb018688.md) | 199 | `declaration-track:68c0f37e4460434ffb01868847eb577bf8e57c55f507a9f20e5e7a130741ad29` |
| 14 | `instance` | [forget₂SemiRing_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/forget-semiring-preservesfilteredcolimits--d743096b2dc3a538ea799199.md) | 214 | `declaration-track:d743096b2dc3a538ea7991990590a3f075280db73911768ab880353ea1b6a984` |
| 15 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/forget-preservesfilteredcolimits--f89517e5d85e93825a0c8cd3.md) | 223 | `declaration-track:f89517e5d85e93825a0c8cd334b16219843bdf5d37f2d7fbcb5699870a7cf90d` |
| 16 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/r--784fb093ea6a835860ba8071.md) | 243 | `declaration-track:784fb093ea6a835860ba8071a725400167bb4c28bb7f84cb1bf898d3efb08c8a` |
| 17 | `instance` | [colimitRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimitring--5fc3a597da790e3b1fea8dd4.md) | 246 | `declaration-track:5fc3a597da790e3b1fea8dd4030d2991a50ddd68f472c1781cd241fd1f8511f4` |
| 18 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimit--f61fb9606acd986fbcffa6b8.md) | 252 | `declaration-track:f61fb9606acd986fbcffa6b83302b4397d266fa289728c76b3e69ac2955cde0a` |
| 19 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimitcocone--75b182015bc0ba06920dc837.md) | 256 | `declaration-track:75b182015bc0ba06920dc83790b6fea0fcd7aa31821138a57bb00ec2a19ddd1e` |
| 20 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimitcoconeiscolimit--c928bf524dae096f04b33bae.md) | 265 | `declaration-track:c928bf524dae096f04b33bae3d98e8ace965ba5223376879fdb508ff4d8e545c` |
| 21 | `instance` | [forget₂SemiRing_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/forget-semiring-preservesfilteredcolimits--199ba3fe8e2de7a77a6b6b4f.md) | 280 | `declaration-track:199ba3fe8e2de7a77a6b6b4f35c72e982f567bed60d7579967192a7ae01757af` |
| 22 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/forget-preservesfilteredcolimits--34968ce81ef6dd466e8dc503.md) | 289 | `declaration-track:34968ce81ef6dd466e8dc50388d8acaa518e30782ebc0444094e8ec32a8202c7` |
| 23 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/r--8fba0d623526fbdc9f0e7197.md) | 307 | `declaration-track:8fba0d623526fbdc9f0e719706526a7b24248d171504fcdca0e890e5b3a43044` |
| 24 | `instance` | [colimitCommRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimitcommring--1810bc0769b9a1c978824e94.md) | 310 | `declaration-track:1810bc0769b9a1c978824e94b7ff4d43934540f11826824e3ece16ba6c1a62f2` |
| 25 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimit--07171a874307093c6456de2b.md) | 316 | `declaration-track:07171a874307093c6456de2b2f3cd7d138bc59f29c78434a487a4b92c10d1c1f` |
| 26 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimitcocone--29af1c3043b7c2cfc8125f99.md) | 320 | `declaration-track:29af1c3043b7c2cfc8125f993cf87fb856568ed7629df7a38afb416992ece078` |
| 27 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/colimitcoconeiscolimit--7b1f6df37152ada0f87e55b7.md) | 329 | `declaration-track:7b1f6df37152ada0f87e55b7fcaf8113e6e9e473b64f3dad7c3bed8bacdb7906` |
| 28 | `instance` | [forget₂Ring_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/forget-ring-preservesfilteredcolimits--8e5dcd1db1cb0f0a52c1aba2.md) | 344 | `declaration-track:8e5dcd1db1cb0f0a52c1aba2bb83c6a27c96c9e584df2b4ae40d0f04cac21824` |
| 29 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/forget-preservesfilteredcolimits--69874df9e0defe6a46366100.md) | 352 | `declaration-track:69874df9e0defe6a46366100d782a6873e9312469ae7716b1b21b082f8a73352` |
| 30 | `lemma` | [nontrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/nontrivial--62310b78a33f9b3ef1dc2251.md) | 356 | `result-track:62310b78a33f9b3ef1dc2251d243fd66845eb6a572834c605f24da1116cfb61f` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/declarations/instance--1fe26db5ce4e4c1add692f58.md) | 369 | `declaration-track:1fe26db5ce4e4c1add692f587260b27b16a8ce80de56c69b6433a859e80fc55a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
