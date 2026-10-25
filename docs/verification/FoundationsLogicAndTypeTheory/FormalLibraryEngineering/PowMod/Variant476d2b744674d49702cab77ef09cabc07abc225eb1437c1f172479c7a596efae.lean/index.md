# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PowMod.Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "614a7b43ee109c4965e0578e8d758d34b1e0cfa2",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `614a7b43ee109c4965e0578e8d758d34b1e0cfa2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Even` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.PowMod` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powMod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/powmod--b309391d4ef84ceb3f27b3ac.md) | 29 | `declaration-track:b309391d4ef84ceb3f27b3ac8a7851d0734cdb59ac08a8761521360147a2d6c4` |
| 2 | `def` | [powModAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/powmodaux--e531838737545a4fff941723.md) | 31 | `declaration-track:e531838737545a4fff941723ad9946362179d4ca5e5f05fd5ee860cb4118568b` |
| 3 | `def` | [Nat.eager](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/nat-eager--88117f00f8d1b3c0c37d6a27.md) | 33 | `declaration-track:88117f00f8d1b3c0c37d6a2737e0a6fa880584dffea0aaa95d22c286816be699` |
| 4 | `def` | [powModTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/powmodtr--1814e4fb8948877dcdffffcc.md) | 37 | `declaration-track:1814e4fb8948877dcdffffcc0bba8ef2dd20393f7c27de7c21f5bb48a5b31fe8` |
| 5 | `def` | [powModTR'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/powmodtr--588c45c49868bc9eda3d686b.md) | 51 | `declaration-track:588c45c49868bc9eda3d686b6820127e4d9b4bef7fec20ee1dd819f3dee30b79` |
| 6 | `lemma` | [Bool.rec_eq_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/bool-rec-eq-ite--b6e95fa6986db98bff2cc422.md) | 62 | `result-track:b6e95fa6986db98bff2cc422f190007c4fe638c94a5336e757fdb5e94a7f236c` |
| 7 | `lemma` | [Nat.mod_eq_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/nat-mod-eq-mod--f9bc93800360f4ae2473627c.md) | 65 | `result-track:f9bc93800360f4ae2473627cbbe10a16c36a4c1c288ea77c06577fd85eb192f8` |
| 8 | `lemma` | [Nat.div_eq_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/nat-div-eq-div--d1452b0af47b34b246a3b283.md) | 66 | `result-track:d1452b0af47b34b246a3b283538475d0911e4683557f670ac99c6ba3d4d807c2` |
| 9 | `lemma` | [Nat.land_eq_land](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/nat-land-eq-land--0f39cc0c19d8d144c4844753.md) | 67 | `result-track:0f39cc0c19d8d144c4844753d33ece9bbab8b60138222818535c84f197d39944` |
| 10 | `lemma` | [powModTR_aux_zero_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/powmodtr-aux-zero-eq--d8bf9b23b96472b9a23b98d9.md) | 69 | `result-track:d8bf9b23b96472b9a23b98d9e9d53002ab908167527874fba27dd308dff84e6e` |
| 11 | `lemma` | [powModTR_aux_succ_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/powmodtr-aux-succ-eq--53d3fefd23919ac800784a9a.md) | 72 | `result-track:53d3fefd23919ac800784a9a27b82959d00e5ba6566e6a7772e19e009ef0c95c` |
| 12 | `lemma` | [powModTR_aux_succ_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/powmodtr-aux-succ-eq--f062caf36d31bcd6a23a2488.md) | 80 | `result-track:f062caf36d31bcd6a23a2488fb8fbe929ac6ab084774d900c9e65bbac5d180e9` |
| 13 | `lemma` | [powModTR_aux_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/powmodtr-aux-eq--e0aa3e2ac95fd53f6ad7ca19.md) | 87 | `result-track:e0aa3e2ac95fd53f6ad7ca1990faa05b45a3ad04cfa45fe76add325cbac687e0` |
| 14 | `lemma` | [powModTR_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/powmodtr-eq--1b57d2fdc18b0e4269ba8349.md) | 109 | `result-track:1b57d2fdc18b0e4269ba834944f1bd728acf1372957cd93a458268b8fd14a1ec` |
| 15 | `lemma` | [powMod_eq_of_powModTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/powmod-eq-of-powmodtr--ff5ad46e1f3d98eee7cfcbfe.md) | 113 | `result-track:ff5ad46e1f3d98eee7cfcbfed8a701bb31b448c7e1c21bc583be41a7d8ec5a90` |
| 16 | `lemma` | [powMod_ne_of_powModTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/powmod-ne-of-powmodtr--18221788ed08cf4a09b6fdfa.md) | 116 | `result-track:18221788ed08cf4a09b6fdfa0b950dc9690a66a45b1ffd89f1248b3df7b9ed75` |
| 17 | `def` | [mkPowModEq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/mkpowmodeq--113edf77d966ac867a3c4b5f.md) | 126 | `declaration-track:113edf77d966ac867a3c4b5f73bd507ddd0665e11d6c52b99038030f55e52938` |
| 18 | `def` | [provePowModEq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/provepowmodeq--a707150f0169a3347eba860b.md) | 132 | `declaration-track:a707150f0169a3347eba860b87b3545ce16cbca89e82000739b7e2e1169f2825` |
| 19 | `def` | [provePowModNe'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/provepowmodne--2524e6362d029ab54229c3be.md) | 138 | `declaration-track:2524e6362d029ab54229c3be7b4e15b04dc6ace3630e903b2c9127ebb7228e94` |
| 20 | `def` | [prove_pow_mod_tac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/prove-pow-mod-tac--bba9f4bf05354e8c6b325b48.md) | 143 | `declaration-track:bba9f4bf05354e8c6b325b48de1db7c15c8d9b3559977e3c30cc728e0df24281` |
| 21 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/declarations/elab--ff57b7faf800c7e419b4c984.md) | 180 | `declaration-track:ff57b7faf800c7e419b4c9845945846f852af4d54ee15a780967cf3e1a1fb1fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
