# Verification target: GRWTSK.Algebra.Basic.Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76a7b72d02ce969e004c43f9f5665600b43abcca",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76a7b72d02ce969e004c43f9f5665600b43abcca`.

Source path: `GRWTSK/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FiniteStability` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Nilpotent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Kaehler.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.AdjoinRoot` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FormallyUnramified](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/formallyunramified--71fa9ca854f86da257690445.md) | 59 | `declaration-track:71fa9ca854f86da257690445a5124d1cf4cfd4b4e2fb7b8dac022fd26e6475b9` |
| 2 | `theorem` | [comp_injective](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/comp-injective--1d81710485b4b87f2529d361.md) | 74 | `result-track:1d81710485b4b87f2529d3612d441f68ce1f46d0e262f6abb531559cf71e42fb` |
| 3 | `theorem` | [iff_comp_injective](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/iff-comp-injective--8a15079e77077d16bb4eebc3.md) | 84 | `result-track:8a15079e77077d16bb4eebc32e1a3f02b7fd513acc645662849fb572b51ee9b3` |
| 4 | `theorem` | [lift_unique](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/lift-unique--34198ae2632e75785422fe9c.md) | 106 | `result-track:34198ae2632e75785422fe9c9d4b8e8365d0563881ee8bb96eeee8811b1e5e50` |
| 5 | `theorem` | [ext](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/ext--27a19c84fcb00abd5ec6388d.md) | 122 | `result-track:27a19c84fcb00abd5ec6388d95198fb8e8ed548c1fc0458bb91dc2f5b6f58f84` |
| 6 | `theorem` | [lift_unique_of_ringHom](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/lift-unique-of-ringhom--6b242ed72d870f2b5cd56c98.md) | 126 | `result-track:6b242ed72d870f2b5cd56c9869e5007d170a9caf535d1dbf845e98c5d57b788e` |
| 7 | `theorem` | [ext'](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/ext--9e76802343a6d979098d35c4.md) | 136 | `result-track:9e76802343a6d979098d35c446d0893bd387cbd13e7c94c20710c6e9d5f4d609` |
| 8 | `theorem` | [lift_unique'](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/lift-unique--fdfa7dcebc0c91a8d873f437.md) | 141 | `result-track:fdfa7dcebc0c91a8d873f43732cb896b23548526e6ba970b727975081cc7e60c` |
| 9 | `theorem` | [ext_of_iInf](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/ext-of-iinf--13dd06fa6e1f00fe666489d3.md) | 146 | `result-track:13dd06fa6e1f00fe666489d356ba78da71730a8d03988792c874b275156bbcc9` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/instance--ca5d611e7e00475a695761a1.md) | 172 | `declaration-track:ca5d611e7e00475a695761a10a581b9f2fe99b75f844374ddbebbe29c7fe1fe6` |
| 11 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/of-equiv--4fd7df6540fc8e4ef2904a29.md) | 182 | `result-track:4fd7df6540fc8e4ef2904a2952f32c102cd3ed0341a1f1ac28562ebc5d2b3cb4` |
| 12 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/comp--b3567cb7247328f2929be16e.md) | 199 | `result-track:b3567cb7247328f2929be16e31b2a0db686379f47c4a59327f1e01ab28502877` |
| 13 | `theorem` | [of_comp](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/of-comp--d47122d06aea1b7fb986a935.md) | 214 | `result-track:d47122d06aea1b7fb986a935a214ad1455c5c7580b1c00b2e3d222aa89dc48a6` |
| 14 | `theorem` | [of_surjective](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/of-surjective--850b35b1edb8c340ad25147c.md) | 232 | `result-track:850b35b1edb8c340ad25147cd07e1db445fb6defd0ab677be17c0780867dba7c` |
| 15 | `instance` | [quotient](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/quotient--517b67dec7e253cae82ac4c8.md) | 243 | `declaration-track:517b67dec7e253cae82ac4c8e8f20c6b5f78ca97a5b463ef2b8e5e37700f6cfe` |
| 16 | `theorem` | [iff_of_equiv](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/iff-of-equiv--cad0a0e3b960d92dbbdc316f.md) | 247 | `result-track:cad0a0e3b960d92dbbdc316fa4d8e237eaf8f4e46c21db7ba05f73ae00f2d482` |
| 17 | `instance` | [base_change](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/base-change--76ae83591486cdb4aa497cc1.md) | 260 | `declaration-track:76ae83591486cdb4aa497cc19dac9f424ea54d5f50c1e967dd339af2350b376a` |
| 18 | `theorem` | [of_isLocalization](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/of-islocalization--594a8b3d9b15eb3fd07da315.md) | 282 | `result-track:594a8b3d9b15eb3fd07da315aefc19a10be15d799a3ed70aad499318cc18b34f` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/instance--22731752aeba808e424df71c.md) | 290 | `declaration-track:22731752aeba808e424df71c626905a29b91bbe36d5d120876739070ad2aa431` |
| 20 | `theorem` | [localization_base](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/localization-base--a80e33e2a26a6885226dc12e.md) | 300 | `result-track:a80e33e2a26a6885226dc12ede0353b4d16123664115979eb77bce30ccd0703c` |
| 21 | `theorem` | [localization_map](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/localization-map--fe8b6ac477b64f48fd365e69.md) | 305 | `result-track:fe8b6ac477b64f48fd365e696abb4d15da0fcdd493dc873e3c8002523ae51e82` |
| 22 | `class` | [Unramified](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/unramified--320404326035263459e7e634.md) | 324 | `declaration-track:320404326035263459e7e634282d4e08689a6e6e68985bf5be6bfc6bcb5b7fcd` |
| 23 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/of-equiv--5efa46a33aeb3c4285a283c1.md) | 338 | `result-track:5efa46a33aeb3c4285a283c15acd9e72d21d70f28f6f06eac3ea140108de473b` |
| 24 | `theorem` | [of_isLocalization_Away](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/of-islocalization-away--7de46398c2defc2ed56e706c.md) | 343 | `result-track:7de46398c2defc2ed56e706ce5e8be7a56e29a13aa1a0267df1a577e41f8a3ca` |
| 25 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/comp--db15988d35cd42cc714f0f9e.md) | 354 | `result-track:db15988d35cd42cc714f0f9ea27017de53a6bd450b82f2310f03e567ef39f65d` |
| 26 | `instance` | [baseChange](../../../../mathematics/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/declarations/basechange--3611b435f2f1a7a168887543.md) | 361 | `declaration-track:3611b435f2f1a7a1688875439debba832afe104a0f2c9a3542704353984b3517` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
