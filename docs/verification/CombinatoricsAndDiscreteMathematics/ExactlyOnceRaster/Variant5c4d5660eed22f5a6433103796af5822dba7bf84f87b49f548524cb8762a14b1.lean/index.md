# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ExactlyOnceRaster.Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e24e015c2a0f629bd9a679ce140557935bf34ac3",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e24e015c2a0f629bd9a679ce140557935bf34ac3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.Evidence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Core.SemanticIdentity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RasterCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/rastercell--61b2bfa282f64d0d99213cc8.md) | 23 | `declaration-track:61b2bfa282f64d0d99213cc80b48f084997be17925de770c60160a6ab6276769` |
| 2 | `structure` | [RasterSection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/rastersection--88b286d62ff5d9f059750cf8.md) | 30 | `declaration-track:88b286d62ff5d9f059750cf80d2fa0b76e4e3008e57a825a7e626250c0b86864` |
| 3 | `theorem` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/ext--363123100d44bf96f2dabb29.md) | 36 | `result-track:363123100d44bf96f2dabb29dc908696eb6f0baa83736326c633402133e75067` |
| 4 | `inductive` | [DecisionAvailability](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/decisionavailability--ff67a7b0af75f5868c0985b9.md) | 49 | `declaration-track:ff67a7b0af75f5868c0985b9035b31fb3e39ebfa31a18b1298eb133a7a7e3b57` |
| 5 | `structure` | [ValiditySection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/validitysection--c4e909b38e92b9d4e5ff388c.md) | 54 | `declaration-track:c4e909b38e92b9d4e5ff388c0052841c8541dd511879a1610a34c1031f49df4e` |
| 6 | `structure` | [EventLedger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/eventledger--45fb19e6dbcd384154176c44.md) | 58 | `declaration-track:45fb19e6dbcd384154176c4488135aade1e257a387017349289b18e5ac3fdd16` |
| 7 | `theorem` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/ext--b99a87c35a597078c3c849bd.md) | 64 | `result-track:b99a87c35a597078c3c849bd8fd8eb9914e9da9a176388585271769e6ef3a7dc` |
| 8 | `structure` | [ConditionalEvent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/conditionalevent--ee7a96c341b15441c56b8b9a.md) | 77 | `declaration-track:ee7a96c341b15441c56b8b9abbf7b458895d934ec9f396266e3deac656014ebf` |
| 9 | `structure` | [RasterState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/rasterstate--8dd2c58b3b47350be8ad9d66.md) | 86 | `declaration-track:8dd2c58b3b47350be8ad9d667352d8899210fc8026ce02f84cbb7512cf70ce32` |
| 10 | `theorem` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/ext--5ea0af3c11ac1f097c04afbe.md) | 93 | `result-track:5ea0af3c11ac1f097c04afbeb7b96e51bc97d430bf7619b442ba6e9cc5be7789` |
| 11 | `def` | [ConditionalEvent.fires](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/conditionalevent-fires--632794900acd28497ce74546.md) | 110 | `declaration-track:632794900acd28497ce7454602d81383ee032557838f2fa890e695ee10d67646` |
| 12 | `def` | [updateEventLedger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/updateeventledger--b1e72b60a0c5339cd8ad1456.md) | 116 | `declaration-track:b1e72b60a0c5339cd8ad14567cc49be10384ef55b25e9ef9bb2786005f80f314` |
| 13 | `def` | [applyToggle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/applytoggle--0d50a6ffdf3f89adc5d76d25.md) | 134 | `declaration-track:0d50a6ffdf3f89adc5d76d25d8af56d287fd35f465928d11bb5282684b627917` |
| 14 | `theorem` | [false_condition_preserves_bit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/false-condition-preserves-bit--3fcdee17ad1434d3538bc66e.md) | 153 | `result-track:3fcdee17ad1434d3538bc66e2f389f79a8da45b94c168a0c99bf95c89602454d` |
| 15 | `theorem` | [seen_event_preserves_bit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/seen-event-preserves-bit--99f74bbbdd3c6734548f5fba.md) | 168 | `result-track:99f74bbbdd3c6734548f5fbabe326a643b3b7919a160f64bde5fabe2098ed72a` |
| 16 | `theorem` | [true_unseen_condition_flips_bit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/true-unseen-condition-flips-bit--bb532abe8a89a4ec1c542f43.md) | 182 | `result-track:bb532abe8a89a4ec1c542f43477ada326c438e8ea0a91f7d376ec5a05476a5b5` |
| 17 | `theorem` | [true_unseen_event_is_recorded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/true-unseen-event-is-recorded--3b02f564b6f117d178c596ba.md) | 194 | `result-track:3b02f564b6f117d178c596ba30d60b10c0b1da91d7b42e203cb4695d33a8ff49` |
| 18 | `theorem` | [toggle_replay_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/toggle-replay-idempotent--2ba44ee19469450f342c2709.md) | 206 | `result-track:2ba44ee19469450f342c2709bd79e39cb0cfb85afbc059218ebabc86ac574fd1` |
| 19 | `inductive` | [VariableClass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/variableclass--2ad6ca8283a3c9f51a84696d.md) | 223 | `declaration-track:2ad6ca8283a3c9f51a84696d92dbb47e5be09ca84627a68396804586e4296dd2` |
| 20 | `structure` | [FrozenAssignment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/frozenassignment--8e5fae508410b5362d153a7e.md) | 229 | `declaration-track:8e5fae508410b5362d153a7e057a1770659c414715deb91f24b9623b55bcd5aa` |
| 21 | `inductive` | [Literal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/literal--7969dee978ecac7a7c31c38f.md) | 233 | `declaration-track:7969dee978ecac7a7c31c38f02ebbab85709ddd614c8f904e8a78f880446033b` |
| 22 | `abbrev` | [Clause](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/clause--15af20dab5408d8c8d76b3a9.md) | 238 | `declaration-track:15af20dab5408d8c8d76b3a9de255db038e5ee4189649d819ad3d87f2da090c9` |
| 23 | `structure` | [BoolFormula](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/boolformula--4a6d3af7274f2d920baa9c56.md) | 241 | `declaration-track:4a6d3af7274f2d920baa9c5628ce63cdd63f7579b7ff81bae4dbeb15463bfc5c` |
| 24 | `structure` | [CanonicalCNF](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/canonicalcnf--a5da482b03d7710d0faa63bf.md) | 245 | `declaration-track:a5da482b03d7710d0faa63bfe1329b57ef432e9cee2baea57fcc7ad77169cc47` |
| 25 | `structure` | [SatModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/satmodel--ad2be3df513ab8bf6b0e5f75.md) | 251 | `declaration-track:ad2be3df513ab8bf6b0e5f753627d408107d7d3f49bba16a026e5ec44992f7fb` |
| 26 | `def` | [Literal.eval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/literal-eval--ed741c7202122eb171884f4b.md) | 254 | `declaration-track:ed741c7202122eb171884f4b2628a4a28b5a7a10ec6852fa8ca800ba15815094` |
| 27 | `def` | [Clause.eval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/clause-eval--eb1dc23ddf2db53d05accb84.md) | 260 | `declaration-track:eb1dc23ddf2db53d05accb842c54357f59e94f39b4a1c78371b12f295d7e9932` |
| 28 | `def` | [BoolFormula.eval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/boolformula-eval--360dc6c00f01dfadb4556ffd.md) | 265 | `declaration-track:360dc6c00f01dfadb4556ffded1167973068a1af6ab7d5dd718c60c35ccf74b4` |
| 29 | `def` | [FrozenAssignment.PreservedBy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/frozenassignment-preservedby--eb3de00553736decfe28e75b.md) | 270 | `declaration-track:eb3de00553736decfe28e75b60db134e6b74007c18ac3148fa5cfa0584f63ca9` |
| 30 | `structure` | [ValidatedSatModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/validatedsatmodel--5f48bb46dd9ebd5951412f31.md) | 278 | `declaration-track:5f48bb46dd9ebd5951412f31bd73122fe3f64ca198735681d5a249181cb26cc8` |
| 31 | `def` | [validateSatModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/validatesatmodel--9b49b4734827d9a7735b50d0.md) | 287 | `declaration-track:9b49b4734827d9a7735b50d07d362f156e3362ff21f6dafbbf87fca5f5c5f6a8` |
| 32 | `theorem` | [frozen_variables_unchanged](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/frozen-variables-unchanged--a8222842649e4a4d468df49b.md) | 295 | `result-track:a8222842649e4a4d468df49b9825e6a55534c886168f201b851430aaf0dc9d31` |
| 33 | `theorem` | [validated_model_passes_fixed_validation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/validated-model-passes-fixed-validation--039ecca818caf34b81b8e579.md) | 302 | `result-track:039ecca818caf34b81b8e579ca42299336b1803aa04e78052d99dea914485739` |
| 34 | `structure` | [UnsatCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/unsatcertificate--8a9af79aa8bb00621e774fff.md) | 310 | `declaration-track:8a9af79aa8bb00621e774fff434baf1dcde4288758e15a947ea1fd6880969ef0` |
| 35 | `def` | [validateUnsatCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/validateunsatcertificate--5c93be216b765adc7c46f883.md) | 318 | `declaration-track:5c93be216b765adc7c46f8831d56d3e6456d60b10dc526c6911f2a11e884435b` |
| 36 | `theorem` | [unsat_certificate_passes_fixed_validation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/unsat-certificate-passes-fixed-validation--e2c8b9e0ce5961770e21d67a.md) | 324 | `result-track:e2c8b9e0ce5961770e21d67a5f5515f15d032cfdd0fa1ab560a1ecde51753636` |
| 37 | `inductive` | [SatStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/satstatus--5dcdb12786165ca72c5f9f0e.md) | 330 | `declaration-track:5dcdb12786165ca72c5f9f0e0e33f6089acce0a9e50bef07fc3ab306095eb156` |
| 38 | `structure` | [SatReceipt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/satreceipt--6132568a72e262e8745202af.md) | 337 | `declaration-track:6132568a72e262e8745202af8b7811437adfe0d126e769ae4fd5275130850fc4` |
| 39 | `inductive` | [SatResult](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/satresult--8bde5e6184a99e3d3173550a.md) | 346 | `declaration-track:8bde5e6184a99e3d3173550a4308a754438464ade761ead3ea11aebf44244b2d` |
| 40 | `structure` | [CanonicalModelSelector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/canonicalmodelselector--400307a214be19d6229c7632.md) | 368 | `declaration-track:400307a214be19d6229c7632637a08f392f46713036b1252f4f64115dad76129` |
| 41 | `def` | [canonicalSatModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/canonicalsatmodel--9384c909c2f0830f32382ba9.md) | 381 | `declaration-track:9384c909c2f0830f32382ba953dadac71f9ada8fe9f9833fb235c3a45a1d56a1` |
| 42 | `theorem` | [canonical_model_deterministic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/canonical-model-deterministic--5a93c8ad178141efea2c201d.md) | 388 | `result-track:5a93c8ad178141efea2c201d0606b2286ee93443e7ee5170d48cdb260907190e` |
| 43 | `def` | [xorCNFHolds](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/xorcnfholds--e3ee9a69e139b9fefd997d51.md) | 397 | `declaration-track:e3ee9a69e139b9fefd997d510a10a6ba22efd369d8cbdb96468095e527277ce8` |
| 44 | `theorem` | [xor_cnf_correct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/xor-cnf-correct--d9e268a80af1e5b637223a6f.md) | 403 | `result-track:d9e268a80af1e5b637223a6f04fd054b5059f07d35142f5e5888b3fc2c48ba29` |
| 45 | `inductive` | [SatTransitionProposal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/sattransitionproposal--01d5f3032bd354b7685d2646.md) | 410 | `declaration-track:01d5f3032bd354b7685d2646c0119d45da1e04e4986e7ae295721802c1f5318e` |
| 46 | `def` | [evaluateSat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/evaluatesat--ef70877bdf492aaadd459ae4.md) | 414 | `declaration-track:ef70877bdf492aaadd459ae49e161ab9f1735947e39ea701acdc93f637130b59` |
| 47 | `theorem` | [unsat_preserves_current_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/unsat-preserves-current-state--dd7faaf951230860284d9760.md) | 430 | `result-track:dd7faaf951230860284d9760116b9a8f3b34a8f7715b982ebbb7dadb208fdb57` |
| 48 | `theorem` | [unknown_preserves_current_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/unknown-preserves-current-state--3a733ccb18fff3a94d32a7f1.md) | 442 | `result-track:3a733ccb18fff3a94d32a7f1e86f301f026a24cdd89318abd4531bc4c828483c` |
| 49 | `theorem` | [stale_preserves_current_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/stale-preserves-current-state--a31d2ff0c9257e0ff2ca6b8b.md) | 453 | `result-track:a31d2ff0c9257e0ff2ca6b8bd72296b0a60d67a4dce7d55f34a0e970a9fc6213` |
| 50 | `theorem` | [sat_does_not_create_authority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/sat-does-not-create-authority--b542212bbadf53f01e74c8fd.md) | 465 | `result-track:b542212bbadf53f01e74c8fd214de0ecd6308247527d478a8e3b4a3051d138e0` |
| 51 | `theorem` | [raster_does_not_create_authority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/declarations/raster-does-not-create-authority--2b00603465c65c0a6e130a9d.md) | 472 | `result-track:2b00603465c65c0a6e130a9d3f71252a79947d5963b35784c29c3382331e900d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
