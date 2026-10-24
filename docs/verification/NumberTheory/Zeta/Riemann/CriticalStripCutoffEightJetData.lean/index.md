# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightJetData

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c75c5598790548212086143fa75022d8daafb3d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c75c5598790548212086143fa75022d8daafb3d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCenteredPowerJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredPowerJet.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/center--1a03df7b0b151d5b88f2cffa.md) | 24 | `declaration-track:1a03df7b0b151d5b88f2cffacf935d8c73cbce69ca43574d3266cc75e0783c47` |
| 2 | `def` | [logRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/logradius--8873d88d2a877b5dfd2733e5.md) | 25 | `declaration-track:8873d88d2a877b5dfd2733e579e4319bddd3c47dbab5a2624333cacee8e3302e` |
| 3 | `def` | [sampleRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/sampleradius--b9e8b8d74c1e035ffaa210b4.md) | 26 | `declaration-track:b9e8b8d74c1e035ffaa210b4294b659e5fd7af7747eb770af46e915f081241df` |
| 4 | `def` | [logCenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/logcenter--535a12e0207c932095b9049a.md) | 28 | `declaration-track:535a12e0207c932095b9049a17931f1c448316d7c27d5bcc6ce6c8663fd09284` |
| 5 | `def` | [sample](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/sample--22b121395bab5c15f5acc35a.md) | 29 | `declaration-track:22b121395bab5c15f5acc35a21b695a78ceba4cae6a4aeb0ba6e7a9c5339f3a2` |
| 6 | `def` | [powerJet](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/powerjet--40c53262bc0d44b3c45e9835.md) | 31 | `declaration-track:40c53262bc0d44b3c45e983553fd5ff5b271d6fc2e7430f3b098362640a4c823` |
| 7 | `def` | [powerError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/powererror--f21bc31bc7314854098d723e.md) | 34 | `declaration-track:f21bc31bc7314854098d723e7cf0ad7ab76c6e9cd8d7f227766b359bbbca46df` |
| 8 | `lemma` | [center_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/center-norm-le--9ec94e2b12604a1e51291de1.md) | 38 | `result-track:9ec94e2b12604a1e51291de14675a3e5153a6015c4b88709d2d0544e8bf4c03c` |
| 9 | `lemma` | [rounded_log](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/rounded-log--0d40518698e7829fdffddf1d.md) | 43 | `result-track:0d40518698e7829fdffddf1d6ced0700b51c09456f30857f32402aea5da16e26` |
| 10 | `lemma` | [log_enclosed_1](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/log-enclosed-1--ba0719876d23cf57722b6949.md) | 49 | `result-track:ba0719876d23cf57722b6949228ad6f4282c5771509b49ce3bf7cb89732e1c80` |
| 11 | `lemma` | [log_enclosed_2](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/log-enclosed-2--d4888a226edf77dd14fed963.md) | 52 | `result-track:d4888a226edf77dd14fed963c875a0a274d1be3339f2df2939ee2391606d25ef` |
| 12 | `lemma` | [log_enclosed_3](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/log-enclosed-3--a5997644db63c7df44490fcf.md) | 61 | `result-track:a5997644db63c7df44490fcf177c087e8034bdccddcb36af75d0b32b325743a6` |
| 13 | `lemma` | [log_enclosed_4](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/log-enclosed-4--b65e52a66933d8ed557357cc.md) | 70 | `result-track:b65e52a66933d8ed557357ccd56453dd3fd3d4a841718cbd36468a439be1107c` |
| 14 | `lemma` | [log_enclosed_5](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/log-enclosed-5--b2b724427b47ca0c3399a239.md) | 79 | `result-track:b2b724427b47ca0c3399a239c1829a175808d0874c97c7f5bdf967e55a550525` |
| 15 | `lemma` | [log_enclosed_6](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/log-enclosed-6--db1408975cae8aa67800ed15.md) | 88 | `result-track:db1408975cae8aa67800ed152ec6a41b1606af00dbcdfa469f159ddeae33dbc7` |
| 16 | `lemma` | [log_enclosed_7](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/log-enclosed-7--fe210f950b47d075389879b6.md) | 97 | `result-track:fe210f950b47d075389879b6a9d546d001b8b4ecfafbc538ee8c9a4d5b10d2ec` |
| 17 | `lemma` | [log_enclosed_8](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/log-enclosed-8--8622d4c945a92e56e5dbdea2.md) | 106 | `result-track:8622d4c945a92e56e5dbdea24263114da7846c2a77e2799acff7be43890cf0df` |
| 18 | `lemma` | [log_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/log-enclosed--290dcf0a1a2ee49ba05f6e42.md) | 115 | `result-track:290dcf0a1a2ee49ba05f6e42fd63246adafd00d779c6c19e70343cb056dc4a8a` |
| 19 | `lemma` | [center_power_helper](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/center-power-helper--6523f7e785cbacef91303e31.md) | 127 | `result-track:6523f7e785cbacef91303e312e189fa915c229e77fa7f0f218e7330b0a661afe` |
| 20 | `lemma` | [sample_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/sample-enclosed--6f4bf8ea89fa2dec6f3becad.md) | 151 | `result-track:6f4bf8ea89fa2dec6f3becad396be93186f5987337cd3a30eb5effe96fad7b86` |
| 21 | `lemma` | [powerError_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/powererror-nonneg--6a67474788b414643f654599.md) | 161 | `result-track:6a67474788b414643f6545991f23dc8732cd557bde3d9298d63921820ccda3b5` |
| 22 | `lemma` | [powerJet_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/powerjet-enclosed--669ae4ed4e2a89e26ad4452e.md) | 164 | `result-track:669ae4ed4e2a89e26ad4452e1d9c77bc4269db0f79bba63ce718a11d754e6062` |
| 23 | `def` | [weight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/weight--b067547e37a2721c618bb93a.md) | 182 | `declaration-track:b067547e37a2721c618bb93a1bbaf1fc932ea069f69da5533ac5119ff3f42c0f` |
| 24 | `def` | [sourcePolynomial](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/sourcepolynomial--0762037c6eb82617e9b60f6d.md) | 186 | `declaration-track:0762037c6eb82617e9b60f6dd319cfe72449923c7f6c33ec6f480789b90b8514` |
| 25 | `def` | [weightCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/weightcoefficient--1506deeb28d1842c7e881375.md) | 190 | `declaration-track:1506deeb28d1842c7e8813752b4a4122a75314835c08b9d40f2c71ab6f663569` |
| 26 | `lemma` | [weight_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/weight-identity--cfe42f0b1553f9d090d25623.md) | 192 | `result-track:cfe42f0b1553f9d090d256230fef77480b08f7e57e582f1d565193e0bc5aa13a` |
| 27 | `def` | [expCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/expcoefficient--2da504a7c54631152c86fa25.md) | 198 | `declaration-track:2da504a7c54631152c86fa251a321047194f942239ac4e5c87c2da7253f4cff9` |
| 28 | `def` | [exactCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/exactcoefficient--44c29a5e1dea350c2a5c6077.md) | 201 | `declaration-track:44c29a5e1dea350c2a5c6077628b16290139aa0a8ecd778f671a4721093550b2` |
| 29 | `def` | [coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/coefficient--cbe8bf81ea1539cc6f0f5171.md) | 208 | `declaration-track:cbe8bf81ea1539cc6f0f5171d5c5b2beb8a63c22030c8a55f87509a7d722f0ed` |
| 30 | `def` | [polynomial](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/polynomial--6da2547a00896180fcb22708.md) | 210 | `declaration-track:6da2547a00896180fcb227084c65c69699f99748876e3424a25ff2b892c16686` |
| 31 | `lemma` | [sourcePolynomial_coefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/sourcepolynomial-coefficients--fae9e1c70fd5739f53a89ccb.md) | 212 | `result-track:fae9e1c70fd5739f53a89ccb46c258f1f092bb7e39da39fca7934212a2de4299` |
| 32 | `lemma` | [coefficient_rounding](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/coefficient-rounding--6d2eece13254af7e6df5f2c3.md) | 222 | `result-track:6d2eece13254af7e6df5f2c3453662214db8180d33ce455ff8fbfacf8aeb8765` |
| 33 | `lemma` | [polynomial_rounding](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/polynomial-rounding--92c74413d8a7ac5203ff69df.md) | 230 | `result-track:92c74413d8a7ac5203ff69dfbb6f3b29af630e5f8275a4d8810e27bf3238a740` |
| 34 | `lemma` | [finite_error_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/declarations/finite-error-budget--963f1e1541268b8da84b4618.md) | 245 | `result-track:963f1e1541268b8da84b4618b28ad5ac00c319a9162840bda6a3bca487def758` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
