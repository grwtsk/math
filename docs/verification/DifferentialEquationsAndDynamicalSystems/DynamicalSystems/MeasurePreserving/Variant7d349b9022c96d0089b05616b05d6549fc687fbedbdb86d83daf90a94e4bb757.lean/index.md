# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.MeasurePreserving.Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b1f47f8b66e0e3f3eb8d778fafc9953da0eaabb",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b1f47f8b66e0e3f3eb8d778fafc9953da0eaabb`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean.json)

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
| 1 | `structure` | [MeasurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/measurepreserving--d47d9906b6c6b834ba26845f.md) | 44 | `declaration-track:d47d9906b6c6b834ba26845f604e6ecc4c01612c79aa799aa31bf0ea60c835bc` |
| 2 | `theorem` | [_root_.Measurable.measurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/root-measurable-measurepreserving--0ee513285d28910eeaacdecb.md) | 49 | `result-track:0ee513285d28910eeaacdecb63315ccec9e4a2bda3f1c7cbd00842484a31b970` |
| 3 | `theorem` | [id](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/id--831b1060a6b9cf881dc713ee.md) | 55 | `result-track:831b1060a6b9cf881dc713eea541ee29864148797fad5910064abc2914c988c4` |
| 4 | `theorem` | [aemeasurable](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/aemeasurable--a4e8b0626b7b859c3148835d.md) | 58 | `result-track:a4e8b0626b7b859c3148835dbfe1de2f7f65499438f64fed673ddd5703bfcd04` |
| 5 | `theorem` | [congr](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/congr--3c02cd09ec6bbdfc7e8eac6d.md) | 61 | `result-track:3c02cd09ec6bbdfc7e8eac6d20e392233188952f5964dc82850f76bb0f11d597` |
| 6 | `theorem` | [of_isEmpty](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/of-isempty--7d538687227d3dc72e8b5a24.md) | 68 | `result-track:7d538687227d3dc72e8b5a247c5f900eb29dd649aaf359ca2753cd2dfa7e6026` |
| 7 | `theorem` | [symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/symm--f08b1609be83cbdb650d493b.md) | 72 | `result-track:f08b1609be83cbdb650d493b9645baa041cdbb65c23d6a1b0f87c2f5f951ebbd` |
| 8 | `theorem` | [restrict_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/restrict-preimage--7b480218b4a6760c074e162a.md) | 77 | `result-track:7b480218b4a6760c074e162aaf5cec66cc63e8b6a4c800575bb14fc96dc85754` |
| 9 | `theorem` | [restrict_preimage_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/restrict-preimage-emb--993f4615efc8869db6385a42.md) | 81 | `result-track:993f4615efc8869db6385a423f50aa931f4c428a133d2d05d363fe16bda14bdf` |
| 10 | `theorem` | [restrict_image_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/restrict-image-emb--9ed8f54a7b941b96a4b527a6.md) | 86 | `result-track:9ed8f54a7b941b96a4b527a6a3560bf5dbd4bd522d98d8b7bd02c44f420a29a0` |
| 11 | `theorem` | [aemeasurable_comp_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/aemeasurable-comp-iff--d13b0d0b41f687844893433f.md) | 90 | `result-track:d13b0d0b41f687844893433f93aaed74b72deb3b5e1b6616c2248ad96030454c` |
| 12 | `theorem` | [quasiMeasurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/quasimeasurepreserving--e0ab8a6f71fd498d7c0cd2ae.md) | 94 | `result-track:e0ab8a6f71fd498d7c0cd2aeb3c11f2d55d13f45dfa0618e52369998325f3f22` |
| 13 | `theorem` | [comp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/comp--7e11cce1a36281efb18e83e5.md) | 98 | `result-track:7e11cce1a36281efb18e83e50b87b8383d0902aa812484e03ee7b1fdcfe6585c` |
| 14 | `theorem` | [map_of_comp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/map-of-comp--58ffb60992296fef382a1f2a.md) | 102 | `result-track:58ffb60992296fef382a1f2aaec08af195b1e9861b9684c697a7d2e1eafa7f25` |
| 15 | `theorem` | [of_semiconj](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/of-semiconj--5cb82d1814ee1948cd29c48c.md) | 107 | `result-track:5cb82d1814ee1948cd29c48c952b4e04e0fe8f3f1847444db401ab01a43de795` |
| 16 | `theorem` | [trans](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/trans--feb7dc74afdb40b5df1a6422.md) | 115 | `result-track:feb7dc74afdb40b5df1a6422c3750d93c01fa54310b627e1700d32dcd9c76525` |
| 17 | `theorem` | [comp_left_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/comp-left-iff--302119c5f23142b95e2d692c.md) | 121 | `result-track:302119c5f23142b95e2d692cf34412d27f839f222924d0fb91dc10c6178d8629` |
| 18 | `theorem` | [comp_right_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/comp-right-iff--20f997a6b0fc8ad3d3434a9c.md) | 127 | `result-track:20f997a6b0fc8ad3d3434a9c2d1c02d85a8346dcc06bd72fbd87dcc431a1bdde` |
| 19 | `theorem` | [sigmaFinite](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/sigmafinite--738f521a310e2d288331d807.md) | 133 | `result-track:738f521a310e2d288331d807255896880e0bc0b67461b1f7305af5db2379ce18` |
| 20 | `theorem` | [sfinite](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/sfinite--51830033a7e595f3be655286.md) | 137 | `result-track:51830033a7e595f3be65528678dd9cd98763707390cfa71ef90534787db29ffb` |
| 21 | `theorem` | [measure_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/measure-preimage--53223adbafd0b94463c6b86a.md) | 142 | `result-track:53223adbafd0b94463c6b86a752f59190999976ab53b537327f5a2540c9767e8` |
| 22 | `theorem` | [measureReal_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/measurereal-preimage--49e082a8c23f431355bbae6d.md) | 147 | `result-track:49e082a8c23f431355bbae6d903eca9466fdbac691633fd45fab6a22f09c9e3a` |
| 23 | `theorem` | [measure_preimage_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/measure-preimage-emb--54aeb0d3516ada859a9201b1.md) | 151 | `result-track:54aeb0d3516ada859a9201b15937d7008d4fd33734fd8f4540121298b9a3f857` |
| 24 | `theorem` | [measure_preimage_equiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/measure-preimage-equiv--9fabdbd9eb6996695324ef9f.md) | 155 | `result-track:9fabdbd9eb6996695324ef9fd28b2ecdff06bb92c2c08daebb14b94810cdc8ca` |
| 25 | `theorem` | [measure_preimage_le](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/measure-preimage-le--1bda8caf42da8f6b79db442b.md) | 159 | `result-track:1bda8caf42da8f6b79db442b6f1be472ba32372a373cb1584d07a7444d4090f8` |
| 26 | `theorem` | [preimage_null](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/preimage-null--49ae0fb42e9e0f6a39e14fb0.md) | 164 | `result-track:49ae0fb42e9e0f6a39e14fb09b237d339f7723d9c775f8656085a996ee3b3a81` |
| 27 | `theorem` | [aeconst_comp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/aeconst-comp--a30aa42afba069f1a8647120.md) | 168 | `result-track:a30aa42afba069f1a86471208aa0bc2791ebf9c526282dc42abe380507dfc4a8` |
| 28 | `theorem` | [aeconst_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/aeconst-preimage--97a262d471960343cfac079b.md) | 175 | `result-track:97a262d471960343cfac079bd6b6da54ce8c33f5fe2173bbbaca286dea6aef94` |
| 29 | `theorem` | [add_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/add-measure--cec1969d77adbbb4936613c9.md) | 180 | `result-track:cec1969d77adbbb4936613c9be8a845ba38d26b543e91a01bc886f2c24d08043` |
| 30 | `theorem` | [smul_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/smul-measure--bea576d1883af975e0e8ff19.md) | 185 | `result-track:bea576d1883af975e0e8ff1989933610ca1fdf5663dd427336b619f07a2d2707` |
| 31 | `theorem` | [iterate](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/iterate--ead3b986ef6cacb66f0c2d12.md) | 192 | `result-track:ead3b986ef6cacb66f0c2d129389eed0b47e55f091702f7c28dc5a7c7cc260e6` |
| 32 | `lemma` | [measure_symmDiff_preimage_iterate_le](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/measure-symmdiff-preimage-iterate-le--4c8c7504a8c77d3f4fa13d55.md) | 198 | `result-track:4c8c7504a8c77d3f4fa13d5549825c2d038f0d6ffbea57885914a295d027bdaa` |
| 33 | `theorem` | [exists_mem_iterate_mem_of_measure_univ_lt_mul_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/exists-mem-iterate-mem-of-measure-univ-lt-mul-measure--8211c665d56ca5cc3287bc2e.md) | 212 | `result-track:8211c665d56ca5cc3287bc2e0b45d06afafb9405e7de01d257953fe81ac7d7fb` |
| 34 | `theorem` | [exists_mem_iterate_mem](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/exists-mem-iterate-mem--115edd8a5531f879d09571ba.md) | 231 | `result-track:115edd8a5531f879d09571ba284a0f8b0551dd4f675fd0a5c0593a8c7a8769a1` |
| 35 | `lemma` | [measurePreserving_subtype_coe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/measurepreserving-subtype-coe--62e99738b17c8083dbd6038a.md) | 239 | `result-track:62e99738b17c8083dbd6038af9445945a04e9aeac113b877013b78050594acab` |
| 36 | `theorem` | [measurePreserving_symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant7d349b9022c96d0089b05616b05d6549fc687fbedbdb86d83daf90a94e4bb757.lean/declarations/measurepreserving-symm--a621543387ece8feac432ae2.md) | 246 | `result-track:a621543387ece8feac432ae2937ba3910c18bb35226ad27cb244e3c565a29726` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
