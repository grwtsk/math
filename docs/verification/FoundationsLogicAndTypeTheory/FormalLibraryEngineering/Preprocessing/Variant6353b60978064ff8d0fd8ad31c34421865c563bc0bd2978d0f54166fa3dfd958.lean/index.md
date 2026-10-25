# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocessing.Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77a99f8cd2e0f89015b974cd4386134a32d6f92e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77a99f8cd2e0f89015b974cd4386134a32d6f92e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Datatypes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CancelDenoms.Core` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AtomM` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitConjunctions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/splitconjunctions--441186216fd44580024fa160.md) | 40 | `declaration-track:441186216fd44580024fa160eedafb408ba71b903338906ae777018161ecea88` |
| 2 | `def` | [filterComparisons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/filtercomparisons--2c2f1f1409a9606f86cb3abf.md) | 55 | `declaration-track:2c2f1f1409a9606f86cb3abf3c6efdc8b81e1041113ea4e994a4cefb28743f71` |
| 3 | `def` | [flipNegatedComparison](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/flipnegatedcomparison--fa06d912ce8b95d944475fee.md) | 71 | `declaration-track:fa06d912ce8b95d944475fee73ee59d46e4a53e9eed6a9126d8c4c92412eed60` |
| 4 | `def` | [removeNegations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/removenegations--eef3bad5a1f3fe27236d57f8.md) | 81 | `declaration-track:eef3bad5a1f3fe27236d57f87cd1d0e3611b1b56a74929da8f13134030526b75` |
| 5 | `def` | [isNatProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/isnatprop--08cff26f629af51b7b701d4a.md) | 104 | `declaration-track:08cff26f629af51b7b701d4ab57e294e1370f548d13b3398db061db1f025e38e` |
| 6 | `def` | [isNatCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/isnatcoe--8199d23c301e7d735aa13b03.md) | 108 | `declaration-track:8199d23c301e7d735aa13b03861490df9f58f9bab0e94ad6d441098158349784` |
| 7 | `def` | [getNatComparisons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/getnatcomparisons--bc45a547daefcb1bc700112a.md) | 116 | `declaration-track:bc45a547daefcb1bc700112a58a348277ed350593dddeb792d1b52a77caa7590` |
| 8 | `def` | [mk_natCast_nonneg_prf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/mk-natcast-nonneg-prf--f8c51edc1a7c720743154d6a.md) | 127 | `declaration-track:f8c51edc1a7c720743154d6a543eaf17dc9ee534da0735f464b2c4bec4b385d8` |
| 9 | `def` | [Expr.Ord](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/expr-ord--7f435d39c925add294b6d95e.md) | 136 | `declaration-track:7f435d39c925add294b6d95e243d394c5bec77bee1e06a963b36e51e4f86fbee` |
| 10 | `def` | [natToInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/nattoint--cc454c7e396d734dd9bf63a3.md) | 148 | `declaration-track:cc454c7e396d734dd9bf63a3ba749eb03f58bfc3bf78acd738de59f7211e0989` |
| 11 | `def` | [mkNonstrictIntProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/mknonstrictintproof--13ad05d3f00e176ceb7886a2.md) | 182 | `declaration-track:13ad05d3f00e176ceb7886a24770d4561b6a54016dc32f5a3f9c5a60805c3aa8` |
| 12 | `def` | [strengthenStrictInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/strengthenstrictint--5d8f070b86b594baec10acb3.md) | 193 | `declaration-track:5d8f070b86b594baec10acb32fb8776bd469dcc88f735875d0f1ade919ba3e69` |
| 13 | `def` | [rearrangeComparison](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/rearrangecomparison--59365a1d355c4c7b80ce2e5f.md) | 205 | `declaration-track:59365a1d355c4c7b80ce2e5fb1755a662ce69ba7d6885331db402bc39b84ecf9` |
| 14 | `def` | [compWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/compwithzero--5ddd477cec3c085107a66517.md) | 215 | `declaration-track:5ddd477cec3c085107a665176e9274a3500fe58380e1f8d2b25a577707d55e43` |
| 15 | `theorem` | [without_one_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/without-one-mul--5a974fd1ffbae243215f2a3a.md) | 223 | `result-track:5a974fd1ffbae243215f2a3a083bb015946d52cdced34ede954d2e7ef2a892b4` |
| 16 | `def` | [normalizeDenominatorsLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/normalizedenominatorslhs--a30f4e020e558db38f3c7c31.md) | 230 | `declaration-track:a30f4e020e558db38f3c7c31c79c229ee3758ca787b60322f00351a2e4a8fe78` |
| 17 | `def` | [cancelDenoms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/canceldenoms--6866a0a14ec4f919d1f5751f.md) | 248 | `declaration-track:6866a0a14ec4f919d1f5751fccc5a5cee7e8f142e5f78939d24beabb51376fda` |
| 18 | `def` | [findSquares](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/findsquares--472072a6281d7e2a566594b1.md) | 264 | `declaration-track:472072a6281d7e2a566594b13f4a9d9171d1cb5044bf8d6c36de5c9f36ff2e99` |
| 19 | `def` | [nlinarithGetSquareProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/nlinarithgetsquareproofs--7cc1598b135dfee079d5a778.md) | 290 | `declaration-track:7cc1598b135dfee079d5a7789ea8cf4ba89a92f1abe834f414c6aea351e344cf` |
| 20 | `def` | [nlinarithGetProductsProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/nlinarithgetproductsproofs--e9c87c621dd0539bc73a72e3.md) | 309 | `declaration-track:e9c87c621dd0539bc73a72e3abe25c2b58689846faf15bfe7c2c931418ae7d50` |
| 21 | `def` | [nlinarithExtras](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/nlinarithextras--5811fbb8e2aed87fb7a55127.md) | 342 | `declaration-track:5811fbb8e2aed87fb7a551276467521b72ec9e12af398f2c2ede3e2353662f1e` |
| 22 | `def` | [removeNe_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/removene-aux--7d2a288009a948e05125374e.md) | 357 | `declaration-track:7d2a288009a948e05125374e5bed699f1790181331421b03e94a4ea08d2b79ca` |
| 23 | `def` | [removeNe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/removene--43968f3827e3a1d8ac505920.md) | 375 | `declaration-track:43968f3827e3a1d8ac50592037df939421c8057457e29e804f95548105f04e96` |
| 24 | `def` | [defaultPreprocessors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/defaultpreprocessors--fc51493543d936c11d110db8.md) | 384 | `declaration-track:fc51493543d936c11d110db8e2bbbf3bb0f3b6a337b3220c670201087ef02983` |
| 25 | `def` | [preprocess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/declarations/preprocess--e62033b07b736610e966392d.md) | 395 | `declaration-track:e62033b07b736610e966392db7dcacee58ca010a00c7e07d68d2ae8f6f68d602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
