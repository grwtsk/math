# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocessing.Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b40e715096eaebaaeb323e6d9f4619065d1cfe2",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b40e715096eaebaaeb323e6d9f4619065d1cfe2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Datatypes` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CancelDenoms.Core` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AtomM` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitConjunctions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/splitconjunctions--b6d6d4a3661aa05377d0abb8.md) | 48 | `declaration-track:b6d6d4a3661aa05377d0abb846e39f042ea61278760aa59087ba4f26130212b0` |
| 2 | `def` | [filterComparisons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/filtercomparisons--7afdb0d172cff333ada3bb5c.md) | 63 | `declaration-track:7afdb0d172cff333ada3bb5c5b66287ed7212abd6e9a4fe67febd9fcacb56eac` |
| 3 | `def` | [flipNegatedComparison](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/flipnegatedcomparison--88914aae6cc7e266ee7323b6.md) | 79 | `declaration-track:88914aae6cc7e266ee7323b6bc680e58ad6c7e52aa915c09cd55fe9fb4b71b38` |
| 4 | `def` | [removeNegations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/removenegations--96d3fe1c771fcdb5502cdff4.md) | 89 | `declaration-track:96d3fe1c771fcdb5502cdff46ec2500a0553912528239d7ed39cd365d60966b5` |
| 5 | `def` | [isNatProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/isnatprop--aa8671edb0f39d1c070e3772.md) | 112 | `declaration-track:aa8671edb0f39d1c070e37722ebfc2445d7257f9e8a453a3e9159dad9b710b18` |
| 6 | `def` | [isNatCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/isnatcoe--76de2edc225b9869a43b8ba1.md) | 116 | `declaration-track:76de2edc225b9869a43b8ba1d6938a45bf2bf540a2b87f4904c24fb3832a1d7b` |
| 7 | `def` | [getNatComparisons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/getnatcomparisons--eb38b21df398363348a5bb50.md) | 124 | `declaration-track:eb38b21df398363348a5bb50913672e9764fa3455d2be921ececc7c5a46cb222` |
| 8 | `def` | [mk_natCast_nonneg_prf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/mk-natcast-nonneg-prf--a66a55bec846bf47d6af0da7.md) | 135 | `declaration-track:a66a55bec846bf47d6af0da7cc7a26b1dff315851348f895e258d7ab376f563d` |
| 9 | `def` | [Expr.Ord](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/expr-ord--c745b99c38d9b8f033a0481c.md) | 144 | `declaration-track:c745b99c38d9b8f033a0481c78d6ba1948ff18e94b6f964d5a7166651afa431d` |
| 10 | `def` | [natToInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/nattoint--429c4187a10d3052b401e316.md) | 156 | `declaration-track:429c4187a10d3052b401e31687a2aef4b482a0f76ee33cbcb80a1bb7fdc9851d` |
| 11 | `def` | [mkNonstrictIntProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/mknonstrictintproof--cca2e6d5ba62acf30c99366d.md) | 190 | `declaration-track:cca2e6d5ba62acf30c99366dea513443da305800de0707201b79f081c02031d9` |
| 12 | `def` | [strengthenStrictInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/strengthenstrictint--05368485af89ff582c75dc30.md) | 201 | `declaration-track:05368485af89ff582c75dc30a386a5fb0d30fa6169851e4ae36d591bcbc36d18` |
| 13 | `def` | [rearrangeComparison](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/rearrangecomparison--bb7be53430c90dd6b55c7d2d.md) | 213 | `declaration-track:bb7be53430c90dd6b55c7d2d4497e5c087a78f28b1a80d6aa9e0c8b37cdb0e70` |
| 14 | `def` | [compWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/compwithzero--53f8a9e89251ac429d7a6243.md) | 223 | `declaration-track:53f8a9e89251ac429d7a6243e8605b6bc59f7ab915c765808171a354d2be3974` |
| 15 | `theorem` | [without_one_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/without-one-mul--747582029ad3799498ce6ee4.md) | 231 | `result-track:747582029ad3799498ce6ee463693bbdf02b501c94b8883cc113cd86b158ea94` |
| 16 | `def` | [normalizeDenominatorsLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/normalizedenominatorslhs--d2dec4c4d9a5f95b15a05516.md) | 238 | `declaration-track:d2dec4c4d9a5f95b15a055169b5735d1cebb81cbbbdbf8fdfebf2dadcdb52cea` |
| 17 | `def` | [cancelDenoms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/canceldenoms--e8e349838c628d45088781c2.md) | 256 | `declaration-track:e8e349838c628d45088781c29dd3debc1ca8098534baf1b484fd4f670e4e3c1b` |
| 18 | `def` | [findSquares](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/findsquares--d58da2b7ddbef46e50d132ca.md) | 272 | `declaration-track:d58da2b7ddbef46e50d132ca21631582068e4d9c24e3b9241efea3987c017a4a` |
| 19 | `def` | [nlinarithGetSquareProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/nlinarithgetsquareproofs--bb3e29cf3a24790d3d183269.md) | 298 | `declaration-track:bb3e29cf3a24790d3d1832696c4a816ffcd17192fe9f889600e911aab9b1ebca` |
| 20 | `def` | [nlinarithGetProductsProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/nlinarithgetproductsproofs--15b185710b72361febada76e.md) | 317 | `declaration-track:15b185710b72361febada76eb1fb94f4a8e10cd5703ed7b6d28b0e3407186b92` |
| 21 | `def` | [nlinarithExtras](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/nlinarithextras--4bb8caccb0b822455284a8f1.md) | 350 | `declaration-track:4bb8caccb0b822455284a8f170f93ee2ad5c3ca8bd3cbda1574c04058fce8bdb` |
| 22 | `def` | [removeNe_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/removene-aux--b428e614291f9c0b7da46d71.md) | 365 | `declaration-track:b428e614291f9c0b7da46d716f63d7cdc6c0d115a43f3a33c5740c64259e10bf` |
| 23 | `def` | [removeNe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/removene--e00af3d38cb2a90742c0e228.md) | 383 | `declaration-track:e00af3d38cb2a90742c0e2285b70a6be28c9cc1cdca75aada50e142e30b41c66` |
| 24 | `def` | [defaultPreprocessors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/defaultpreprocessors--830a91a6646ad7647f831258.md) | 392 | `declaration-track:830a91a6646ad7647f831258d6d635bd095056b5c86e8782cd8e1d93157abdce` |
| 25 | `def` | [preprocess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/declarations/preprocess--613f592e9c134e5f36f06a3a.md) | 403 | `declaration-track:613f592e9c134e5f36f06a3a10c11d7662a430009362ad69615df7be5b574607` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
