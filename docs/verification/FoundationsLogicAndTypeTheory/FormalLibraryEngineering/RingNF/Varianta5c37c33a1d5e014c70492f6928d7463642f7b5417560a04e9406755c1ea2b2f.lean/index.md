# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RingNF.Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a1dfa06f4565a82c73df05931993bf20062712c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a1dfa06f4565a82c73df05931993bf20062712c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Conv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExBase.isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/exbase-isatom--80ab14759449ee731db1b406.md) | 32 | `declaration-track:80ab14759449ee731db1b4066cbc29b77b0dc763bc66404a772043d8c25fb280` |
| 2 | `def` | [ExProd.isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/exprod-isatom--fa84babbf207367cef6e12f3.md) | 37 | `declaration-track:fa84babbf207367cef6e12f3433646616a27f583f1ddb6b875ed67388a84c2ea` |
| 3 | `def` | [ExSum.isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/exsum-isatom--3848c9f4a33cf6f13028a585.md) | 42 | `declaration-track:3848c9f4a33cf6f13028a585edb5838977f6e9eeafa12029dd28d90962662e8c` |
| 4 | `inductive` | [RingMode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/ringmode--f2ffdb513d11f9e5ad670428.md) | 54 | `declaration-track:f2ffdb513d11f9e5ad67042884fd94336f40a39fc45b71cf1ac7649f3409bb94` |
| 5 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/config--9b0f700fab839f80a2c17b41.md) | 62 | `declaration-track:9b0f700fab839f80a2c17b4170a752df53d167758ebc368d30d40afd8e9de373` |
| 6 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/context--797bd3f660bb2f544cc27d51.md) | 75 | `declaration-track:797bd3f660bb2f544cc27d51254dc296e6178e674b228ef2b35b5ec55365a29d` |
| 7 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/m--06b49ff1c37f93e4a4c9de10.md) | 85 | `declaration-track:06b49ff1c37f93e4a4c9de10221cfbdde794ab85b820cd8163cb58bcba86ed36` |
| 8 | `def` | [rewrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/rewrite--45bc700ce20c17cdaa5beb18.md) | 92 | `declaration-track:45bc700ce20c17cdaa5beb18102714719e21dd3df48f6243ed4a23465f2cc19e` |
| 9 | `theorem` | [add_assoc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/add-assoc-rev--16271238393152d92f808736.md) | 115 | `result-track:16271238393152d92f8087361004d02ad578484ac36fe93c58a942b7346d22ba` |
| 10 | `theorem` | [mul_assoc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/mul-assoc-rev--9d2051d33209b853f961805d.md) | 116 | `result-track:9d2051d33209b853f961805d3c38410da836036c683727ae9c176b0ad64f8080` |
| 11 | `theorem` | [mul_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/mul-neg--f499b032f0b6461475aebf50.md) | 117 | `result-track:f499b032f0b6461475aebf50468a7d3d394ad4590d3116964f9d198a3fcc44e5` |
| 12 | `theorem` | [add_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/add-neg--19d2ab463e262f53b6bb009b.md) | 118 | `result-track:19d2ab463e262f53b6bb009b5b6d65f44696ebfbfd8fe25692811f2b1ffe18c0` |
| 13 | `theorem` | [nat_rawCast_0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/nat-rawcast-0--a1eafbf800f0571877767c27.md) | 119 | `result-track:a1eafbf800f0571877767c272b69261a296e09ebce1cc5202e3b338b2ec79ea1` |
| 14 | `theorem` | [nat_rawCast_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/nat-rawcast-1--3dd7708b0681fad863ea5ed0.md) | 120 | `result-track:3dd7708b0681fad863ea5ed0f9a9427cdc8472c23e8c37f875fdb156ed70182c` |
| 15 | `theorem` | [nat_rawCast_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/nat-rawcast-2--589809609659748d6354993e.md) | 121 | `result-track:589809609659748d6354993e0d08ed94ecdef6082ac0a3f75b7bb9b169fe0af3` |
| 16 | `theorem` | [int_rawCast_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/int-rawcast-1--eae67a6223fd39c90b2de421.md) | 122 | `result-track:eae67a6223fd39c90b2de4215daf35f6e92a92907cc01b8a07a7a8a302f7d486` |
| 17 | `theorem` | [int_rawCast_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/int-rawcast-2--35a8f46ade9c4f4b44ae739d.md) | 124 | `result-track:35a8f46ade9c4f4b44ae739d174ed23a713419f62792d9fa72eda8d6c86aa131` |
| 18 | `theorem` | [rat_rawCast_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/rat-rawcast-2--cd368e2b1d8123d4a1e3c0b5.md) | 127 | `result-track:cd368e2b1d8123d4a1e3c0b5d0238e58fe12368aea25870acff8e00e989d3d17` |
| 19 | `def` | [M.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/m-run--257b8bea2b8a8302f77c76a9.md) | 137 | `declaration-track:257b8bea2b8a8302f77c76a963234f7460dc162e9be474b44ec54578ae6e1d2e` |
| 20 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/initialize--a807106283397a1a5afdcdc1.md) | 165 | `declaration-track:a807106283397a1a5afdcdc1477a11c6b5fd70ee1431dd9642785b0bc9c1a9e7` |
| 21 | `def` | [ringNFTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/ringnftarget--545b929c93fc50376fdfecbf.md) | 171 | `declaration-track:545b929c93fc50376fdfecbfa585542f3bc926c3ed91c837cd6ca6ffc2e3a4c5` |
| 22 | `def` | [ringNFLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/ringnflocaldecl--bf82af89c4b305fef92ccc89.md) | 182 | `declaration-track:bf82af89c4b305fef92ccc8993c3c42db714305632b01f2a85016ea3b65547a8` |
| 23 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/elab--ee3fc23df11329d16af4d2a7.md) | 201 | `declaration-track:ee3fc23df11329d16af4d2a746e03fd33331a2d4e0934562596c3d991a810140` |
| 24 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/macro--d42b0d43404d7c4a3771bf5a.md) | 209 | `declaration-track:d42b0d43404d7c4a3771bf5a7334f621e95c331ef33a8508249493b8a849d0dc` |
| 25 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/syntax--483ec42fd108aac51beb4de9.md) | 212 | `declaration-track:483ec42fd108aac51beb4de93257182c0d62a87cd2d7ac9177e92f8ac85ad2bb` |
| 26 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/elab--0ad3bb05e8cad11d2a21593d.md) | 221 | `declaration-track:0ad3bb05e8cad11d2a21593d5f8881af089e1730828da1ab9041277d9b24e320` |
| 27 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/macro--64457a187c22f18dfb724144.md) | 227 | `declaration-track:64457a187c22f18dfb724144a96553a28570db48cb4b90f5bf689fe3dcac3908` |
| 28 | `def` | [elabRingNFConv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/elabringnfconv--91e0842dd321b0f24b3230ef.md) | 230 | `declaration-track:91e0842dd321b0f24b3230ef6125919f8bce6b5f73da2318d0dd81c396199869` |
| 29 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/macro--7b2d8918e60cb8db2a4c1139.md) | 238 | `declaration-track:7b2d8918e60cb8db2a4c113979e81dd36b4271d04bfa2b27737f166a2fbdcd10` |
| 30 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/macro--4852738d9bc0e645dd268301.md) | 254 | `declaration-track:4852738d9bc0e645dd268301dbc6698138c0d2ffdf2263fe4ca0db0f8c1b31c1` |
| 31 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/macro--fa40e81b62c61959060e43fd.md) | 256 | `declaration-track:fa40e81b62c61959060e43fd8d915b55d21cae70ee85c5299add273ca42fae09` |
| 32 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/macro--509458d1927978447ba85b01.md) | 265 | `declaration-track:509458d1927978447ba85b0185de29329826fe0a7d79c0b35d99a7439beeced7` |
| 33 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Varianta5c37c33a1d5e014c70492f6928d7463642f7b5417560a04e9406755c1ea2b2f.lean/declarations/macro--6c33c53a87798fc2d30aaae5.md) | 267 | `declaration-track:6c33c53a87798fc2d30aaae5426ab96b8e2b53b85034de3642457d6df6934fa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
