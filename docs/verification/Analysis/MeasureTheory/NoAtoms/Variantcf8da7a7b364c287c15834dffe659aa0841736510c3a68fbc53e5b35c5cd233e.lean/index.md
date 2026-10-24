# Verification target: GRWTSK.Analysis.MeasureTheory.NoAtoms.Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d71bdc1a419ee4ab0a88b15f741dffdce29a1b13",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d71bdc1a419ee4ab0a88b15f741dffdce29a1b13`.

Source path: `GRWTSK/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Restrict` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NoAtoms](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/noatoms--e7777cb6000e1b641735eb8d.md) | 29 | `declaration-track:e7777cb6000e1b641735eb8dbb83cd89fd0fda25a026c4932d317fb489856a03` |
| 2 | `theorem` | [_root_.Set.Subsingleton.measure_zero](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/root-set-subsingleton-measure-zero--82c35354359028bbd5075602.md) | 38 | `result-track:82c35354359028bbd5075602449cd23338aa1756b0af3c712636ffae3354ba18` |
| 3 | `theorem` | [Measure.restrict_singleton'](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/measure-restrict-singleton--480758edd2cdbc4d5d80f9b3.md) | 42 | `result-track:480758edd2cdbc4d5d80f9b3b6f2b3ac7bbf84df0ae5c9e65b8c28f16751f3fd` |
| 4 | `instance` | [Measure.restrict.instNoAtoms](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/measure-restrict-instnoatoms--0ce765938faacdef69fdc999.md) | 45 | `declaration-track:0ce765938faacdef69fdc99944b73d9ab403ba4097c2f348bee6b7f03cfa994d` |
| 5 | `theorem` | [_root_.Set.Countable.measure_zero](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/root-set-countable-measure-zero--caa1dbd45f00940405c1f984.md) | 52 | `result-track:caa1dbd45f00940405c1f984da6069cce61ebb32561bb777316a46acad23362b` |
| 6 | `theorem` | [_root_.Set.Countable.ae_notMem](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/root-set-countable-ae-notmem--cfb5e945bfcc8a1bd064ad40.md) | 57 | `result-track:cfb5e945bfcc8a1bd064ad401497aa958ff7ef9cd5615ecdcdaaf536ee8aa9b8` |
| 7 | `lemma` | [_root_.Set.Countable.measure_restrict_compl](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/root-set-countable-measure-restrict-compl--8c5e8c7821aed0b5e2baa13d.md) | 64 | `result-track:8c5e8c7821aed0b5e2baa13deb546cf8d1ee751b62fdb1f0e2b8d78363a0d2d9` |
| 8 | `lemma` | [restrict_compl_singleton](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/restrict-compl-singleton--b42465e903e6c99b2d92fba7.md) | 69 | `result-track:b42465e903e6c99b2d92fba7e629105b5f2ceb5bc0889671e07399bda0f46790` |
| 9 | `theorem` | [_root_.Set.Finite.measure_zero](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/root-set-finite-measure-zero--34e69607ec133e6e4dbefeb0.md) | 72 | `result-track:34e69607ec133e6e4dbefeb05d69ad52277524731849bd93b2df9c8720eb34e2` |
| 10 | `theorem` | [_root_.Finset.measure_zero](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/root-finset-measure-zero--4f08a133d22f284fcf5ed0f1.md) | 75 | `result-track:4f08a133d22f284fcf5ed0f1ecadd14d2fa1119df6ba0364513f28f5fb1e6153` |
| 11 | `theorem` | [insert_ae_eq_self](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/insert-ae-eq-self--635c6f4e06bca07c04b01256.md) | 78 | `result-track:635c6f4e06bca07c04b0125678605d17f35a6ddb46b6258117201c4b42846701` |
| 12 | `theorem` | [Iio_ae_eq_Iic](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/iio-ae-eq-iic--21b9303932e2fa6b08f0ac68.md) | 85 | `result-track:21b9303932e2fa6b08f0ac685d648ab6b6569cd4bec87b5ea1e8f34d0019aec2` |
| 13 | `theorem` | [Ioi_ae_eq_Ici](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/ioi-ae-eq-ici--76fcac4706060060e9d862c4.md) | 88 | `result-track:76fcac4706060060e9d862c40b36432050c3dff1fb8be9a37b6af740e73214f3` |
| 14 | `theorem` | [Ioo_ae_eq_Ioc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/ioo-ae-eq-ioc--0d8d58f1ec9867bfa4139582.md) | 91 | `result-track:0d8d58f1ec9867bfa4139582e366366678d7b6bcdb21c1fa62abdf423948c75b` |
| 15 | `theorem` | [Ioc_ae_eq_Icc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/ioc-ae-eq-icc--5735815659d0011540ef9cfd.md) | 94 | `result-track:5735815659d0011540ef9cfd5035e7b8ea369d41845b75f042b96adb36c6e71d` |
| 16 | `theorem` | [Ioo_ae_eq_Ico](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/ioo-ae-eq-ico--a8bbc1d880b9682c132e4de3.md) | 97 | `result-track:a8bbc1d880b9682c132e4de317e686627114b6c7370bd9a2147dde952264a081` |
| 17 | `theorem` | [Ioo_ae_eq_Icc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/ioo-ae-eq-icc--4789eb7f23ec03c694a2ab7a.md) | 100 | `result-track:4789eb7f23ec03c694a2ab7abc9e3205807166b5d204f5035edf45a5dd43932c` |
| 18 | `theorem` | [Ico_ae_eq_Icc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/ico-ae-eq-icc--be9508824e5d31c887175828.md) | 103 | `result-track:be9508824e5d31c8871758287716708f126571257c686d37ef4bfd1c4e2745d2` |
| 19 | `theorem` | [Ico_ae_eq_Ioc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/ico-ae-eq-ioc--9c5512f60211fc411b4801e5.md) | 106 | `result-track:9c5512f60211fc411b4801e562631660fd4cb35b7416415c57ba933ea29f0c5f` |
| 20 | `theorem` | [restrict_Iio_eq_restrict_Iic](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/restrict-iio-eq-restrict-iic--2ebd42103dcbf8aa432c6b90.md) | 109 | `result-track:2ebd42103dcbf8aa432c6b9056f79dac6a8a250ceeac8c77523a2176ee8d647f` |
| 21 | `theorem` | [restrict_Ioi_eq_restrict_Ici](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/restrict-ioi-eq-restrict-ici--f8e90f5142e756b318c7bfc9.md) | 112 | `result-track:f8e90f5142e756b318c7bfc9f9a9aaa61f5f9e3d846da461f60cc4a7cb083137` |
| 22 | `theorem` | [restrict_Ioo_eq_restrict_Ioc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/restrict-ioo-eq-restrict-ioc--30233fd3035a5d54e901e504.md) | 115 | `result-track:30233fd3035a5d54e901e504a6d5fc6b9cd393daa532c0d4aff17929653d3e0f` |
| 23 | `theorem` | [restrict_Ioc_eq_restrict_Icc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/restrict-ioc-eq-restrict-icc--1007d5b53ee56f8ef00d4946.md) | 118 | `result-track:1007d5b53ee56f8ef00d49469d0b4f849c807f9f1499c2148ef36515764218d8` |
| 24 | `theorem` | [restrict_Ioo_eq_restrict_Ico](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/restrict-ioo-eq-restrict-ico--53435adb13513fa8a3e72896.md) | 121 | `result-track:53435adb13513fa8a3e72896371aaace3021b702f667eeded4293ef7471339b2` |
| 25 | `theorem` | [restrict_Ioo_eq_restrict_Icc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/restrict-ioo-eq-restrict-icc--ab3f0ab6a81bde9fe6a844f6.md) | 124 | `result-track:ab3f0ab6a81bde9fe6a844f6efa3b7b2b99644121aae4fab9e18744e263d946d` |
| 26 | `theorem` | [restrict_Ico_eq_restrict_Icc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/restrict-ico-eq-restrict-icc--37486c0bdfe35124db555217.md) | 127 | `result-track:37486c0bdfe35124db5552178e2c47a446d8d90aaaae0407d62d783399f54f59` |
| 27 | `theorem` | [restrict_Ico_eq_restrict_Ioc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/restrict-ico-eq-restrict-ioc--bd51053ea8e43fa62bcd9153.md) | 130 | `result-track:bd51053ea8e43fa62bcd9153808df8576e8986b5f1e849a19fd53143dd78bf92` |
| 28 | `theorem` | [uIoc_ae_eq_interval](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.lean/declarations/uioc-ae-eq-interval--9295ef68f08c57f6ee5ea240.md) | 138 | `result-track:9295ef68f08c57f6ee5ea240c1f00653b32c52fc9620d82ef3aa960ae67ff985` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
