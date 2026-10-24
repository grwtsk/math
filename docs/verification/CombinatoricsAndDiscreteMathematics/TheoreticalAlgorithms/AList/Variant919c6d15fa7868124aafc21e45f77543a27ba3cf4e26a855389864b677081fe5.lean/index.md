# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AList.Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e8cbbbdb76c0d38130d97f687b8c5c9d91aca4b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e8cbbbdb76c0d38130d97f687b8c5c9d91aca4b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.AList` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toAList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/declarations/toalist--ccf18804431de35ec146367d.md) | 35 | `declaration-track:ccf18804431de35ec146367d555ffe410b3b5f04dcda0f940d891991fc0cb4c0` |
| 2 | `theorem` | [toAList_keys_toFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/declarations/toalist-keys-tofinset--8d197541a4cc7f002cd0cd92.md) | 46 | `result-track:8d197541a4cc7f002cd0cd927064c68f9bdfab268c3023dfd4beddc4a2bcb085` |
| 3 | `theorem` | [mem_toAlist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/declarations/mem-toalist--2c26cf2de40d5a7784a8cbe2.md) | 52 | `result-track:2c26cf2de40d5a7784a8cbe29937fdb91cd2c3ba8652ec4a2f200a3b7871c737` |
| 4 | `def` | [lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/declarations/lookupfinsupp--495a4208462ee995b22e7f90.md) | 65 | `declaration-track:495a4208462ee995b22e7f902521794d3932d1f0cd06848ae2c64dcefbc8f13b` |
| 5 | `theorem` | [lookupFinsupp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/declarations/lookupfinsupp-apply--b8d2cbba25e4677c57da655e.md) | 78 | `result-track:b8d2cbba25e4677c57da655ef4f955faa2d1866397d0c62e227f65733f55c412` |
| 6 | `theorem` | [lookupFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/declarations/lookupfinsupp-support--a8ee3314d27a86feed3d21cd.md) | 84 | `result-track:a8ee3314d27a86feed3d21cdd0ad940418243188d0760d9ef5607357d9d971e7` |
| 7 | `theorem` | [lookupFinsupp_eq_iff_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/declarations/lookupfinsupp-eq-iff-of-ne-zero--403a2eecf88dea95d305bef3.md) | 89 | `result-track:403a2eecf88dea95d305bef3aa4da390b5bab65297bbe3fe40770943f12f6f5f` |
| 8 | `theorem` | [lookupFinsupp_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/declarations/lookupfinsupp-eq-zero-iff--d76591e9b9fb377fab77e3dd.md) | 94 | `result-track:d76591e9b9fb377fab77e3dd3a096f3124701554b867cff16d021ff0e88f1bb3` |
| 9 | `theorem` | [empty_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/declarations/empty-lookupfinsupp--110374e7c4348a7da7fa58ce.md) | 100 | `result-track:110374e7c4348a7da7fa58ce43add2cad6a7407c5000d4350aef743cffd8662c` |
| 10 | `theorem` | [insert_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/declarations/insert-lookupfinsupp--b07636df600d2d37f01efb5e.md) | 106 | `result-track:b07636df600d2d37f01efb5ec79e6112f02cdb1c713dd4fe3ca61e88ab0e71b3` |
| 11 | `theorem` | [singleton_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/declarations/singleton-lookupfinsupp--b656d81790588dbdccbd1ee4.md) | 112 | `result-track:b656d81790588dbdccbd1ee4584d467d7aec8b973b5b1aca3742a7331573597b` |
| 12 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToAList.Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.Finsupp.toAList_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-to--e9517b68b1cdeec643daacb9.md) | 118 | `result-track:e9517b68b1cdeec643daacb9dfeced8af37eb03758856815dd423a64095543cd` |
| 13 | `theorem` | [lookupFinsupp_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/declarations/lookupfinsupp-surjective--1188c16e77223728a8c9fd0a.md) | 128 | `result-track:1188c16e77223728a8c9fd0aa3f435e17527a5c03aeca4660757bb1be18f377d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
