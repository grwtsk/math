# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.DirectLimit.Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b50ab0f3ee9643076321f1ca8698fdd722f902e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b50ab0f3ee9643076321f1ca8698fdd722f902e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Quotients` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.FinitelyGenerated` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/map-self--11033ba7535b2a3264d96114.md) | 43 | `result-track:11033ba7535b2a3264d9611443af9a2f585ca45031486423278cb560d94dc7d3` |
| 2 | `theorem` | [map_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/map-map--edbe2bb3a17f59dddce6b5e2.md) | 49 | `result-track:edbe2bb3a17f59dddce6b5e2e8a7a5668ba117ff75b4a5cfb105708c22925f61` |
| 3 | `def` | [natLERec](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/natlerec--81a8cbb86221ae12e696cb92.md) | 58 | `declaration-track:81a8cbb86221ae12e696cb92d755bddf95dce5fdf4ed6e48e349999797f0e598` |
| 4 | `theorem` | [coe_natLERec](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/coe-natlerec--f435ec8268871103459e18a9.md) | 63 | `result-track:f435ec8268871103459e18a9817a25f4a4339a1c8231ec55efd279e83a4330ba` |
| 5 | `instance` | [natLERec.directedSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/natlerec-directedsystem--fe3346e53570f199cdcb6f2c.md) | 73 | `declaration-track:fe3346e53570f199cdcb6f2c4ae0c3a79f156f92b8b15caba5618aaded2249e3` |
| 6 | `abbrev` | [Structure.Sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/structure-sigma--97ac208bcf25591690653b28.md) | 88 | `declaration-track:97ac208bcf25591690653b28cbc37f6d1d933d4e8fda56f7a76861a325596000` |
| 7 | `abbrev` | [Structure.Sigma.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/structure-sigma-mk--5a5c9b006cd7017fff81560d.md) | 94 | `declaration-track:5a5c9b006cd7017fff81560d6aadd8e56b44c706289c0f26f0599d647437e72c` |
| 8 | `def` | [unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/unify--d4bb8a69b904f41bc1045887.md) | 99 | `declaration-track:d4bb8a69b904f41bc1045887451cc420a89d08601b7699be3cc75aa3a8179835` |
| 9 | `theorem` | [unify_sigma_mk_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/unify-sigma-mk-self--e9fadce6d77f75402827283f.md) | 107 | `result-track:e9fadce6d77f75402827283febe004d2ae7a005155709c1307cc42aabab5aa3a` |
| 10 | `theorem` | [comp_unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/comp-unify--6deaba0626a6f3f2625abd8d.md) | 115 | `result-track:6deaba0626a6f3f2625abd8de4fd0cb53ba90d4e50a27507620c6fe858c24538` |
| 11 | `def` | [setoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/setoid--f249dac76ed20b3bb1d17183.md) | 130 | `declaration-track:f249dac76ed20b3bb1d1718332e863f34d72176c13ee8bc2cc5a054fc4fc4672` |
| 12 | `def` | [sigmaStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/sigmastructure--3f54f44fbdc975361646962c.md) | 145 | `declaration-track:3f54f44fbdc975361646962c486a3593a7b5703a550c7314c9a5f3c202465825` |
| 13 | `def` | [DirectLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/directlimit--e5f1f54c3805820715194d10.md) | 160 | `declaration-track:e5f1f54c3805820715194d107ab625e6b8d21b724e02fc7ec59c7a3a5294b49e` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/instance--eb2c009993682a2f36dc7637.md) | 170 | `declaration-track:eb2c009993682a2f36dc7637961336bfd6e40338157dfc1029b1773c04304d09` |
| 15 | `theorem` | [equiv_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/equiv-iff--dc6ed6a27ac583e2aee4a71d.md) | 178 | `result-track:dc6ed6a27ac583e2aee4a71d583baf4e3175d1ea537f441ec836eb3487f73fbe` |
| 16 | `theorem` | [funMap_unify_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/funmap-unify-equiv--f763f7b59ae7f5af2387a821.md) | 191 | `result-track:f763f7b59ae7f5af2387a82177cc36fba0330a6998312c162f1977aebd1fb397` |
| 17 | `theorem` | [relMap_unify_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/relmap-unify-equiv--2827a9d4d301f85122a213e3.md) | 199 | `result-track:2827a9d4d301f85122a213e39ab7a0272f8b0695b3beda4a9ce35f4b09f1d234` |
| 18 | `theorem` | [exists_unify_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/exists-unify-eq--7e8582266ef3e93d623c91df.md) | 208 | `result-track:7e8582266ef3e93d623c91dfb197e4389024afdc030ad60a725ecb14fa198225` |
| 19 | `theorem` | [funMap_equiv_unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/funmap-equiv-unify--50f10d0805a7836b2d339f37.md) | 217 | `result-track:50f10d0805a7836b2d339f373d494cd2121b97293d0d3c1738c4f045527a7cee` |
| 20 | `theorem` | [relMap_equiv_unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/relmap-equiv-unify--98d43b189d770682593ff296.md) | 223 | `result-track:98d43b189d770682593ff2966da38fd5ccf1f60f93532590c38a313183726c21` |
| 21 | `instance` | [prestructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/prestructure--dc81911c279a41889aa6b144.md) | 231 | `declaration-track:dc81911c279a41889aa6b1440c0d2557cf048b63339f8aabf72cfce06cd973cd` |
| 22 | `instance` | [instStructureDirectLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/inststructuredirectlimit--8982ccc1889cf95f93b30872.md) | 247 | `declaration-track:8982ccc1889cf95f93b30872a9bc23a4ea115ce4834f1c83b94e44bacd5b043e` |
| 23 | `theorem` | [funMap_quotient_mk'_sigma_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/funmap-quotient-mk-sigma-mk--b12c23c80fe658896b85ce16.md) | 253 | `result-track:b12c23c80fe658896b85ce1606792f4ecd6f6de10e70d895a63b6c1848acff0e` |
| 24 | `theorem` | [relMap_quotient_mk'_sigma_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/relmap-quotient-mk-sigma-mk--57b23045d0e9d46a6e505576.md) | 264 | `result-track:57b23045d0e9d46a6e505576ea475ae9ca0a885698ee1bc5722226c7b4e14ce9` |
| 25 | `theorem` | [exists_quotient_mk'_sigma_mk'_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/exists-quotient-mk-sigma-mk-eq--e9aaf4c81aa2932f2e1eea28.md) | 273 | `result-track:e9aaf4c81aa2932f2e1eea282c89c7ca6cb8ec56876214daab8be7547c914442` |
| 26 | `def` | [of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/of--1dd7b518df6129c00f228170.md) | 291 | `declaration-track:1dd7b518df6129c00f22817038192313d840ba18874ca9f3c6052ad56e1f696b` |
| 27 | `theorem` | [of_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/of-apply--4d6e0cf4f9a29227de9dd087.md) | 312 | `result-track:4d6e0cf4f9a29227de9dd0870060364b8810e9306906ad069231b4a0bf725195` |
| 28 | `theorem` | [of_f](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/of-f--a80391b9a12b1001b0ad57fb.md) | 318 | `result-track:a80391b9a12b1001b0ad57fb7b556c5cfae449daaf0adf017e1ea371002c8bd1` |
| 29 | `theorem` | [exists_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/exists-of--a91f95c5fa7000acb1d39459.md) | 326 | `result-track:a91f95c5fa7000acb1d3945923dd59d5710056dd0e7ae82e350feedf6f8f18b2` |
| 30 | `theorem` | [inductionOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/inductionon--d013500167d04237d2399a0e.md) | 331 | `result-track:d013500167d04237d2399a0ecff3979b491a0c4d106f3f3a2884d6b3aae1d57c` |
| 31 | `def` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/lift--34d0bafb2e1d26189b2093f3.md) | 346 | `declaration-track:34d0bafb2e1d26189b2093f3c29058cabe2c346da7a64242703796a125172134` |
| 32 | `theorem` | [lift_quotient_mk'_sigma_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/lift-quotient-mk-sigma-mk--0db3868e0f87d77e58480fde.md) | 376 | `result-track:0db3868e0f87d77e58480fdee781b45f3d7982185ef3334f6245c4b1e20b0e95` |
| 33 | `theorem` | [lift_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/lift-of--d43a1cf09c37d062bd271533.md) | 381 | `result-track:d43a1cf09c37d062bd271533a1de443835e5e275c0b2215dc6197297183969c4` |
| 34 | `theorem` | [lift_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/lift-unique--b3d50f8650fbd9b6f2e8edd4.md) | 384 | `result-track:b3d50f8650fbd9b6f2e8edd43d6f5321731ac310a817bfff02491e83483a1de1` |
| 35 | `theorem` | [cg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/cg--e34b24094ca078a060213925.md) | 392 | `result-track:e34b24094ca078a060213925723bbd3d98a864e767f43b083a6dfdc88d748bf3` |
| 36 | `instance` | [cg'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/declarations/cg--48b4946871e6df11888ef9a9.md) | 409 | `declaration-track:48b4946871e6df11888ef9a92e37a9972f5144950ba2e9619a825906aa6051c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
