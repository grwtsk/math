# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceReflectionDuality.Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "314df3f28575c5934ce1505dde95b0b161765219",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `314df3f28575c5934ce1505dde95b0b161765219`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Arithmetic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Monotonicity` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ComplexL2](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/complexl2--7bb4524edc634133c428076f.md) | 11 | `declaration-track:7bb4524edc634133c428076fa6ebe4d8b92dbb091a08e2a37f758fc398cf6399` |
| 2 | `def` | [signSymbol](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/signsymbol--4ccd11cb38a4adc6f35f093b.md) | 14 | `declaration-track:4ccd11cb38a4adc6f35f093bef4f28080b430cc6cf3f1088640d4394d7f2028d` |
| 3 | `theorem` | [signSymbol_measurable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/signsymbol-measurable--4b668f583f6a9e5494e868fe.md) | 16 | `result-track:4b668f583f6a9e5494e868fec44f681c15b6bf216667e2c2c1d06f8275aa0f11` |
| 4 | `theorem` | [signSymbol_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/signsymbol-norm--75cb17cab6c7c9efeeda9aa6.md) | 19 | `result-track:75cb17cab6c7c9efeeda9aa613a83777b4509096772dae37e07fe42649a573ff` |
| 5 | `theorem` | [multiply_memLp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/multiply-memlp--337ab82b20a60bc1b4ba2af9.md) | 23 | `result-track:337ab82b20a60bc1b4ba2af9992d51138bad8ba020286c95e9e408da61284688` |
| 6 | `def` | [multiply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/multiply--142d8f6de7ab0c33303ba1ba.md) | 29 | `declaration-track:142d8f6de7ab0c33303ba1ba8d872d59063b30df91023842a8082e1aca84986f` |
| 7 | `theorem` | [multiply_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/multiply-ae--02c4c0ddc51247f97b9ebdc1.md) | 33 | `result-track:02c4c0ddc51247f97b9ebdc154c8b7b9f32bb2a628307a1536581908eae74571` |
| 8 | `def` | [multiplyLI](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/multiplyli--29c17ed98db1a66ba7d6a949.md) | 38 | `declaration-track:29c17ed98db1a66ba7d6a9493bfb179e0d5fa0065faa467b5e9ef058dcde9317` |
| 9 | `def` | [signMultiplierLI](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/signmultiplierli--ef0da75756a1b28241aef8bc.md) | 62 | `declaration-track:ef0da75756a1b28241aef8bc14d5ae5ee5f157c098ef6b81ac7beacd56ed7bdd` |
| 10 | `theorem` | [signMultiplierLI_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/signmultiplierli-coe-ae--bd4ea88100279e18cab4eb47.md) | 65 | `result-track:bd4ea88100279e18cab4eb471ce4d9981a92221181a658471354d7a4cc66fed9` |
| 11 | `theorem` | [signMultiplier_involutive](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/signmultiplier-involutive--65f79650d846339ff5f75a45.md) | 69 | `result-track:65f79650d846339ff5f75a45e60f71a11a8f657144498362213ba57e9447d187` |
| 12 | `def` | [signMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/signmultiplier--34af19867b2bfb595eb1ce28.md) | 78 | `declaration-track:34af19867b2bfb595eb1ce28854daaf64b02e9aed867601c3454e016b24ee5ea` |
| 13 | `theorem` | [signMultiplier_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/signmultiplier-coe-ae--385dac7b1bd3a074999fd286.md) | 82 | `result-track:385dac7b1bd3a074999fd286abb04fdbd4a232bd51d283150099a90e576d7841` |
| 14 | `def` | [reflectionLI](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/reflectionli--d7bec9c21047724e6e836f5f.md) | 87 | `declaration-track:d7bec9c21047724e6e836f5fd0b0d1dee32334c9a079ff138caaf6a0e96270c9` |
| 15 | `theorem` | [reflectionLI_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/reflectionli-coe-ae--420911188c3ca3f0968e5af4.md) | 91 | `result-track:420911188c3ca3f0968e5af4da10bc89be003afeb19874ccc301a2138613167b` |
| 16 | `theorem` | [reflectionLI_involutive](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/reflectionli-involutive--19a1f1a3e567fbcdb61ba362.md) | 95 | `result-track:19a1f1a3e567fbcdb61ba362c0ffed54d69eff153c5eaaac956c71988412a9fa` |
| 17 | `def` | [reflection](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/reflection--a9171c0735403dcb1443d672.md) | 103 | `declaration-track:a9171c0735403dcb1443d672ba11f4daddd8aac4a1626e6295f136863ae19d4d` |
| 18 | `theorem` | [reflection_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/reflection-coe-ae--9d3950f60efc5c43db5436d4.md) | 107 | `result-track:9d3950f60efc5c43db5436d4d464881a43328af5a70dad3ae919c6188244262c` |
| 19 | `theorem` | [reflection_toLp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/reflection-tolp--3f0d1036967ea75d8a3daaee.md) | 111 | `result-track:3f0d1036967ea75d8a3daaee0f2f2fd2acd6b3033df29ed6085ffb3a3901e655` |
| 20 | `theorem` | [fourier_reflection](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/fourier-reflection--89d0727e01739800cdd25174.md) | 126 | `result-track:89d0727e01739800cdd251740a60d1add5f4ffd622c95e461b365a8c3905bef0` |
| 21 | `theorem` | [signSymbol_neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/signsymbol-neg--8d059f71ae9a3da6c333e7a2.md) | 144 | `result-track:8d059f71ae9a3da6c333e7a2225e0b5bd033ba0bf0e48164cbed8de8065c6468` |
| 22 | `theorem` | [reflection_signMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/reflection-signmultiplier--6946fe5ec1fbeb829a3ae1ff.md) | 152 | `result-track:6946fe5ec1fbeb829a3ae1ff022669a22529b7029ea981369b60c6b845093c63` |
| 23 | `def` | [signFourierDuality](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/signfourierduality--5eaf5be4feb30fdf32c29bb8.md) | 167 | `declaration-track:5eaf5be4feb30fdf32c29bb87a7c4373153d795906b943f76fb7aac629dbb3e0` |
| 24 | `theorem` | [duality_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/duality-fourier--af26be03d52bfe03b0fd5911.md) | 170 | `result-track:af26be03d52bfe03b0fd5911ecc31624ad5b99741d1db3292cbe144da322164f` |
| 25 | `theorem` | [duality_fourier_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/duality-fourier-coe-ae--afcd43756bb8012b9ac62d33.md) | 173 | `result-track:afcd43756bb8012b9ac62d3353b79aedd9a2df104b94e56d73532fa1a7ec1b6a` |
| 26 | `theorem` | [duality_involutive](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/duality-involutive--645de298b27f5d78c3064037.md) | 178 | `result-track:645de298b27f5d78c3064037557b01705dc93f46c242e1fdc1873899258dcd75` |
| 27 | `theorem` | [reflection_duality_anticommute](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/reflection-duality-anticommute--9a81b2eec1e4a56c9c5eb27d.md) | 185 | `result-track:9a81b2eec1e4a56c9c5eb27d31d17d113e143a8c83fb60df75bc469ea191d9ad` |
| 28 | `def` | [translationLI](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/translationli--7a8c50cafca59de8d9ddd45f.md) | 193 | `declaration-track:7a8c50cafca59de8d9ddd45f7720af548d9440f45cec2d26bd1c71114a777ed6` |
| 29 | `theorem` | [translationLI_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/translationli-coe-ae--4bb09734031b8d5c42ae7f9b.md) | 196 | `result-track:4bb09734031b8d5c42ae7f9bdc488fab040cb9ea667bfae14ded83fcb1168091` |
| 30 | `theorem` | [translationLI_inverse](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/translationli-inverse--20c859d289c62dba134a01b2.md) | 200 | `result-track:20c859d289c62dba134a01b2200ed664dbf3612d8baa2ba099c25bd9edacd6a7` |
| 31 | `def` | [translation](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/translation--6c6688349037cec91b9c54e8.md) | 211 | `declaration-track:6c6688349037cec91b9c54e86e163a111f4e15875b197a2673b0575cd638bfb4` |
| 32 | `theorem` | [translation_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/translation-coe-ae--b3f15fba559902e495de79ad.md) | 215 | `result-track:b3f15fba559902e495de79ad17b9bc97aed01ca43b50e55b6af024859d25dfc2` |
| 33 | `def` | [standardSignDuality](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/standardsignduality--bdf65c665866b73038abefe2.md) | 219 | `declaration-track:bdf65c665866b73038abefe2068c674fdf1f064978e58e4f21db5d720564c793` |
| 34 | `def` | [angularSignDuality](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/angularsignduality--7885d823b591d3e36c8d3368.md) | 222 | `declaration-track:7885d823b591d3e36c8d3368908ea1882a376a3543b74139100d4f084e0a2b19` |
| 35 | `theorem` | [angular_duality_eq_neg_standard](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/angular-duality-eq-neg-standard--1f245fec278dfa4397968f28.md) | 225 | `result-track:1f245fec278dfa4397968f2899b1698c75ad2f3641d3ba3ce4f68cdd36f26fdd` |
| 36 | `theorem` | [angular_duality_involutive](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/angular-duality-involutive--ef9cd9d40cd849a86221930c.md) | 228 | `result-track:ef9cd9d40cd849a86221930ced53c4b7d6a905eb0611383a5c3fb31a24f9b42c` |
| 37 | `theorem` | [angular_reflection_duality_anticommute](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/angular-reflection-duality-anticommute--71f557d927951d11b3328448.md) | 233 | `result-track:71f557d927951d11b33284484b82c777f6c8341eac55bf397a746242bf7f43c3` |
| 38 | `theorem` | [stationary_inner_dual](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/stationary-inner-dual--6f2f0038e265a191ee4f896a.md) | 238 | `result-track:6f2f0038e265a191ee4f896af15908282fc5864fc98195ae507a6358eaa625de` |
| 39 | `theorem` | [angular_stationary_inner_dual](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/angular-stationary-inner-dual--67aa2353699427f17116606e.md) | 242 | `result-track:67aa2353699427f17116606eb5acb56dca171464ea18934c58116239ff184691` |
| 40 | `theorem` | [reflected_pairing_dual](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/reflected-pairing-dual--494a6526498710b2da800d04.md) | 247 | `result-track:494a6526498710b2da800d043cda144898112697b90197fd2f28ef6c4ac1ecc9` |
| 41 | `theorem` | [angular_reflected_pairing_dual](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/angular-reflected-pairing-dual--4d536a3b016d9228c3a0482c.md) | 252 | `result-track:4d536a3b016d9228c3a0482cccfbc9c078a6ab53f3ff2dcad594c97014e1ea1f` |
| 42 | `theorem` | [duality_inner_symmetric](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/duality-inner-symmetric--166d2e67996c4eaf9cfbe8f8.md) | 258 | `result-track:166d2e67996c4eaf9cfbe8f854c00dc9c9364e48ed273a98ef7c3c4422f536c5` |
| 43 | `theorem` | [duality_selfAdjoint](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/duality-selfadjoint--5c7256eb91fbf72650455a25.md) | 265 | `result-track:5c7256eb91fbf72650455a25c04877d5c4ca11b10b015f954a6e2f8e1d3c5a3a` |
| 44 | `theorem` | [angular_duality_selfAdjoint](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd79d44d3e47702fd4f1fdc07942fcc59e134702ab1ac6a9c007173d1430fbf85.lean/declarations/angular-duality-selfadjoint--3f4ac8024e17a73828e8441c.md) | 268 | `result-track:3f4ac8024e17a73828e8441cce99d8ee68de7ed706337ec7ca22b1283676d348` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
