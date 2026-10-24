# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Surgery.Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c853389df36e5adba8873f8398674a9594288643",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c853389df36e5adba8873f8398674a9594288643`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.PrecisionAccuracy` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [KernelAtom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/kernelatom--6c990f74fa39cb15533b55f7.md) | 22 | `declaration-track:6c990f74fa39cb15533b55f7bee82eb575295e987c32da7e1c97104adf5742de` |
| 2 | `def` | [all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/all--4b3e046d086ace71c99b008b.md) | 34 | `declaration-track:4b3e046d086ace71c99b008be5c55074a2e342a38dd726b774ec62aff220f9fa` |
| 3 | `theorem` | [mem_all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/mem-all--8d06845fe64e71cef092aef3.md) | 37 | `result-track:8d06845fe64e71cef092aef3462cde7049c74d7f8bfc0937ff9f129333f165ed` |
| 4 | `theorem` | [card_all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/card-all--346a3d94dbe12d8fb071c649.md) | 41 | `result-track:346a3d94dbe12d8fb071c649f3999a8e89943d0f8eac8b2de64dbd881d51c362` |
| 5 | `theorem` | [card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/card--ed2076be64d9781249735a06.md) | 44 | `result-track:ed2076be64d9781249735a06d104ee1552da4b10c72b29ba12756169e0c472c8` |
| 6 | `inductive` | [FinitePlan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/finiteplan--f9412914d095be1e528b1866.md) | 49 | `declaration-track:f9412914d095be1e528b1866ed3340ac874c5a86ab95d976061db67a47b55f81` |
| 7 | `def` | [flatten](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/flatten--c1ba54f3c9ca2de767917bb7.md) | 58 | `declaration-track:c1ba54f3c9ca2de767917bb7db1874785435ea30227e207a1e24086c4139d3ae` |
| 8 | `theorem` | [flatten_identity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/flatten-identity--13608fbc655cb85aec0350cb.md) | 63 | `result-track:13608fbc655cb85aec0350cb000fd7d1bb7ff7f2b44f5116f30160c05fbd280f` |
| 9 | `theorem` | [flatten_atom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/flatten-atom--3dbb1f174e76ec8c280b6144.md) | 65 | `result-track:3dbb1f174e76ec8c280b6144c6d9e12dfa3814ac5f684fb9777be578a32cb199` |
| 10 | `theorem` | [flatten_stage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/flatten-stage--0a8ce6f1f9febbf9e9fcc828.md) | 68 | `result-track:0a8ce6f1f9febbf9e9fcc82856ce5a5791e6f96f4ce03be7f7a14f09668e6a31` |
| 11 | `def` | [ofList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/oflist--b526b56e40c6f2f411713c0d.md) | 72 | `declaration-track:b526b56e40c6f2f411713c0de88f4b61e692ff9ec21313891e226e28f514756f` |
| 12 | `theorem` | [flatten_ofList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/flatten-oflist--3e82058eeb2b3ae7f9b2ba6a.md) | 76 | `result-track:3e82058eeb2b3ae7f9b2ba6afa277cb9aba2aab4624a32e9133e0602c6c6bf20` |
| 13 | `def` | [Equivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/equivalent--8817cb33ea2106b3a2255d91.md) | 83 | `declaration-track:8817cb33ea2106b3a2255d9126bc273f3a93551004959519d037cf759f700f01` |
| 14 | `theorem` | [equivalent_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/equivalent-refl--ab36529892ea7733c5d8e5cb.md) | 86 | `result-track:ab36529892ea7733c5d8e5cba0a086f40d5899db96cf76b0c3c3d29648a49987` |
| 15 | `theorem` | [equivalent_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/equivalent-symm--4a39b0d421e2bc1e60b72788.md) | 88 | `result-track:4a39b0d421e2bc1e60b7278894c689cac1f9b65582beac1a584ed8d287750a0f` |
| 16 | `theorem` | [equivalent_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/equivalent-trans--41a695971152185c2176ca05.md) | 91 | `result-track:41a695971152185c2176ca050d193d497f0529432138b6eae995abef3b78ea36` |
| 17 | `def` | [normalize](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/normalize--9b0d2561c13a92c50789a793.md) | 96 | `declaration-track:9b0d2561c13a92c50789a79363097240f9246ad7ed5d222156c0eb4ece82955b` |
| 18 | `theorem` | [flatten_normalize](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/flatten-normalize--7ec9590ab62caba8c96c2827.md) | 98 | `result-track:7ec9590ab62caba8c96c2827a415783f6806e9aeb09a1e120963c9b395414d2d` |
| 19 | `theorem` | [equivalent_normalize](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/equivalent-normalize--d423ce485b11a13a8860c8c7.md) | 102 | `result-track:d423ce485b11a13a8860c8c79477283e0778a837d081b1ff3482294e73c54ad5` |
| 20 | `theorem` | [normalize_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/normalize-idempotent--9019ae49b12498568af76ed0.md) | 106 | `result-track:9019ae49b12498568af76ed0f55617f895884112e8bf2c03a4359d53a2597994` |
| 21 | `theorem` | [normalize_eq_of_equivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/normalize-eq-of-equivalent--128703279b836bc64f035e49.md) | 111 | `result-track:128703279b836bc64f035e4924f287b47213636e61359e8435efbeec190f7839` |
| 22 | `theorem` | [stage_associative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/stage-associative--79f2b36a195ec9d031a69fd9.md) | 116 | `result-track:79f2b36a195ec9d031a69fd9042d313296a0a9b9f566b37c4a3613e11da2e358` |
| 23 | `theorem` | [stage_identity_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/stage-identity-left--3e2a4cdd5453c065e8666ef1.md) | 121 | `result-track:3e2a4cdd5453c065e8666ef12ecc2bace626149b83e2a96460e3984441c970cc` |
| 24 | `theorem` | [stage_identity_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/stage-identity-right--5f885b1918f5f5d163e17175.md) | 125 | `result-track:5f885b1918f5f5d163e171750055fbd44df6cfafa46dde411851571ff662346b` |
| 25 | `def` | [atomCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/atomcount--a9506f7d73211d1dc98132c0.md) | 130 | `declaration-track:a9506f7d73211d1dc98132c0d95ff713dff827fb9346f188524b093633b9c39f` |
| 26 | `theorem` | [atomCount_normalize](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/atomcount-normalize--964f99716d2dda72c654fa61.md) | 132 | `result-track:964f99716d2dda72c654fa6151fa8fd7e0f179391bdb1885b15f87c0da54828b` |
| 27 | `theorem` | [stage_ne_atom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/stage-ne-atom--cf19fda9419c1c00a10d4ca6.md) | 137 | `result-track:cf19fda9419c1c00a10d4ca6eec2364420d882903805b6ecc89c2d8d8ce7f6a4` |
| 28 | `inductive` | [BasisTheoremStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/basistheoremstatus--aea3a2d28cb182e59e80037f.md) | 144 | `declaration-track:aea3a2d28cb182e59e80037f7db1db5ed7dea9dedbd4e2567939111e82df3384` |
| 29 | `structure` | [MutationBasisClaim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/mutationbasisclaim--3a70e560a6d535240b48d523.md) | 151 | `declaration-track:3a70e560a6d535240b48d52339a34e66cd3a7200264f72ed1e19475b6a1d6706` |
| 30 | `def` | [Valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/valid--e0063b6afc43a9c31475c92e.md) | 169 | `declaration-track:e0063b6afc43a9c31475c92e8c91b6fda99ae0cd08a1ea187ab7cd0d58773ebe` |
| 31 | `theorem` | [established_minimality_has_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/established-minimality-has-certificate--4251b7dd5cabda588d2d9b25.md) | 179 | `result-track:4251b7dd5cabda588d2d9b25913da4513537f174b2ab5c715b6b413a0214daae` |
| 32 | `theorem` | [established_uniqueness_has_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/established-uniqueness-has-certificate--c4ea8dff837003f4f011eaa4.md) | 183 | `result-track:c4ea8dff837003f4f011eaa40c29311ab0792ac27bad09840f3beb034c0a596e` |
| 33 | `theorem` | [sufficiency_does_not_entail_minimality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/sufficiency-does-not-entail-minimality--6e0bd517eb69b9826f1eff4b.md) | 190 | `result-track:6e0bd517eb69b9826f1eff4b188be2a505b1b1be414e7b597c10354bf2229e2e` |
| 34 | `theorem` | [sufficiency_does_not_entail_uniqueness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/sufficiency-does-not-entail-uniqueness--a968586809d1c7cb750b8d9f.md) | 214 | `result-track:a968586809d1c7cb750b8d9f207adc79babdfc2a2763261cd0a4e600a2bef5ff` |
| 35 | `structure` | [FiniteMutationPlanRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/finitemutationplanrecord--a0eb1027619b131ce1a0006a.md) | 237 | `declaration-track:a0eb1027619b131ce1a0006aa480ce30ac238a863a6be4cebefccc9f3c685e12` |
| 36 | `def` | [Pinned](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/pinned--feeb445ce6b156fba78ee4fe.md) | 252 | `declaration-track:feeb445ce6b156fba78ee4feac36047e3c03894dd71e9ab21adb2798ebc18663` |
| 37 | `structure` | [BoundedStreamWindow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/boundedstreamwindow--f9538fce0dc8b1b0f61ec9d3.md) | 262 | `declaration-track:f9538fce0dc8b1b0f61ec9d3c792bba25e36946068ee53295bc4d1295fe4c541` |
| 38 | `def` | [Finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/finite--0bfbf2765dc1e1d4aa75bb17.md) | 280 | `declaration-track:0bfbf2765dc1e1d4aa75bb174ef53e6a500504fcff26b31b9d75382888f6c748` |
| 39 | `structure` | [StreamContinuation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/streamcontinuation--fa55a4145b8eafd009cadcf3.md) | 290 | `declaration-track:fa55a4145b8eafd009cadcf398e21bb0ebc2be94c9186bf3d57186d62f3f5867` |
| 40 | `theorem` | [window_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/window-finite--9adeb30bb5cb78712529c661.md) | 298 | `result-track:9adeb30bb5cb78712529c6612ea231774dfb7509ad0e6b107fde9a7b0650c971` |
| 41 | `inductive` | [RollbackKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/rollbackkind--567b5466e3d4f09b872bd45e.md) | 304 | `declaration-track:567b5466e3d4f09b872bd45e1109ccb1f4c97a8c8e253cf60cee7fd263d8047b` |
| 42 | `structure` | [RollbackRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/rollbackrecord--bdba99b5b86c5daf94812189.md) | 311 | `declaration-track:bdba99b5b86c5daf94812189693b36f18c09f6b8b80ec3c05ef8edfc8fabf551` |
| 43 | `def` | [AlgebraicallyCertified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/algebraicallycertified--40655513f40c30a4dd0c9697.md) | 326 | `declaration-track:40655513f40c30a4dd0c9697ef86cf0775dcc12a8a22be9e80b10efd1e45aa67` |
| 44 | `theorem` | [algebraicallyCertified_kind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/algebraicallycertified-kind--7e4902ceea77f40bdcc67e8b.md) | 329 | `result-track:7e4902ceea77f40bdcc67e8b6ceaf64a31a74ced801e1eec944a44e79a7d7a59` |
| 45 | `theorem` | [algebraicallyCertified_has_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/algebraicallycertified-has-certificate--1625859a08b2afcb461eb030.md) | 332 | `result-track:1625859a08b2afcb461eb0305af48ae0edf60af6ba1894cc06150b93dc574074` |
| 46 | `theorem` | [pointer_restoration_not_algebraic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/pointer-restoration-not-algebraic--d8d21ee9cd345606b3871d56.md) | 335 | `result-track:d8d21ee9cd345606b3871d566a64ed5bb9065a3ca81a701f2defb6ec918a91ea` |
| 47 | `theorem` | [compensating_revision_not_algebraic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant2a61cb6f59091907cae32f88d5d841844cc22de198823f0024b4e180b5cda389.lean/declarations/compensating-revision-not-algebraic--5b518264e5d5c75d24f33b9e.md) | 341 | `result-track:5b518264e5d5c75d24f33b9e1ae13b9cbe4d84f655c594b5f755e782db10f782` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
