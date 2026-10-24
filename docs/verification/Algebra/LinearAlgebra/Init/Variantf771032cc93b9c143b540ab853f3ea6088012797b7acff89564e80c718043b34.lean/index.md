# Verification target: GRWTSK.Algebra.LinearAlgebra.Init.Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c8edb599c09fbeac461dbedf7864010de1ebb30",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c8edb599c09fbeac461dbedf7864010de1ebb30`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean.json)

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
| 1 | `inductive` | [Rel](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/rel--4d7e83dd98479dd77a5ed664.md) | 88 | `declaration-track:4d7e83dd98479dd77a5ed664b320ece79b0249cfc2960b99062dc7f77d9a5aad` |
| 2 | `def` | [RelI](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/reli--465446c9620e9c8264e6c5cd.md) | 97 | `declaration-track:465446c9620e9c8264e6c5cd5880cdf66c14f0317d754b5986783f77b50e223b` |
| 3 | `def` | [ringCon](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/ringcon--af2ef1e77f2eb426136464a3.md) | 100 | `declaration-track:af2ef1e77f2eb426136464a3978f46aca9697ce877a71d9608956804c4779609` |
| 4 | `abbrev` | [DividedPowerAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dividedpoweralgebra--fb756849a3364d5cebaf6420.md) | 108 | `declaration-track:fb756849a3364d5cebaf64208c21acee1bae3a799159aee0535ccea688533b2e` |
| 5 | `lemma` | [mkAlgHom_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/mkalghom-surjective--f540f29b4ed87caca83f90c9.md) | 116 | `result-track:f540f29b4ed87caca83f90c9490bf91d69cc65c4543d43989879c27bbcf7d7a3` |
| 6 | `lemma` | [coe_C](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/coe-c--09daac90bb9863b25a469772.md) | 120 | `result-track:09daac90bb9863b25a469772a9ede0ff40f3308718a96567f85501336a76e239` |
| 7 | `lemma` | [mkAlgHom_C](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/mkalghom-c--529abecae0ed4f5053038c3c.md) | 125 | `result-track:529abecae0ed4f5053038c3cb4cd75d8c861fd4883b5070ff8908433f652f788` |
| 8 | `lemma` | [mkRingHom_C](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/mkringhom-c--059a84e4822c43c1e2339045.md) | 130 | `result-track:059a84e4822c43c1e2339045ee666feeaad9a40b2ecc8568ce73a36433b0014b` |
| 9 | `def` | [dp](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dp--0504e69e1c4f6394d0fd192f.md) | 136 | `declaration-track:0504e69e1c4f6394d0fd192f1dd3c64f1165f02c9c606e9cafd5036235aa0c1e` |
| 10 | `theorem` | [dp_def](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dp-def--9916f9b0a146e9685c5aba6d.md) | 138 | `result-track:9916f9b0a146e9685c5aba6d6638d9f754b17284d456b076844521d4ad8012c3` |
| 11 | `theorem` | [induction_on'](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/induction-on--d91cc4bfecbcd2e359616745.md) | 141 | `result-track:d91cc4bfecbcd2e3596167450f41bf7049370604a98483d93c727b99a6d12edd` |
| 12 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/induction-on--2829bdae0ca5157c23d6d8ba.md) | 156 | `result-track:2829bdae0ca5157c23d6d8ba49c7abad27f7d8538c9c0ac64863f6a08e0dba38` |
| 13 | `theorem` | [dp_zero](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dp-zero--ccb156c3c66773fed1044211.md) | 161 | `result-track:ccb156c3c66773fed104421112bafd8288d67c22dde6974dcd587fcdb5926970` |
| 14 | `theorem` | [dp_smul](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dp-smul--4f1e903bdfde26a8789b6fb7.md) | 165 | `result-track:4f1e903bdfde26a8789b6fb76da7a3416c34b3a730456cfcba91a5b3c2565bd4` |
| 15 | `theorem` | [dp_null](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dp-null--43b4798e128756769f98c7a2.md) | 169 | `result-track:43b4798e128756769f98c7a24c07720bb49983900e38088b59fed63b836ecb23` |
| 16 | `theorem` | [dp_null_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dp-null-of-ne-zero--da64842babec45cc48c86354.md) | 177 | `result-track:da64842babec45cc48c8635444bcfc26a5d761d616e28038afffa608517a1ac6` |
| 17 | `theorem` | [dp_mul](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dp-mul--e83f8730b9b69753d4343e6f.md) | 180 | `result-track:e83f8730b9b69753d4343e6f7e78218876f73d116a1c16a525a3a46c562c9c44` |
| 18 | `theorem` | [dp_add](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dp-add--1fc377dc34739c4f4ba653f2.md) | 185 | `result-track:1fc377dc34739c4f4ba653f2a16d0895b397d424e162c9a98fe2fdc853b93e7b` |
| 19 | `theorem` | [dp_sum](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dp-sum--e49423ed98d51d3d8aaa73a4.md) | 190 | `result-track:e49423ed98d51d3d8aaa73a409488cbac6f00c36e5fcd6150aa7972a634a5b12` |
| 20 | `theorem` | [dp_sum_smul](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dp-sum-smul--d9f46353445e7a6cd5f9ac50.md) | 196 | `result-track:d9f46353445e7a6cd5f9ac50c521a2212cd6029d3a64e68038de0b0a95272117` |
| 21 | `lemma` | [prod_dp](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/prod-dp--c3078d1e8ce7f227c8fe9455.md) | 204 | `result-track:c3078d1e8ce7f227c8fe9455b29e846e83ce898f4ca18135922b71987e960c1b` |
| 22 | `theorem` | [natFactorial_mul_dp_eq](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/natfactorial-mul-dp-eq--b481196099b4e72d0b9b2aa4.md) | 218 | `result-track:b481196099b4e72d0b9b2aa4567dabe8cfcad3db1a58c756d320ef9b17f12793` |
| 23 | `def` | [embed](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/embed--b67026d58efc0ee3e7d0b111.md) | 228 | `declaration-track:b67026d58efc0ee3e7d0b111703e424129c506411649a6c1403d5844498f4c99` |
| 24 | `theorem` | [embed_def](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/embed-def--9770cc1e4a1f544c6182e605.md) | 233 | `result-track:9770cc1e4a1f544c6182e605e9824e214722b9bd83fe4b64c8e6dc6c8492a09e` |
| 25 | `theorem` | [algHom_ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/alghom-ext-iff--557d0b8fbe719332eadab0fa.md) | 235 | `result-track:557d0b8fbe719332eadab0fa3cb8dad8429ea7a7f59373b29709d5dd7c82119c` |
| 26 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/alghom-ext--59fb8f0ea98b4f8df7d9d057.md) | 244 | `result-track:59fb8f0ea98b4f8df7d9d057c6281262c328ade7f0ba741ee8013ba6be66ca74` |
| 27 | `theorem` | [submodule_span_prod_dp_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/submodule-span-prod-dp-eq-top--a11d5c8225bedfacb17420f7.md) | 260 | `result-track:a11d5c8225bedfacb17420f7f7d5336a28bad2799cb721941b199f7e0b3edc47` |
| 28 | `lemma` | [pow_dp](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/pow-dp--c8ac49b2dc8337586bcf9226.md) | 300 | `result-track:c8ac49b2dc8337586bcf92269af2805dda953d4c96bca83ed37d1f3d61d7a7c6` |
| 29 | `theorem` | [lift'_imp](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/lift-imp--fd725de95810d325f4f65665.md) | 313 | `result-track:fd725de95810d325f4f656655a215c0df7f728dca485088e7a551bd98a977bf9` |
| 30 | `def` | [lift'](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/lift--230e3c4d65085c2543f7bba4.md) | 325 | `declaration-track:230e3c4d65085c2543f7bba4bf09ef3ecdaefaca4949a07b11260910bc89c238` |
| 31 | `theorem` | [lift'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/lift-apply--590db87c644c8e31970eadb8.md) | 335 | `result-track:590db87c644c8e31970eadb806522138e06bfe019f907943a0c09956ef44af6b` |
| 32 | `theorem` | [lift'_apply_dp](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/lift-apply-dp--ebcf971bb786a748455becd2.md) | 344 | `result-track:ebcf971bb786a748455becd22da10d462fc81786b23c9b474cdba9527ec3e6a2` |
| 33 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/lift--9e0c93aabae3d44316b5cb9d.md) | 355 | `declaration-track:9e0c93aabae3d44316b5cb9d8ff566522075c8996a3d4ee85b2b35abf9090cea` |
| 34 | `theorem` | [lift_apply](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/lift-apply--0d8453021b6870340e579826.md) | 368 | `result-track:0d8453021b6870340e5798269981764faded1f49a86808077b8a74525034f0a4` |
| 35 | `theorem` | [lift_apply_dp](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/lift-apply-dp--47eb2cee77fd8beb3a0474df.md) | 373 | `result-track:47eb2cee77fd8beb3a0474df66dcb5c20dc69cfaf74c12fe446391c134e2b85e` |
| 36 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/lift-unique--4ced333bc884138c7ae63b2b.md) | 376 | `result-track:4ced333bc884138c7ae63b2b0a716acfb6bb04c374c9381a8ef9aa866dc428f4` |
| 37 | `theorem` | [lift_embed_apply](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/lift-embed-apply--171f3dc90eb42c2203f097da.md) | 381 | `result-track:171f3dc90eb42c2203f097da3a58215d5e774d0bb4b9691d3c0f9432cbe67af5` |
| 38 | `theorem` | [embed_comp_lift](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/embed-comp-lift--4ecaa0611eb9737e95c8dece.md) | 385 | `result-track:4ecaa0611eb9737e95c8decef866fd44afb52c3411c86ec9abd482ef664eeaa6` |
| 39 | `lemma` | [dp_zero](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dp-zero--6e4b012c25ebcb7673fe3b26.md) | 400 | `result-track:6e4b012c25ebcb7673fe3b26b907b885f200e6db18438967245b67d341e0f1a3` |
| 40 | `lemma` | [dp_mul](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dp-mul--8614f54bb17e7d9ef2553181.md) | 402 | `result-track:8614f54bb17e7d9ef2553181312ccd346b7e650d810850a7bd1b326ee62d21ad` |
| 41 | `lemma` | [dp_add](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/dp-add--18a632591e11037c0169efa3.md) | 406 | `result-track:18a632591e11037c0169efa322d45d88c6007e0dafd441638d3fb00b27115ff8` |
| 42 | `lemma` | [LinearMap.dp_smul](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/linearmap-dp-smul--8f7d59b5fe034c6489dc036d.md) | 418 | `result-track:8f7d59b5fe034c6489dc036df0b25e925abd9268ba46e5689c95c48c57e931d4` |
| 43 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/map--f029bb9f7ed9d14539187f95.md) | 427 | `declaration-track:f029bb9f7ed9d14539187f95afecf3af686b8ab3058ecec2db4d418257bd6c97` |
| 44 | `theorem` | [map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/map-apply--ca06990cf333fa6bf21dd2cc.md) | 435 | `result-track:ca06990cf333fa6bf21dd2cc3bd39ccfb0a7f19633b098e2db13cac97bedef12` |
| 45 | `theorem` | [map_apply_dp](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/map-apply-dp--a0a0772776641aed4e1b3cec.md) | 440 | `result-track:a0a0772776641aed4e1b3cece29434d422372292cb4226be3651c092667fed49` |
| 46 | `theorem` | [map_embed_apply](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/map-embed-apply--046bca525eb6ac7c0e81dfa7.md) | 444 | `result-track:046bca525eb6ac7c0e81dfa7c71adc046af4d84fc9b38773347eb6e72796544e` |
| 47 | `theorem` | [lift_comp_embed](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/lift-comp-embed--711036c42a00ef72efe615c9.md) | 447 | `result-track:711036c42a00ef72efe615c92c96c4f10b59e27afcae59f6bf8c1fdd1546ae76` |
| 48 | `theorem` | [lift_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/lift-surjective--96b526204753082ac1922516.md) | 451 | `result-track:96b526204753082ac1922516a320efaa79349b1c43ba6b40ed7f427f9b4d871d` |
| 49 | `lemma` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/map-comp--a20f15999cf2915c79dc9522.md) | 477 | `result-track:a20f15999cf2915c79dc9522934b23fcd8f00b544054abc7fa0200fbeac6f798` |
| 50 | `lemma` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/map-id--98f4012ecb8689a26fb651b4.md) | 483 | `result-track:98f4012ecb8689a26fb651b4f766d0af4b885271b190c49624f9ebdb9af96171` |
| 51 | `def` | [mapEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/mapequiv--59b24414776e1c374e0e78cf.md) | 493 | `declaration-track:59b24414776e1c374e0e78cfd9c5a4de93e967aee78c9b301d059616e6b55eed` |
| 52 | `theorem` | [mapEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/mapequiv-symm--9d20570ee842d2c29260ca04.md) | 498 | `result-track:9d20570ee842d2c29260ca04703ba6e8ddc948a0bbd2e2dc992b9973342ed288` |
| 53 | `theorem` | [LinearEquiv.coe_lift](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/linearequiv-coe-lift--ee3e5b1ade21d7eacb2eb9d4.md) | 500 | `result-track:ee3e5b1ade21d7eacb2eb9d4f6c17ef578c513b32b7186d44dbb24604bf7b516` |
| 54 | `theorem` | [LinearEquiv.coe_lift_symm](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/linearequiv-coe-lift-symm--13b1f83b9722f02639f02894.md) | 502 | `result-track:13b1f83b9722f02639f02894b5b3af969308d1540ae7a6b932394496dcc9acd5` |
| 55 | `theorem` | [mapEquiv_refl](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/mapequiv-refl--83207f47055094f10f3d7d5b.md) | 505 | `result-track:83207f47055094f10f3d7d5bd461c45b5b2e72214dc76f7afc02ed6c029b037f` |
| 56 | `theorem` | [mapEquiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/Init/Variantf771032cc93b9c143b540ab853f3ea6088012797b7acff89564e80c718043b34.lean/declarations/mapequiv-trans--5de8725efb0e08c005ec8093.md) | 508 | `result-track:5de8725efb0e08c005ec809380b69036a77a8c6859a445e0b3787f4d3773bc7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
