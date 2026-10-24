# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteOccurrenceMaps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdeec763fde584ab6349c5a3fa0d412cd9394fb2",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdeec763fde584ab6349c5a3fa0d412cd9394fb2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Occurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/occurrence--ae2ad3ebd10781bdeeeef33e.md) | 13 | `declaration-track:ae2ad3ebd10781bdeeeef33e8638ac99045a6c555ec917f5406f18c7a800c9fd` |
| 2 | `structure` | [Output](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/output--b68cae06f3842b3dd3fe9b39.md) | 18 | `declaration-track:b68cae06f3842b3dd3fe9b39a429ca19fef8ac83dec77ae483ca2216f582b9cd` |
| 3 | `structure` | [Reference](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/reference--7ae9a46bc20de1235509fc83.md) | 22 | `declaration-track:7ae9a46bc20de1235509fc83bfebf404d7571a602a423ca5bdd2af98e23f6f7a` |
| 4 | `structure` | [Woven](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/woven--ff9bf30041a0d94edec9d152.md) | 26 | `declaration-track:ff9bf30041a0d94edec9d152737aa7bf7bd6cad8e86e3dc3c82a396ef7a7dad7` |
| 5 | `def` | [OutputsConsistent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/outputsconsistent--2e732001629ad2a69075152f.md) | 32 | `declaration-track:2e732001629ad2a69075152f104e42a27e25f4e2bb048829aa92344c884fafb4` |
| 6 | `def` | [OccurrencesConsistent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/occurrencesconsistent--ab25a6b48df35d7118892d6a.md) | 35 | `declaration-track:ab25a6b48df35d7118892d6af57eda9a8da0f52e42abeabb9bacb1a2e4cf8ed8` |
| 7 | `def` | [outputConsistencyCheck](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/outputconsistencycheck--e98df9b0008c933a1c77f107.md) | 38 | `declaration-track:e98df9b0008c933a1c77f10734093f8048391eb9c45174c13f3707e444cc6c59` |
| 8 | `def` | [occurrenceConsistencyCheck](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/occurrenceconsistencycheck--e7fb4f88ac135d56b3a589c2.md) | 42 | `declaration-track:e7fb4f88ac135d56b3a589c2d105297d53f963c46cadc5dd8ea0706e98423719` |
| 9 | `theorem` | [outputConsistencyCheck_eq_true_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/outputconsistencycheck-eq-true-iff--a2ad131fe5cf299f4e46ef5c.md) | 46 | `result-track:a2ad131fe5cf299f4e46ef5c86c59a6cdfd296d6c1ad79997e21cc75decfb991` |
| 10 | `theorem` | [occurrenceConsistencyCheck_eq_true_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/occurrenceconsistencycheck-eq-true-iff--68805b1ae014c80d4a3f0603.md) | 51 | `result-track:68805b1ae014c80d4a3f0603bedb33940a1bb4334401444e2db4ff19a5860542` |
| 11 | `def` | [lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/lookup--e042e1c930421600d1a0c3b7.md) | 56 | `declaration-track:e042e1c930421600d1a0c3b7d6b6d56aaf4800d7a72f6eed1822a0097c2e9b20` |
| 12 | `def` | [Covered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/covered--d0d2a8e9d93dd4bc7483aa18.md) | 60 | `declaration-track:d0d2a8e9d93dd4bc7483aa18be052c5086eafaac9408aab609cf616d075aa1f0` |
| 13 | `def` | [coverageCheck](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/coveragecheck--373bc45ed0df4266703fd48d.md) | 64 | `declaration-track:373bc45ed0df4266703fd48d02eff55cffd9fb5fae7338fa2cb9d2fafa017ee7` |
| 14 | `theorem` | [coverageCheck_eq_true_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/coveragecheck-eq-true-iff--1ee227c5e2c68d5b05ebf2fb.md) | 68 | `result-track:1ee227c5e2c68d5b05ebf2fb54d7ca893d9b6f500bf9073eab9598c4df137aa9` |
| 15 | `theorem` | [covered_occurrences_consistent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/covered-occurrences-consistent--8dcbf603fe9160b3dd635c26.md) | 73 | `result-track:8dcbf603fe9160b3dd635c2611a32adfab67d5566333c5200fbba5ac48ce1268` |
| 16 | `def` | [references](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/references--5c879ac79c150a84bb416838.md) | 82 | `declaration-track:5c879ac79c150a84bb4168385f517fc04ff437a76b64ad35e5633d9a761afe1d` |
| 17 | `def` | [decode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/decode--2955bcf64f08785529a8705d.md) | 85 | `declaration-track:2955bcf64f08785529a8705d518719112af740aae6d223a9bda72afc5de0e939` |
| 18 | `theorem` | [reference_length_preserved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/reference-length-preserved--e48e7085f546266e1b52ca37.md) | 93 | `result-track:e48e7085f546266e1b52ca3724acddad0135b5cc4d717f796e20f550cbe66da9` |
| 19 | `theorem` | [decode_references_of_coverage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/decode-references-of-coverage--c74dcf504b557326fc3f30e4.md) | 97 | `result-track:c74dcf504b557326fc3f30e41cb19658082cf76397811c0277fe2fe934aa42e1` |
| 20 | `def` | [PlanValid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/planvalid--e665f7df4f570334b07e9b0f.md) | 112 | `declaration-track:e665f7df4f570334b07e9b0f5ab1171fe778bcac65a5758707298071b404df8b` |
| 21 | `def` | [planCheck](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/plancheck--2deda2a6685d8b751a01ed00.md) | 117 | `declaration-track:2deda2a6685d8b751a01ed00e26e157e3528668c06d39868f7558bbe201926ba` |
| 22 | `theorem` | [planCheck_eq_true_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/plancheck-eq-true-iff--073badbb2114c4b068324598.md) | 122 | `result-track:073badbb2114c4b06832459866305773d02484a7edae3c45f07ad1cd0fffd6f9` |
| 23 | `def` | [weave](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/weave--5c78631245bf9db79b6b85a0.md) | 130 | `declaration-track:5c78631245bf9db79b6b85a0c627d24e31d8278b12883ce6f98b135388cdcfec` |
| 24 | `theorem` | [weave_success_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/weave-success-iff--4b26f9fa8e006bd349122433.md) | 137 | `result-track:4b26f9fa8e006bd34912243312d557d4b653cd4fb522fa0afd5e351d4f439f8b` |
| 25 | `theorem` | [weave_preserves_every_occurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/weave-preserves-every-occurrence--3724be1404254da039fc6ac3.md) | 144 | `result-track:3724be1404254da039fc6ac3548e97e1748ed5732c3f3f8d21627bfaca311891` |
| 26 | `theorem` | [weave_respects_finite_bounds](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/weave-respects-finite-bounds--4408dfcd20061a8181cb1dd0.md) | 157 | `result-track:4408dfcd20061a8181cb1dd0ddf821351991f9b2226b08cfd83bdcf4f7d92067` |
| 27 | `theorem` | [over_occurrence_bound_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/over-occurrence-bound-rejected--9a071573c7f6b4d91ad2a237.md) | 170 | `result-track:9a071573c7f6b4d91ad2a23799e43449565506096bc878cd4566dbde00a3e892` |
| 28 | `theorem` | [same_path_conflicting_payloads_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/same-path-conflicting-payloads-rejected--61e8265a0ac1ee764ba7e2b2.md) | 176 | `result-track:61e8265a0ac1ee764ba7e2b27794cb9403d448c85d1082d541a9d9270642b9dc` |
| 29 | `theorem` | [conflict_blocks_weave](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/conflict-blocks-weave--27fd74410df95edeb84b02d2.md) | 186 | `result-track:27fd74410df95edeb84b02d2d8dbea4798b934b87456a3996776a290664f9a40` |
| 30 | `theorem` | [shared_output_preserves_two_occurrences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/shared-output-preserves-two-occurrences--c3cc722d30562b6a5056ff5d.md) | 195 | `result-track:c3cc722d30562b6a5056ff5d43a37621dfac9c1651812c50e8925bcdb44b7634` |
| 31 | `theorem` | [missing_slot_decode_failure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/missing-slot-decode-failure--54e67db82bcd1370a3076454.md) | 201 | `result-track:54e67db82bcd1370a307645497744a5d1bcd80981b2a0ea12264ff751abca96a` |
| 32 | `def` | [readsetCheck](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/readsetcheck--8767a2248745fbb986c4ab0e.md) | 209 | `declaration-track:8767a2248745fbb986c4ab0ea3727c38277487c5c9139dea1083522a67c19af2` |
| 33 | `theorem` | [readsetCheck_eq_true_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/readsetcheck-eq-true-iff--5045e2f8d6348c46e86cf6d7.md) | 213 | `result-track:5045e2f8d6348c46e86cf6d7d60cc8537c0c9be6eed7c30cc0bd4c96ab4ec99e` |
| 34 | `def` | [transition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/transition--1d0401e9a5bf884d352213f2.md) | 219 | `declaration-track:1d0401e9a5bf884d352213f27fed0bcf086d203ca6e87cdf0e2e4aa3ec7dc8e5` |
| 35 | `theorem` | [stale_readset_blocks_transition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/stale-readset-blocks-transition--1bdcc40576a1ac5e4eed69b0.md) | 225 | `result-track:1bdcc40576a1ac5e4eed69b0810f9535d6a0fd4f9d5c7a7e39b8cc1ab803f604` |
| 36 | `theorem` | [transition_success_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/transition-success-iff--075f597b1c8bbf7a4fb25600.md) | 232 | `result-track:075f597b1c8bbf7a4fb256003b335f52081cdb9eddf548dedc9a33dd493d3476` |
| 37 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/example--28a5d8bdf38c07e1d5372cae.md) | 241 | `declaration-track:28a5d8bdf38c07e1d5372caee9b4b3e5a09ad666583f8884b78e767438934b07` |
| 38 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/example--be6612958a3e367f808a3ed4.md) | 244 | `declaration-track:be6612958a3e367f808a3ed41dc56038e5997bc76e7d8f97821b1ddbe885dd6d` |
| 39 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/declarations/example--ae1af5d3a0d84c8129f06e9e.md) | 247 | `declaration-track:ae1af5d3a0d84c8129f06e9e2fc28d68b6d687dd5027c60b81622c7d1ad3593f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
