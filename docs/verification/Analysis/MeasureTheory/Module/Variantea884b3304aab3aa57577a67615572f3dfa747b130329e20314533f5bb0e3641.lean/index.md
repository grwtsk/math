# Verification target: GRWTSK.Analysis.MeasureTheory.Module.Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7e17e01ed1a5a60f33389dc7703852b5086e8f6",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7e17e01ed1a5a60f33389dc7703852b5086e8f6`.

Source path: `GRWTSK/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/instance--5b2347a3736dde49a10f4aea.md) | 30 | `declaration-track:5b2347a3736dde49a10f4aea41aa73e742c8dcda0d1860d38a4439473e3dec39` |
| 2 | `theorem` | [zero_toOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/zero-tooutermeasure--1abd0ccd6273aba3ce203e7e.md) | 36 | `result-track:1abd0ccd6273aba3ce203e7e0d51fd34b6f420a7c40b016737f13e3380a81b00` |
| 3 | `theorem` | [coe_zero](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/coe-zero--103deecb95957b5e3e8e21b9.md) | 40 | `result-track:103deecb95957b5e3e8e21b99e284532cc3fcab9da151ff95c847b1539aea4ee` |
| 4 | `lemma` | [_root_.MeasureTheory.OuterMeasure.toMeasure_zero](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/root-measuretheory-outermeasure-tomeasure-zero--8f3dd1a7ce8054eaafa7bc60.md) | 44 | `result-track:8f3dd1a7ce8054eaafa7bc60daca619e6e0bf96b00c8a8d49684c8130cbbd714` |
| 5 | `lemma` | [_root_.MeasureTheory.OuterMeasure.toMeasure_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/root-measuretheory-outermeasure-tomeasure-eq-zero--a41d0f93afbd6b06b5d70d01.md) | 50 | `result-track:a41d0f93afbd6b06b5d70d01023867788e417221912df21350c7cde05a3410fc` |
| 6 | `lemma` | [apply_eq_zero_of_isEmpty](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/apply-eq-zero-of-isempty--bd97621045bff6721c69d6b9.md) | 56 | `result-track:bd97621045bff6721c69d6b9f00786f9f32d1672acad33abb75597b5f97fd3c1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/instance--9e20bcb4e3e7e08ce497ac6d.md) | 60 | `declaration-track:9e20bcb4e3e7e08ce497ac6d1dc3baf85b731e00c3ee307408143457116ab93b` |
| 8 | `theorem` | [eq_zero_of_isEmpty](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/eq-zero-of-isempty--8249e6a21344c949b5006147.md) | 63 | `result-track:8249e6a21344c949b50061477e074cf6d4a398b26394c04eef2c63b5a17adcd8` |
| 9 | `theorem` | [ofMeasurable_zero](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/ofmeasurable-zero--863a11d7b326cd8272c33f04.md) | 67 | `result-track:863a11d7b326cd8272c33f048dedc1b8493f88333aa2eb153ffe27ebdce0277f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/instance--b79dd025459a7d080d0072c7.md) | 71 | `declaration-track:b79dd025459a7d080d0072c70b81520f5caaa65129cfd72f69524f1654338b08` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/instance--eb21d0ed2c2e96e9eac36ebb.md) | 74 | `declaration-track:eb21d0ed2c2e96e9eac36ebbee690a72d703bd7965f0c2c7178461d693394719` |
| 12 | `theorem` | [add_toOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/add-tooutermeasure--4f3e126ba09869e0cb6d0cb1.md) | 83 | `result-track:4f3e126ba09869e0cb6d0cb1c66f2eb949b95a7c8e1f4a13293afc47ef76d712` |
| 13 | `theorem` | [coe_add](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/coe-add--f14477f2a086763787dab119.md) | 88 | `result-track:f14477f2a086763787dab1195b4db4194475b782dc8d7f6b0e69b20df34bf44a` |
| 14 | `theorem` | [add_apply](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/add-apply--601b88a4312e935b7a3b9c7b.md) | 91 | `result-track:601b88a4312e935b7a3b9c7b0eced1c96d9a92877d03e531a19869e592509071` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/instance--997722c43c17d76424993628.md) | 99 | `declaration-track:997722c43c17d764249936281e44bb845c909f6bfa0374d13b4213dc1fecf596` |
| 16 | `theorem` | [smul_toOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/smul-tooutermeasure--5681701004eaabb5babd0987.md) | 108 | `result-track:5681701004eaabb5babd0987cb3ef51e8097f5dd3f1ce603b9a22c54d1fbe6fb` |
| 17 | `theorem` | [coe_smul](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/coe-smul--5edf10b351d9350977bfbe9b.md) | 113 | `result-track:5edf10b351d9350977bfbe9bb4fb20b676f09f467df49c18e67467fe3980f47f` |
| 18 | `lemma` | [coe_nnreal_smul](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/coe-nnreal-smul--37fc1e72b45c84906cd00b60.md) | 117 | `result-track:37fc1e72b45c84906cd00b606ecdd6bff9ee24182770cb1186eba391447b34f5` |
| 19 | `theorem` | [smul_apply](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/smul-apply--ffc876dd5efa25d6142ec267.md) | 120 | `result-track:ffc876dd5efa25d6142ec267f6c83214be3e8a0022b3601a7c1bce4f14347d59` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/instance--5727591ba14e2d1a158736f5.md) | 124 | `declaration-track:5727591ba14e2d1a158736f5b1ec9e5e8c535b2294a80e62ccb5fdf8b268be70` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/instance--74d9b99dcf40ec4da92176b0.md) | 128 | `declaration-track:74d9b99dcf40ec4da92176b0e2cd3496b481e14ea927c0c7c5211ebcb202f27d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/instance--15a7c9d12abfb77111ae63d4.md) | 132 | `declaration-track:15a7c9d12abfb77111ae63d4da1225155bf7d63d8b12dc5c4a3ddc62eb1187ac` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/instance--d5c8bbff0f20bc997a3981fd.md) | 138 | `declaration-track:d5c8bbff0f20bc997a3981fddd7c81b246470714d379a64ee3e999c8ac630f41` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/instance--31b492d1f0b4b1b19eec7362.md) | 141 | `declaration-track:31b492d1f0b4b1b19eec73620df5109c9a5955828021fc64b9143fe5c43d9fe6` |
| 25 | `def` | [coeAddHom](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/coeaddhom--9804286b58a4f6eb846c2cd7.md) | 146 | `declaration-track:9804286b58a4f6eb846c2cd714f5405c2a9af1044488b2ed28e3e42f7d258f7a` |
| 26 | `theorem` | [coeAddHom_apply](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/coeaddhom-apply--78aff1cf69a5ec95f0c33c46.md) | 152 | `result-track:78aff1cf69a5ec95f0c33c462758a93e932e26f80cb6174292736bbd992088fa` |
| 27 | `theorem` | [coe_finsetSum](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/coe-finsetsum--3c1a1a1801b2e6c9a64bc102.md) | 155 | `result-track:3c1a1a1801b2e6c9a64bc1027ac7ad76c1e336397edb570e0cc419ea3c29b74f` |
| 28 | `theorem` | [finsetSum_apply](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/finsetsum-apply--f24de6e08e74b7c33da232f7.md) | 160 | `result-track:f24de6e08e74b7c33da232f746e8b47e2baa39a5ed6e86fa279daf8ec3859d1c` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/instance--22a5764ea23b4946520d7deb.md) | 165 | `declaration-track:22a5764ea23b4946520d7debd1eb1a9bfdfe473df6635f96b6d999c3609c0ad1` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/instance--0e82400cb9b362bd2150a1dc.md) | 170 | `declaration-track:0e82400cb9b362bd2150a1dc35952b61af781d075a4cdb643e197832144c61aa` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/instance--2a850e082298a3eb43690ed8.md) | 174 | `declaration-track:2a850e082298a3eb43690ed8ce029df1597947ed92b0c6be7613b1b907851494` |
| 32 | `lemma` | [ennreal_smul_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/ennreal-smul-eq-zero--4cd711bbba2da57a32194d78.md) | 178 | `result-track:4cd711bbba2da57a32194d78aa7ba9e392eb9309862b40db96ee9a0a5badc8a8` |
| 33 | `theorem` | [coe_nnreal_smul_apply](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/coe-nnreal-smul-apply--ef863cf2c8fa9b9bf24e3b82.md) | 182 | `result-track:ef863cf2c8fa9b9bf24e3b82cdf44a4999df2d452a0bbd6f3a814bc6c5650007` |
| 34 | `theorem` | [nnreal_smul_coe_apply](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/nnreal-smul-coe-apply--adac3a7124a10e28a8683bcc.md) | 187 | `result-track:adac3a7124a10e28a8683bcc6ac33301be99f6ef6f14bf7c569a9c06d293dcd0` |
| 35 | `theorem` | [ae_smul_measure](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/ae-smul-measure--f070a37d05a57d1e5c6bd5af.md) | 191 | `result-track:f070a37d05a57d1e5c6bd5afe2dea0ecdfa77488afe45287e9830ac977d20fa0` |
| 36 | `theorem` | [ae_smul_measure_le](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/ae-smul-measure-le--5f5f0de3eb236fddcf10224e.md) | 195 | `result-track:5f5f0de3eb236fddcf10224e41bcea64a6a6b5e5f7bede48caa1be7965fc8033` |
| 37 | `lemma` | [ae_ennreal_smul_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/ae-ennreal-smul-measure-iff--1803d5a26aa38c9e21bde76f.md) | 198 | `result-track:1803d5a26aa38c9e21bde76fe75dba555d33e82ea22cbd2d352f0ce49b162948` |
| 38 | `lemma` | [ae_ennreal_smul_measure_eq](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/ae-ennreal-smul-measure-eq--f540ca4f3ef198ecad0bc2bc.md) | 201 | `result-track:f540ca4f3ef198ecad0bc2bc0f0a4cf437ae161a5de871992de8716fd63ab9fc` |
| 39 | `lemma` | [ae_smul_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/ae-smul-measure-iff--f021a071d931d9600a1e4c0a.md) | 204 | `result-track:f021a071d931d9600a1e4c0ac9db6a736e61d6933915366b775f200d483c06f5` |
| 40 | `lemma` | [ae_smul_measure_eq](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/ae-smul-measure-eq--f7605e660f8b5000629bae5e.md) | 209 | `result-track:f7605e660f8b5000629bae5e9d7f980ce8cc3a9e0c14f2fd9456da92f24c9aa1` |
| 41 | `theorem` | [measure_eq_left_of_subset_of_measure_add_eq](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/measure-eq-left-of-subset-of-measure-add-eq--d913e69e73dfd50fb1a24877.md) | 214 | `result-track:d913e69e73dfd50fb1a24877e41dba7f12fba45f75b24c710eef79494595d038` |
| 42 | `theorem` | [measure_eq_right_of_subset_of_measure_add_eq](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/measure-eq-right-of-subset-of-measure-add-eq--a4729aff27d7e395dc543764.md) | 224 | `result-track:a4729aff27d7e395dc5437640ad4764260ddf6ccaa955716321a70db0f5a7a2f` |
| 43 | `theorem` | [measure_toMeasurable_add_inter_left](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/measure-tomeasurable-add-inter-left--7c71568fd21ff421ad13d9b6.md) | 229 | `result-track:7c71568fd21ff421ad13d9b615ebf73efb3c17d81a55f83d3abeac83d4afb565` |
| 44 | `theorem` | [measure_toMeasurable_add_inter_right](../../../../../mathematics/Analysis/MeasureTheory/Module/Variantea884b3304aab3aa57577a67615572f3dfa747b130329e20314533f5bb0e3641.lean/declarations/measure-tomeasurable-add-inter-right--f3c601461571a9068b7213c7.md) | 239 | `result-track:f3c601461571a9068b7213c7604ef0bbe72dd8acaac9cff379b470c102e0d844` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
