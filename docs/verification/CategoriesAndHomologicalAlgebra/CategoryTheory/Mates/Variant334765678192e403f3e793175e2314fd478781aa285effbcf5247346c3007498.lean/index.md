# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mates.Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8983fbc15b0c685a03faf33bd9d03aab8e47e1a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8983fbc15b0c685a03faf33bd9d03aab8e47e1a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.TwoSquare` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/mateequiv--9caf2cf4342efa4ade6acafd.md) | 87 | `declaration-track:9caf2cf4342efa4ade6acafdb87b462d2c5b28dc23061e0dffacc958393f3833` |
| 2 | `theorem` | [mateEquiv_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/mateequiv-counit--319af53c916b176652da5bdf.md) | 113 | `result-track:319af53c916b176652da5bdf5a4fdacf34e3f8cfae3037b36d8c21a4c0544a7f` |
| 3 | `theorem` | [mateEquiv_counit_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/mateequiv-counit-symm--8243cac5bd2db804c1ae6491.md) | 118 | `result-track:8243cac5bd2db804c1ae649192b69fca6eba19a91ac8de728e3ca30bedabfb97` |
| 4 | `theorem` | [unit_mateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/unit-mateequiv--6820ba3d323b7746af213b82.md) | 125 | `result-track:6820ba3d323b7746af213b8270ae0adbc534c36c4f8da96c3cdb71949be9ea0e` |
| 5 | `theorem` | [unit_mateEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/unit-mateequiv-symm--c0d01e2edd4aee7ea3c9a7bd.md) | 138 | `result-track:c0d01e2edd4aee7ea3c9a7bd0be0dabd01b1ce9299bfeabfc4aa954d150b88a4` |
| 6 | `theorem` | [mateEquiv_vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/mateequiv-vcomp--8b67dc030961cd2034add9e2.md) | 156 | `result-track:8b67dc030961cd2034add9e26850ead2efef6386ef402c708390ce61a5020c23` |
| 7 | `theorem` | [mateEquiv_hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/mateequiv-hcomp--499d98689f36c122bb93fb75.md) | 193 | `result-track:499d98689f36c122bb93fb7559350cd20109c5650bc3209cffcab18398c824cf` |
| 8 | `theorem` | [mateEquiv_square](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/mateequiv-square--61a0cd321782d9f485221f46.md) | 226 | `result-track:61a0cd321782d9f485221f463c1dd6ad7313c194c1b81daf9d0399c99f118bfc` |
| 9 | `def` | [conjugateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv--277649f83062c103fe74d8e6.md) | 256 | `declaration-track:277649f83062c103fe74d8e687b11780bd0ceaa2e290c6afb4a452748f16d960` |
| 10 | `theorem` | [conjugateEquiv_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-counit--fc2080ea93667881308c603a.md) | 265 | `result-track:fc2080ea93667881308c603a1ccf0f9c79bc9138f2666d9fa834a471fe8f8f4f` |
| 11 | `theorem` | [conjugateEquiv_counit_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-counit-symm--9af37199553bdaa5427ad3c9.md) | 276 | `result-track:9af37199553bdaa5427ad3c9c84719f0bf3dbd97ab0ac8af9a689dff3d0b65ef` |
| 12 | `theorem` | [unit_conjugateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/unit-conjugateequiv--45a3f15c831d23bd3b7b6c65.md) | 283 | `result-track:45a3f15c831d23bd3b7b6c654ba8241438ed8c301355f88bb2a77cc66cb035ee` |
| 13 | `theorem` | [unit_conjugateEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/unit-conjugateequiv-symm--50679daafe7a0e39537f2c6e.md) | 294 | `result-track:50679daafe7a0e39537f2c6e32a89e36f8810835b939dcb919113dd77427e252` |
| 14 | `theorem` | [conjugateEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-id--2dcd5d57da1912db709eb4cc.md) | 301 | `result-track:2dcd5d57da1912db709eb4ccec1490bac22119dea0395b32388ab15820f4fde4` |
| 15 | `theorem` | [conjugateEquiv_symm_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-symm-id--f94b1ee045ac5e6c388c9c8f.md) | 306 | `result-track:f94b1ee045ac5e6c388c9c8f05f2f827aeba2cf03d78dbc789f2080534058e36` |
| 16 | `theorem` | [conjugateEquiv_adjunction_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-adjunction-id--0f4fd676e22878f62d0cc4d8.md) | 310 | `result-track:0f4fd676e22878f62d0cc4d856d2d9c5bd7580d3acfb016fbd27d6bf6fc80c91` |
| 17 | `theorem` | [conjugateEquiv_adjunction_id_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-adjunction-id-symm--802f4dbb4817db2627989953.md) | 314 | `result-track:802f4dbb4817db262798995330a2206558b48c28857550766aef03ec172a736b` |
| 18 | `theorem` | [conjugateEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-comp--e9a45f9a0a3edfd03ed7fb93.md) | 327 | `result-track:e9a45f9a0a3edfd03ed7fb93f5af5d8dc3a3613647807efcc8c6a2e2abd3893c` |
| 19 | `theorem` | [conjugateEquiv_symm_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-symm-comp--5d592bc39531a580d23ea5cf.md) | 342 | `result-track:5d592bc39531a580d23ea5cf0964d2c3a7ac6ac3c8d7f5a8275b90cdd181214d` |
| 20 | `theorem` | [conjugateEquiv_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-comm--0892aa3ae927896f6abdee7b.md) | 348 | `result-track:0892aa3ae927896f6abdee7b70514596bc672dfd1f1579455cac31c3ac1da7a3` |
| 21 | `theorem` | [conjugateEquiv_symm_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-symm-comm--e4646c1b1a59f6fa76c00da2.md) | 352 | `result-track:e4646c1b1a59f6fa76c00da204d7f6bdb08042dccfc23541ab3b2d34ec63c955` |
| 22 | `instance` | [conjugateEquiv_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-iso--47ed14116269d89c7a20302e.md) | 368 | `declaration-track:47ed14116269d89c7a20302ea0fafb01bdc96560ff8fe36c86a29d97be803ef9` |
| 23 | `instance` | [conjugateEquiv_symm_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-symm-iso--34b4e531dc6bd2b6a3495aa2.md) | 376 | `declaration-track:34b4e531dc6bd2b6a3495aa2821a523cab6ba68a2e358454d98d6bf459937a6d` |
| 24 | `theorem` | [conjugateEquiv_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-of-iso--47c32e3f8f5b6d480a2153ec.md) | 384 | `result-track:47c32e3f8f5b6d480a2153eca7650fe60c072b0ef0c56dae4ff79d7b47d25f41` |
| 25 | `theorem` | [conjugateEquiv_symm_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-symm-of-iso--c6b76d7a9d1f6be9fe97c691.md) | 394 | `result-track:c6b76d7a9d1f6be9fe97c6911b06cc4cfde41f42efc2c1929625f873fb723d7c` |
| 26 | `def` | [conjugateIsoEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateisoequiv--c2d1ca0c9d799658bf31f4ba.md) | 402 | `declaration-track:c2d1ca0c9d799658bf31f4ba23d31bb78ad18f5333b64f68512150242e09e1d4` |
| 27 | `theorem` | [iterated_mateEquiv_conjugateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/iterated-mateequiv-conjugateequiv--d55922212a315a0e9a016f5a.md) | 439 | `result-track:d55922212a315a0e9a016f5a5df7c5de3e6cc1c966f053c8f1a000b5e7046775` |
| 28 | `theorem` | [iterated_mateEquiv_conjugateEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/iterated-mateequiv-conjugateequiv-symm--bfed839d43b8f012b6a36496.md) | 446 | `result-track:bfed839d43b8f012b6a3649672d2e32c616dd7457ccfec3823a38f1ad4e45d1e` |
| 29 | `theorem` | [mateEquiv_conjugateEquiv_vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/mateequiv-conjugateequiv-vcomp--c81ed275c21d67107e21843e.md) | 458 | `result-track:c81ed275c21d67107e21843ea61b052214b3a3f9043c356bdc0f12c7324a5268` |
| 30 | `theorem` | [conjugateEquiv_mateEquiv_vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/declarations/conjugateequiv-mateequiv-vcomp--81f1a15595421e6ac3ef4089.md) | 475 | `result-track:81f1a15595421e6ac3ef40897c50ed21399bf53a5af42c7dfe3bc04d3956eee1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
