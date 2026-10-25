# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Unique.Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec5684045e1f272b40c4db3cae8e16ce375a2fd2",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec5684045e1f272b40c4db3cae8e16ce375a2fd2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.IsEmpty` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Logic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Fin.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/unique--915c2a84ea673957f26409cc.md) | 63 | `declaration-track:915c2a84ea673957f26409cc71d8f4816b5285b3315d560513aebaaf782c48cf` |
| 2 | `theorem` | [unique_iff_exists_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/unique-iff-exists-unique--f6ec40623a51099c97c210b0.md) | 74 | `result-track:f6ec40623a51099c97c210b0f0c17b29c33565ad0ef429b581112e197569f996` |
| 3 | `theorem` | [unique_subtype_iff_exists_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/unique-subtype-iff-exists-unique--6246056ed8ac409c4fe4e094.md) | 79 | `result-track:6246056ed8ac409c4fe4e094d7ce4f146ef97913fe96d2bda71597d81f022e84` |
| 4 | `def` | [uniqueOfSubsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/uniqueofsubsingleton--daccb1cfe08e87c30647e693.md) | 94 | `declaration-track:daccb1cfe08e87c30647e6936e891696ba2ac0ebb711d0eab22cb9a22e57e564` |
| 5 | `instance` | [PUnit.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/punit-unique--5fd3a5d776a435d7175d4a92.md) | 99 | `declaration-track:5fd3a5d776a435d7175d4a927737d65b98a313884a25b23da68eb16feb7d07b0` |
| 6 | `theorem` | [PUnit.default_eq_unit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/punit-default-eq-unit--52853fbe587e89a62c860b03.md) | 108 | `result-track:52853fbe587e89a62c860b031f5b3084cc6f06de3d598ecebf76b8ffd1edd8a0` |
| 7 | `def` | [uniqueProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/uniqueprop--fe50238d76be504c09c903bc.md) | 113 | `declaration-track:fe50238d76be504c09c903bc186289ec1bae8ef85e77b47302894e71fef585d3` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/instance--960aa29d7b8c68ad9ecc1d8b.md) | 118 | `declaration-track:960aa29d7b8c68ad9ecc1d8b70b121885e1e47be150c17b5d9526ce61dfab463` |
| 9 | `theorem` | [Fin.eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/fin-eq-zero--c4d0087a7fe707bff0f91c35.md) | 121 | `result-track:c4d0087a7fe707bff0f91c35f74c595a733c4e6141517fd85d0a6c3731c82039` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/instance--6f1bf9ada259431b29235232.md) | 125 | `declaration-track:6f1bf9ada259431b29235232f880de0186ffabbfde4d730128dcdbd3cf904c2c` |
| 11 | `instance` | [inhabitedFinOneAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/inhabitedfinoneadd--715d2678177f56d312121735.md) | 128 | `declaration-track:715d2678177f56d3121217356ea7334959f4018b466fa2070ff7d989da20c1b0` |
| 12 | `theorem` | [Fin.default_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/fin-default-eq-zero--ed724a623f12291f0932a746.md) | 132 | `result-track:ed724a623f12291f0932a74650145e4559e9b7147e00d69c2c736ed178f2aeda` |
| 13 | `instance` | [Fin.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/fin-unique--6c0176d072d24ed0efd0b9ac.md) | 136 | `declaration-track:6c0176d072d24ed0efd0b9ac9670f44b78e714be906efff1b377a15662747f1b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/instance--4f6f451dc99cd62aa56b2780.md) | 148 | `declaration-track:4f6f451dc99cd62aa56b2780bb43fa51d7440158808b80be1475e5bf02afd876` |
| 15 | `theorem` | [eq_default](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/eq-default--c663f92005d2312d33d1fced.md) | 151 | `result-track:c663f92005d2312d33d1fceda39d868e3a8d1b79e349ea947af317bdac3634a4` |
| 16 | `theorem` | [default_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/default-eq--ee61654d428cecb0172fa4b7.md) | 155 | `result-track:ee61654d428cecb0172fa4b7075cbc3069c19661c667b096e540272ca94ecf65` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/instance--cb08bd4f3f78a4ae22d7b96d.md) | 160 | `declaration-track:cb08bd4f3f78a4ae22d7b96dd7e0666a515cdc0d8ad2f3a920fdecaabe339e33` |
| 18 | `theorem` | [forall_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/forall-iff--fce59d9542d3c818772c0071.md) | 163 | `result-track:fce59d9542d3c818772c007113f82df1976d500607f7e21a6721d872d680caec` |
| 19 | `theorem` | [exists_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/exists-iff--fd85c6dac15336edcc3f88ec.md) | 167 | `result-track:fd85c6dac15336edcc3f88ecf5657058211c23860ba98c38ad1f6e041b60afdd` |
| 20 | `theorem` | [subsingleton_unique'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/subsingleton-unique--0d64ac88508358f5b690830e.md) | 174 | `result-track:0d64ac88508358f5b690830e7d01364a428c77410d5f99678e993075c55d633a` |
| 21 | `instance` | [subsingleton_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/subsingleton-unique--f6ed82cb9ce2042b0ad4d123.md) | 178 | `declaration-track:f6ed82cb9ce2042b0ad4d123ac21e014fb2c441afe0465e59df7747ada57fb21` |
| 22 | `def` | [mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/mk--56360fd7f895bd3af6e27ae6.md) | 184 | `declaration-track:56360fd7f895bd3af6e27ae6896eb6428fd00a386f7a71fa0b379357dd0b26e4` |
| 23 | `theorem` | [unique_iff_subsingleton_and_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/unique-iff-subsingleton-and-nonempty--4f38c2abc7a8733108d81d51.md) | 190 | `result-track:4f38c2abc7a8733108d81d51dad994b6565c1d9292bfc1d4d3fe4e0c1d414f05` |
| 24 | `theorem` | [Pi.default_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/pi-default-def--ece67cecf6574517593bf45f.md) | 197 | `result-track:ece67cecf6574517593bf45fbf5ec4dee58c9c6c4311d8f64415f5294abdca4a` |
| 25 | `theorem` | [Pi.default_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/pi-default-apply--73712de6141a9174004573df.md) | 202 | `result-track:73712de6141a9174004573df8e23df722d011cde38005ee7a94d3b17751318d6` |
| 26 | `instance` | [Pi.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/pi-unique--31b099aa8780bc2fb27269f6.md) | 207 | `declaration-track:31b099aa8780bc2fb27269f6ce995c71562d0edd7199ffdc56eff34c755bfab9` |
| 27 | `instance` | [Pi.uniqueOfIsEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/pi-uniqueofisempty--84e56b0960fab8556f223e84.md) | 211 | `declaration-track:84e56b0960fab8556f223e84b05dbbab2d94ced659f5a0cf4371a35270d937cb` |
| 28 | `theorem` | [eq_const_of_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/eq-const-of-unique--d090729c7a122e2eb59da2a1.md) | 215 | `result-track:d090729c7a122e2eb59da2a1d9662a3e7548f7f54789aea55c4d763478327947` |
| 29 | `theorem` | [heq_const_of_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/heq-const-of-unique--769982d5243577cf8cc5018f.md) | 221 | `result-track:769982d5243577cf8cc5018f4471bda470443e5bc83932cc221b2c7443c07a5f` |
| 30 | `theorem` | [Injective.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/injective-subsingleton--6b222cb39653404f0f41fe28.md) | 232 | `result-track:6b222cb39653404f0f41fe287f3dc4cb59b41d7ba504ed9a6332a50515c7c02c` |
| 31 | `theorem` | [Surjective.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/surjective-subsingleton--82bc0f393de2f7d125faba82.md) | 238 | `result-track:82bc0f393de2f7d125faba82345bcf54d4cde8125f2d37139904fd790028e970` |
| 32 | `def` | [Surjective.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/surjective-unique--2ef8de9be5febc78c7ace92f.md) | 244 | `declaration-track:2ef8de9be5febc78c7ace92f2e37a82b1215e5d2e2246ebaf4a7e53632007ab0` |
| 33 | `def` | [Injective.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/injective-unique--6124ed5c1c94d41a61150f6b.md) | 249 | `declaration-track:6124ed5c1c94d41a61150f6bd60a07901ca775cd56ddf4817906f0d86e749212` |
| 34 | `def` | [Surjective.uniqueOfSurjectiveConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/surjective-uniqueofsurjectiveconst--deaf50695e0146b5d1f2265c.md) | 254 | `declaration-track:deaf50695e0146b5d1f2265cf10edaa1de3671ac56efbc9fa735245740d2dd3a` |
| 35 | `theorem` | [Unique.bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/unique-bijective--a19cacdcc21290dbe0988d5e.md) | 263 | `result-track:a19cacdcc21290dbe0988d5e53ed9729162678c416d929f9abbe6417078bb3c2` |
| 36 | `theorem` | [subsingleton_iff_isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/subsingleton-iff-isempty--c50f797c635a6028c2ead616.md) | 271 | `result-track:c50f797c635a6028c2ead6160620ccb84ddf9375056338df6fe08d4bae8a58dd` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/instance--2f0badb4bfa40cc9746a602d.md) | 277 | `declaration-track:2f0badb4bfa40cc9746a602d19bdfc18201dfd5cb9948b5daa0517144fce7e0d` |
| 38 | `instance` | [Unique.subtypeEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/unique-subtypeeq--db93ab8db984f165fbc6e662.md) | 285 | `declaration-track:db93ab8db984f165fbc6e662dd2bdc8490c043f195097cb5cbbfba10d8be0e3e` |
| 39 | `instance` | [Unique.subtypeEq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/declarations/unique-subtypeeq--c6486acd41b60ecd6c438c3e.md) | 289 | `declaration-track:c6486acd41b60ecd6c438c3e9110b3677962c8e44061741033a08e0f7472e068` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
