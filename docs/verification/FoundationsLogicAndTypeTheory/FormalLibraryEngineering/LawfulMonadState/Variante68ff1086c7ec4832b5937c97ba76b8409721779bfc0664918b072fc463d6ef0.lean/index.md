# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulMonadState.Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b7230f7d82214d34fa380649682fb37b90d1c50",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b7230f7d82214d34fa380649682fb37b90d1c50`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [monadStateOf_get_eq_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/monadstateof-get-eq-get--62c4b0039061a0d5b13c1d5a.md) | 22 | `result-track:62c4b0039061a0d5b13c1d5af06695053cdff9c8a262eab3ee4fd6ec96ee18ff` |
| 2 | `theorem` | [monadStateOf_modifyGet_eq_modifyGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/monadstateof-modifyget-eq-modifyget--4f2d029bb6619a0d664b84ed.md) | 26 | `result-track:4f2d029bb6619a0d664b84ed2b08ce97eecc59493ed93f5242d0478bd4d55ced` |
| 3 | `theorem` | [liftM_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/liftm-get--c0e4900e185a4791059bfde2.md) | 29 | `result-track:c0e4900e185a4791059bfde22244bad2c02c2a7345660e7e049fd06218529132` |
| 4 | `theorem` | [liftM_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/liftm-set--483085250650a9b4f53c7be9.md) | 32 | `result-track:483085250650a9b4f53c7be91dc5b42e7179ed64138b084197d85a9646375591` |
| 5 | `theorem` | [liftM_modify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/liftm-modify--77a0cb9c45c0ade6d25ce149.md) | 35 | `result-track:77a0cb9c45c0ade6d25ce1497ed2c208cc2050c3eb4ff87eba9b27be8c54ba15` |
| 6 | `theorem` | [liftM_modifyGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/liftm-modifyget--651d7c55b2ce6b4d5911e52b.md) | 38 | `result-track:651d7c55b2ce6b4d5911e52b81cfb81399d9ee6d2111f740e1ceb466567667c0` |
| 7 | `theorem` | [liftM_getModify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/liftm-getmodify--cb0b3c2c3289459d3acee16b.md) | 41 | `result-track:cb0b3c2c3289459d3acee16b0e69e083c94f9cd815327ac4d3b3e17b3363d28c` |
| 8 | `class` | [LawfulMonadStateOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/lawfulmonadstateof--3d573772fce01423e52a2448.md) | 48 | `declaration-track:3d573772fce01423e52a2448a405e3a38a2ef2e4ed3a4d4366dae5518b30e62e` |
| 9 | `theorem` | [get_seqRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/get-seqright--83618b0e7f9901834e46cafb.md) | 73 | `result-track:83618b0e7f9901834e46cafb32c4a24922217d1cdfc460eed939e2776e5f606d` |
| 10 | `theorem` | [seqLeft_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/seqleft-get--010b9f7c9333a86cfeba6321.md) | 76 | `result-track:010b9f7c9333a86cfeba632181c43b6a717916e39df8b41dbb352b68412752ba` |
| 11 | `theorem` | [get_map_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/get-map-const--db5dbc943c4d864a6cab4cf5.md) | 79 | `result-track:db5dbc943c4d864a6cab4cf56aa1cbdb18c16c6721f2c1ecfbe2426deb73af5c` |
| 12 | `theorem` | [get_bind_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/get-bind-get--27359fa298e84b51cff2cd3a.md) | 83 | `result-track:27359fa298e84b51cff2cd3afc3ba932d930f647c91e6c7aed1e692e391cd7e2` |
| 13 | `theorem` | [get_bind_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/get-bind-set--effdb682378c6af53af27534.md) | 85 | `result-track:effdb682378c6af53af27534e512435f31e948ad80918c9cb21da19f65eeb3f6` |
| 14 | `theorem` | [get_bind_map_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/get-bind-map-set--3bd332b65ad58c49e10c6281.md) | 90 | `result-track:3bd332b65ad58c49e10c62810e423c0ea4481100c91157a5946eaa1d1f2a0da6` |
| 15 | `theorem` | [set_bind_get_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/set-bind-get-bind--b575075ccafe0ac453fa40ce.md) | 94 | `result-track:b575075ccafe0ac453fa40ce312ab78eeeb1268cafb5fbca2a56523989c56a46` |
| 16 | `theorem` | [set_bind_map_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/set-bind-map-get--1144404a09725ce4ab2fc9c1.md) | 98 | `result-track:1144404a09725ce4ab2fc9c15aca24e388962b210377f4ee8e6cd7c430f0e6e4` |
| 17 | `theorem` | [set_bind_set_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/set-bind-set-bind--71031c862010a9bca2ee18e8.md) | 102 | `result-track:71031c862010a9bca2ee18e8a65d1a143e542fb581e80cad059da99ba9a264e5` |
| 18 | `theorem` | [set_bind_map_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/set-bind-map-set--7e000e1117ebba8f66ebbdbb.md) | 106 | `result-track:7e000e1117ebba8f66ebbdbb3084f650419ed54be803074a2694b898060aaa89` |
| 19 | `theorem` | [modifyGetThe_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/modifygetthe-eq--d643bc470fbcbdc893027428.md) | 112 | `result-track:d643bc470fbcbdc893027428bfc6a289e551ea39817d50a69538e826852b8475` |
| 20 | `theorem` | [modify_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/modify-eq--edd92d66b10695ff74801163.md) | 115 | `result-track:edd92d66b10695ff748011638a84a7248e7152ceb14823a961441453f6324d11` |
| 21 | `theorem` | [modifyThe_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/modifythe-eq--33df5fbb869a0eb2bd7ba535.md) | 118 | `result-track:33df5fbb869a0eb2bd7ba53579bbd788924f1ed11141a3bafdadd13db34082be` |
| 22 | `theorem` | [getModify_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/getmodify-eq--20e6df630af64491d0a78ffb.md) | 121 | `result-track:20e6df630af64491d0a78ffb0b9fdcd2ebe0c8b64a9bf848bfe009fd1ff8917c` |
| 23 | `theorem` | [modifyGet_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/modifyget-eq--dcf42a30de4ca93a69518980.md) | 126 | `result-track:dcf42a30de4ca93a69518980aa2de8ecced742dde2ab426eb8d9930c64aabc6c` |
| 24 | `theorem` | [modify_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/modify-id--8c1cfea46928b15740e14d03.md) | 130 | `result-track:8c1cfea46928b15740e14d03b0922ff8c847473215dfeebc179214f3ecf6ea12` |
| 25 | `theorem` | [getModify_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/getmodify-id--df52b9fc3843f28c6452aae3.md) | 133 | `result-track:df52b9fc3843f28c6452aae31d38f94ab6384f47a8464a4eeb0ee06925c9eaeb` |
| 26 | `theorem` | [set_bind_modify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/set-bind-modify--8e93ab2bfe9be152dcf2e3ff.md) | 136 | `result-track:8e93ab2bfe9be152dcf2e3ffcd1fcf998eff235ca6a261cbcb9da98d9fea2607` |
| 27 | `theorem` | [set_bind_modify_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/set-bind-modify-bind--6e5a633ac138893991b8f419.md) | 139 | `result-track:6e5a633ac138893991b8f41920b21e4d611a8a67fba63ae4b93d121a430082f5` |
| 28 | `theorem` | [set_bind_modifyGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/set-bind-modifyget--7cca986f57e92ef64963508a.md) | 143 | `result-track:7cca986f57e92ef64963508ac81fa52944a32010bede2bb7c2d879720c77a5a3` |
| 29 | `theorem` | [set_bind_modifyGet_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/set-bind-modifyget-bind--0841068b1fe05d62de371b8b.md) | 146 | `result-track:0841068b1fe05d62de371b8b8e994bacdc19bd511ac6a1ed1980bbc4e01d06af` |
| 30 | `theorem` | [set_bind_getModify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/set-bind-getmodify--820267c24b2d5abc0415d99c.md) | 149 | `result-track:820267c24b2d5abc0415d99cbdd7419119f8ca249e3882d73ccc2bd3083c3075` |
| 31 | `theorem` | [set_bind_getModify_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/set-bind-getmodify-bind--5ebc7b496eae8d1b766de527.md) | 152 | `result-track:5ebc7b496eae8d1b766de5278bd0761ed836ebbcf04886456da33f7585897020` |
| 32 | `theorem` | [modify_bind_modify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/modify-bind-modify--edc2788cf031ac833783db1b.md) | 156 | `result-track:edc2788cf031ac833783db1b3f6432943d93e4adacb8f0f599b48dec9993b620` |
| 33 | `theorem` | [modify_bind_modifyGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/modify-bind-modifyget--0ed8ec24f4c8f81e1d8c04d6.md) | 159 | `result-track:0ed8ec24f4c8f81e1d8c04d600624cb63c03434a988504c47f0b0eb05b498900` |
| 34 | `theorem` | [getModify_bind_modify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/getmodify-bind-modify--6be98b7d3a630736b0c9d056.md) | 163 | `result-track:6be98b7d3a630736b0c9d056787dd68ce82aea9350b7ba795175ccfbe1916490` |
| 35 | `theorem` | [modify_comm_of_comp_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/modify-comm-of-comp-comm--9a1c8b5e36af105d7cf98c5d.md) | 168 | `result-track:9a1c8b5e36af105d7cf98c5d9234bcbcbf0b52b03072de24733440d9a6f09cdb` |
| 36 | `theorem` | [modify_bind_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/modify-bind-get--6d0c66a6e068437a49d45b7c.md) | 172 | `result-track:6d0c66a6e068437a49d45b7c1ad7c34db40e5d032c027404d17dc91a414f7d63` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/instance--55eb09fcd860a6d130341554.md) | 180 | `declaration-track:55eb09fcd860a6d130341554301d18d8bc43439186788902b2c72cc6f3494212` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/instance--f51072a9a43cee77afbfeb18.md) | 189 | `declaration-track:f51072a9a43cee77afbfeb181f1e6d9fba532c507ce8a4a0fb1cb4f4feedb2c2` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/instance--7603c5f916144dbb27bbbf72.md) | 198 | `declaration-track:7603c5f916144dbb27bbbf723d7f377208a09f96028c07d1bde13052a7bfe43d` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/instance--a5b2658f885354cdf9ae663c.md) | 208 | `declaration-track:a5b2658f885354cdf9ae663ce1733001a322dc2782abe5ade381e0af80554ed2` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variante68ff1086c7ec4832b5937c97ba76b8409721779bfc0664918b072fc463d6ef0.lean/declarations/instance--7d666927bec76be8dc502126.md) | 223 | `declaration-track:7d666927bec76be8dc5021269f949adeeee96d42297dddf2a96c99d6b1f275b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
