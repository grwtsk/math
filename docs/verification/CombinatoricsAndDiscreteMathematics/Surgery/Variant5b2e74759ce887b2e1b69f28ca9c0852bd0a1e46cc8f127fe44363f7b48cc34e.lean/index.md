# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Surgery.Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e387de088be96022eb76e382f0b913dbef7a4dc",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e387de088be96022eb76e382f0b913dbef7a4dc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.PrecisionAccuracy` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [KernelAtom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/kernelatom--807cf0d5365ca0576fbc07cf.md) | 14 | `declaration-track:807cf0d5365ca0576fbc07cf65c29bcb12884ec81bb0741421fb6a63eb8b8580` |
| 2 | `def` | [all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/all--060a2bba9d5ac29e195a170f.md) | 26 | `declaration-track:060a2bba9d5ac29e195a170fe0023fe03e51c4d9415e0bd1042bf0221eff9f6a` |
| 3 | `theorem` | [mem_all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/mem-all--500e3955500d8eece78e43f5.md) | 29 | `result-track:500e3955500d8eece78e43f5e2b1a12c80f1ccd779558ec0865172f3ee714097` |
| 4 | `theorem` | [card_all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/card-all--7ab338bd9b3e780f5394896e.md) | 33 | `result-track:7ab338bd9b3e780f5394896e5035b362a1819e26e2893c50f590d150ed1b912f` |
| 5 | `theorem` | [card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/card--f86b1b69a00a36b28c4501e0.md) | 36 | `result-track:f86b1b69a00a36b28c4501e0f750c205996cd68500ddade67237a845cf0b2dce` |
| 6 | `inductive` | [FinitePlan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/finiteplan--36e0e8a749a0d2c11d9188e4.md) | 41 | `declaration-track:36e0e8a749a0d2c11d9188e4238c76df20e15587aa176b55bc427fa9aef8fa7c` |
| 7 | `def` | [flatten](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/flatten--dece6bc2083e97cafec4f967.md) | 50 | `declaration-track:dece6bc2083e97cafec4f967b6036cec4630678b1ee5cc4d108a4c9dd2619f6a` |
| 8 | `theorem` | [flatten_identity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/flatten-identity--6bcf0837c8e8a2e88bb162db.md) | 55 | `result-track:6bcf0837c8e8a2e88bb162dbf3e57829ef1fe56331799599fa826984574edbe2` |
| 9 | `theorem` | [flatten_atom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/flatten-atom--6b8a205f00c5e28042962c4b.md) | 57 | `result-track:6b8a205f00c5e28042962c4b0ae264ba5fa88085a4519964402d4d6f4675f51b` |
| 10 | `theorem` | [flatten_stage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/flatten-stage--3010c9b270820d095d54c30e.md) | 60 | `result-track:3010c9b270820d095d54c30ea68e41725a81c4d7b32f3f25dad3e3062b1034bb` |
| 11 | `def` | [ofList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/oflist--ba5a40976f0862486eb578f1.md) | 64 | `declaration-track:ba5a40976f0862486eb578f18e1db1e2d9b4d7461f09fc926be3623cf73f565e` |
| 12 | `theorem` | [flatten_ofList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/flatten-oflist--e6a4c900acefc3d1b78adf85.md) | 68 | `result-track:e6a4c900acefc3d1b78adf858e33d25609ac800d9ce86fc5f50cd1c99209e0f8` |
| 13 | `def` | [Equivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/equivalent--39f01451265cd0ea9cebce14.md) | 75 | `declaration-track:39f01451265cd0ea9cebce1450f67542b3f5cf0601b09d20bba39830c5debc4d` |
| 14 | `theorem` | [equivalent_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/equivalent-refl--4656c812079d1355bec2af66.md) | 78 | `result-track:4656c812079d1355bec2af666e47d6ed740fa86275e3028369c27ad5c74668c8` |
| 15 | `theorem` | [equivalent_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/equivalent-symm--456a1c6ca23b768c46a2ad11.md) | 80 | `result-track:456a1c6ca23b768c46a2ad113e5ff63dafb9f96f752198758630f4fc770fed61` |
| 16 | `theorem` | [equivalent_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/equivalent-trans--6e5a005611a09d481b1f0767.md) | 83 | `result-track:6e5a005611a09d481b1f07674f988f9652840db25aacee425fdcde2f403a11d9` |
| 17 | `def` | [normalize](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/normalize--fcb4695f8b050c9349c13d5c.md) | 88 | `declaration-track:fcb4695f8b050c9349c13d5c1c21d3695a09a36218d4392ccd165e6308b0715c` |
| 18 | `theorem` | [flatten_normalize](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/flatten-normalize--345ed32efe1ed5e62aba9452.md) | 90 | `result-track:345ed32efe1ed5e62aba945236cbac8ba50ec5d7b24e676198acd675278bdd27` |
| 19 | `theorem` | [equivalent_normalize](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/equivalent-normalize--99aac42215425680bf5866e4.md) | 94 | `result-track:99aac42215425680bf5866e413e7313d47f861535d8d7d1a0f68d1902dfd7bcc` |
| 20 | `theorem` | [normalize_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/normalize-idempotent--f61843aa10efd1d2e0491234.md) | 98 | `result-track:f61843aa10efd1d2e0491234533d24b61c11ce336dcfee26c3852edacc78056e` |
| 21 | `theorem` | [normalize_eq_of_equivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/normalize-eq-of-equivalent--13bc6fee13833a8b5abc15b1.md) | 103 | `result-track:13bc6fee13833a8b5abc15b176485ae4785d1f320134fac6692e81cdb48190d2` |
| 22 | `theorem` | [stage_associative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/stage-associative--8817ecd10e749e71fc4d8e28.md) | 108 | `result-track:8817ecd10e749e71fc4d8e28fc336c68f12e3dec4579fc44046393f8e2b6e1d9` |
| 23 | `theorem` | [stage_identity_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/stage-identity-left--4fabe4e9dda427594cb85124.md) | 113 | `result-track:4fabe4e9dda427594cb85124c3cf9dc0a6965d004f9048ea84eebf18073e832e` |
| 24 | `theorem` | [stage_identity_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/stage-identity-right--de8ffe6c9091f7d9e3cbc354.md) | 117 | `result-track:de8ffe6c9091f7d9e3cbc354b39ae2486a904254670456854a2a4f001a5fdfc6` |
| 25 | `def` | [atomCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/atomcount--f3586360f8d103fc06257270.md) | 122 | `declaration-track:f3586360f8d103fc06257270c08e1f4ace1d4cb9c24e305362bf18b8049385e3` |
| 26 | `theorem` | [atomCount_normalize](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/atomcount-normalize--6fe01786be4e2849263f36c4.md) | 124 | `result-track:6fe01786be4e2849263f36c467b5fda05890dca41b90d81d0be01fab3da4fcfe` |
| 27 | `theorem` | [stage_ne_atom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/stage-ne-atom--b1992e00a8ebf02c7e08f4c8.md) | 129 | `result-track:b1992e00a8ebf02c7e08f4c8769bd09b3f32d9d5fe2c7fc9a046f37a83870906` |
| 28 | `inductive` | [BasisTheoremStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/basistheoremstatus--9d03c01a44bd8904de3ccda3.md) | 136 | `declaration-track:9d03c01a44bd8904de3ccda30b3a6d5c3114a5b541f4d7459e7daa95a51e6115` |
| 29 | `structure` | [MutationBasisClaim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/mutationbasisclaim--9f084fe8160af767eb95e172.md) | 143 | `declaration-track:9f084fe8160af767eb95e17290d1daee4631f14fd56d67b7b15b21e3aab11616` |
| 30 | `def` | [Valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/valid--7a6737b0575a3b654051acc0.md) | 161 | `declaration-track:7a6737b0575a3b654051acc025605973953d53583b05fd01ebe896c00bc418c9` |
| 31 | `theorem` | [established_minimality_has_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/established-minimality-has-certificate--7ecaa0e3c7a1afe1a494e57e.md) | 171 | `result-track:7ecaa0e3c7a1afe1a494e57efe5e7b9bbeba78f589b29115ad46508126ffc31b` |
| 32 | `theorem` | [established_uniqueness_has_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/established-uniqueness-has-certificate--ed116c77c1d3d4a829209936.md) | 175 | `result-track:ed116c77c1d3d4a829209936d10d6730c2f83651cf98021043bf50ffe995f295` |
| 33 | `theorem` | [sufficiency_does_not_entail_minimality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/sufficiency-does-not-entail-minimality--5f14b81d7cce339ef405e7e3.md) | 182 | `result-track:5f14b81d7cce339ef405e7e3e3f3f124e607c5b8f6da7ec8a271c585b37dbdfa` |
| 34 | `theorem` | [sufficiency_does_not_entail_uniqueness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/sufficiency-does-not-entail-uniqueness--562f5a10a14b72a8755c90fa.md) | 206 | `result-track:562f5a10a14b72a8755c90fac337277653d923db9100e3c2968c6d9e29c9a3f4` |
| 35 | `structure` | [FiniteMutationPlanRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/finitemutationplanrecord--7b3f6cfe0b50de6e266d2d5d.md) | 229 | `declaration-track:7b3f6cfe0b50de6e266d2d5dafcae684148395ed5846cebe1a4632aaa0738cc4` |
| 36 | `def` | [Pinned](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/pinned--08add5c5defe3b269a3ae4ea.md) | 244 | `declaration-track:08add5c5defe3b269a3ae4ea62dc993dd749bf8b2a81b67275b43951b9972313` |
| 37 | `structure` | [BoundedStreamWindow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/boundedstreamwindow--401afb2111b2f122967cbf6b.md) | 254 | `declaration-track:401afb2111b2f122967cbf6b23d56c5d6010256d9cc8191755160e01f6176729` |
| 38 | `def` | [Finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/finite--23fdf4df32b9ffe48bd46b79.md) | 272 | `declaration-track:23fdf4df32b9ffe48bd46b79f76556f156f1201673ca353df914fa5bb4ab5541` |
| 39 | `structure` | [StreamContinuation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/streamcontinuation--7cc4ffffd47ddbb5c6592dc6.md) | 282 | `declaration-track:7cc4ffffd47ddbb5c6592dc66fbd2b3f26478a4fcfe05bc74cf8f879429e0af5` |
| 40 | `theorem` | [window_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/window-finite--1420cd24d55f48012c1124db.md) | 290 | `result-track:1420cd24d55f48012c1124dbede3caf476505bae7f851957ba22ce7df6f21644` |
| 41 | `inductive` | [RollbackKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/rollbackkind--b4d0fb221d67ff7eb9404856.md) | 296 | `declaration-track:b4d0fb221d67ff7eb94048562e67de2028bdfe7c2c54bba9324a40c8c7e6e4db` |
| 42 | `structure` | [RollbackRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/rollbackrecord--c5fae897d55cf68b3779d7a2.md) | 303 | `declaration-track:c5fae897d55cf68b3779d7a29629cfe47e3a53c80ebc3eba882cf88b1e26ef0e` |
| 43 | `def` | [AlgebraicallyCertified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/algebraicallycertified--c7ed3292f61258c37b907332.md) | 318 | `declaration-track:c7ed3292f61258c37b907332d7e5a0f69d7c83ad98a7efccba0d629cd34b1162` |
| 44 | `theorem` | [algebraicallyCertified_kind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/algebraicallycertified-kind--7c41e26384a1c29ad0eec3df.md) | 321 | `result-track:7c41e26384a1c29ad0eec3df3cf0467e6614357a8fc4ecc6d029d2ce129ed9f7` |
| 45 | `theorem` | [algebraicallyCertified_has_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/algebraicallycertified-has-certificate--333f97ead5c385f7c972e863.md) | 324 | `result-track:333f97ead5c385f7c972e863c5aaa5faef9146bb1c47ced0b0dce9875f81b54a` |
| 46 | `theorem` | [pointer_restoration_not_algebraic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/pointer-restoration-not-algebraic--8ab2a919eaf437e19b674476.md) | 327 | `result-track:8ab2a919eaf437e19b674476579fed30c584c7d21d3fe502f1113b2d9fce8bab` |
| 47 | `theorem` | [compensating_revision_not_algebraic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e.lean/declarations/compensating-revision-not-algebraic--ffe7eb3b706b1acc2281a52e.md) | 333 | `result-track:ffe7eb3b706b1acc2281a52e45eb11837daf5cfe13945ecefe941faf09f10b9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
