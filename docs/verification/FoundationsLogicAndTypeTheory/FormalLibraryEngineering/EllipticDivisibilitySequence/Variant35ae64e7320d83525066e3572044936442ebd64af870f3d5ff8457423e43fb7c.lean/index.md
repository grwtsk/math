# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EllipticDivisibilitySequence.Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fa27f0770a42581203b0ef385ff5713c565d83b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fa27f0770a42581203b0ef385ff5713c565d83b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.EvenOddRec` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEllSequence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/isellsequence--bf90007b642c4588e4aede47.md) | 74 | `declaration-track:bf90007b642c4588e4aede471112ce0aa045297b5ebba32a29e56e2c1d4e314c` |
| 2 | `def` | [IsDivSequence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/isdivsequence--a88d83fcc6893838649bb373.md) | 79 | `declaration-track:a88d83fcc6893838649bb37355e04152d3f45067830e4d3c0386efab27095233` |
| 3 | `def` | [IsEllDivSequence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/iselldivsequence--f7eac90b9f2237372a046041.md) | 83 | `declaration-track:f7eac90b9f2237372a046041c6943b4affe059d3185cde1770360af3ac79f669` |
| 4 | `lemma` | [isEllSequence_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/isellsequence-id--fead19389bae5e122ac99871.md) | 86 | `result-track:fead19389bae5e122ac99871e40348ce44c5abe4472586d4009a71958b34faf6` |
| 5 | `lemma` | [isDivSequence_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/isdivsequence-id--b8697ace7ac8eab8bea793b0.md) | 89 | `result-track:b8697ace7ac8eab8bea793b03f5b5632f0e42bbab0ceccbadc183d3e9b6ad4ab` |
| 6 | `theorem` | [isEllDivSequence_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/iselldivsequence-id--f0d44b4093ea1c6fd8b17acc.md) | 93 | `result-track:f0d44b4093ea1c6fd8b17acc731475194f9ae94d3f0788884b01d4cf9284720e` |
| 7 | `lemma` | [IsEllSequence.smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/isellsequence-smul--1f98270f46542b67866493c0.md) | 98 | `result-track:1f98270f46542b67866493c04baa3cfa5f41495d51eb2cfdfcb5ece58b70a310` |
| 8 | `lemma` | [IsDivSequence.smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/isdivsequence-smul--8c74f8dd4062889dd5d83482.md) | 102 | `result-track:8c74f8dd4062889dd5d834821a28c3de3563c058f3dd68e8c96e6bd345334da7` |
| 9 | `lemma` | [IsEllDivSequence.smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/iselldivsequence-smul--95395ddecade0ad6cc11e026.md) | 105 | `result-track:95395ddecade0ad6cc11e0263964d84572344de2d10a05b3257c244d1e106907` |
| 10 | `def` | [preNormEDS'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds--d212d159ca0709f7d7f6246e.md) | 116 | `declaration-track:d212d159ca0709f7d7f6246ea90a684f9206a31017ff6cbe4c781412f4d936b4` |
| 11 | `lemma` | [preNormEDS'_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-zero--3d7b4ac1e6c00c81d6001d30.md) | 133 | `result-track:3d7b4ac1e6c00c81d6001d308cb2dd8557160df9472bb1e27fc97e2207744a5b` |
| 12 | `lemma` | [preNormEDS'_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-one--0a188206cf465f61640a7359.md) | 137 | `result-track:0a188206cf465f61640a735966197b9bf6cc58769b5067ad13c3a9f8fb690593` |
| 13 | `lemma` | [preNormEDS'_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-two--09798f2c8f6d0d52fcebf434.md) | 141 | `result-track:09798f2c8f6d0d52fcebf434f5d1f2121946ed2bfd97bdc1c3be2714aae01c3b` |
| 14 | `lemma` | [preNormEDS'_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-three--fe0efc441117660b7162db2a.md) | 145 | `result-track:fe0efc441117660b7162db2acd739eaa38c22e5959c9c6e60ac670f062fa9082` |
| 15 | `lemma` | [preNormEDS'_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-four--4f57b8a064bcd55ec10c82f6.md) | 149 | `result-track:4f57b8a064bcd55ec10c82f63321378fb01aeb26c3082fd4ecfb5c6731278e3f` |
| 16 | `lemma` | [preNormEDS'_even](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-even--2f424d926440f605d62a96d4.md) | 152 | `result-track:2f424d926440f605d62a96d4d3f5d24983d775e992591be848ae532676733feb` |
| 17 | `lemma` | [preNormEDS'_odd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-odd--8c88bd75d10f98216c7da5a3.md) | 158 | `result-track:8c88bd75d10f98216c7da5a3d6df90c6f417089176b2326e5279892339508590` |
| 18 | `def` | [preNormEDS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds--e83aee5ebd27d72a5b01c3bf.md) | 168 | `declaration-track:e83aee5ebd27d72a5b01c3bf67b6bf1398c683b531ed711c23a79e69d617ece1` |
| 19 | `lemma` | [preNormEDS_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-ofnat--fe22f1b0dcfcd563a44b1bb6.md) | 172 | `result-track:fe22f1b0dcfcd563a44b1bb691936e289b066a9d35497e7649d7e6adb7865720` |
| 20 | `lemma` | [preNormEDS_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-zero--195f1c49ac4dced25bf45ba1.md) | 178 | `result-track:195f1c49ac4dced25bf45ba127e9f5dce8d0a66a837455fcdbee8d325b67230d` |
| 21 | `lemma` | [preNormEDS_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-one--70f0894311c916687d85b111.md) | 182 | `result-track:70f0894311c916687d85b11131960f0135cf3acb0ad64d4a0180ea05a70555fc` |
| 22 | `lemma` | [preNormEDS_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-two--3a5fb749adc8d3b987542201.md) | 186 | `result-track:3a5fb749adc8d3b987542201a063154a638324ca615eb9f55d16a2f8aa9dcb0b` |
| 23 | `lemma` | [preNormEDS_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-three--3e844d4f006cd5dcb858bcd1.md) | 190 | `result-track:3e844d4f006cd5dcb858bcd1afc433b9df311d0fb3de9b62ec293ff84dfdfabd` |
| 24 | `lemma` | [preNormEDS_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-four--4033299b4d9fb6f601f3c70f.md) | 194 | `result-track:4033299b4d9fb6f601f3c70fe00af5a9d051bbfb30909f8ff5c1923ad490a33d` |
| 25 | `lemma` | [preNormEDS_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-neg--e7102d07db56b1554bbd68b1.md) | 198 | `result-track:e7102d07db56b1554bbd68b10f914bc7cb7220b5cb8be96fcabf47d5c195360b` |
| 26 | `lemma` | [preNormEDS_even](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-even--b50caf67d54fd5618ca31ed0.md) | 201 | `result-track:b50caf67d54fd5618ca31ed0a3600a31521e292e4c8b3ec787f062e9529372b5` |
| 27 | `lemma` | [preNormEDS_odd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/prenormeds-odd--7aad64a47957ca516e4386e2.md) | 218 | `result-track:7aad64a47957ca516e4386e215d98ae86eac7c6b5657f8cbfb5ee97c94db64e3` |
| 28 | `def` | [normEDS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/normeds--5e1482e59b2681a8d5092d2e.md) | 246 | `declaration-track:5e1482e59b2681a8d5092d2e8acac83d93946803a46e9bef8d0d4653573ba293` |
| 29 | `lemma` | [normEDS_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/normeds-ofnat--907a9e19e9a2c8cfc7830007.md) | 250 | `result-track:907a9e19e9a2c8cfc7830007f3fb7f0bc1d4b505155ef04bc8d33da1ba9400c6` |
| 30 | `lemma` | [normEDS_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/normeds-zero--04549c413b9003968ac1fb9d.md) | 255 | `result-track:04549c413b9003968ac1fb9dbc85c1c6f858356929147918491195ebfccae0f8` |
| 31 | `lemma` | [normEDS_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/normeds-one--ca50101ca5e7ac223e2ce7ec.md) | 259 | `result-track:ca50101ca5e7ac223e2ce7ecc863b8846b863a690985ca6d3418c5496143df15` |
| 32 | `lemma` | [normEDS_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/normeds-two--1d7d36be9fb55afdabb99294.md) | 263 | `result-track:1d7d36be9fb55afdabb9929436c75c206304476ee9e625bef6a14b771b680f5f` |
| 33 | `lemma` | [normEDS_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/normeds-three--069349cce4a87977d66647a5.md) | 267 | `result-track:069349cce4a87977d66647a5b2707d666903f8db1822134d8802c5f318d61c5f` |
| 34 | `lemma` | [normEDS_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/normeds-four--02dce62a4dacc08b7a10c12a.md) | 271 | `result-track:02dce62a4dacc08b7a10c12ab33d56389a61047e1e9420c5ff21c8d451927454` |
| 35 | `lemma` | [normEDS_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/normeds-neg--1734b53c84046d69631a0dc0.md) | 275 | `result-track:1734b53c84046d69631a0dc083f6d08eb548d993b8a7c865ed17c042eb22f684` |
| 36 | `lemma` | [normEDS_even](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/normeds-even--3b87aa05f28234126b85c27e.md) | 278 | `result-track:3b87aa05f28234126b85c27eb3e7aaee91ddc2831b6519d3b09a452d6fac2370` |
| 37 | `lemma` | [normEDS_odd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/normeds-odd--1234c50b13bbecd4f4a2b959.md) | 287 | `result-track:1234c50b13bbecd4f4a2b95975578be34219ad0d85140a2917d63407af7e1ccb` |
| 38 | `def` | [normEDSRec'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/normedsrec--4c8b97e0eaf919465218143f.md) | 302 | `declaration-track:4c8b97e0eaf919465218143f200307033fdc87128ae0ce9212d22c2c6daf017f` |
| 39 | `def` | [normEDSRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/normedsrec--a29fe00cab66dcdd1506f22c.md) | 317 | `declaration-track:a29fe00cab66dcdd1506f22c5083def70dd364a686e6433e162f190b555a63f3` |
| 40 | `lemma` | [map_preNormEDS'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/map-prenormeds--a90553fa7bc056a29d3db6ee.md) | 332 | `result-track:a90553fa7bc056a29d3db6ee03f9154b0620b3bec9b7367fe5f1cf3aeb37ad73` |
| 41 | `lemma` | [map_preNormEDS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/map-prenormeds--8fa06949dddbbbcc95ca8394.md) | 344 | `result-track:8fa06949dddbbbcc95ca8394497512596d45dd54b6fc840ff1973496a704481f` |
| 42 | `lemma` | [map_normEDS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant35ae64e7320d83525066e3572044936442ebd64af870f3d5ff8457423e43fb7c.lean/declarations/map-normeds--3e266358a4cd9066c81c35e8.md) | 348 | `result-track:3e266358a4cd9066c81c35e862dd9bb85868cd4585165906db43260290d9d5a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
