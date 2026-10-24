# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Connect.Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbf9d5a68e07211322051511574b3a4fbf4c064e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbf9d5a68e07211322051511574b3a4fbf4c064e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologicalComplex` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ConnectData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/connectdata--85ba5915eba006b1903156ed.md) | 33 | `declaration-track:85ba5915eba006b1903156ed82106088a92d50e422b936ef21611800057dda47` |
| 2 | `def` | [X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/x--af63009b3067a3cb70dd31f8.md) | 47 | `declaration-track:af63009b3067a3cb70dd31f8e3f7ea2c73e27b469cea5f1af690d17adbb4d020` |
| 3 | `lemma` | [X_ofNat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/x-ofnat--7768f1476d56df13cea3e09a.md) | 51 | `result-track:7768f1476d56df13cea3e09a8e074efe506930e0ff5ab0671a9a3188d6250769` |
| 4 | `lemma` | [X_negSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/x-negsucc--4c7ea41e3d1d24ce6a1fbda0.md) | 52 | `result-track:4c7ea41e3d1d24ce6a1fbda0e8a4517e3ee398c9e33f910f1cbbc7d0c35031a6` |
| 5 | `lemma` | [X_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/x-zero--cf7e94c7c778e35f2fdc9514.md) | 53 | `result-track:cf7e94c7c778e35f2fdc951424cc588d7c99b919887315c8ffc99da7fbe4bf1f` |
| 6 | `lemma` | [X_negOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/x-negone--5c818c2c0218b0f29efabe5c.md) | 54 | `result-track:5c818c2c0218b0f29efabe5c9cada17c7c79689a5337bcdedfbf3fa7dc0da717` |
| 7 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/d--ccdc53337133097048ca0aa6.md) | 57 | `declaration-track:ccdc53337133097048ca0aa6f36d1c1328513885afc680fce45c9f8e0a0500a9` |
| 8 | `lemma` | [d_ofNat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/d-ofnat--a97cf30301e98e8fe0f55380.md) | 64 | `result-track:a97cf30301e98e8fe0f553800fefaddd054a4f3330759546d4167991630cf536` |
| 9 | `lemma` | [d_negSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/d-negsucc--56ab9e505cd8328b776fc63d.md) | 65 | `result-track:56ab9e505cd8328b776fc63d04a89579a8360ef745958edc9120579bee2892af` |
| 10 | `lemma` | [d_sub_one_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/d-sub-one-zero--a8cd3992187af70e0ec17633.md) | 66 | `result-track:a8cd3992187af70e0ec17633d4559eefc15f517da9757974b94e787c66d2e225` |
| 11 | `lemma` | [d_zero_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/d-zero-one--87d03e509958f74b6dc72e73.md) | 67 | `result-track:87d03e509958f74b6dc72e7322203e1760d4d095bfada649a015c497221a65b5` |
| 12 | `lemma` | [d_sub_two_sub_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/d-sub-two-sub-one--04a689b5e08b13dfc0a9e35f.md) | 68 | `result-track:04a689b5e08b13dfc0a9e35faa718a4cc1436d9f9ed83acb06edd97f0dd87f1b` |
| 13 | `lemma` | [shape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/shape--c561ff716c1f514242ce68e5.md) | 70 | `result-track:c561ff716c1f514242ce68e5c93912e8fe984c753a68ef88397d118650d863c4` |
| 14 | `lemma` | [d_comp_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/d-comp-d--a5d47e75353e5744b28524fb.md) | 85 | `result-track:a5d47e75353e5744b28524fb1367d68b3bb15ec433bf21a78c18c3fdc6d47c08` |
| 15 | `def` | [cochainComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Connect/Variant211a3188c4df19e4001b6d6652161a9c763d6e35fc398c32f4db38fa720a5238.lean/declarations/cochaincomplex--27c8acaae443514b3f294d91.md) | 108 | `declaration-track:27c8acaae443514b3f294d914a13a710dbb41d3ea2de8278bccab9152f88ff3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
