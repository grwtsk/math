# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ITauto.Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "280c69c2cef616140db42a88d01bf0dfe0d92900",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `280c69c2cef616140db42a88d01bf0dfe0d92900`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Init` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AtomM` — import line 9; external provider; requires a separately pinned dependency.
- `Std.Data.TreeMap` — import line 10; external provider; requires a separately pinned dependency.
- `Qq` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AndKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/andkind--4e29b9f5712e48f964988673.md) | 90 | `declaration-track:4e29b9f5712e48f964988673c6d3a211f67bb25c6150321d0c98490f27a4cb24` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/instance--2f05484b3672ac197cb7b192.md) | 93 | `declaration-track:2f05484b3672ac197cb7b192a1530083e4f197333d74af871d85de70ed407f95` |
| 3 | `inductive` | [IProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/iprop--347ac6ac8f7fac485b2abd19.md) | 96 | `declaration-track:347ac6ac8f7fac485b2abd198dda1dc2db684d5cfcff79ddae15afa3c7e4e683` |
| 4 | `def` | [IProp.and](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/iprop-and--7d80f75200a0c710e460b7ce.md) | 106 | `declaration-track:7d80f75200a0c710e460b7ceb05afe368c5b3580c06700ccaa6e291e6872a309` |
| 5 | `def` | [IProp.iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/iprop-iff--6aca0181150ca870a48bd04c.md) | 109 | `declaration-track:6aca0181150ca870a48bd04c585732fe1d7248d6f1ff85405f1254744d10329a` |
| 6 | `def` | [IProp.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/iprop-eq--b8286fd6b220042a6c36e92e.md) | 112 | `declaration-track:b8286fd6b220042a6c36e92e9d4e7fc82c536b918db4cc6ecee542169eb13b19` |
| 7 | `def` | [IProp.not](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/iprop-not--5911afcb40a32eb0cdd055c8.md) | 115 | `declaration-track:5911afcb40a32eb0cdd055c815bd6006079b7ab043a711ed5b6ba7c1e3bf823c` |
| 8 | `def` | [IProp.xor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/iprop-xor--892bb321d03e6409cf867ce2.md) | 118 | `declaration-track:892bb321d03e6409cf867ce2ad14e7c4329bd85c549a3f45c3bfbfa725bc2fcc` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/instance--518335ce12a0fc8c28564bb8.md) | 120 | `declaration-track:518335ce12a0fc8c28564bb87dd1f5f5cd3845b6559ad94320c139e20798dcbf` |
| 10 | `def` | [AndKind.sides](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/andkind-sides--cf875a8cb0179fa82e838121.md) | 123 | `declaration-track:cf875a8cb0179fa82e8381213fd2ce1fe5a856fd005a669c1fbb0ca987255b9f` |
| 11 | `def` | [IProp.format](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/iprop-format--64d24d63aadfe6f439b90554.md) | 128 | `declaration-track:64d24d63aadfe6f439b905544605a7fe8c2d5ab107fa0b2952d9e5ea24de8147` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/instance--84a14a0f9acb402a9fc68481.md) | 138 | `declaration-track:84a14a0f9acb402a9fc68481dcb0c905e2ace42d9c80656064aa1e18b98ddf74` |
| 13 | `def` | [AndKind.cmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/andkind-cmp--fe8aa6583ca18f3f84521c8a.md) | 141 | `declaration-track:fe8aa6583ca18f3f84521c8a31d10f09ea701ff85950bc89495894c5a54d9d7b` |
| 14 | `def` | [IProp.cmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/iprop-cmp--951667812fae52a8750e8ddb.md) | 146 | `declaration-track:951667812fae52a8750e8ddbbcf30e6e53d7ecce1adcb83a7c2ba5ea75ea96de` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/instance--a92e3aaa1790147dd2cc1566.md) | 161 | `declaration-track:a92e3aaa1790147dd2cc156695749429a390a14c6b761005021e4fa8f8669d59` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/instance--c779d9b49b3222647cf7e471.md) | 163 | `declaration-track:c779d9b49b3222647cf7e471fc09e5453c699bfd42ae12727a4fa7ed333608e6` |
| 17 | `inductive` | [Proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/proof--097a2142402a8bea0714ffbd.md) | 168 | `declaration-track:097a2142402a8bea0714ffbd7efc43cbe4e62dafa4b60ddab40c60bf2eb97c31` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/instance--ac8523f4aa9c2e257f157c57.md) | 234 | `declaration-track:ac8523f4aa9c2e257f157c571bbec00eaa0071a120ec6165370dfde78e358926` |
| 19 | `def` | [Proof.format](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/proof-format--d8528ab0d92599151414beda.md) | 237 | `declaration-track:d8528ab0d92599151414beda330facb7f3916e4c604c0bfed69a17934d0b55a7` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/instance--ae29dd04627560ffb5366326.md) | 259 | `declaration-track:ae29dd04627560ffb53663268638569dfe201f4af23a217ebe65508d22e04bab` |
| 21 | `def` | [Proof.exfalso](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/proof-exfalso--d6c963942931a99e42d2b912.md) | 262 | `declaration-track:d6c963942931a99e42d2b9124db22fa382b35a31fc408684bb56b2151f10c711` |
| 22 | `def` | [Proof.orElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/proof-orelim--801e84bb9c62a74ccf4e23c1.md) | 267 | `declaration-track:801e84bb9c62a74ccf4e23c16e3330c88760e7a3b5f75868d3a2772a5c7109b4` |
| 23 | `def` | [Proof.app](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/proof-app--87d7858f0e977d9157b83ac5.md) | 273 | `declaration-track:87d7858f0e977d9157b83ac5ea437bd695186740b52f7f5c30b82406565298d9` |
| 24 | `def` | [freshName](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/freshname--a6c014fe9be575d76c85c928.md) | 341 | `declaration-track:a6c014fe9be575d76c85c928de615341c2b731b7e262493146dfa1310fbac1b6` |
| 25 | `abbrev` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/context--dccc9824dd0fb3945c67b5e2.md) | 344 | `declaration-track:dccc9824dd0fb3945c67b5e2150766d08aa3f0bcf46e12408bb338e335f1a10e` |
| 26 | `def` | [Context.format](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/context-format--e214bea7c4e257abf8ef6896.md) | 347 | `declaration-track:e214bea7c4e257abf8ef6896ace95d6809847c159fd14d375dc1a10b89e65a66` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/instance--8707bb939a3c6e8b36048c84.md) | 350 | `declaration-track:8707bb939a3c6e8b36048c8474af56fe372eaf866bc5d0b681b08e9b1c0e7a90` |
| 28 | `def` | [Context.add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/context-add--6f3fa2b84f4600a642c7133d.md) | 357 | `declaration-track:6f3fa2b84f4600a642c7133d27b2b09415f5110939bcab41e97b46e8032411e3` |
| 29 | `def` | [Context.withAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/context-withadd--f5aaf5efeefadadf812d861e.md) | 378 | `declaration-track:f5aaf5efeefadadf812d861e0dba1a78dfa058433ba5063f85fd060b0f853970` |
| 30 | `def` | [mapProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/mapproof--fef8472ef1b08a4cd9ecc951.md) | 385 | `declaration-track:fef8472ef1b08a4cd9ecc951722718b83050b7b98c31cb74d7290287253e6857` |
| 31 | `def` | [isOk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/isok--a9d9b7b8e70bc8686eec0399.md) | 389 | `declaration-track:a9d9b7b8e70bc8686eec0399094839c667d2cc68eb454b2ab55b2b0e015e2f84` |
| 32 | `def` | [whenOk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/whenok--64dcfba7a53d6233a0d010e6.md) | 394 | `declaration-track:64dcfba7a53d6233a0d010e6f2d2b8f107a47cf1dfdea98ed984fe79e7c2abbd` |
| 33 | `def` | [search](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/search--1d002317f59106fa9fd17fc6.md) | 411 | `declaration-track:1d002317f59106fa9fd17fc63c3a4529cccdb0e66a072453704c7f985f58d116` |
| 34 | `def` | [prove](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/prove--161fd3d3e12aeea59e6598e9.md) | 449 | `declaration-track:161fd3d3e12aeea59e6598e9d7710d4a20efe9b04bd590c632600cd2ad5726ed` |
| 35 | `def` | [reify](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/reify--d15d51ec1e5f4ec8f95d4ca3.md) | 478 | `declaration-track:d15d51ec1e5f4ec8f95d4ca3598eca25d83c3f7abed15c21a4f6d5dfe48eb6d5` |
| 36 | `def` | [applyProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/applyproof--ff47767a7f3fadd62f9986f6.md) | 494 | `declaration-track:ff47767a7f3fadd62f9986f63df09972d6b6e1d283f4b021892bd4fcd048c34f` |
| 37 | `def` | [itautoCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/itautocore--3a30d4ebf0328f504f692fbb.md) | 642 | `declaration-track:3a30d4ebf0328f504f692fbba9f0fb56bdb24eff6d879e30198e81817318fa3a` |
| 38 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/syntax--9f2b3475827fc80e12dd6af4.md) | 712 | `declaration-track:9f2b3475827fc80e12dd6af4fb47e86c26dd6c898221205c9447776367300dc4` |
| 39 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/elab-rules--a81d91581fbbeb77d7efe580.md) | 714 | `declaration-track:a81d91581fbbeb77d7efe5802e56ca0d344bf9f3ec8ced5cef60c52413b6a702` |
| 40 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/syntax--04d27c72c1bf2ab93d99b5b4.md) | 721 | `declaration-track:04d27c72c1bf2ab93d99b5b4d9146b11d32403226f838689ca4f80427044de44` |
| 41 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/declarations/macro-rules--954d9acad5dd625ad75c0140.md) | 723 | `declaration-track:954d9acad5dd625ad75c014097644e3e40aeb10af3ed6dcb2548dfa391dcd774` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
