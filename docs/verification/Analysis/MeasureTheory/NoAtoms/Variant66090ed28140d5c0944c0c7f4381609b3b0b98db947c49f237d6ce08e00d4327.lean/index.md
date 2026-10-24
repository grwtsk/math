# Verification target: GRWTSK.Analysis.MeasureTheory.NoAtoms.Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d59c45d7da4b753786e6ea37e5b64b3017a79240",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d59c45d7da4b753786e6ea37e5b64b3017a79240`.

Source path: `GRWTSK/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Restrict` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NoAtoms](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/noatoms--408e7df5ce51542c89a5b3c2.md) | 37 | `declaration-track:408e7df5ce51542c89a5b3c25b24e43feb52f10a94d545b3556716b291c98ce8` |
| 2 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.NoAtoms.Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.Set.Subsingleton.measure_zero](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/root-grwtsk-analysis-measuretheory-noatoms-variantcf8da7a7b364c287c15834--d6fc4749fd169d6e0a5f8625.md) | 46 | `result-track:d6fc4749fd169d6e0a5f8625ad3bda7dbfbf5594655c019a9ad3d85b22387fd4` |
| 3 | `theorem` | [Measure.restrict_singleton'](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/measure-restrict-singleton--2bd200915b4247741577a453.md) | 50 | `result-track:2bd200915b4247741577a45369458770f2bd905a9e034a4e4c78caae60fb3da5` |
| 4 | `instance` | [Measure.restrict.instNoAtoms](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/measure-restrict-instnoatoms--51d0bfba05198a2eff78ec74.md) | 53 | `declaration-track:51d0bfba05198a2eff78ec741ca3b59b99aff2da9ba1b519bc18551dee64b076` |
| 5 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.NoAtoms.Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.Set.Countable.measure_zero](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/root-grwtsk-analysis-measuretheory-noatoms-variantcf8da7a7b364c287c15834--ef87afbc617ba862f9643b1a.md) | 60 | `result-track:ef87afbc617ba862f9643b1a161bdde2153e4fac4f3e3c7060ca62cd48fc1f57` |
| 6 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.NoAtoms.Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.Set.Countable.ae_notMem](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/root-grwtsk-analysis-measuretheory-noatoms-variantcf8da7a7b364c287c15834--2528f10f1f00df0583894389.md) | 65 | `result-track:2528f10f1f00df058389438915c82017bc44c00f4afbf5ffd126803a9b7c6408` |
| 7 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.NoAtoms.Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.Set.Countable.measure_restrict_compl](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/root-grwtsk-analysis-measuretheory-noatoms-variantcf8da7a7b364c287c15834--50949820b01c4e46ad20bd77.md) | 72 | `result-track:50949820b01c4e46ad20bd77cdd98e2cb74ae338cbcda3a25cba82da372c52c0` |
| 8 | `lemma` | [restrict_compl_singleton](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/restrict-compl-singleton--d712defb278e618013dd2ce7.md) | 77 | `result-track:d712defb278e618013dd2ce745314e97f5d0eeea2ae6ab641078c9916a98a088` |
| 9 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.NoAtoms.Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.Set.Finite.measure_zero](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/root-grwtsk-analysis-measuretheory-noatoms-variantcf8da7a7b364c287c15834--e96d6f4c1631b127b7fac9e8.md) | 80 | `result-track:e96d6f4c1631b127b7fac9e8673d2fc3a3e1e942786cb91f86c8137505d899d7` |
| 10 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.NoAtoms.Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.Finset.measure_zero](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/root-grwtsk-analysis-measuretheory-noatoms-variantcf8da7a7b364c287c15834--83099e4439d94c6f6c71192c.md) | 83 | `result-track:83099e4439d94c6f6c71192c4e5d2343320a9ae916e8d045ecaa7fb3e34b5dce` |
| 11 | `theorem` | [insert_ae_eq_self](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/insert-ae-eq-self--f3f91cbb5cd11294b8b0e05a.md) | 86 | `result-track:f3f91cbb5cd11294b8b0e05ae87ac08dfed96b8f1d77792f7b1c6130d300c59d` |
| 12 | `theorem` | [Iio_ae_eq_Iic](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/iio-ae-eq-iic--1fddc05dd45bbeb518d850e7.md) | 93 | `result-track:1fddc05dd45bbeb518d850e7478139ca239b37fc74cef74fdf5d126db81d242a` |
| 13 | `theorem` | [Ioi_ae_eq_Ici](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/ioi-ae-eq-ici--54f86d9b5fc15a37d3c797af.md) | 96 | `result-track:54f86d9b5fc15a37d3c797af82a68a5053f2aa28bd4ea6e4976224c231ef9a8f` |
| 14 | `theorem` | [Ioo_ae_eq_Ioc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/ioo-ae-eq-ioc--0cbf8b277b723bfaf45e7d84.md) | 99 | `result-track:0cbf8b277b723bfaf45e7d84d3a08e03a306c615055a8443002ebc2976486a9c` |
| 15 | `theorem` | [Ioc_ae_eq_Icc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/ioc-ae-eq-icc--6b60c71d0c868ce02989ada7.md) | 102 | `result-track:6b60c71d0c868ce02989ada739088e6cb6f84723c87d369eb6284da6e74d3e4b` |
| 16 | `theorem` | [Ioo_ae_eq_Ico](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/ioo-ae-eq-ico--50eb2b33f45a9add1fd01efc.md) | 105 | `result-track:50eb2b33f45a9add1fd01efc88a975fc7f92f3822437c8b1a048d412dcc1fe9d` |
| 17 | `theorem` | [Ioo_ae_eq_Icc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/ioo-ae-eq-icc--59a244f39d974b164f2c8539.md) | 108 | `result-track:59a244f39d974b164f2c853926919ac2e23301995c3750cceda4a92e89b2ab68` |
| 18 | `theorem` | [Ico_ae_eq_Icc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/ico-ae-eq-icc--df136093754ff5303e4cab3c.md) | 111 | `result-track:df136093754ff5303e4cab3ca2bc691d43a79df444acfa1f2b1fb8356fa53519` |
| 19 | `theorem` | [Ico_ae_eq_Ioc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/ico-ae-eq-ioc--8bea88c93242479d0f1c4b69.md) | 114 | `result-track:8bea88c93242479d0f1c4b69776223e43889996b740cb892c448b819c5917b8b` |
| 20 | `theorem` | [restrict_Iio_eq_restrict_Iic](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/restrict-iio-eq-restrict-iic--d8e185a7a3c5c9423ee60fd8.md) | 117 | `result-track:d8e185a7a3c5c9423ee60fd85573e7ad84743262c8dc267d3c26de2edb26a548` |
| 21 | `theorem` | [restrict_Ioi_eq_restrict_Ici](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/restrict-ioi-eq-restrict-ici--bf34bdd608f4ad1ba5a6b752.md) | 120 | `result-track:bf34bdd608f4ad1ba5a6b75279a85cdff8e7b1aed83cab0e7edffad2bf0ea7d2` |
| 22 | `theorem` | [restrict_Ioo_eq_restrict_Ioc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/restrict-ioo-eq-restrict-ioc--98187289f6bbf44a1133273d.md) | 123 | `result-track:98187289f6bbf44a1133273d2246e8d2ea48cf838ed58bdbece2c025825f786c` |
| 23 | `theorem` | [restrict_Ioc_eq_restrict_Icc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/restrict-ioc-eq-restrict-icc--00a9eba354455468f7e8319a.md) | 126 | `result-track:00a9eba354455468f7e8319a7bdeb1c3190a3182e192ef19193cb6396e9a5199` |
| 24 | `theorem` | [restrict_Ioo_eq_restrict_Ico](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/restrict-ioo-eq-restrict-ico--5ad9a20000b8b05f8e58389c.md) | 129 | `result-track:5ad9a20000b8b05f8e58389c9016276c57e5c98b049970d9c382b553807965a4` |
| 25 | `theorem` | [restrict_Ioo_eq_restrict_Icc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/restrict-ioo-eq-restrict-icc--97afda2aa57bbea038c66fbe.md) | 132 | `result-track:97afda2aa57bbea038c66fbef433ac3f1ad78db47f814f600d0d52c7c1e30762` |
| 26 | `theorem` | [restrict_Ico_eq_restrict_Icc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/restrict-ico-eq-restrict-icc--61b60b84d9d3f8b228e4129c.md) | 135 | `result-track:61b60b84d9d3f8b228e4129c67424f5ef6c201fe5be9b08c061beaea1acef834` |
| 27 | `theorem` | [restrict_Ico_eq_restrict_Ioc](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/restrict-ico-eq-restrict-ioc--437c1adf8a8170ffe1060ff6.md) | 138 | `result-track:437c1adf8a8170ffe1060ff68574b99bc6e75b213e007d7a4d252a40f7f1567e` |
| 28 | `theorem` | [uIoc_ae_eq_interval](../../../../../mathematics/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/declarations/uioc-ae-eq-interval--15637b7b40ee04045ae8acbd.md) | 146 | `result-track:15637b7b40ee04045ae8acbd179008937127c9e8a855452a6760113821edce71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
