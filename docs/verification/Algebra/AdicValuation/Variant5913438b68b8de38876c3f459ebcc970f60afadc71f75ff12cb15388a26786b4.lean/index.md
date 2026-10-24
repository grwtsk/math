# Verification target: GRWTSK.Algebra.AdicValuation.Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "074c3feec6c9b4af33d8d33a3d7cc253fd8791d5",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/index.md) · [Full source](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `074c3feec6c9b4af33d8d33a3d7cc253fd8791d5`.

Source path: `GRWTSK/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ExtendToLocalization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationSubring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ValuedField` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.TypeTags` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intValuationDef](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/intvaluationdef--cf3c9d719c9254ef20ab9b8a.md) | 78 | `declaration-track:cf3c9d719c9254ef20ab9b8a7146cdce4f910c3db399a5f3a760d4d6af232db4` |
| 2 | `theorem` | [intValuationDef_if_pos](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/intvaluationdef-if-pos--2961b8ed7297a0a2ccc0b13b.md) | 85 | `result-track:2961b8ed7297a0a2ccc0b13bfd9cd78add8a0d1c24c9fe4d0f9d6d60e873dcc2` |
| 3 | `theorem` | [intValuationDef_if_neg](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/intvaluationdef-if-neg--e811d1c790a32e2d78dbe633.md) | 89 | `result-track:e811d1c790a32e2d78dbe633dced523723d1ba9fafef9403c53613a9205169fd` |
| 4 | `theorem` | [int_valuation_ne_zero](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/int-valuation-ne-zero--2618c77f47fa005b08e9fbf1.md) | 97 | `result-track:2618c77f47fa005b08e9fbf101137c33ab44b48fc5edf2b68c57a17030b5597c` |
| 5 | `theorem` | [int_valuation_ne_zero'](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/int-valuation-ne-zero--1f3dbd918fc7cdc21eca0d96.md) | 103 | `result-track:1f3dbd918fc7cdc21eca0d9675e770207bdcf0bccb17a36605bd15a14cb57d6d` |
| 6 | `theorem` | [int_valuation_zero_le](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/int-valuation-zero-le--ea585b7ba7e8a6d02cef004f.md) | 108 | `result-track:ea585b7ba7e8a6d02cef004f79f0657f6b4c26a63b4cf252c30c6850b1e7d0c4` |
| 7 | `theorem` | [int_valuation_le_one](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/int-valuation-le-one--1e5f267ff8f6e119f2049906.md) | 114 | `result-track:1e5f267ff8f6e119f20499062d22e88e8982c8093e8a37f17b9dde3b6b75ba6f` |
| 8 | `theorem` | [int_valuation_lt_one_iff_dvd](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/int-valuation-lt-one-iff-dvd--48a6303a0c445b51055bcdf8.md) | 124 | `result-track:48a6303a0c445b51055bcdf87d26c18de3bf19c818a3b8bcb416e2e6a059989f` |
| 9 | `theorem` | [int_valuation_le_pow_iff_dvd](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/int-valuation-le-pow-iff-dvd--4773682be19aa5e63bd30b76.md) | 139 | `result-track:4773682be19aa5e63bd30b7604fccdf1f96a79fb4820ab95e1c7ef672f866303` |
| 10 | `theorem` | [IntValuation.map_zero'](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/intvaluation-map-zero--73efa3c447f66c62fe94faa8.md) | 151 | `result-track:73efa3c447f66c62fe94faa89bd87d820bdf6c08ff57a9754fa7e0ff17c3365a` |
| 11 | `theorem` | [IntValuation.map_one'](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/intvaluation-map-one--cd7629c55169d4bf2bfeb664.md) | 156 | `result-track:cd7629c55169d4bf2bfeb6648a087a5d14708ccf3e95812d65d76f454fac7729` |
| 12 | `theorem` | [IntValuation.map_mul'](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/intvaluation-map-mul--4537a0393256edf363525796.md) | 164 | `result-track:4537a0393256edf3635257966befe0d4c08fd4f9abe48439f41b66c513862084` |
| 13 | `theorem` | [IntValuation.le_max_iff_min_le](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/intvaluation-le-max-iff-min-le--3dea4717297f8875a2f2737e.md) | 178 | `result-track:3dea4717297f8875a2f2737e4591b11ffa1fa43e71e039ddb37404f7317cae43` |
| 14 | `theorem` | [IntValuation.map_add_le_max'](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/intvaluation-map-add-le-max--6758b8ef1ce45131746e81f7.md) | 187 | `result-track:6758b8ef1ce45131746e81f7720017eec19c3f3ab307a92b5e98e223ecd226fc` |
| 15 | `def` | [intValuation](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/intvaluation--0493023c09eed97a71f017b4.md) | 223 | `declaration-track:0493023c09eed97a71f017b4d695db0c0f2efc864ac5fe74403632be8abe57a8` |
| 16 | `theorem` | [int_valuation_exists_uniformizer](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/int-valuation-exists-uniformizer--8e98b7889be520f16a5eb5d7.md) | 232 | `result-track:8e98b7889be520f16a5eb5d7a574c67d13aab2bd356b8a5aa5f1999159c28ae1` |
| 17 | `def` | [valuation](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/valuation--0e0051410f393be6bf4eaf85.md) | 261 | `declaration-track:0e0051410f393be6bf4eaf85e479501ef24fb578741d336dec2d2c4ec635998e` |
| 18 | `theorem` | [valuation_def](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/valuation-def--637e2997867859aec93b7cfe.md) | 266 | `result-track:637e2997867859aec93b7cfe13c7753ab143d49f5a3a2b1cbac5e91748db53da` |
| 19 | `theorem` | [valuation_of_mk'](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/valuation-of-mk--630c4416def7dcaae5bc0511.md) | 274 | `result-track:630c4416def7dcaae5bc0511359cebf9d747bd0f9da37018ec6350495f8b6c07` |
| 20 | `theorem` | [valuation_of_algebraMap](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/valuation-of-algebramap--a64e96fa0bba8864c5e2720c.md) | 284 | `result-track:a64e96fa0bba8864c5e2720c86aad5896154dac0f7b398f1d53ee5ab50dd0996` |
| 21 | `theorem` | [valuation_le_one](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/valuation-le-one--a90201ca2abd584c6bc3851b.md) | 289 | `result-track:a90201ca2abd584c6bc3851bbfec55fcb649309bde21f03882946c97fbbca6ed` |
| 22 | `theorem` | [valuation_lt_one_iff_dvd](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/valuation-lt-one-iff-dvd--058d231b029dab0d0a9df0b6.md) | 294 | `result-track:058d231b029dab0d0a9df0b6109c769908626d88f1fb946772c7abd286d293f8` |
| 23 | `theorem` | [valuation_exists_uniformizer](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/valuation-exists-uniformizer--39e80bf802a67eb745f35102.md) | 302 | `result-track:39e80bf802a67eb745f35102f6998ce01a802168f1b387aeef0eb4ba7a90ccf1` |
| 24 | `theorem` | [valuation_uniformizer_ne_zero](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/valuation-uniformizer-ne-zero--06094d94ad3d7e1d2eb187bf.md) | 310 | `result-track:06094d94ad3d7e1d2eb187bf8ed41ab92bd435e94f2e1c8d8cb838186af2c725` |
| 25 | `def` | [adicValued](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/adicvalued--61e68a4b4066a37f41160363.md) | 325 | `declaration-track:61e68a4b4066a37f4116036369220d137d1d4b45afc257212cec929912e3cfc2` |
| 26 | `theorem` | [adicValued_apply](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/adicvalued-apply--aa1f040a73e6f753c3fbeb60.md) | 329 | `result-track:aa1f040a73e6f753c3fbeb6025e58e114a5ffdf9724677cfc3007d8d3788301d` |
| 27 | `def` | [adicCompletion](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/adiccompletion--f9dae24851918ad52e7f83f3.md) | 336 | `declaration-track:f9dae24851918ad52e7f83f352684706f0e9d728bc6b714b488ccc0261be8a34` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/instance--b96a73911f0dff48b542a132.md) | 340 | `declaration-track:b96a73911f0dff48b542a132c03c81e16f6b707db799af4abe3e420d7a0021f1` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/instance--4ae3e1de62dcf663b8a4e75a.md) | 344 | `declaration-track:4ae3e1de62dcf663b8a4e75ad606db0639d935a16358dda6761c1970806688c7` |
| 30 | `instance` | [valuedAdicCompletion](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/valuedadiccompletion--15e7fa6af53afff095d77f9e.md) | 347 | `declaration-track:15e7fa6af53afff095d77f9e0e1879290a7c4ec7847c491e7b5b4780546fd825` |
| 31 | `theorem` | [valuedAdicCompletion_def](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/valuedadiccompletion-def--0ac406a372c9540960f135a7.md) | 351 | `result-track:0ac406a372c9540960f135a7cea729dae2f961ffe1183315e6b2028b2259d31e` |
| 32 | `instance` | [adicCompletion_completeSpace](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/adiccompletion-completespace--4094641b528b3f6b2bb4e048.md) | 356 | `declaration-track:4094641b528b3f6b2bb4e048e75f998bf8e7855805b29c947402dee6b6329065` |
| 33 | `instance` | [AdicCompletion.instCoe](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/adiccompletion-instcoe--0dcaec8224fd85fe0116fde1.md) | 365 | `declaration-track:0dcaec8224fd85fe0116fde123d34eefa3b90b8db1b59ff80e46deaa78754104` |
| 34 | `def` | [adicCompletionIntegers](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/adiccompletionintegers--322fa0efd524973be4941bd8.md) | 369 | `declaration-track:322fa0efd524973be4941bd89ef3a8fc6c37dbaae6040a9070ae930f06af399f` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/instance--bc3ca67cbfab4f28408ea476.md) | 373 | `declaration-track:bc3ca67cbfab4f28408ea47633dc8f97d4a4898b1091c99e4c968ca26c47ef96` |
| 36 | `theorem` | [mem_adicCompletionIntegers](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/mem-adiccompletionintegers--e6e244369c8941c3d7a5b706.md) | 378 | `result-track:e6e244369c8941c3d7a5b7061b3083d47acbd2c2cb84b293baa02fa5cc5a6bd0` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/instance--80e2485573b9ccbdda7d5b13.md) | 385 | `declaration-track:80e2485573b9ccbdda7d5b13c98fda7879e84712821a3956b5599e627a4272b7` |
| 38 | `instance` | [adicValued.uniformContinuousConstSMul](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/adicvalued-uniformcontinuousconstsmul--b2b65c1c20daeac89cbd3eb0.md) | 390 | `declaration-track:b2b65c1c20daeac89cbd3eb04949af62a65464c6f1d9bd3722f3ee66ba5ee0bf` |
| 39 | `instance` | [AdicCompletion.algebra'](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/adiccompletion-algebra--42421322c325db72cc7155e5.md) | 395 | `declaration-track:42421322c325db72cc7155e50a487af37ae0a5a77fcd799a058d59594bc65afc` |
| 40 | `theorem` | [coe_smul_adicCompletion](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/coe-smul-adiccompletion--9c7b688e155a8700daf94726.md) | 401 | `result-track:9c7b688e155a8700daf9472617d61eb6ca2ec8c59c58de2bbe413ec16e4797b8` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/instance--cbaba289c139c9618f7f94df.md) | 406 | `declaration-track:cbaba289c139c9618f7f94df677d6ec433fd63d794fc76e903b86461aba1227d` |
| 42 | `theorem` | [algebraMap_adicCompletion'](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/algebramap-adiccompletion--f9bf261b0f01bdab80b2c95d.md) | 409 | `result-track:f9bf261b0f01bdab80b2c95d5f941920ff1a32ce55bc9a0339bfed03075b900e` |
| 43 | `theorem` | [algebraMap_adicCompletion](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/algebramap-adiccompletion--568b2813ce795b104a3e3aa6.md) | 414 | `result-track:568b2813ce795b104a3e3aa646e77efca2bf21a3e167ec88ed47b3fe82138cee` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/instance--38fb49ca900bd971a97eccab.md) | 419 | `declaration-track:38fb49ca900bd971a97eccab066437cbcb60d4a9722ec72124be5a30e41c0d87` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/instance--8d8bdfaaba1a6d7ed7c73952.md) | 423 | `declaration-track:8d8bdfaaba1a6d7ed7c73952b9fb48c0c9d6a9db8d1b200a89a66c3e81e388aa` |
| 46 | `theorem` | [coe_smul_adicCompletionIntegers](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/coe-smul-adiccompletionintegers--bda7475e2a783a94cd9a508d.md) | 469 | `result-track:bda7475e2a783a94cd9a508d7ca945f04f5224c0ddff2028a9593a4b3526bdbb` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/instance--3bec75071465121007476594.md) | 474 | `declaration-track:3bec750714651210074765942a3c2d2dc4c0a09b4b4c43e9c9bfe20c7d5d5648` |
| 48 | `instance` | [AdicCompletion.instIsScalarTower'](../../../../mathematics/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/declarations/adiccompletion-instisscalartower--1fac459dc36dab1d105e299e.md) | 483 | `declaration-track:1fac459dc36dab1d105e299e7891db596c9c386c73d45854cc14d955b0b3c2d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
