# Verification target: GRWTSK.Analysis.Polar.Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1203a38297906e6c0265254b99469e51b47a13e8",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/index.md) · [Full source](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1203a38297906e6c0265254b99469e51b47a13e8`.

Source path: `GRWTSK/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polar](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar--2fc9451001deb4e020e08046.md) | 55 | `declaration-track:2fc9451001deb4e020e08046c94f5deaa0480878b47fc8610ee955d679717f34` |
| 2 | `theorem` | [polar_mem_iff](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-mem-iff--26eb603ecded0f8f438ed442.md) | 58 | `result-track:26eb603ecded0f8f438ed44210d1ddbea0983ba4e646630c48a6d31326bc680e` |
| 3 | `theorem` | [polar_mem](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-mem--a99d1debe057341b7028e1be.md) | 61 | `result-track:a99d1debe057341b7028e1beb19c2b3b1c673d7e0fcb32b45249427aa7cbcd51` |
| 4 | `theorem` | [polar_eq_biInter_preimage](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-eq-biinter-preimage--7470c814ff15b045a2c8b264.md) | 64 | `result-track:7470c814ff15b045a2c8b26476db9ccb912f5781971cde0495338eeedc2f5d8a` |
| 5 | `theorem` | [polar_isClosed](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-isclosed--a84829dde83fa8ca2f75aa94.md) | 68 | `result-track:a84829dde83fa8ca2f75aa94891fe4fc520b450a0165597ffe609a66431148ef` |
| 6 | `theorem` | [zero_mem_polar](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/zero-mem-polar--bff37b5cd3ee7d7da923b824.md) | 74 | `result-track:bff37b5cd3ee7d7da923b824f98938a730131bfc19db236be81948a7a12a0b52` |
| 7 | `theorem` | [polar_nonempty](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-nonempty--e2417858cd64238908062af1.md) | 77 | `result-track:e2417858cd64238908062af1669c10fc8bed28202353532eff2ae80e697c4c10` |
| 8 | `theorem` | [polar_eq_iInter](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-eq-iinter--6a58b109bf6cf45b1ceaa61b.md) | 81 | `result-track:6a58b109bf6cf45b1ceaa61bac4c51cd7c8bfbe27d0a8fe3b50915a54decb683` |
| 9 | `theorem` | [polar_gc](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-gc--7a89d47f13e33204d4039475.md) | 88 | `result-track:7a89d47f13e33204d40394750dbfcb5b3bda94ed25115b47bc3667cbcfe4e500` |
| 10 | `theorem` | [polar_iUnion](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-iunion--b85aac9ee7349ac51e8b5aec.md) | 93 | `result-track:b85aac9ee7349ac51e8b5aecb056e804d0164468d063080d230d7636c1219f0d` |
| 11 | `theorem` | [polar_union](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-union--b16d5ed90ff41d0343e9eca3.md) | 97 | `result-track:b16d5ed90ff41d0343e9eca3170eaea2699ce6d0526ef502f79e3745a58eac92` |
| 12 | `theorem` | [polar_antitone](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-antitone--ed0b93bfcb15ab3676b5b52d.md) | 100 | `result-track:ed0b93bfcb15ab3676b5b52d262aa4ae6740d30657237b149ba4e9e82f2c0c76` |
| 13 | `theorem` | [polar_empty](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-empty--e11aa6118dac45398c502c41.md) | 104 | `result-track:e11aa6118dac45398c502c416494406648839d02db1fe387f1237ae05d58c085` |
| 14 | `theorem` | [polar_singleton](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-singleton--e8ded8017419e87e08228b11.md) | 108 | `result-track:e8ded8017419e87e08228b1126d836cc5ece134686a5d5a5b358c6cbc0099643` |
| 15 | `theorem` | [mem_polar_singleton](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/mem-polar-singleton--e24d7e83624fdc2dc48bddb2.md) | 112 | `result-track:e24d7e83624fdc2dc48bddb24a35647fbe772888822c83b3a6c90f7d1f08828a` |
| 16 | `theorem` | [polar_zero](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-zero--f175511c984568ce8a80f2bc.md) | 115 | `result-track:f175511c984568ce8a80f2bc4d2ab0c341dcd15aa71c030e4b0d98ca0c98affb` |
| 17 | `theorem` | [subset_bipolar](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/subset-bipolar--e3e7d2dd14230050b5241377.md) | 118 | `result-track:e3e7d2dd14230050b524137723e4dae50f25d3733ac88ef62f6e1edbc6935f2e` |
| 18 | `theorem` | [tripolar_eq_polar](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/tripolar-eq-polar--5575d21c148e7dfe435e6c05.md) | 123 | `result-track:5575d21c148e7dfe435e6c057df97f25f613acf8dc73244a051f958449f91e0a` |
| 19 | `theorem` | [sInter_polar_finite_subset_eq_polar](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/sinter-polar-finite-subset-eq-polar--1cf59c5e8f84cfee9807c9eb.md) | 126 | `result-track:1cf59c5e8f84cfee9807c9ebb080e1bb01208b55b96008b85ea6d7ff8c868b7f` |
| 20 | `theorem` | [polar_univ](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-univ--3ffeca21d1aa974e619dca2e.md) | 143 | `result-track:3ffeca21d1aa974e619dca2e111a10751c092b9b604b6f059ddb59c0d8c2d621` |
| 21 | `theorem` | [polar_subMulAction](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-submulaction--f1ff8d09983205613ad22441.md) | 155 | `result-track:f1ff8d09983205613ad22441e3ba36ec62164d357742a0183324cc7c642cb42d` |
| 22 | `def` | [polarSubmodule](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polarsubmodule--2c640088c2e537497ee805b8.md) | 168 | `declaration-track:2c640088c2e537497ee805b8ba3399070c4a45d45229e9a2721fbbda1aa14bb9` |
| 23 | `theorem` | [dualPairing_separatingLeft](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/dualpairing-separatingleft--18b2180bffdb5bfdb910528f.md) | 181 | `result-track:18b2180bffdb5bfdb910528f2d45c4f48d4329bae7475ff8b2a2517274914663` |
| 24 | `def` | [polar](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar--94bcae5e79bded584943e8b3.md) | 192 | `declaration-track:94bcae5e79bded584943e8b3b603afb9ab4b194e002b4f4c68d6f501a3e853a8` |
| 25 | `def` | [polarSubmodule](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polarsubmodule--c4c9454000b27248f9f570fa.md) | 199 | `declaration-track:c4c9454000b27248f9f570fa8faa9189d8056e4cc99ca31a281cfbaf80889271` |
| 26 | `lemma` | [polarSubmodule_eq_polar](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polarsubmodule-eq-polar--9e4fd99bdcad188ecae13115.md) | 206 | `result-track:9e4fd99bdcad188ecae13115cc175b57a944a9840b1bd926680c1347a59f2721` |
| 27 | `theorem` | [mem_polar_iff](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/mem-polar-iff--3bb724463250d261c167508e.md) | 209 | `result-track:3bb724463250d261c167508e4cc5fd87de4df102786d7ff591f2217c2db3c5f0` |
| 28 | `lemma` | [polarSubmodule_eq_setOfPred](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polarsubmodule-eq-setofpred--fd7c91d10e78f412e76076a4.md) | 212 | `result-track:fd7c91d10e78f412e76076a46669b6227f2df7f78f21ad2de67fd0ec2bf46a9d` |
| 29 | `lemma` | [mem_polarSubmodule](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/mem-polarsubmodule--6550c014b3a1899e915457b6.md) | 219 | `result-track:6550c014b3a1899e915457b66e502e5422e1a91f535103272617248bf6732243` |
| 30 | `theorem` | [zero_mem_polar](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/zero-mem-polar--3ebb5437364dd9ad624f9c6c.md) | 224 | `result-track:3ebb5437364dd9ad624f9c6cc9b8211743d433685d6943defe0039c6973bfc3e` |
| 31 | `theorem` | [polar_nonempty](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-nonempty--e7a49fa78c43d055251ea2da.md) | 227 | `result-track:e7a49fa78c43d055251ea2da29b8af5c5a3f0e9e3339bf795cb0d15e3f9ac639` |
| 32 | `theorem` | [polar_empty](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-empty--3e76274595e6e41431668e5e.md) | 233 | `result-track:3e76274595e6e41431668e5e616702e8629f20964716ae8b517e8555950fb38a` |
| 33 | `theorem` | [polar_singleton](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-singleton--937598f7101f0b94b1e031ee.md) | 237 | `result-track:937598f7101f0b94b1e031eeeef6c3df6d5b78c9e1301475f824e82a7bb8668a` |
| 34 | `theorem` | [mem_polar_singleton](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/mem-polar-singleton--2ddc7067b5fc868d8c0b573c.md) | 240 | `result-track:2ddc7067b5fc868d8c0b573c05dc7e61dd63678d4d435d7ea55aa4467da9d425` |
| 35 | `theorem` | [polar_zero](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-zero--a7f6b5da70c5920d267d5f14.md) | 243 | `result-track:a7f6b5da70c5920d267d5f149259df6b05e18c43db74f27ca29c347338bc8371` |
| 36 | `theorem` | [polar_univ](../../../../mathematics/Analysis/Polar/Variant110f26e2d5eaa62043d78c5204e8bf1e27d6fd0b1f6a21224b777cffcb7a6d4c.lean/declarations/polar-univ--f15f5b266f009a248b3d1aae.md) | 256 | `result-track:f15f5b266f009a248b3d1aaead01b4b0f7f978578e698ba6a897196df25d5792` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
