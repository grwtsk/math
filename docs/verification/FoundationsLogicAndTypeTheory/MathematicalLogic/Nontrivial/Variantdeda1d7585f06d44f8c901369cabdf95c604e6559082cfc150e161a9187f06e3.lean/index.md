# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nontrivial.Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a775c6b310b98a08bd2fe4ffd0d15470041eb8e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a775c6b310b98a08bd2fe4ffd0d15470041eb8e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Attr.Register` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/nontrivial--0936b369b5070c83ae8c7a05.md) | 31 | `declaration-track:0936b369b5070c83ae8c7a05634a118a274f6c7d9af08876cd3f0f4378501b98` |
| 2 | `theorem` | [nontrivial_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/nontrivial-iff--4cd597aa2d1d4c3a123da75d.md) | 36 | `result-track:4cd597aa2d1d4c3a123da75d19ab4934ab22f6a9cc72adcbdc51b731a26ede27` |
| 3 | `theorem` | [exists_pair_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/exists-pair-ne--4fa8508225ad6ecd2bcc214f.md) | 40 | `result-track:4fa8508225ad6ecd2bcc214f003700540defd3cc5882adc30bcd85db106450b3` |
| 4 | `theorem` | [Decidable.exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/decidable-exists-ne--579e80ae62c4f1b882e94cc7.md) | 45 | `result-track:579e80ae62c4f1b882e94cc7f8bddcf40a984fb6e47cb5848ebfb65eccaf960d` |
| 5 | `theorem` | [exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/exists-ne--efebf65b34d4798293547caa.md) | 54 | `result-track:efebf65b34d4798293547caa0589ea9df7126666a507a7976e22ddbeb6fbde2c` |
| 6 | `theorem` | [nontrivial_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/nontrivial-of-ne--86d0b77903be1ca4f52903fe.md) | 59 | `result-track:86d0b77903be1ca4f52903fe8848c6ccef133f8e944cc9bec213245a8af2efd4` |
| 7 | `theorem` | [nontrivial_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/nontrivial-of-lt--03eaf403dd0bbd0b2ec1f807.md) | 64 | `result-track:03eaf403dd0bbd0b2ec1f807035b4c36c36d9c139aff65a25f6ed043bee8e205` |
| 8 | `theorem` | [exists_pair_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/exists-pair-lt--7cd75d3b65e7ad35a0007bd9.md) | 68 | `result-track:7cd75d3b65e7ad35a0007bd92c33df6645f16dc6e9ad837c51598c879ea80985` |
| 9 | `theorem` | [nontrivial_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/nontrivial-iff-lt--7d9af948171f310a904854bc.md) | 73 | `result-track:7d9af948171f310a904854bc0ea57bdf53da415c59575d9645917ba6b2f8c519` |
| 10 | `theorem` | [nontrivial_iff_exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/nontrivial-iff-exists-ne--9f36db3e219b6385e1c50202.md) | 77 | `result-track:9f36db3e219b6385e1c50202ccadc0e29b28a0c188b922f9059b0444ac990e5d` |
| 11 | `theorem` | [Subtype.nontrivial_iff_exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/subtype-nontrivial-iff-exists-ne--f98451203ed8dcf65fb4d411.md) | 81 | `result-track:f98451203ed8dcf65fb4d41180d06958e59ef26fef9e510a0ac1cf4245b8cf99` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/instance--4c8e616ffc0b02e290d6be3a.md) | 86 | `declaration-track:4c8e616ffc0b02e290d6be3a12e4c30c57ac4103606bd351c80c3e193fffeb47` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/instance--c044ac57a0dbd98b0cec70e2.md) | 94 | `declaration-track:c044ac57a0dbd98b0cec70e2eac2580f70ee76529ed20104818b05f1c78e1a83` |
| 14 | `def` | [nontrivialPSumUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/nontrivialpsumunique--a23918cd2ce45b6830ebee1e.md) | 99 | `declaration-track:a23918cd2ce45b6830ebee1e87fa431934942efefa5d046793edc05d78a5688c` |
| 15 | `theorem` | [subsingleton_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/subsingleton-iff--ba435a81c75582d4d5c9a7c3.md) | 110 | `result-track:ba435a81c75582d4d5c9a7c3a401e915ee321faae05b549dd3ba56ea6b72e8dc` |
| 16 | `theorem` | [not_nontrivial_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/not-nontrivial-iff-subsingleton--65f2009defbeb2f311a78623.md) | 116 | `result-track:65f2009defbeb2f311a78623d6bf66e62a2855350854d8ab3725782f1abe355a` |
| 17 | `theorem` | [not_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/not-nontrivial--bd7099233b0c2f79c92f84b1.md) | 120 | `result-track:bd7099233b0c2f79c92f84b1fd67ec40a10b1444bca1f82a7b851be3437d1583` |
| 18 | `theorem` | [not_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/not-subsingleton--18cfa5ae95b7f7f733135257.md) | 124 | `result-track:18cfa5ae95b7f7f733135257647ae11c2566af32badb31ed7a1534d8a0e5f0c5` |
| 19 | `theorem` | [subsingleton_or_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/subsingleton-or-nontrivial--178f6f11587bf369546cc5c4.md) | 129 | `result-track:178f6f11587bf369546cc5c4fb44def21584c6dac8df18d46592fad5d1d65e6f` |
| 20 | `theorem` | [false_of_nontrivial_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/false-of-nontrivial-of-subsingleton--69ec2c82ba2614ddff54b2bb.md) | 134 | `result-track:69ec2c82ba2614ddff54b2bb4c84500b72aefebe78121a6519525f470da3877a` |
| 21 | `instance` | [Option.nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/option-nontrivial--0a86a9f66806837aabafe0c4.md) | 138 | `declaration-track:0a86a9f66806837aabafe0c46d9305fe07c80b7b35e03bf9b8bb34f65dda8c74` |
| 22 | `theorem` | [Function.Injective.nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/function-injective-nontrivial--2f4a29b1707aa1c4da60b037.md) | 143 | `result-track:2f4a29b1707aa1c4da60b037aef24b738cfc3d4edca2b6593af082697b5972e8` |
| 23 | `theorem` | [Function.Surjective.nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/function-surjective-nontrivial--39f9e49b61e0cceba7da0ae8.md) | 150 | `result-track:39f9e49b61e0cceba7da0ae8708ee634423646d5ef900ff8a46abd1c804982a9` |
| 24 | `theorem` | [Function.Injective.exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/function-injective-exists-ne--3b1ad6f532d91b11b8cad40a.md) | 163 | `result-track:3b1ad6f532d91b11b8cad40af07b3f2551c16777b9b9c9018c4d82f368e777bd` |
| 25 | `instance` | [nontrivial_prod_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/nontrivial-prod-right--9730ec7f06b728fd45c407d7.md) | 172 | `declaration-track:9730ec7f06b728fd45c407d7f9d01510c725d9da377b6a9b6284edcba1d32bc5` |
| 26 | `instance` | [nontrivial_prod_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/nontrivial-prod-left--f033b241090f8b4ac22ba83a.md) | 175 | `declaration-track:f033b241090f8b4ac22ba83acdee2ce54d2cfc07d2205f49851444cbcff88238` |
| 27 | `theorem` | [nontrivial_at](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/nontrivial-at--738420cde8f1f2fd8d929929.md) | 183 | `result-track:738420cde8f1f2fd8d929929863f707140f0167c3c38ef6c9db90f371df418d0` |
| 28 | `instance` | [nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/nontrivial--83452e92fa3426ed3b213853.md) | 193 | `declaration-track:83452e92fa3426ed3b21385378226d7697d861c34ec962f835e5ef9720f52352` |
| 29 | `instance` | [Function.nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/function-nontrivial--b4521e9265e21b461e91a243.md) | 199 | `declaration-track:b4521e9265e21b461e91a243fddbd1d14bd6a39528df70b1604973bb4601118d` |
| 30 | `theorem` | [Subsingleton.le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/subsingleton-le--1cb1d0f4abb275e2a2009bb2.md) | 203 | `result-track:1cb1d0f4abb275e2a2009bb299ed8ae905881f6147bd5487e894a2b1fe68da98` |
| 31 | `theorem` | [Subsingleton.eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/subsingleton-eq-one--37e61159024bc88b8c6d7859.md) | 208 | `result-track:37e61159024bc88b8c6d785964821d3926e435acd6a17cf97efe416dfaef6d2c` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontrivial/Variantdeda1d7585f06d44f8c901369cabdf95c604e6559082cfc150e161a9187f06e3.lean/declarations/instance--ecca26fb0341e623db01342e.md) | 213 | `declaration-track:ecca26fb0341e623db01342e31b7b5cda426acaaf60f1a9391df84ecf966991f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
