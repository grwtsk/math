# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DegLex.Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "776e21995ff39359307c32bc41429c3bc9065578",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `776e21995ff39359307c32bc41429c3bc9065578`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.MonomialOrder` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Weight` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/deglex--828ae8030d0cd45bcaff354b.md) | 36 | `declaration-track:828ae8030d0cd45bcaff354b87bc2fd24fd4d8d71a2df0576c785defcdd56e80` |
| 2 | `def` | [toDegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/todeglex--99bac9b262f29480760834f2.md) | 41 | `declaration-track:99bac9b262f29480760834f2fa7e32a5034a872e50216b06717324fbacc17151` |
| 3 | `theorem` | [toDegLex_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/todeglex-injective--58ee0cb82b08e1ec8f8bb1c7.md) | 43 | `result-track:58ee0cb82b08e1ec8f8bb1c7683f671fe3444a337a04feb825ea72ecbc24c3ec` |
| 4 | `theorem` | [toDegLex_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/todeglex-inj--38b82d05141a66d7969ffd4e.md) | 45 | `result-track:38b82d05141a66d7969ffd4ee41c5b88e9e7e5a8c9ef36ed10bafa28fd55c3d3` |
| 5 | `def` | [ofDegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/ofdeglex--859f7a4d6c81fe56ee0b74fc.md) | 48 | `declaration-track:859f7a4d6c81fe56ee0b74fcfe788045d98eebc51fad15b3b0164b9cb1d9f792` |
| 6 | `theorem` | [ofDegLex_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/ofdeglex-injective--b3c0b466ebc5f6b07356ef95.md) | 50 | `result-track:b3c0b466ebc5f6b07356ef953ffb794a8b35c114a478042e0394d67ccbb9e054` |
| 7 | `theorem` | [ofDegLex_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/ofdeglex-inj--22b9c93a9a9f9952408f4675.md) | 52 | `result-track:22b9c93a9a9f9952408f4675519fbebc6d3c994c755438cef66e95e82159c5ae` |
| 8 | `theorem` | [ofDegLex_symm_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/ofdeglex-symm-eq--ca8623ff4b8b12bc026715e1.md) | 54 | `result-track:ca8623ff4b8b12bc026715e184296edff0941583d9c1a803f4743db42112e61b` |
| 9 | `theorem` | [toDegLex_symm_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/todeglex-symm-eq--5ff1377d7926048c281176ed.md) | 56 | `result-track:5ff1377d7926048c281176edf3f1637d84d2703335188a91b443a5355356b6ab` |
| 10 | `theorem` | [ofDegLex_toDegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/ofdeglex-todeglex--7ee1d3bc93271414e6819bea.md) | 58 | `result-track:7ee1d3bc93271414e6819bea46347750edf40f4142c906a71d732b0c30dc8be8` |
| 11 | `theorem` | [toDegLex_ofDegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/todeglex-ofdeglex--9ef23629495bc85554c443c6.md) | 60 | `result-track:9ef23629495bc85554c443c662a7f396db35179ab9c7c8f4816ea9af9f804a47` |
| 12 | `def` | [DegLex.rec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/deglex-rec--59394ad24dc4041eb98e2e29.md) | 64 | `declaration-track:59394ad24dc4041eb98e2e2912ee3b86c649d30c5c1125379be1366b94995691` |
| 13 | `lemma` | [DegLex.forall_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/deglex-forall-iff--c7de6fd697f499a8434bb7eb.md) | 67 | `result-track:c7de6fd697f499a8434bb7eb4efa36fef4c09399671322190f97b51a8fcba6d8` |
| 14 | `lemma` | [DegLex.exists_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/deglex-exists-iff--33cb0819f51cf0ca809b95cd.md) | 68 | `result-track:33cb0819f51cf0ca809b95cd4b8fdbdc27a7c95c852669f941a5919e789e76cc` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/instance--4052021e3b743c04ec074ad4.md) | 70 | `declaration-track:4052021e3b743c04ec074ad48c048cf9827b28e3cd6fdfa3db8c3cdc9ed7815c` |
| 16 | `theorem` | [toDegLex_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/todeglex-add--1c3b008b6f0aefb53b76a5d5.md) | 73 | `result-track:1c3b008b6f0aefb53b76a5d5cb2c8cd1519b62243878ac3d93c33ccfb0bc5c6c` |
| 17 | `theorem` | [ofDegLex_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/ofdeglex-add--75dae60176fd952760631585.md) | 76 | `result-track:75dae60176fd95276063158535dd7b0517901552047565e25729a109d04177be` |
| 18 | `def` | [DegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/deglex--b8c9570e5fc7f9e44d8e3610.md) | 85 | `declaration-track:b8c9570e5fc7f9e44d8e3610c7a18de930d62b3f4db4ee18b112b8bde213efa5` |
| 19 | `theorem` | [degLex_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/deglex-def--d4036eb519c8806a69e4b4ba.md) | 89 | `result-track:d4036eb519c8806a69e4b4bac43c87dd8eee39aece3e1a2f518cc7e8b8c82068` |
| 20 | `theorem` | [wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/wellfounded--2a15f5798f3e67e9d5332562.md) | 95 | `result-track:2a15f5798f3e67e9d5332562d086c3f3997db0d8e091a3f592a672685a87921f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/instance--d650d42e8ef5a56317b5bfa2.md) | 105 | `declaration-track:d650d42e8ef5a56317b5bfa2588760d42a1b66b0e24df9cdecf8c15cef4d86c7` |
| 22 | `theorem` | [lt_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/lt-def--1011b67ad069682c7cf0d9c5.md) | 108 | `result-track:1011b67ad069682c7cf0d9c53f876d8903d812e710e63659de493ce5d6fa6dc7` |
| 23 | `theorem` | [lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/lt-iff--4699c7772a32c2c38ab85778.md) | 113 | `result-track:4699c7772a32c2c38ab857783eda4736a75606b86be3623afc2a6955ec9e2b96` |
| 24 | `instance` | [isStrictOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/isstrictorder--0be78ff290922f9e8014ee24.md) | 120 | `declaration-track:0be78ff290922f9e8014ee24e63123d2967da3b4448b9e684929ae03ef1fe469` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/instance--a8f6d13d80c45157211306b5.md) | 134 | `declaration-track:a8f6d13d80c45157211306b5fbe99d3907f5632edf800ff3efbcbb138d831251` |
| 26 | `theorem` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/le-iff--8d942bdc1ea20f232f42f239.md) | 139 | `result-track:8d942bdc1ea20f232f42f23963385188a6178974911a6edfcadf3f451fa45770` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/instance--2277508349f70cb5a52e3bcb.md) | 149 | `declaration-track:2277508349f70cb5a52e3bcbfee6eb73a66a668f4825f975eddb290f4418ca32` |
| 28 | `theorem` | [single_strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/single-strictanti--ccad9fcd44fb06fb68e540e0.md) | 158 | `result-track:ccad9fcd44fb06fb68e540e01ee8c337738512aee37205d9664093d96b8bc586` |
| 29 | `theorem` | [single_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/single-antitone--2f6652e4f70fe7e93b3a66bd.md) | 163 | `result-track:2f6652e4f70fe7e93b3a66bd84de126311b30c51162075cb32f5d6d5bc3805a6` |
| 30 | `theorem` | [single_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/single-lt-iff--e90de4b21f2ba399953b56d4.md) | 166 | `result-track:e90de4b21f2ba399953b56d4bf7d05a944d8b25557806c55c1627b98342db8b6` |
| 31 | `theorem` | [single_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/single-le-iff--63e14b384fa6345f32611caf.md) | 170 | `result-track:63e14b384fa6345f32611caf0dcf2ecb533eb5860f291b2f30e85739b52c52a0` |
| 32 | `theorem` | [monotone_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/monotone-degree--8b0884836e94965dd402c21a.md) | 174 | `result-track:8b0884836e94965dd402c21ad9b185457b2913ee3e0547a9a974612853b01633` |
| 33 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/orderbot--930b6105b2bb4db7f8853cff.md) | 182 | `declaration-track:930b6105b2bb4db7f8853cffc52a67ef98e49674532199a2e41ad021df8c9bbb` |
| 34 | `instance` | [wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/wellfoundedlt--59ad572b611ad7ea7849a636.md) | 191 | `declaration-track:59ad572b611ad7ea7849a636d22434882674b4c67b5e4e19c87477f79add9ea2` |
| 35 | `def` | [degLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/deglex--8a87d424c0504bcd1985c59f.md) | 206 | `declaration-track:8a87d424c0504bcd1985c59fbcd919992b12c581316cdf590c7b996442c83c5c` |
| 36 | `theorem` | [degLex_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/deglex-le-iff--7fc91a49ea2ad75b1c40b742.md) | 218 | `result-track:7fc91a49ea2ad75b1c40b74230be0d9029df4ef470fb09637a1786684540bfde` |
| 37 | `theorem` | [degLex_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/deglex-lt-iff--498590a9a018c25a6e1a4948.md) | 222 | `result-track:498590a9a018c25a6e1a494872b5858e29484faa8c0ca087909370c96a5d6622` |
| 38 | `theorem` | [degLex_single_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/deglex-single-le-iff--034617826f0511149e83e8d1.md) | 226 | `result-track:034617826f0511149e83e8d1d9be01d22b5532355a6ca60e3afe215bceac1547` |
| 39 | `theorem` | [degLex_single_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/deglex-single-lt-iff--4e59aad3337fcdf7a5fb0f8a.md) | 230 | `result-track:4e59aad3337fcdf7a5fb0f8a426090f9938c8b159198b0bf4a1545ae77197078` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/example--da7417a5cd9dbfd568df0b35.md) | 241 | `declaration-track:da7417a5cd9dbfd568df0b3569e656c172143af5c4d48dbcf5f0c2c09eb4f767` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/example--a43c5817a7960195a96ea4e1.md) | 246 | `declaration-track:a43c5817a7960195a96ea4e1864ea9efd3b6462960e5efbad6c7539c522253f1` |
| 42 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variante0ef34318526b8720f7487e2310cab27881ea48c58055b376be0c7c98f0e3e22.lean/declarations/example--8f0d36b7e3f646e810094c18.md) | 253 | `declaration-track:8f0d36b7e3f646e810094c18af9e1d136fc3b2c97265b7348b02ff9cc8746d3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
