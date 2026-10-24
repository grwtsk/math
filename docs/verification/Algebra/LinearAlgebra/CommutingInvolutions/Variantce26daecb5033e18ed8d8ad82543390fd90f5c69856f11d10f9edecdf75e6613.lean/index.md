# Verification target: GRWTSK.Algebra.LinearAlgebra.CommutingInvolutions.Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "368973a25800db0515c2cb4ebb95878dff894345",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `368973a25800db0515c2cb4ebb95878dff894345`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuadraticSwapInvolution` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involutionPlus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/involutionplus--bb206c950cc663956fb83ae6.md) | 37 | `declaration-track:bb206c950cc663956fb83ae6dd75edc299a28bf95e858496166d36ade9c8228e` |
| 2 | `def` | [involutionMinus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/involutionminus--c161ddc62c0654d78b59e4a7.md) | 41 | `declaration-track:c161ddc62c0654d78b59e4a7147feff4ca4dc689aa13e8c0e809b33e8db62b9b` |
| 3 | `theorem` | [involutionPlus_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/involutionplus-apply--a8eeda792c600cfc6500ac66.md) | 45 | `result-track:a8eeda792c600cfc6500ac662d524be6f7f292274df6985f27a8be23dc53d19c` |
| 4 | `theorem` | [involutionMinus_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/involutionminus-apply--dd3859050b8336209fb3cd47.md) | 50 | `result-track:dd3859050b8336209fb3cd47c784e5f04666e41f300af515bc9bfcc55547d306` |
| 5 | `theorem` | [involution_projection_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/involution-projection-decomposition--3b00ae5f92e70c63b3d259d7.md) | 55 | `result-track:3b00ae5f92e70c63b3d259d72f0c6e0837d475ae34157cdc427c192eda60e9a9` |
| 6 | `theorem` | [involutionPlus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/involutionplus-idempotent--36bc93534cc42208c701ba37.md) | 62 | `result-track:36bc93534cc42208c701ba37389a3d264a8fffd86c1e1a3c3c10126f51870d1a` |
| 7 | `theorem` | [involutionMinus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/involutionminus-idempotent--2a9385aab2619e2ce9e13a24.md) | 70 | `result-track:2a9385aab2619e2ce9e13a24f6836d10d1ae8441a8eb643abf5dd1aeefa7da9d` |
| 8 | `theorem` | [involutionPlus_after_minus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/involutionplus-after-minus--6f6182c9876309e3340a5151.md) | 78 | `result-track:6f6182c9876309e3340a5151a9191a196919b6d7b02dfc6b66f42f3cff13c7b8` |
| 9 | `theorem` | [involutionMinus_after_plus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/involutionminus-after-plus--3c605ddf4a8b16ab7e6f6b5b.md) | 85 | `result-track:3c605ddf4a8b16ab7e6f6b5b46efbc87e9325d5a032cc2f3e5a6a0598c35e469` |
| 10 | `theorem` | [involution_on_plus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/involution-on-plus--df3ab2279fbfe5298cafd31d.md) | 92 | `result-track:df3ab2279fbfe5298cafd31de0e4a97b48d66b9dd395246b64a55b772c9f8e04` |
| 11 | `theorem` | [involution_on_minus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/involution-on-minus--c7814b58c0c6fda9feb1d0e6.md) | 99 | `result-track:c7814b58c0c6fda9feb1d0e6de6ef75a794bcf42e3b7786b131a3e8b35b983fb` |
| 12 | `structure` | [CommutingInvolutions](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/commutinginvolutions--c98646af4af66ba985491244.md) | 106 | `declaration-track:c98646af4af66ba98549124403616a4916486c25786d4c6518e6e3ab80d9d9ee` |
| 13 | `theorem` | [plusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/plusplus-commute--0313f870ad8c2161571bc7a4.md) | 118 | `result-track:0313f870ad8c2161571bc7a4b08ec987607649cf7bca612ab81152238f6e3ba9` |
| 14 | `theorem` | [plusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/plusminus-commute--c171f648aa05655bb06893a9.md) | 126 | `result-track:c171f648aa05655bb06893a9f5bb39a45d1b5e08936d4836af128314464685b9` |
| 15 | `theorem` | [minusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/minusplus-commute--563d8aff5f19fdcf7617e41c.md) | 134 | `result-track:563d8aff5f19fdcf7617e41cab033d122368f42537aa8e14e922ecef51c9cc72` |
| 16 | `theorem` | [minusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/minusminus-commute--669d7a85bcafec0ec2af30df.md) | 142 | `result-track:669d7a85bcafec0ec2af30df4985b795ded6dabb45816e40ee73007ff4bfc05f` |
| 17 | `def` | [sectorPP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectorpp--8344cd0ae95d13c968477edb.md) | 150 | `declaration-track:8344cd0ae95d13c968477edb7e11254c52746cfc001453b16c0dc4079f94065f` |
| 18 | `def` | [sectorPM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectorpm--99086e2a238d6075680cbc7f.md) | 154 | `declaration-track:99086e2a238d6075680cbc7f0499b085fb54eb4af3de5aadd5aa7281bfa67821` |
| 19 | `def` | [sectorMP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectormp--b8d8415fc701aa7a1ca0eff9.md) | 158 | `declaration-track:b8d8415fc701aa7a1ca0eff9d99a33fe18701907992ee7d920a677abfd99d146` |
| 20 | `def` | [sectorMM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectormm--7218e96e53ef64017b625f28.md) | 162 | `declaration-track:7218e96e53ef64017b625f28aa0a3f31af4ef88e86e6a3b621f9ed8e9c6a9f0e` |
| 21 | `theorem` | [sectorPP_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectorpp-apply--e5bfd5bb0009d40091e1fb2b.md) | 166 | `result-track:e5bfd5bb0009d40091e1fb2b3ba581e055d94efd5c804780019afa710997e77a` |
| 22 | `theorem` | [sectorPM_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectorpm-apply--7673f1c76e80bfcf9361ad19.md) | 172 | `result-track:7673f1c76e80bfcf9361ad192f187adff386c67497071cbe37a92d7f445c7321` |
| 23 | `theorem` | [sectorMP_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectormp-apply--9bb2dd63d58d9842ba880bc1.md) | 178 | `result-track:9bb2dd63d58d9842ba880bc111cfefbb533ca42d60b88d278e26662adbf3853b` |
| 24 | `theorem` | [sectorMM_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectormm-apply--77239c121dc3105e15cccdee.md) | 184 | `result-track:77239c121dc3105e15cccdeed2f87477e9e89aee08302d91bef7ac5ba8eae87b` |
| 25 | `theorem` | [idempotent_comp_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/idempotent-comp-of-commute--5b47d73bd211b6e260bc1e26.md) | 189 | `result-track:5b47d73bd211b6e260bc1e2654c44c9e915496db78e44328b133cc7a690e0e4d` |
| 26 | `theorem` | [sectorPP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectorpp-idempotent--356cf15b3be0778595f12304.md) | 200 | `result-track:356cf15b3be0778595f12304a560908a4eb7741211ba6d83aef2422ec49c15e8` |
| 27 | `theorem` | [sectorPM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectorpm-idempotent--781cd1ce377fff81dd4999e8.md) | 209 | `result-track:781cd1ce377fff81dd4999e812a92bed9f2dcabcbc78edd307bf84f255a52e4b` |
| 28 | `theorem` | [sectorMP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectormp-idempotent--f3489c2919e17172a1f85aa8.md) | 218 | `result-track:f3489c2919e17172a1f85aa8e6df39a3d672e971334438389f9e29d05fcbc461` |
| 29 | `theorem` | [sectorMM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectormm-idempotent--7a494615b831b2aad8e3ebc6.md) | 227 | `result-track:7a494615b831b2aad8e3ebc616d8f3476f552a9309cd2a2efdfbb99c62cba006` |
| 30 | `theorem` | [four_sector_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/four-sector-decomposition--d2e0b11ed07eb1952a722fb8.md) | 236 | `result-track:d2e0b11ed07eb1952a722fb8c0442cd0b6085eb3f8e7130f2a91699c105e5d31` |
| 31 | `theorem` | [sectorPP_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectorpp-after-pm--329f442a7fa464a1e0daeb66.md) | 243 | `result-track:329f442a7fa464a1e0daeb667aefa293c77b469363ed7a778807a08c905ed1d8` |
| 32 | `theorem` | [sectorPM_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectorpm-after-pp--776987363ee6bb84d67a6303.md) | 254 | `result-track:776987363ee6bb84d67a6303efb1296364931af9b932393d6698e39f5be5e4b6` |
| 33 | `theorem` | [sectorPP_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectorpp-after-mp--a9247457397eae947a4b2109.md) | 265 | `result-track:a9247457397eae947a4b2109fa236c0409fd81e3a60efc52d37edb188ba8cf71` |
| 34 | `theorem` | [sectorMP_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectormp-after-pp--c4d91d742df2f51e4afb3acd.md) | 276 | `result-track:c4d91d742df2f51e4afb3acdce1f07fbc70ba9d583f9de1b9c3b29092759197f` |
| 35 | `theorem` | [sectorPP_after_MM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectorpp-after-mm--85b5c345a1939bbebcc21737.md) | 287 | `result-track:85b5c345a1939bbebcc21737620f594e5d717a1d4e9274b45aa4b501e1572d05` |
| 36 | `theorem` | [sectorMM_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectormm-after-pp--5d5113d84543309ca00b2565.md) | 297 | `result-track:5d5113d84543309ca00b2565ef8e1dc4c6d75d9f7b41ca6a12fd83bcd62f4fdc` |
| 37 | `theorem` | [sectorPM_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectorpm-after-mp--c96de9e035727d74da7f29cd.md) | 307 | `result-track:c96de9e035727d74da7f29cdc68003b9b4e6ddf3fc0ff781cefbd282c379c0e9` |
| 38 | `theorem` | [sectorMP_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectormp-after-pm--bbfc055339073312dc917316.md) | 317 | `result-track:bbfc055339073312dc917316d06c38c10547af919d1db1fdc29f183805c4aab2` |
| 39 | `theorem` | [sectorPM_after_MM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectorpm-after-mm--0fe92edb2d696e1a50d0aa1b.md) | 327 | `result-track:0fe92edb2d696e1a50d0aa1b54bf4562ddec380720fd2fc600f79b156963a16d` |
| 40 | `theorem` | [sectorMM_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectormm-after-pm--33134103fff4f1eb3a56f3bb.md) | 338 | `result-track:33134103fff4f1eb3a56f3bbdba3347762259510cdcf02bebb1022d3680a902c` |
| 41 | `theorem` | [sectorMP_after_MM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectormp-after-mm--3edd6035152a5e334de86bd2.md) | 349 | `result-track:3edd6035152a5e334de86bd2f8c2f1f6217c256ea1b10d99c5e0188c12dceb49` |
| 42 | `theorem` | [sectorMM_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/sectormm-after-mp--d2d46ccaf4ba38d3688611ff.md) | 360 | `result-track:d2d46ccaf4ba38d3688611ff37daaaa7c8824be498165147fbfe82114a31f962` |
| 43 | `def` | [interventionSector](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/interventionsector--a571008e9602a6903ce6173b.md) | 371 | `declaration-track:a571008e9602a6903ce6173b80b54fe406993ad5b7b3658cd7823b7a52f99ce5` |
| 44 | `theorem` | [interventionSector_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/interventionsector-idempotent--b58b7b574bef7a5cc41871af.md) | 375 | `result-track:b58b7b574bef7a5cc41871affb3ba54f362fda101c727ca8e1df36069c042ea0` |
| 45 | `theorem` | [first_on_interventionSector](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/first-on-interventionsector--45629ab27d0faea20a2a53d2.md) | 380 | `result-track:45629ab27d0faea20a2a53d23a78e4301a39aef2d75bf69761132f8c4f42565a` |
| 46 | `theorem` | [second_on_interventionSector](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/declarations/second-on-interventionsector--aa17b18ea1c721069ca758f5.md) | 388 | `result-track:aa17b18ea1c721069ca758f5364e6552cea9e953ded84d2f6a20b458fc1f5720` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
