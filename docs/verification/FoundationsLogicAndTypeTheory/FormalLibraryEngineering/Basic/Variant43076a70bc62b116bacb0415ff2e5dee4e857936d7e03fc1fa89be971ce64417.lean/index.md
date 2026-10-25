# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14fe35f37bf596d3b4d0946cb79ea1ba760434f9",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14fe35f37bf596d3b4d0946cb79ea1ba760434f9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveCountable` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.DirectedInverseSystem` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.FixedPoints` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Union` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Fold` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ext` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/expr--d9d744a9660be0ae839eaff7.md) | 41 | `declaration-track:d9d744a9660be0ae839eaff74daaea01acf5663f4de6fe744ca6749774b55454` |
| 2 | `def` | [liftRen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/liftren--2d30d7d3802f4a13f20d469b.md) | 53 | `declaration-track:2d30d7d3802f4a13f20d469b29d584697f362b5522003f7b5351fae2e21464b1` |
| 3 | `def` | [rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/rename--14f5d80cc7faae0b7fb14344.md) | 57 | `declaration-track:14f5d80cc7faae0b7fb143443c34fa1b006257505423955a2943b48388e6aa91` |
| 4 | `def` | [liftSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/liftsub--f0b80436b2fdcd37aaaf23f7.md) | 64 | `declaration-track:f0b80436b2fdcd37aaaf23f7af1afc42e7a76cb906fa546b1410914e2bebbca5` |
| 5 | `def` | [subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/subst--15a74494a049732f34fdb482.md) | 68 | `declaration-track:15a74494a049732f34fdb482f496a2b60d68345df21b16fb83f96319118dc23f` |
| 6 | `def` | [single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/single--4d54a77375e103f45c4c9db7.md) | 75 | `declaration-track:4d54a77375e103f45c4c9db77230743134106406bb966c6cd18aa89debb54d84` |
| 7 | `def` | [instantiate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/instantiate--b9206f80c8be16c16a2252a0.md) | 79 | `declaration-track:b9206f80c8be16c16a2252a0717328649d3e766518e395c6f883ef6618b66087` |
| 8 | `structure` | [Specification](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/specification--006c9d0d5f4ae98dbae662c3.md) | 83 | `declaration-track:006c9d0d5f4ae98dbae662c333b6d04d3447d7d10f58b2d3074e70f90cd66ba2` |
| 9 | `axioms` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/axioms--29d307f70e207333851a2a2e.md) | 84 | `declaration-track:29d307f70e207333851a2a2e6609138d67bc03a4d86a0007f7c28fd8225eea4d` |
| 10 | `inductive` | [Beta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/beta--9244f0f46bcacbba57cf8916.md) | 87 | `declaration-track:9244f0f46bcacbba57cf8916d3995d2e44f432b48a427c12efd2053db59f7b49` |
| 11 | `def` | [Converts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/converts--33df9930c1f14af77ff5a072.md) | 96 | `declaration-track:33df9930c1f14af77ff5a072a91624f221f7a2854331e42214d36d7c3c828b9a` |
| 12 | `def` | [Normal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/normal--173f224cb6335af84a19714e.md) | 98 | `declaration-track:173f224cb6335af84a19714ee17da01a72213081b7e7bcc6df078114b5573aa7` |
| 13 | `def` | [WeaklyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/weaklynormalizing--919f3099c1dae60ce878d218.md) | 100 | `declaration-track:919f3099c1dae60ce878d218c86b74f31af51e97e09e543974caef6108d50714` |
| 14 | `def` | [StronglyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/stronglynormalizing--64427c2da7d3b1db746055f1.md) | 105 | `declaration-track:64427c2da7d3b1db746055f13fc8f440ff195099e9aeacbd1406048aa0c8fc37` |
| 15 | `inductive` | [HasType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/hastype--adf73caba9ac6e716334b81f.md) | 108 | `declaration-track:adf73caba9ac6e716334b81f89e102634a5f2117391a294ed621d5bcb536a0ee` |
| 16 | `inductive` | [ValidContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/validcontext--30b14ba0a66cc6855417ca9e.md) | 126 | `declaration-track:30b14ba0a66cc6855417ca9ea061dd92d3c248d0db9bcf20fcd09ce267d88b2c` |
| 17 | `def` | [Legal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/legal--886354814e2258aa40904471.md) | 131 | `declaration-track:886354814e2258aa409044718f27682aaed17558f1326ee1ff9fff6cefb10429` |
| 18 | `def` | [SystemWeaklyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/systemweaklynormalizing--dfd4af494f4979d6f09a960f.md) | 134 | `declaration-track:dfd4af494f4979d6f09a960f197135aceffaddcc7e2d353f380795b00bbe9243` |
| 19 | `def` | [SystemStronglyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/systemstronglynormalizing--b1905af0e24de015e9c81e1b.md) | 137 | `declaration-track:b1905af0e24de015e9c81e1bbd3b7edbd5ea75965d38d336f55fbef49be55533` |
| 20 | `theorem` | [valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/valid--3357947500ff71c3c9bd04fa.md) | 145 | `result-track:3357947500ff71c3c9bd04fa0d0045355bf810d7aca6f8504a5ed0ccdd34d3c7` |
| 21 | `theorem` | [liftRen_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/liftren-zero--ae8aea3dad565cbc161ab06f.md) | 161 | `result-track:ae8aea3dad565cbc161ab06fbd0ebbfe2c4324e56f1e84ee2f3e00214bc92ee4` |
| 22 | `theorem` | [liftRen_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/liftren-succ--e8fedc2c7f85b2008f4006ca.md) | 162 | `result-track:e8fedc2c7f85b2008f4006ca193e069e3dc22b64a30ad9993236ebf9ac27eb18` |
| 23 | `theorem` | [liftRen_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/liftren-id--a37af3e9acc4c148623b0777.md) | 165 | `result-track:a37af3e9acc4c148623b07771b5af1b8d9c6ca71c83134c1ed3ec6d0cc466df8` |
| 24 | `theorem` | [liftRen_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/liftren-comp--ce33f560f0e7757e44c6a838.md) | 169 | `result-track:ce33f560f0e7757e44c6a8388692f29630bbd119da1e389d7a6d0b97a1bc4474` |
| 25 | `theorem` | [rename_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/rename-id--590c1a421bc757a9ab512fc7.md) | 173 | `result-track:590c1a421bc757a9ab512fc7badbe563f4d08af2a003ad4f04ed8941cc559969` |
| 26 | `theorem` | [rename_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/rename-comp--e665ca4859e2bcc8ee0cc0f3.md) | 181 | `result-track:e665ca4859e2bcc8ee0cc0f328afa4d69c1a68c66d47c27e990327a6c8d915a4` |
| 27 | `theorem` | [liftSub_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/liftsub-zero--063121e32fc1c856c2d6aeaa.md) | 190 | `result-track:063121e32fc1c856c2d6aeaa92e4a3f12bb8b69c28827632b9e2008a8fec698a` |
| 28 | `theorem` | [liftSub_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/liftsub-succ--815659dc86cca024ac6f8df4.md) | 191 | `result-track:815659dc86cca024ac6f8df48498810d43fe73616d115b930b6e59ad25029ba9` |
| 29 | `theorem` | [liftSub_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/liftsub-var--2bd54105ea0b95d905efbbea.md) | 194 | `result-track:2bd54105ea0b95d905efbbead567fe1168191af1dc997d3abca0382831cb5ff4` |
| 30 | `theorem` | [subst_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/subst-var--dbecfd7530b4728fe54f1d2a.md) | 198 | `result-track:dbecfd7530b4728fe54f1d2af3e5c92933a7a24ad6b6de36ec30f22d81b021c1` |
| 31 | `theorem` | [subst_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/subst-rename--7d18d59bc81b2dc26b7edb18.md) | 206 | `result-track:7d18d59bc81b2dc26b7edb180b856cd4615348a03892d7f74bd6e42e2675ff90` |
| 32 | `theorem` | [rename_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/rename-subst--b87053536fe2ac822ad218e8.md) | 220 | `result-track:b87053536fe2ac822ad218e8e15a611d3c57379d20f244f776c22a6fb8a2e5ff` |
| 33 | `theorem` | [subst_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/subst-subst--f7358d013c188cf712897642.md) | 239 | `result-track:f7358d013c188cf712897642e707de69cfd124a4b1c9e1cc401f4a66b972e1de` |
| 34 | `theorem` | [instantiate_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/instantiate-rename--a7a6e48b3b25cad9921c6a06.md) | 258 | `result-track:a7a6e48b3b25cad9921c6a06d1138086704aa910d78cf4947591f9d25aba8b01` |
| 35 | `theorem` | [instantiate_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/instantiate-subst--97594cafd259b08a29a0c355.md) | 265 | `result-track:97594cafd259b08a29a0c3551d608769f2abffca8fd6d43ff7b9db495cf16074` |
| 36 | `theorem` | [rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/rename--6a8b2a413b60efb41c7d236e.md) | 282 | `result-track:6a8b2a413b60efb41c7d236e002e45400bc47c38f4f897e57be64e492d4833fa` |
| 37 | `theorem` | [subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/declarations/subst--165da13d399eba81a50ced87.md) | 294 | `result-track:165da13d399eba81a50ced874d52e09a3bedc2df15431daa5b4e7b06fc597df4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
