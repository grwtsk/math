# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Satisfiability.Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "349be7f0278540609f6bbf48d130e2e5b67afe5e",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `349be7f0278540609f6bbf48d130e2e5b67afe5e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Ultraproducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Bundled` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Skolem` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/issatisfiable--9d6eedc69f76527a19c9104b.md) | 63 | `declaration-track:9d6eedc69f76527a19c9104b9586161ceac7101988da4525ce22f89919740b72` |
| 2 | `def` | [IsFinitelySatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/isfinitelysatisfiable--be85b843218c55496e270dea.md) | 67 | `declaration-track:be85b843218c55496e270dea465934c3e23b1c07c957c3b7022b2b6d02a0f662` |
| 3 | `theorem` | [Model.isSatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/model-issatisfiable--c8250ca2522964df4cf6f1e0.md) | 72 | `result-track:c8250ca2522964df4cf6f1e05a8a770c88091ff7c19cd4416f4c7211cf368116` |
| 4 | `theorem` | [IsSatisfiable.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/issatisfiable-mono--d57e5a018cfe915306af12b0.md) | 76 | `result-track:d57e5a018cfe915306af12b08027a55b3fbc785088a0aac294fc2dea75805429` |
| 5 | `theorem` | [isSatisfiable_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/issatisfiable-empty--1b3aced0329482645910d185.md) | 79 | `result-track:1b3aced0329482645910d1859de55aef65b2c8911b7f304075d17a769faf93db` |
| 6 | `theorem` | [isSatisfiable_of_isSatisfiable_onTheory](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/issatisfiable-of-issatisfiable-ontheory--5adf008fd29495efbb8408bc.md) | 82 | `result-track:5adf008fd29495efbb8408bc5b9587600cf1b4a85994ac14150c416012fd2957` |
| 7 | `theorem` | [isSatisfiable_onTheory_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/issatisfiable-ontheory-iff--7e15503c106d2a8327589136.md) | 86 | `result-track:7e15503c106d2a8327589136ec470df8715887b9b456c3d8f2193869f5f92915` |
| 8 | `theorem` | [IsSatisfiable.isFinitelySatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/issatisfiable-isfinitelysatisfiable--db77e68071abad622bd99b93.md) | 93 | `result-track:db77e68071abad622bd99b93a156229456ca70e7a6d5f54a50cdda05bf710e62` |
| 9 | `theorem` | [isSatisfiable_iff_isFinitelySatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/issatisfiable-iff-isfinitelysatisfiable--476ea06227b4f68619fa79aa.md) | 98 | `result-track:476ea06227b4f68619fa79aae316fac0b9b68dfca3580c0add84a0b78d50902a` |
| 10 | `theorem` | [isSatisfiable_directed_union_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/issatisfiable-directed-union-iff--a529e3151211fb51f9b9d835.md) | 119 | `result-track:a529e3151211fb51f9b9d8358401028170f73af773d75e5bebe54873b60c9de3` |
| 11 | `theorem` | [isSatisfiable_union_distinctConstantsTheory_of_card_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/issatisfiable-union-distinctconstantstheory-of-card-le--a257e9f90f0e64a013770afe.md) | 127 | `result-track:a257e9f90f0e64a013770afe69469b117c5ed02ce12889664fc84e0f419350df` |
| 12 | `theorem` | [isSatisfiable_union_distinctConstantsTheory_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/issatisfiable-union-distinctconstantstheory-of-infinite--431dbf68e21e1a957dbe020a.md) | 145 | `result-track:431dbf68e21e1a957dbe020aabb2a3bec57848a51ccf84a85685eee61e185d53` |
| 13 | `theorem` | [exists_large_model_of_infinite_model](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/exists-large-model-of-infinite-model--9713794394cb6a9cbfc8ad82.md) | 161 | `result-track:9713794394cb6a9cbfc8ad82a99775bbee4c682c12947b20f84431deefa24cd0` |
| 14 | `theorem` | [isSatisfiable_iUnion_iff_isSatisfiable_iUnion_finset](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/issatisfiable-iunion-iff-issatisfiable-iunion-finset--968476e48ae2c98af691b4ee.md) | 175 | `result-track:968476e48ae2c98af691b4eee453eaf50c468c58cf18759ceab7fe14f5759c01` |
| 15 | `theorem` | [exists_elementaryEmbedding_card_eq_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/exists-elementaryembedding-card-eq-of-le--2292077b934c1eebab2a3b4a.md) | 197 | `result-track:2292077b934c1eebab2a3b4a03776f95c43b64b256cc2242ee948a10f8bfc5ed` |
| 16 | `theorem` | [exists_elementaryEmbedding_card_eq_of_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/exists-elementaryembedding-card-eq-of-ge--081a4b8b74e9ef084e5bd522.md) | 215 | `result-track:081a4b8b74e9ef084e5bd52234e42b45bff8e5a460d668fe3da793fcceddd488` |
| 17 | `theorem` | [exists_elementaryEmbedding_card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/exists-elementaryembedding-card-eq--66e1b6b7801e41b913855e39.md) | 241 | `result-track:66e1b6b7801e41b913855e39f0bbb670686e7ba76510dde3b6a33e7a0697310a` |
| 18 | `theorem` | [exists_elementarilyEquivalent_card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/exists-elementarilyequivalent-card-eq--99f72701d0789dccd8d12bd6.md) | 255 | `result-track:99f72701d0789dccd8d12bd674aa08d2a01b92208917bf215d7ad92b6e5329be` |
| 19 | `theorem` | [exists_model_card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/exists-model-card-eq--d73d58b798664036e315daaf.md) | 266 | `result-track:d73d58b798664036e315daaf55c6ef7b130477b0bc71dd6e5da555137f36e410` |
| 20 | `def` | [ModelsBoundedFormula](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/modelsboundedformula--f7d72a19e42698639dc5559f.md) | 280 | `declaration-track:f7d72a19e42698639dc5559fa91642c65243af4713426e4a641c90b46d2c1062` |
| 21 | `theorem` | [models_formula_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/models-formula-iff--3a797b4452db1c246548a9d0.md) | 288 | `result-track:3a797b4452db1c246548a9d01f1023c2743f0d883fdb0ed16dfcd7a23432a943` |
| 22 | `theorem` | [models_sentence_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/models-sentence-iff--bdf34c08e100ad2c6c7759ff.md) | 292 | `result-track:bdf34c08e100ad2c6c7759ff5bb67e3d635add8e10f26a755a30e717d038d710` |
| 23 | `theorem` | [models_sentence_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/models-sentence-of-mem--33f2692bd51d24c9acd9bc75.md) | 295 | `result-track:33f2692bd51d24c9acd9bc753d3d98cc3ef6c31171d4f0d13710958d1e3ffaba` |
| 24 | `theorem` | [models_iff_not_satisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/models-iff-not-satisfiable--c880e1a40f3b0d40c2372d1b.md) | 298 | `result-track:c880e1a40f3b0d40c2372d1b9a0d308b20bf264a1e8ea61c10e89a7787748a28` |
| 25 | `theorem` | [ModelsBoundedFormula.realize_sentence](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/modelsboundedformula-realize-sentence--11b225273216fd5008306716.md) | 315 | `result-track:11b225273216fd500830671648e041faa35709954571653123642d6e8f55907f` |
| 26 | `theorem` | [models_formula_iff_onTheory_models_equivSentence](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/models-formula-iff-ontheory-models-equivsentence--71f2bb84bf501dc36c86e139.md) | 326 | `result-track:71f2bb84bf501dc36c86e139ac37177f417c7733d43be2d5d2ff982b7e0f181c` |
| 27 | `theorem` | [ModelsBoundedFormula.realize_formula](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/modelsboundedformula-realize-formula--8a20041e379595d50c02aa17.md) | 341 | `result-track:8a20041e379595d50c02aa1707db53fd052e0fcebfab3c6fcca9209f60f369f1` |
| 28 | `theorem` | [models_toFormula_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/models-toformula-iff--d1f8230ed1efa34ebef702d7.md) | 348 | `result-track:d1f8230ed1efa34ebef702d7f2683647af97d02f52e632a4a193b281132dcf32` |
| 29 | `theorem` | [ModelsBoundedFormula.realize_boundedFormula](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/modelsboundedformula-realize-boundedformula--47cba041670d86d7f2113648.md) | 356 | `result-track:47cba041670d86d7f2113648036e9f71c31a19fb6990235f54a78e83cd7a9145` |
| 30 | `theorem` | [models_of_models_theory](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/models-of-models-theory--4dda5155d1cd77f29769aa05.md) | 363 | `result-track:4dda5155d1cd77f29769aa0544c7e67b47d7a1b776f38c2cde4299702aec6bff` |
| 31 | `theorem` | [models_iff_finset_models](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/models-iff-finset-models--2096cec10dfe3921d1a467c1.md) | 372 | `result-track:2096cec10dfe3921d1a467c19bf46df4d4005daa1ca84926e9966a573b4a404f` |
| 32 | `def` | [IsComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/iscomplete--9162ce2d838b1c23c5225a81.md) | 389 | `declaration-track:9162ce2d838b1c23c5225a814a173ac7ea23fa789358d51028e0c217d8875428` |
| 33 | `theorem` | [models_not_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/models-not-iff--f4b5bb80816a904351b58a01.md) | 394 | `result-track:f4b5bb80816a904351b58a014e93a3b121822beb6ac4101570bead46a4533f9b` |
| 34 | `theorem` | [realize_sentence_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/realize-sentence-iff--0d290591c2e614864024a66f.md) | 406 | `result-track:0d290591c2e614864024a66f50bd1edc51d644846ba8f4f33f7b35a07b30411d` |
| 35 | `def` | [IsMaximal](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/ismaximal--3296000eb919fb1ed9c1e447.md) | 418 | `declaration-track:3296000eb919fb1ed9c1e44798147cc8b920b3d446de93e0a85611cc931d825c` |
| 36 | `theorem` | [IsMaximal.isComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/ismaximal-iscomplete--6ac7ffbfd1502f13efbeab26.md) | 421 | `result-track:6ac7ffbfd1502f13efbeab26ca43a64e4f09c1a944350a8c99295031988f746f` |
| 37 | `theorem` | [IsMaximal.mem_or_not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/ismaximal-mem-or-not-mem--7498253c8a62cf20978e4d34.md) | 424 | `result-track:7498253c8a62cf20978e4d3434dee9a89a0e7f9651a97f218a31a66d50ad3ae4` |
| 38 | `theorem` | [IsMaximal.mem_of_models](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/ismaximal-mem-of-models--7b8141600e7dc841bb924f40.md) | 427 | `result-track:7b8141600e7dc841bb924f406f8244574ff251e6cc5e0c6e5a1daa5455a59b38` |
| 39 | `theorem` | [IsMaximal.mem_iff_models](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/ismaximal-mem-iff-models--5f24cd510821dd4dfb4b4e59.md) | 432 | `result-track:5f24cd510821dd4dfb4b4e596ddb7d34fd908e0d58ee18343c1c0c234d50eb51` |
| 40 | `theorem` | [isSatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/issatisfiable--cbbe892867f912572ef5198a.md) | 442 | `result-track:cbbe892867f912572ef5198a6232dcbcbcb642f1cdbdc971228a4d6c48f2f98b` |
| 41 | `theorem` | [mem_or_not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/mem-or-not-mem--e24997a5a37a5694e4c5a55a.md) | 445 | `result-track:e24997a5a37a5694e4c5a55a57be0b4dd59cd75c3e50a352c4f4f925611257a0` |
| 42 | `theorem` | [isMaximal](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/ismaximal--c5be2242e11de11532338b30.md) | 448 | `result-track:c5be2242e11de11532338b30f81b31468817039cfba0d75c4e33db6317e7b43e` |
| 43 | `theorem` | [isComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/iscomplete--4e5301ac24ce3f676ae4070c.md) | 451 | `result-track:4e5301ac24ce3f676ae4070cf31be93b91b1fb9679ccee5fc84d8d6c3a987bac` |
| 44 | `def` | [Categorical](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/categorical--ac9ac4bd19e83f12382b0fdd.md) | 467 | `declaration-track:ac9ac4bd19e83f12382b0fdd2cfb721e91e9eae28bafba012ba2535a9ad61c37` |
| 45 | `theorem` | [Categorical.isComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/categorical-iscomplete--e9270d039df8f713a005d5ca.md) | 471 | `result-track:e9270d039df8f713a005d5caa1e2beaaa5ed045af72084ade84a3ea46e2821ae` |
| 46 | `theorem` | [empty_theory_categorical](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/empty-theory-categorical--aca236600cc9f8d21ee17e16.md) | 490 | `result-track:aca236600cc9f8d21ee17e16d71d32a5ae64c594188b31e9368d480c58b24b4d` |
| 47 | `theorem` | [empty_infinite_Theory_isComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/declarations/empty-infinite-theory-iscomplete--517c44881c0ce51df9b6981b.md) | 493 | `result-track:517c44881c0ce51df9b6981bba4008e3210d84db6d0b3e4e1eb226e8b86f382f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
