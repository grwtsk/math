# Verification target: GRWTSK.Topology.GeneralTopology.Hom.Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74f4c57f4396092be50d088753e6271dc45726a3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74f4c57f4396092be50d088753e6271dc45726a3`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousFunction.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSpectralMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/isspectralmap--aa9ffefc862cf8a8aed68441.md) | 46 | `declaration-track:aa9ffefc862cf8a8aed6844142bd34309d156b75b115ed9decf23b96a560cb28` |
| 2 | `theorem` | [IsCompact.preimage_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/iscompact-preimage-of-isopen--a3802193b49bb7ff3ec01716.md) | 52 | `result-track:a3802193b49bb7ff3ec017169d7f84fc4c640908cd80ad55df30d7c2fb94c7c8` |
| 3 | `theorem` | [IsSpectralMap.continuous](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/isspectralmap-continuous--f896a6b530b33730e782ed89.md) | 57 | `result-track:f896a6b530b33730e782ed8999f7faf6b0d46e7cce986cf65b1c6c9351286d33` |
| 4 | `theorem` | [isSpectralMap_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/isspectralmap-id--cb73c742f596da44cd0a64c6.md) | 61 | `result-track:cb73c742f596da44cd0a64c6942bbd39cc0300078279cf8ba969249b3bb9f275` |
| 5 | `theorem` | [IsSpectralMap.comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/isspectralmap-comp--4f0f1f6d1a87a95e363761cd.md) | 65 | `result-track:4f0f1f6d1a87a95e363761cd186408819f1f4b24321da97418d9b18a1e45cba1` |
| 6 | `structure` | [SpectralMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/spectralmap--228271162ecd47a24a8e0980.md) | 74 | `declaration-track:228271162ecd47a24a8e09807576829c7aa62aca20ebe2dfe77a2a8cabb2331a` |
| 7 | `class` | [SpectralMapClass](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/spectralmapclass--c0801431e56fa954aedea37d.md) | 86 | `declaration-track:c0801431e56fa954aedea37d805700cb9584a9edf93d67631a21092c6616c87d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/instance--2d5c5d302fa28de245bbd56c.md) | 99 | `declaration-track:2d5c5d302fa28de245bbd56ced0bf899cbe782ce4e7b37dfbda86d717e3a1d00` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/instance--64dcb06bc1719b2939037feb.md) | 104 | `declaration-track:64dcb06bc1719b2939037feba9dfa55f130dd49552804ba82215cd43c8212669` |
| 10 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/tocontinuousmap--8291a14f13064772e93a71b3.md) | 116 | `declaration-track:8291a14f13064772e93a71b314aafc509c84005dbee8f67104e5a6c7db091f5b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/instance--58bba4055846d9cc269bd0ca.md) | 120 | `declaration-track:58bba4055846d9cc269bd0ca5f59a306c144fa561d555cae9b839edb9637d851` |
| 12 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/tofun-eq-coe--5798816038e29516750c5877.md) | 133 | `result-track:5798816038e29516750c5877c2ad734190e2db28090780aa8b3c71c4f604c141` |
| 13 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/ext--3091e676f0e946c1f82bf4ed.md) | 138 | `result-track:3091e676f0e946c1f82bf4ed7d8527da40dcdaaad796f2f0019bf103d8e43912` |
| 14 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/copy--962c3d3c6653e4a750b722ba.md) | 144 | `declaration-track:962c3d3c6653e4a750b722bae3b984ea4ec5c7178791cede043e4b253ec1de09` |
| 15 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/coe-copy--4385004bf3015266ea74c1b6.md) | 149 | `result-track:4385004bf3015266ea74c1b6bb8ebd9f60b7058ecb0a61ac50becd7815c08d72` |
| 16 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/copy-eq--ba8812cd6338501a5b9cc06f.md) | 153 | `result-track:ba8812cd6338501a5b9cc06f6e845ee0ba6f80dafe18c3aeb22c406388387735` |
| 17 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/id--5e2697deecfca5015a6cf5e6.md) | 160 | `declaration-track:5e2697deecfca5015a6cf5e6699c548f0db47885f3193b422f78a672e19983a5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/instance--bd32835f6fa823e5b682bce7.md) | 164 | `declaration-track:bd32835f6fa823e5b682bce7e62b49db7acafb0cf3721805eb04f714a96b0d67` |
| 19 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/coe-id--bf705df6991b8be4d4feb431.md) | 168 | `result-track:bf705df6991b8be4d4feb431e30aa4097d045789428b918200ebd9dde91ccd86` |
| 20 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/id-apply--d61677f0480a51261f35d9e8.md) | 175 | `result-track:d61677f0480a51261f35d9e8569708679e5cf3c35a0de1c2d1e3f4fcbebdd895` |
| 21 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/comp--2b7400055e8c29373fde256c.md) | 180 | `declaration-track:2b7400055e8c29373fde256c84c5a770619c1d48c088d5573ec1023b0f1033fb` |
| 22 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/coe-comp--fbcd199f73f2d9eea4c1973b.md) | 185 | `result-track:fbcd199f73f2d9eea4c1973be222097b7c0ba0173272babed106a512700ba72a` |
| 23 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/comp-apply--1629f9d579bcd6c9c2388e2d.md) | 190 | `result-track:1629f9d579bcd6c9c2388e2db2f6facc85825a995289da238a332dd7b1e1cff4` |
| 24 | `theorem` | [coe_comp_continuousMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/coe-comp-continuousmap--130f1f0df891cd9124e11ca4.md) | 195 | `result-track:130f1f0df891cd9124e11ca45ec342f835943998fed0261ae39c7cc4b5c00259` |
| 25 | `theorem` | [coe_comp_continuousMap'](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/coe-comp-continuousmap--d18fe4853cebf3c934efe84a.md) | 200 | `result-track:d18fe4853cebf3c934efe84ac0bc75984e70d2a8452a2e406c310927af024b29` |
| 26 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/comp-assoc--11bb40c0f221d731bc9b1b72.md) | 206 | `result-track:11bb40c0f221d731bc9b1b72bc935cc3ee68592385ee2bec36732d9de8178041` |
| 27 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/comp-id--70590fc700f5bca9138a2f90.md) | 212 | `result-track:70590fc700f5bca9138a2f90d5aca094fb7b28311181723f0aefc8cb53f47ec4` |
| 28 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/id-comp--ef1101e8271a116baf15265f.md) | 217 | `result-track:ef1101e8271a116baf15265fd1313042472f36194ff4b8b96f9d081739b6afdd` |
| 29 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/cancel-right--5ba3722140245ab6a4cba102.md) | 221 | `result-track:5ba3722140245ab6a4cba102440447a5ba25611fbbe7d77870923644708c548e` |
| 30 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/declarations/cancel-left--1c19081ae308949b21a89d8e.md) | 227 | `result-track:1c19081ae308949b21a89d8e43c4414650cca1b39d62bca646400713b3f2ce32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
