# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Monotone.Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb703345783e32c01bc8260756ea87a6753b3e53",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb703345783e32c01bc8260756ea87a6753b3e53`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Monotone` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Disjoint` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Archimedean` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [antitone_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitone-ici--37d9875f7c32121b3077eff0.md) | 24 | `result-track:37d9875f7c32121b3077eff0766f8efc664c8141290c26f8b65a6e73e2de9894` |
| 2 | `theorem` | [monotone_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotone-iic--e152c8f926118ad41320d095.md) | 26 | `result-track:e152c8f926118ad41320d095515598134347475ffa7dabda28c6195f18300d0f` |
| 3 | `theorem` | [antitone_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitone-ioi--2e9366be7c49c5be8880748a.md) | 28 | `result-track:2e9366be7c49c5be8880748a4efa2331d471d25016c6e7ca6dc8b3c18b4d1127` |
| 4 | `theorem` | [monotone_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotone-iio--c78fe09f1750e143f5a521a4.md) | 30 | `result-track:c78fe09f1750e143f5a521a418ec908b419c8925cc4f213f3b6ad2fe4235eb92` |
| 5 | `theorem` | [Monotone.Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotone-ici--6e0e9b8769b43acb366cfcd0.md) | 32 | `result-track:6e0e9b8769b43acb366cfcd03249aba35a0813019122eab3b3d6665a25e3b562` |
| 6 | `theorem` | [MonotoneOn.Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotoneon-ici--c668f2f3e025918640a39512.md) | 35 | `result-track:c668f2f3e025918640a3951266c677bf25b559bd4ad34f525b1ae9d74054a970` |
| 7 | `theorem` | [Antitone.Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitone-ici--e0a3442d95b2b322909c634e.md) | 38 | `result-track:e0a3442d95b2b322909c634e34edd71a307fd34b0f5945e59899c0ba5957e640` |
| 8 | `theorem` | [AntitoneOn.Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitoneon-ici--f5110807da9fbbf6e8d94a6d.md) | 41 | `result-track:f5110807da9fbbf6e8d94a6da2d950a2eade9cf7dc4bf586d2aed2cb1dfe530c` |
| 9 | `theorem` | [Monotone.Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotone-iic--728d84504def86e6f6709564.md) | 44 | `result-track:728d84504def86e6f67095648c54b15c33f6c70f958bd681d6d532d35685d63c` |
| 10 | `theorem` | [MonotoneOn.Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotoneon-iic--b24040bd053544ba5d650726.md) | 47 | `result-track:b24040bd053544ba5d6507264ab0e4c4025f1ad4b99e68a07c6074f74d69876f` |
| 11 | `theorem` | [Antitone.Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitone-iic--a052ab5fe72869c5931c010c.md) | 50 | `result-track:a052ab5fe72869c5931c010c2bf6772e073b92836688406a68452dc3559707eb` |
| 12 | `theorem` | [AntitoneOn.Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitoneon-iic--7d4424de540011734c9f0b8c.md) | 53 | `result-track:7d4424de540011734c9f0b8c77f5eb9ea816c6400fbff83fd7536db1bb9ef298` |
| 13 | `theorem` | [Monotone.Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotone-ioi--a5a1ab40b42d570ccc304ba8.md) | 56 | `result-track:a5a1ab40b42d570ccc304ba85c4e15f2e124a8d3d92d6628d57c1367fa5af19c` |
| 14 | `theorem` | [MonotoneOn.Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotoneon-ioi--7eebda1e032437198c08c3d6.md) | 59 | `result-track:7eebda1e032437198c08c3d6aee5734068158535807affb981e1fb87a14a622e` |
| 15 | `theorem` | [Antitone.Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitone-ioi--b793bc5e444fda43e16255e6.md) | 62 | `result-track:b793bc5e444fda43e16255e680b6985dfa2b5cee5884c6b7a45626bd71aa2dc8` |
| 16 | `theorem` | [AntitoneOn.Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitoneon-ioi--bac8fc99944e526e0f3e4fc5.md) | 65 | `result-track:bac8fc99944e526e0f3e4fc56bd89c0c364c5e935d255217dcbe27a952c91834` |
| 17 | `theorem` | [Monotone.Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotone-iio--fe500ef00acd1e605c68fe46.md) | 68 | `result-track:fe500ef00acd1e605c68fe466d6a20f267af333a3bfc51d9d39fe9f7838e0947` |
| 18 | `theorem` | [MonotoneOn.Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotoneon-iio--0d682c2357062da1c57421aa.md) | 71 | `result-track:0d682c2357062da1c57421aa856e848a3f551cb6aac8283957c975b2fcaf1b7a` |
| 19 | `theorem` | [Antitone.Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitone-iio--4ca8809868900f8651fadd05.md) | 74 | `result-track:4ca8809868900f8651fadd05c5286d165b125458433bd4ba25fef8ab89a4a9b6` |
| 20 | `theorem` | [AntitoneOn.Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitoneon-iio--187a1916a61071e7471c4b74.md) | 77 | `result-track:187a1916a61071e7471c4b745bb3d2e8f11b08f6fae07be903f169c314cf5704` |
| 21 | `theorem` | [Monotone.Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotone-icc--0ad8a7968941a1d9addc914d.md) | 80 | `result-track:0ad8a7968941a1d9addc914d1518247e21041c0067a67d0260fb55d3d2642dea` |
| 22 | `theorem` | [MonotoneOn.Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotoneon-icc--402d868f4d40e6deb65c634a.md) | 84 | `result-track:402d868f4d40e6deb65c634a271573e06f66aba52d5309872e99354e05bd3992` |
| 23 | `theorem` | [Antitone.Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitone-icc--f7436ee0c5787ff839a71265.md) | 88 | `result-track:f7436ee0c5787ff839a712656c6882aaebc24a9da78bd17143ae33808a6b190d` |
| 24 | `theorem` | [AntitoneOn.Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitoneon-icc--91bfa8c724b69279c4051c55.md) | 92 | `result-track:91bfa8c724b69279c4051c55aa8203ad4c4abb4dda7c9823132927ae324e079e` |
| 25 | `theorem` | [Monotone.Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotone-ico--89a41cd1725ad61c3af67eda.md) | 96 | `result-track:89a41cd1725ad61c3af67edabe6e9c4a9219c5f554e1683269e82239d43e856b` |
| 26 | `theorem` | [MonotoneOn.Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotoneon-ico--73d2bf9d765bfd6e637b91ff.md) | 100 | `result-track:73d2bf9d765bfd6e637b91ffb50b5bd054f839fb7ba2d879c9fdfebc9e4bc432` |
| 27 | `theorem` | [Antitone.Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitone-ico--3323b505ac450fb1d251912a.md) | 104 | `result-track:3323b505ac450fb1d251912aa0fd84c368a0848942c000ceb51660bd2409fecc` |
| 28 | `theorem` | [AntitoneOn.Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitoneon-ico--b00a7201a21a19036021e934.md) | 108 | `result-track:b00a7201a21a19036021e934f5501c40a156b96ae71770319e1caa285be78ce6` |
| 29 | `theorem` | [Monotone.Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotone-ioc--415b832a558c7f5c29af41c4.md) | 112 | `result-track:415b832a558c7f5c29af41c40d9a80e92e7b1dbdad6d70e27b5f259708d6a51b` |
| 30 | `theorem` | [MonotoneOn.Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotoneon-ioc--7b86cd348abb8c2e3e6c850f.md) | 116 | `result-track:7b86cd348abb8c2e3e6c850fc2313dcb56ea8fdb5ed87968bbf64abf9f362837` |
| 31 | `theorem` | [Antitone.Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitone-ioc--80b1d27c0e1a38f79f6d4674.md) | 120 | `result-track:80b1d27c0e1a38f79f6d4674c03b8f4ed20aabd453d61e48f99dd4e2c11511bb` |
| 32 | `theorem` | [AntitoneOn.Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitoneon-ioc--6d880db9089ce2138d643fa1.md) | 124 | `result-track:6d880db9089ce2138d643fa12322bfc377f92b033f5b5c96ba46cb6d0436144c` |
| 33 | `theorem` | [Monotone.Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotone-ioo--e4a9f4a9cb3ee666cf924e96.md) | 128 | `result-track:e4a9f4a9cb3ee666cf924e965a84e498749fd315430760c43ed90eb889528748` |
| 34 | `theorem` | [MonotoneOn.Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/monotoneon-ioo--280a01a958cdbfcec8cf3e6b.md) | 132 | `result-track:280a01a958cdbfcec8cf3e6b34297cd9f5d600fe9b6e9fb3a9271ebb6b5c420c` |
| 35 | `theorem` | [Antitone.Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitone-ioo--040a46bea64963f107511730.md) | 136 | `result-track:040a46bea64963f1075117309108ddc6c0e0e5acdb5227faa5357ddb8af1cb49` |
| 36 | `theorem` | [AntitoneOn.Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/antitoneon-ioo--b9cb3f1f8368b6278f897148.md) | 140 | `result-track:b9cb3f1f8368b6278f8971480637fde936dc96c3d72045d156b76e660a633b64` |
| 37 | `theorem` | [iUnion_Ioo_of_mono_of_isGLB_of_isLUB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/iunion-ioo-of-mono-of-isglb-of-islub--6e3e28fc6dd079e2a49f797a.md) | 150 | `result-track:6e3e28fc6dd079e2a49f797ad5c1615f2ca7a10dfa20a3e6573edc321dc3a432` |
| 38 | `theorem` | [strictMonoOn_Iic_of_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/strictmonoon-iic-of-lt-succ--bab9ebb2ee90e279f6d9901c.md) | 167 | `result-track:bab9ebb2ee90e279f6d9901c803a6723c326a4ebfcacc784def8102a11af316a` |
| 39 | `theorem` | [strictAntiOn_Iic_of_succ_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/strictantion-iic-of-succ-lt--b65d79a488c52989755097f7.md) | 172 | `result-track:b65d79a488c52989755097f727944b3ab5e6befa635ec442944d7c84f53b4072` |
| 40 | `theorem` | [strictMonoOn_Ici_of_pred_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/strictmonoon-ici-of-pred-lt--68a63a0ec894cc31678367c3.md) | 176 | `result-track:68a63a0ec894cc31678367c35b92e3d9bcc498cddf0c0ff7cf0cf7e31d751ca0` |
| 41 | `theorem` | [strictAntiOn_Ici_of_lt_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/strictantion-ici-of-lt-pred--f90390019c97b25cb8d17388.md) | 180 | `result-track:f90390019c97b25cb8d17388ae6bcf0a2209e467b28335934062032d435f982e` |
| 42 | `theorem` | [StrictMonoOn.Iic_id_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/strictmonoon-iic-id-le--94941b2afa4308f9dbab98a9.md) | 192 | `result-track:94941b2afa4308f9dbab98a9eb034fa56b0ba107a4c4e001ee1846782fb0acb4` |
| 43 | `theorem` | [StrictMonoOn.Ici_le_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/declarations/strictmonoon-ici-le-id--59c855985b58c0a8b184802a.md) | 209 | `result-track:59c855985b58c0a8b184802a247be96dd8694589f0d6ef731a759b7b0fe847a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
