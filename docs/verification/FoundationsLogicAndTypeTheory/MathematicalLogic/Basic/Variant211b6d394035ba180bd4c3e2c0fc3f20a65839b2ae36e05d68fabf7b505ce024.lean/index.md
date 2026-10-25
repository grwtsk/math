# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bd9ed1f18bbfd8a56934468103be77851b424a1",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bd9ed1f18bbfd8a56934468103be77851b424a1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [not_isLeft_and_isRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/not-isleft-and-isright--1cc23547a15ff0b5350e1e44.md) | 20 | `result-track:1cc23547a15ff0b5350e1e44f3e180feff7e7016aa84e08c80f64076746dac3b` |
| 2 | `theorem` | [exists_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/exists-sum--ddac1d894645e778228b3b4f.md) | 27 | `result-track:ddac1d894645e778228b3b4ffeda976042cf92cc315f27eae585642f4a608856` |
| 3 | `theorem` | [inl_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/inl-injective--0751a69ced90b4a489739271.md) | 32 | `result-track:0751a69ced90b4a4897392711f6a1e2fa8dc6bc88e661a1b0fb82aa7a808e99f` |
| 4 | `theorem` | [inr_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/inr-injective--e3dbba8f8d601042d4f00bdc.md) | 34 | `result-track:e3dbba8f8d601042d4f00bdc82e5c1ee58c72dda02dd7f04c0ca669a10a493e9` |
| 5 | `theorem` | [sum_rec_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/sum-rec-congr--d3c7de0193a453759c5be59f.md) | 36 | `result-track:d3c7de0193a453759c5be59f2c9ae7caf094a8eacf47e8ebb05c32094cc528c8` |
| 6 | `theorem` | [eq_left_iff_getLeft_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/eq-left-iff-getleft-eq--9da54f888c0c71608ab95619.md) | 44 | `result-track:9da54f888c0c71608ab956190c8e9a33ae9e3470906f16283f03a413bd5252ed` |
| 7 | `theorem` | [eq_right_iff_getRight_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/eq-right-iff-getright-eq--2871030dd38e3090fd779423.md) | 47 | `result-track:2871030dd38e3090fd779423c1618ce5948e369b997a6a7709f3c83364ef3581` |
| 8 | `theorem` | [getLeft_eq_getLeft?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/getleft-eq-getleft--b694dd9cd3016882d438b0a2.md) | 50 | `result-track:b694dd9cd3016882d438b0a2dcf84d1f050503c62026690d1439a30e0692cf13` |
| 9 | `theorem` | [getRight_eq_getRight?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/getright-eq-getright--a48cc028d7b84c8624284608.md) | 53 | `result-track:a48cc028d7b84c86242846084c0ab772d3c83f4adf5c6f6fd39c01cbfa11f87c` |
| 10 | `theorem` | [isSome_getLeft?_iff_isLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/issome-getleft-iff-isleft--eeabdb4f3622729431401c57.md) | 56 | `result-track:eeabdb4f3622729431401c57b5486f7a370e0b2355fd46b1070055819e9e398d` |
| 11 | `theorem` | [isSome_getRight?_iff_isRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/issome-getright-iff-isright--f4edc6012cb31da8696a624d.md) | 59 | `result-track:f4edc6012cb31da8696a624df6d25a9ac08211f0015595c1e27775a78eb777b1` |
| 12 | `theorem` | [update_elim_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/update-elim-inl--7ee452397e61db97a4f2513a.md) | 67 | `result-track:7ee452397e61db97a4f2513a158fe533e6d047425c65cf8092c6a32185984116` |
| 13 | `theorem` | [update_elim_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/update-elim-inr--c267cadf5fa94e4e3c43d314.md) | 72 | `result-track:c267cadf5fa94e4e3c43d3141556d51644abe32b54dbc0320d2a3f90196021f6` |
| 14 | `theorem` | [update_inl_comp_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/update-inl-comp-inl--a639f6738ae7e41bbd696c7e.md) | 77 | `result-track:a639f6738ae7e41bbd696c7e422e2558ba5121a2e0611b369284c2bb63a281c0` |
| 15 | `theorem` | [update_inl_apply_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/update-inl-apply-inl--a911cb3a9a959aca2731a2d3.md) | 82 | `result-track:a911cb3a9a959aca2731a2d3cb2bee6e360a042b31fd703a58ca36d7b6c18aa5` |
| 16 | `theorem` | [update_inl_comp_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/update-inl-comp-inr--a03cbb61ca972854394e0fdf.md) | 87 | `result-track:a03cbb61ca972854394e0fdff866a278caee5a172333294895172fd120ba1824` |
| 17 | `theorem` | [update_inl_apply_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/update-inl-apply-inr--d4bc744b4673b54950d61193.md) | 91 | `result-track:d4bc744b4673b54950d611936e1332f849f5f9e38c5b1bc5f402aaa7af4a5e22` |
| 18 | `theorem` | [update_inr_comp_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/update-inr-comp-inl--24a4a3acd8ad55850a35a3e5.md) | 96 | `result-track:24a4a3acd8ad55850a35a3e55f0f04b14ddd8564e77b1606e895b983a4c339ee` |
| 19 | `theorem` | [update_inr_apply_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/update-inr-apply-inl--eda92aeed67c4b5c20686609.md) | 100 | `result-track:eda92aeed67c4b5c206866098b19524382673e30ac96880ca70cd2c2d445ea44` |
| 20 | `theorem` | [update_inr_comp_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/update-inr-comp-inr--b672efe6a5ed1fc165c0661d.md) | 105 | `result-track:b672efe6a5ed1fc165c0661d6075b3e802b38d26c9f8d6e294ebe04acdc7e1df` |
| 21 | `theorem` | [update_inr_apply_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/update-inr-apply-inr--ae8875cdae181d9422390fff.md) | 110 | `result-track:ae8875cdae181d9422390fff9ca90a337701da98acc2ef59a9e7cbe620f83575` |
| 22 | `theorem` | [update_inl_apply_inl'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/update-inl-apply-inl--aa74a793910551bcf4214b3f.md) | 115 | `result-track:aa74a793910551bcf4214b3f88e1a561ae5b418aa5244cf911a69af2fe021274` |
| 23 | `theorem` | [update_inr_apply_inr'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/update-inr-apply-inr--047b5ecf8a5e51e68ee300a6.md) | 121 | `result-track:047b5ecf8a5e51e68ee300a6126afdf5243a933637826ed6965f2951e51706fe` |
| 24 | `lemma` | [rec_update_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/rec-update-left--63a09a9cab473d0abe37bbb1.md) | 127 | `result-track:63a09a9cab473d0abe37bbb1b7470d38d532b330b93ee5f7640bebca0b9f9b35` |
| 25 | `lemma` | [rec_update_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/rec-update-right--9472c2b96d9be6ba81682cd5.md) | 135 | `result-track:9472c2b96d9be6ba81682cd5884be12611fc6505058e73e444325a4de910e875` |
| 26 | `lemma` | [elim_update_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/elim-update-left--387f1abe4985804a9aab3cb1.md) | 143 | `result-track:387f1abe4985804a9aab3cb14d9f376084ff017318f02418c7bfa01cb4b38cc1` |
| 27 | `lemma` | [elim_update_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/elim-update-right--ec9d3debb228535e1b5124f7.md) | 149 | `result-track:ec9d3debb228535e1b5124f71294b009964a278dddf07e0c461087c50d4f4162` |
| 28 | `theorem` | [swap_leftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/swap-leftinverse--ae1d590c2515664438ff08e6.md) | 155 | `result-track:ae1d590c2515664438ff08e60c4ffd16abc0ad62f35700725d4a6a1c6f05f744` |
| 29 | `theorem` | [swap_rightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/swap-rightinverse--d4409bf398736dcb7028fc20.md) | 159 | `result-track:d4409bf398736dcb7028fc20dcc8cec25fc47c6426a4d877161c4fdaaeeec662` |
| 30 | `theorem` | [isLeft_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/isleft-congr--1b770ef127458364349847f6.md) | 169 | `result-track:1b770ef127458364349847f6c6e240d4f3654d107024c2257b0a12f2d514f9ce` |
| 31 | `theorem` | [isRight_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/isright-congr--2682d763cf3ba5cb82adff5d.md) | 170 | `result-track:2682d763cf3ba5cb82adff5d7a985cf870b8a94ab246e4b92e28a2f53ce3a5b1` |
| 32 | `theorem` | [isLeft_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/isleft-left--f1ef8f7b16cc2b3906fbcf02.md) | 172 | `result-track:f1ef8f7b16cc2b3906fbcf027d52d02f05c74043365f35842b40f40c912a942f` |
| 33 | `theorem` | [isLeft_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/isleft-right--0db75bfe6de39beaad39a3a2.md) | 173 | `result-track:0db75bfe6de39beaad39a3a2b6447bcd4a1289ce1df82a64a41f31c8098edbf8` |
| 34 | `theorem` | [isRight_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/isright-left--7d9d7bb3903022f1094d4dcc.md) | 174 | `result-track:7d9d7bb3903022f1094d4dccfb47f523e603d3c3ccd8bcc158adb5136998d364` |
| 35 | `theorem` | [isRight_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/isright-right--0234699acebe39115f080442.md) | 175 | `result-track:0234699acebe39115f0804426980ac59e37ba04ad140287e7f8228ea7081034b` |
| 36 | `theorem` | [exists_of_isLeft_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/exists-of-isleft-left--d9a7374db9d06727b677391e.md) | 177 | `result-track:d9a7374db9d06727b677391ec641af42c0ed49de56fb66fda9d1bf99c9c39524` |
| 37 | `theorem` | [exists_of_isLeft_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/exists-of-isleft-right--55e81a871eba6d0cc60e842a.md) | 183 | `result-track:55e81a871eba6d0cc60e842a4bd0420ddb88f7a34d8189cdf26339091d5ad270` |
| 38 | `theorem` | [exists_of_isRight_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/exists-of-isright-left--4754a4228ab2c783c9bbf047.md) | 186 | `result-track:4754a4228ab2c783c9bbf0470611e0e5aa6786e9c01453818c17d73471292657` |
| 39 | `theorem` | [exists_of_isRight_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/exists-of-isright-right--5abc392a8fe2355a7c06fe78.md) | 192 | `result-track:5abc392a8fe2355a7c06fe78bac014ee4a987eab27f0da136dd225a5f1fb0f20` |
| 40 | `theorem` | [Injective.sumElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/injective-sumelim--904f4314d9f9ecba7a7a9b10.md) | 204 | `result-track:904f4314d9f9ecba7a7a9b10c3adcc21c4435fe2255f4bf56e457af70e35dd78` |
| 41 | `theorem` | [Injective.sumMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/injective-summap--067d20c644a4c64c91960f51.md) | 213 | `result-track:067d20c644a4c64c91960f510ab15d721bc7c8ede8a2422287c20326587ac0de` |
| 42 | `theorem` | [Surjective.sumMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/surjective-summap--680ffa2ae20e1565b60cb7f7.md) | 220 | `result-track:680ffa2ae20e1565b60cb7f7c50fb9a0b66508def3328d818e2debc44f476213` |
| 43 | `theorem` | [Bijective.sumMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/bijective-summap--46b7286047026294b9d0a5b5.md) | 231 | `result-track:46b7286047026294b9d0a5b51118e7ab982682389e31d25ceee36d3b038652ec` |
| 44 | `theorem` | [elim_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/elim-injective--0a1a99ca58e48171c190b850.md) | 244 | `result-track:0a1a99ca58e48171c190b85021f3b758f2f66766f5c7c93146289fe09472f23f` |
| 45 | `theorem` | [map_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/map-injective--4dca251010f8680ba2015e44.md) | 250 | `result-track:4dca251010f8680ba2015e44ad91714855348fbc2affe957b75a31d4bf773618` |
| 46 | `theorem` | [map_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/map-surjective--fb64133b8d6c44df40c7cb5f.md) | 256 | `result-track:fb64133b8d6c44df40c7cb5f91a0edba20b0036b08102beaee32f458e3fdefec` |
| 47 | `theorem` | [map_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/map-bijective--e879b6f38b552c0072fd35f5.md) | 270 | `result-track:e879b6f38b552c0072fd35f5edd8ca9cc25aa041e3f37bc411ba3bc0cd9fff43` |
| 48 | `def` | [in₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/in--236f669ab8a6d66444284db6.md) | 286 | `declaration-track:236f669ab8a6d66444284db6e5ff061683ace8dde4d647d0b1df71edfb6f906f` |
| 49 | `def` | [in₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/in--f55f4982ec97607470d701ec.md) | 291 | `declaration-track:f55f4982ec97607470d701ecfec634885f18c1e07315e7f6b88497dda2e89479` |
| 50 | `def` | [in₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/in--8afd19057e349202cf51440d.md) | 296 | `declaration-track:8afd19057e349202cf51440dcdbe4008dbde4dd28857ba7c68ac323ebff76f0d` |
| 51 | `theorem` | [inl_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/inl-injective--6adf7725ee7e0f5013b9a817.md) | 309 | `result-track:6adf7725ee7e0f5013b9a8176f50ddc656c5b09bd4142c3dc39d7bd260b2318c` |
| 52 | `theorem` | [inr_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant211b6d394035ba180bd4c3e2c0fc3f20a65839b2ae36e05d68fabf7b505ce024.lean/declarations/inr-injective--6607a9d00737ac67a4881359.md) | 311 | `result-track:6607a9d00737ac67a4881359c274165b3ae848e7a08d01fecc1d578634740007` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
