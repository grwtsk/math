# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PropertyTransport.Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5db49e5aa7bdd14dbad268b73fad1ee8338997b7",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5db49e5aa7bdd14dbad268b73fad1ee8338997b7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.Relation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.SnapshotAuthority` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weakensToBottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/weakenstobottom--1b7d0a88c28dd6c30388612e.md) | 26 | `declaration-track:1b7d0a88c28dd6c30388612ea8e446a27b50e450ec2506bd89d1910b11cad84e` |
| 2 | `theorem` | [weakensToBottom_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/weakenstobottom-trans--741b695a1ca196bc05b87c84.md) | 31 | `result-track:741b695a1ca196bc05b87c84137f6d8b5d7df5a52631d81724272111eeb59d59` |
| 3 | `def` | [Profile.NoStrongerThan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/profile-nostrongerthan--83303935cda3b2a81711a9f0.md) | 45 | `declaration-track:83303935cda3b2a81711a9f0aefa22f66e661306fed7ed662f6baf93bf4cf37f` |
| 4 | `theorem` | [Profile.noStrongerThan_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/profile-nostrongerthan-refl--43c32fd626c34c086133b9d4.md) | 62 | `result-track:43c32fd626c34c086133b9d4e64d3286829c3df5d59503470e116df0075e1d35` |
| 5 | `theorem` | [Profile.NoStrongerThan.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/profile-nostrongerthan-trans--457d4309f956561dce490210.md) | 68 | `result-track:457d4309f956561dce4902103d10c64eb014bfbfe601219f6631f010a4c99409` |
| 6 | `inductive` | [TransportAdmission](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/transportadmission--6ee03a2857428df123c6b276.md) | 91 | `declaration-track:6ee03a2857428df123c6b2769705c06d9d192f520e328f01ee0c30e8e112a02e` |
| 7 | `def` | [comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/comp--f87ae2638ac422a03e7a248a.md) | 99 | `declaration-track:f87ae2638ac422a03e7a248a66606350d3591a82e0ec2059671c1b4b1d12a59d` |
| 8 | `theorem` | [denied_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/denied-comp--1a88a0a40c6766f24e2bb665.md) | 106 | `result-track:1a88a0a40c6766f24e2bb665da54b6eeec17a554a4432843726edb689a1c7aa9` |
| 9 | `theorem` | [comp_denied](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/comp-denied--9d767126b2af6ebf43770070.md) | 111 | `result-track:9d767126b2af6ebf43770070642a653c158c026447f37800eed51468177c2713` |
| 10 | `inductive` | [TransportEvidenceKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/transportevidencekind--f1b968a6584673603c73c211.md) | 119 | `declaration-track:f1b968a6584673603c73c2114522944099e5f4cb7c66c808985e8b107015eb66` |
| 11 | `structure` | [PathAction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/pathaction--4c9b2d64223de2b85986f401.md) | 127 | `declaration-track:4c9b2d64223de2b85986f401a3cc38a835555820cf1dc1de32aa41088730f863` |
| 12 | `theorem` | [map_identity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/map-identity--58ce533137afb4334ca0679c.md) | 160 | `result-track:58ce533137afb4334ca0679c89e9393c98db4e29aa71a1d42c1167b276ab0074` |
| 13 | `theorem` | [map_composite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/map-composite--31494e5c8fd23a6a0f7a2eb4.md) | 166 | `result-track:31494e5c8fd23a6a0f7a2eb429ace68eb7aa40c9caf50f4f232fe62ffc14db5a` |
| 14 | `structure` | [PathGroupoidAction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/pathgroupoidaction--4e9c8de135ecf98342c50478.md) | 178 | `declaration-track:4e9c8de135ecf98342c504783e43811e11861355fbbda98dcd4494dcc0825416` |
| 15 | `def` | [holonomy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/holonomy--a20501170c66aaac010bbc71.md) | 202 | `declaration-track:a20501170c66aaac010bbc71135d85a42a4c7a44db9194490d930bbcbe512097` |
| 16 | `theorem` | [inverse_transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/inverse-transport--fa0e47b92f2aef8850b1b120.md) | 209 | `result-track:fa0e47b92f2aef8850b1b12022ef2e20b31f78b37e74d37ea1214ec269d688eb` |
| 17 | `structure` | [FiberProperty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/fiberproperty--5192af1f507e2ba17b43a1c7.md) | 221 | `declaration-track:5192af1f507e2ba17b43a1c7a40045c11c4e101bec22a8296df1209357a659ea` |
| 18 | `structure` | [PropertyNaturality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/propertynaturality--be0a29c99c15c6135071f9b3.md) | 229 | `declaration-track:be0a29c99c15c6135071f9b31c3fcbab2b0dd519dbd53eb49b90f3cbe2838b4b` |
| 19 | `theorem` | [transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/transport--ccb2d32ebac78c5d3abf4649.md) | 250 | `result-track:ccb2d32ebac78c5d3abf4649292174000f0378da3a5e38eb2c010e8a5c5f8c1d` |
| 20 | `theorem` | [along_composite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/along-composite--e56fe0eb6e49ed639355e187.md) | 263 | `result-track:e56fe0eb6e49ed639355e187569d7ebc6eb59f872dea65f88ccaf407449aabc6` |
| 21 | `structure` | [CertifiedPreservedProperty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/certifiedpreservedproperty--2dc4f0f37feb428eafe8e421.md) | 282 | `declaration-track:2dc4f0f37feb428eafe8e4216868e97ec39d60fbf7b91078e429de0c5a44df24` |
| 22 | `theorem` | [transports](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/transports--648c52060ba4c8bd3eeb1c36.md) | 311 | `result-track:648c52060ba4c8bd3eeb1c36d6439b67b3ba9a382d2fbad86651e30a96c0b2ac` |
| 23 | `theorem` | [admittedTransports](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/admittedtransports--25eeb36c05266c8768ec99a5.md) | 323 | `result-track:25eeb36c05266c8768ec99a53daa29561cec2c9aa5ff406722d6a6e463b1cdfd` |
| 24 | `theorem` | [heuristic_has_no_theorem_authority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/heuristic-has-no-theorem-authority--12316d2d7f015fe7e4870cc0.md) | 334 | `result-track:12316d2d7f015fe7e4870cc0869ca7842047fac4082aef0a412de4ef92fd5be7` |
| 25 | `structure` | [CertifiedAnalogyTransport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/certifiedanalogytransport--32d822423ee01e56217630ba.md) | 346 | `declaration-track:32d822423ee01e56217630ba11ef79ee2085af93d159da9f33fb586bf1b48c98` |
| 26 | `def` | [rhetoricalOnly](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/rhetoricalonly--f6195d98d7ba1f40d789eff8.md) | 375 | `declaration-track:f6195d98d7ba1f40d789eff853dbe11368afccf3b5d9c5319b096fc9fff03477` |
| 27 | `theorem` | [rhetoricalOnly_preserved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/rhetoricalonly-preserved--3ca098c1b5e4d4e7fa39282f.md) | 400 | `result-track:3ca098c1b5e4d4e7fa39282ff005d4aa4804e8a045fb1a3daf6f4bdec3fa26e6` |
| 28 | `theorem` | [rhetoricalOnly_denied](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/declarations/rhetoricalonly-denied--06e6f39bbd259505cc145148.md) | 411 | `result-track:06e6f39bbd259505cc145148bbea490d891dacd19ba2507807a832ee616b0849` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
