# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9367e222aabc8eb6907bb226b332aeb65aebaf58",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9367e222aabc8eb6907bb226b332aeb65aebaf58`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Multiset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.FinsetOps` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fold` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/lcm--ced27884e928277343f113c0.md) | 38 | `declaration-track:ced27884e928277343f113c0deda31b26d1fbd113d46ea23aaddfc3c22a36013` |
| 2 | `theorem` | [lcm_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/lcm-zero--9b5eab357a05594823c8be35.md) | 42 | `result-track:9b5eab357a05594823c8be35a14cec078068b367c474150652a7180b113bbfde` |
| 3 | `theorem` | [lcm_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/lcm-cons--bf93c1ec4fba8eedd7537437.md) | 46 | `result-track:bf93c1ec4fba8eedd7537437f048853bef276ca3ce0b8eca96139158e1d8d510` |
| 4 | `theorem` | [lcm_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/lcm-singleton--f60f1ce1df3efe6d97d239c4.md) | 50 | `result-track:f60f1ce1df3efe6d97d239c40dd5bdd06eec57800089ca9b9efb5daaff9b626c` |
| 5 | `theorem` | [lcm_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/lcm-add--8d472421da8d01544ae0202b.md) | 54 | `result-track:8d472421da8d01544ae0202beff2841745564ac04eb2ef7b630af6da48d723d2` |
| 6 | `theorem` | [lcm_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/lcm-dvd--ee9d560b08872c301b5d4bd5.md) | 57 | `result-track:ee9d560b08872c301b5d4bd55a472164d3c2d20eb0453a96d6ebdd3dc37a796d` |
| 7 | `theorem` | [dvd_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/dvd-lcm--34e2c012034bd3fa830c622f.md) | 61 | `result-track:34e2c012034bd3fa830c622f961d238b66f340f5d1497de0c5ab7d36e95a3300` |
| 8 | `theorem` | [lcm_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/lcm-mono--16b002224af3dfc3eab57261.md) | 64 | `result-track:16b002224af3dfc3eab57261effea0484ac6e09f3a35897d3430983b362f4e27` |
| 9 | `theorem` | [normalize_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/normalize-lcm--c3038bec7fa760cd7ee2290f.md) | 68 | `result-track:c3038bec7fa760cd7ee2290fd4986e90bf538ba197d6b6cdc6474479085d34d7` |
| 10 | `theorem` | [lcm_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/lcm-eq-zero-iff--b7c96b63f1ba9810ff3b1815.md) | 72 | `result-track:b7c96b63f1ba9810ff3b1815f5b71375d8503841fa8c5675b22ac9a2fb84e718` |
| 11 | `theorem` | [lcm_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/lcm-dedup--4b82602543a41f0c8ea44aa2.md) | 80 | `result-track:4b82602543a41f0c8ea44aa220fc0b06db22fd3c200846ea7422b231ce1285e4` |
| 12 | `theorem` | [lcm_ndunion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/lcm-ndunion--fb42988852028e7be6cc5854.md) | 88 | `result-track:fb42988852028e7be6cc5854fbe4a213b7d8f06c6f1da3057882d17df0b27ed7` |
| 13 | `theorem` | [lcm_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/lcm-union--92e70f865131f74bb52a936d.md) | 93 | `result-track:92e70f865131f74bb52a936d0ef82df11651a6e7972178deb128672cfa8fb6ae` |
| 14 | `theorem` | [lcm_ndinsert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/lcm-ndinsert--d19d0da2c9351624b2864d5a.md) | 98 | `result-track:d19d0da2c9351624b2864d5a8469f3ae67b974b91bc6e0ccd28b35570b16e814` |
| 15 | `def` | [gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/gcd--ad63e7ca1416dfaaa092a355.md) | 110 | `declaration-track:ad63e7ca1416dfaaa092a355d5808a088a6e3861ef40e81ba544c5cd04e88fd2` |
| 16 | `theorem` | [gcd_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/gcd-zero--a3848600de3257b53a0796b2.md) | 114 | `result-track:a3848600de3257b53a0796b27c38eacc7d37b07882b2b234e3805c13139396c7` |
| 17 | `theorem` | [gcd_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/gcd-cons--f96ef0ba167376e359e34508.md) | 118 | `result-track:f96ef0ba167376e359e3450864345c625608d2d0ef432b32a5ee2ab301afd917` |
| 18 | `theorem` | [gcd_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/gcd-singleton--25db5e373f37a815721766a9.md) | 122 | `result-track:25db5e373f37a815721766a905819d82658ff0e32da995bed07f444dd6d88314` |
| 19 | `theorem` | [gcd_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/gcd-add--fc4a087c678c653fc0d197e4.md) | 126 | `result-track:fc4a087c678c653fc0d197e4d617ac36acbdcbff0e6b32fdcdc47fe88770d09c` |
| 20 | `theorem` | [dvd_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/dvd-gcd--0716cabf0588de4aecb0a9f1.md) | 129 | `result-track:0716cabf0588de4aecb0a9f17636e3623f759da3ba16a88c5d1ec4d8c68b943a` |
| 21 | `theorem` | [gcd_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/gcd-dvd--f18729c0a98d4b879a513fac.md) | 133 | `result-track:f18729c0a98d4b879a513fac5ecb7ea85483f4796d80831dca8e4c3ba2a3ad1d` |
| 22 | `theorem` | [gcd_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/gcd-mono--f511503221e44ffd3a67b319.md) | 136 | `result-track:f511503221e44ffd3a67b319d62d7b12239090eaac277db2fed10c98b106e01f` |
| 23 | `theorem` | [normalize_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/normalize-gcd--341112cdf65604c221460980.md) | 140 | `result-track:341112cdf65604c2214609808071a88b2f0101ddccc8a235f0a9da61092ff3be` |
| 24 | `theorem` | [gcd_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/gcd-eq-zero-iff--c572d3de55cc1971d9e1a6cb.md) | 143 | `result-track:c572d3de55cc1971d9e1a6cb12d630d8a3bd462e1f9aa3c4446b155f7dbbf9b6` |
| 25 | `theorem` | [gcd_map_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/gcd-map-mul--4deadaeadee6f24561b6f47b.md) | 154 | `result-track:4deadaeadee6f24561b6f47b5f9b2256acaa0529405cb3d9d25cd3e54d051235` |
| 26 | `theorem` | [gcd_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/gcd-dedup--ac4be7c5f19e82c6c5e8c3e4.md) | 166 | `result-track:ac4be7c5f19e82c6c5e8c3e4cbd831a4219338c461806fe4442b47f96e5fdb16` |
| 27 | `theorem` | [gcd_ndunion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/gcd-ndunion--895d8d860672c02d4f0f12c1.md) | 174 | `result-track:895d8d860672c02d4f0f12c1ee882915fcd7b93f156d3ac427a689f167543894` |
| 28 | `theorem` | [gcd_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/gcd-union--0c472cdde3260aefde044b02.md) | 179 | `result-track:0c472cdde3260aefde044b02e2ec7587f3f2a9f7fcb0023f1b2b71d9b5f10e93` |
| 29 | `theorem` | [gcd_ndinsert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/gcd-ndinsert--eea83d9b0a3d1fe954a1af06.md) | 184 | `result-track:eea83d9b0a3d1fe954a1af06d10a9bf5e26ea6246bc86ab2338cdca05b211be2` |
| 30 | `theorem` | [extract_gcd'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/extract-gcd--aa18e089514fcfb94e405b05.md) | 190 | `result-track:aa18e089514fcfb94e405b059a9b2c37c988accc3d04aaa6395fd7324c174628` |
| 31 | `theorem` | [extract_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant1c8b44139e4ddeefcb6383d5dfcdf3e61b70a070dc9ea1b4bfbc738566a1302b.lean/declarations/extract-gcd--76b599e9069422200c291dc6.md) | 197 | `result-track:76b599e9069422200c291dc64ff83f8a0f37b7a82a6ec2ccc04961b7bc93de51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
