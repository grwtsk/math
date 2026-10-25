# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocessing.Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0b6e024289558d569b9eb0534f06e6def4cd6dd",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0b6e024289558d569b9eb0534f06e6def4cd6dd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Datatypes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CancelDenoms` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Exception` — import line 9; external provider; requires a separately pinned dependency.
- `Std.Data.RBMap.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.HashMap` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitConjunctions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/splitconjunctions--daadbb4e26d47ac818c5c2a8.md) | 39 | `declaration-track:daadbb4e26d47ac818c5c2a827be561de04e463e9a95fa3a3e4f0ab485ac21d8` |
| 2 | `def` | [filterComparisons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/filtercomparisons--469bd83d8bfed04b4be322f7.md) | 54 | `declaration-track:469bd83d8bfed04b4be322f7dd2b4040eef7e406ed2c4b6c99910340c9ab038a` |
| 3 | `def` | [flipNegatedComparison](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/flipnegatedcomparison--034feddb777a8d8b81fe7db4.md) | 77 | `declaration-track:034feddb777a8d8b81fe7db4765366dcfe5e0627b25d756e419d5e06138b21ed` |
| 4 | `def` | [removeNegations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/removenegations--65179a8b935c84c0a4f39487.md) | 87 | `declaration-track:65179a8b935c84c0a4f3948714b8a692a373b70d1679bf15451ab851ba5f3c74` |
| 5 | `def` | [isNatProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/isnatprop--f80f7662e229e6685d82c058.md) | 107 | `declaration-track:f80f7662e229e6685d82c058b4bfd4e063db4ff1ed21503c9537500bdcaf7d2f` |
| 6 | `def` | [isNatIntCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/isnatintcoe--a60cfa0f91815e8dccc0309d.md) | 118 | `declaration-track:a60cfa0f91815e8dccc0309d54d52d10a9863c69b9a8793ff736e3f36c1d8563` |
| 7 | `def` | [getNatComparisons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/getnatcomparisons--d86aa91d24c8e417f0bbde43.md) | 126 | `declaration-track:d86aa91d24c8e417f0bbde43b24f9049a4e2667f8dc088c2e2568d032531c117` |
| 8 | `def` | [mk_coe_nat_nonneg_prf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/mk-coe-nat-nonneg-prf--40b6c9d0f48ca63016dbcc4e.md) | 135 | `declaration-track:40b6c9d0f48ca63016dbcc4ea0a193b36b3f76e61edc35e2bd2eaea34d3e9a1f` |
| 9 | `def` | [Expr.compare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/expr-compare--08a769dadef03af67da1b0c2.md) | 142 | `declaration-track:08a769dadef03af67da1b0c22cbd9fcfccd2820f7cdfdfd770ce7bbb4476260f` |
| 10 | `def` | [natToInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/nattoint--3f7e885c9c543c4941650164.md) | 151 | `declaration-track:3f7e885c9c543c494165016489b715dc25ae435d82e42090d4d22405b765adff` |
| 11 | `def` | [isStrictIntComparison](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/isstrictintcomparison--6faddd4bce9072c543800e81.md) | 184 | `declaration-track:6faddd4bce9072c543800e81ceca0190cd38cb4016acf725695fd3453ce15c8d` |
| 12 | `def` | [mkNonstrictIntProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/mknonstrictintproof--f55e118de7f60c5a00dd7e49.md) | 199 | `declaration-track:f55e118de7f60c5a00dd7e498ee13425abf26c853bf16233c5e0d01991075efa` |
| 13 | `def` | [strengthenStrictInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/strengthenstrictint--ef0c5359a0d2b760f88bea44.md) | 218 | `declaration-track:ef0c5359a0d2b760f88bea44bfb0d1ccac75aadb6b6180a4aa58a6518ffc6742` |
| 14 | `def` | [rearrangeComparison](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/rearrangecomparison--c61486f93d53ecae05fcab26.md) | 234 | `declaration-track:c61486f93d53ecae05fcab26b99ba17b9e94f4453e3ac30ca1bd19c03c2d9ce5` |
| 15 | `def` | [compWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/compwithzero--828aa0d146e6ca537ad8c478.md) | 269 | `declaration-track:828aa0d146e6ca537ad8c47865849006a957bd865145c617a0f5b783e4edd046` |
| 16 | `theorem` | [without_one_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/without-one-mul--81e8d33b61a9a66f3105733f.md) | 283 | `result-track:81e8d33b61a9a66f3105733f3fc70d700f5f4d00c4a7340df0b1a778353dd698` |
| 17 | `def` | [normalizeDenominatorsLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/normalizedenominatorslhs--6ccc8bea3da74c86ba121b13.md) | 289 | `declaration-track:6ccc8bea3da74c86ba121b13c52d2348dde7bbb499a7280fbc9f64773c6519ed` |
| 18 | `def` | [cancelDenoms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/canceldenoms--ebca9470d0367cd27b8c0782.md) | 307 | `declaration-track:ebca9470d0367cd27b8c0782315e2dfa67f30885629022fa43cfccbabf1f6f8a` |
| 19 | `def` | [findSquares](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/findsquares--2c7d2bc83a677286d8b16d87.md) | 322 | `declaration-track:2c7d2bc83a677286d8b16d87977df02157cfa439c69b8cd63491635c99c20ab6` |
| 20 | `def` | [nlinarithExtras](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/nlinarithextras--5463611b095f828f16beb5fd.md) | 345 | `declaration-track:5463611b095f828f16beb5fd0b9b1378c9e4e9d70afcab0ab8b858d283bdf1fc` |
| 21 | `def` | [removeNe_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/removene-aux--e6ea5967346d4979f26f0f99.md) | 389 | `declaration-track:e6ea5967346d4979f26f0f99c45f529f87f478c5a0b2c15e0a225268a605a6d8` |
| 22 | `def` | [removeNe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/removene--ee8442ea23c00de9e6248410.md) | 407 | `declaration-track:ee8442ea23c00de9e6248410fa89dab63c65ac065796a8ab81cb0a54c9685ce9` |
| 23 | `def` | [defaultPreprocessors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/defaultpreprocessors--82e3446dc0306c79d6cc0104.md) | 416 | `declaration-track:82e3446dc0306c79d6cc0104c9d5a59c7a03f1016c04feb6311412fca87ada2d` |
| 24 | `def` | [preprocess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/declarations/preprocess--be38bff47460c0499aa33651.md) | 427 | `declaration-track:be38bff47460c0499aa3365115cea2da422cc95b48e325c2fc06e257f37e0056` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
