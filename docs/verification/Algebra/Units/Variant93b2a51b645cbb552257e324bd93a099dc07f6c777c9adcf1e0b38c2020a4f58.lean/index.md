# Verification target: GRWTSK.Algebra.Units.Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d102352cfedc02b1b4655f6bd6f4987751559a6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/index.md) · [Full source](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d102352cfedc02b1b4655f6bd6f4987751559a6`.

Source path: `GRWTSK/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.InjSurj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Hom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/instance--078f317f821d5ea1d88b2611.md) | 37 | `declaration-track:078f317f821d5ea1d88b26112ae44836ca15210c64eae7ac35e4476c0e41ce62` |
| 2 | `theorem` | [val_neg](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/val-neg--27227bba033f71484419f80e.md) | 43 | `result-track:27227bba033f71484419f80e2b9d334dbb3caeacff92d9a468fe2aa37fc2b46f` |
| 3 | `theorem` | [coe_neg_one](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/coe-neg-one--59855658ac234d657ebe1c8f.md) | 47 | `result-track:59855658ac234d657ebe1c8fcf1006d8e3d4608fca352ea040a2ffcb7c36e4fe` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/instance--82cc11ad4549b2af81cc4ea3.md) | 50 | `declaration-track:82cc11ad4549b2af81cc4ea357047d71dbca4110766470a8d49593e970f96d9f` |
| 5 | `theorem` | [neg_divp](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/neg-divp--00289981bb44ea2cd903f2ea.md) | 54 | `result-track:00289981bb44ea2cd903f2ea7500eb0dca19917d0b6c8b6b632da5bffc36974f` |
| 6 | `theorem` | [divp_add_divp_same](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/divp-add-divp-same--e748773786a61c2e8060246d.md) | 64 | `result-track:e748773786a61c2e8060246dbfebb4382625f28361f2e2f013e73daa92a06a25` |
| 7 | `theorem` | [add_divp](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/add-divp--1dec384a030fdeae53d4acf2.md) | 68 | `result-track:1dec384a030fdeae53d4acf22d37040b0e3fdf0317823cf834abfb5dc8cedecd` |
| 8 | `theorem` | [divp_add](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/divp-add--459f06c3052a2eaa277cf381.md) | 72 | `result-track:459f06c3052a2eaa277cf3810807f98f9d58157de5685a7be3433825ccbc0c1b` |
| 9 | `theorem` | [divp_sub_divp_same](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/divp-sub-divp-same--2be8a4456a808395ae94d0ac.md) | 83 | `result-track:2be8a4456a808395ae94d0ac2f27430a3d3fadfb742a378628a760cd5a685f3e` |
| 10 | `theorem` | [sub_divp](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/sub-divp--29b76dbd26d24c83db36ff73.md) | 87 | `result-track:29b76dbd26d24c83db36ff734efaa1732c2052ded274740104f765adbe72cac9` |
| 11 | `theorem` | [divp_sub](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/divp-sub--85028817926dc4cf642a7241.md) | 91 | `result-track:85028817926dc4cf642a7241962905085f167ae0d36363bc4da2d426ea203960` |
| 12 | `theorem` | [map_neg](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/map-neg--5609d4417c152340957a4ca4.md) | 96 | `result-track:5609d4417c152340957a4ca470ea441c6a57d56871f86ad9fcceba27d9b6e522` |
| 13 | `theorem` | [map_neg_one](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/map-neg-one--0ef73358d3efa9121a619639.md) | 100 | `result-track:0ef73358d3efa9121a619639c17dab48947e4185ca58c9f82548db5d21c15dd6` |
| 14 | `theorem` | [IsUnit.neg](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/isunit-neg--597c9f67d0cd2a52aa784de0.md) | 108 | `result-track:597c9f67d0cd2a52aa784de0d876742f9a9278d91a8518f20ffa2de4b761732f` |
| 15 | `theorem` | [IsUnit.neg_iff](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/isunit-neg-iff--7a3a34bfde3780333aa79275.md) | 112 | `result-track:7a3a34bfde3780333aa79275491e56b8ec94e1256a6e9d3b617a3a59c48fd895` |
| 16 | `theorem` | [isUnit_neg_one](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/isunit-neg-one--6e2bf69ae178d026babf7877.md) | 115 | `result-track:6e2bf69ae178d026babf7877f02fef3c9a7139fdd67c3186f704cead5e683f6c` |
| 17 | `theorem` | [IsUnit.sub_iff](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/isunit-sub-iff--0d9da400dca9b182e3bdaf20.md) | 117 | `result-track:0d9da400dca9b182e3bdaf208b97ba85ba77e991322682810163498306846f48` |
| 18 | `theorem` | [divp_add_divp](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/divp-add-divp--9ccf612b27a068e05b4b62d6.md) | 123 | `result-track:9ccf612b27a068e05b4b62d6d29abe87b84659615541c5687156366e11e65c43` |
| 19 | `theorem` | [divp_sub_divp](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/divp-sub-divp--09d71e98e3407498528ff0de.md) | 132 | `result-track:09d71e98e3407498528ff0defba97d66e2e699ffac00cc69889dbd22fd7fee21` |
| 20 | `theorem` | [add_eq_mul_one_add_div](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/add-eq-mul-one-add-div--80e8e1106042654776b526f6.md) | 136 | `result-track:80e8e1106042654776b526f6a31e44a3e17048e4aab1481c573e9ff5566ce6c2` |
| 21 | `theorem` | [isUnit_map](../../../../mathematics/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/declarations/isunit-map--bae8127ad3299ace2db382e9.md) | 147 | `result-track:bae8127ad3299ace2db382e942f4e4914f7cc8d5624cc61673b1bb5cbbd69fe1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
