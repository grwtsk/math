# Verification target: GRWTSK.Topology.GeneralTopology.HSpaces.Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "207c245299bea9fd80a1128e1ae3d2e5a620fd7d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `207c245299bea9fd80a1128e1ae3d2e5a620fd7d`.

Source path: `GRWTSK/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HSpace](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/hspace--0993334de6e9c25fe19d83e3.md) | 70 | `declaration-track:0993334de6e9c25fe19d83e3378571102df96420522c6ac5d7d7347e52bf8a08` |
| 2 | `instance` | [HSpace.prod](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/hspace-prod--3181caca58c24072dae05c5e.md) | 87 | `declaration-track:3181caca58c24072dae05c5ea3e2f31789c67d5b172328e4aa85918508c7c3a4` |
| 3 | `def` | [toHSpace](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/tohspace--04c3b15b057ab4aec50e0dd9.md) | 151 | `declaration-track:04c3b15b057ab4aec50e0dd987d74aaa9f1dcb37c5becbcc04cac00dc7527d4a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/instance--6086ef1907a3087609f2165a.md) | 161 | `declaration-track:6086ef1907a3087609f2165a49b43e113825acf8f659b7bc25029f8d9c9138c1` |
| 5 | `theorem` | [one_eq_hSpace_e](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/one-eq-hspace-e--f244d3a35cbb4bd97ac24e7e.md) | 167 | `result-track:f244d3a35cbb4bd97ac24e7ee8bd2464c62a46641d830de21b7d9e71348755bc` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/example--a76d2abc3f2278fe0dc57b47.md) | 174 | `declaration-track:a76d2abc3f2278fe0dc57b475990646396b60718cd07f176db4929c49e2f55cb` |
| 7 | `def` | [qRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/qright--eee252200e79d65bad0cd9b2.md) | 186 | `declaration-track:eee252200e79d65bad0cd9b29836b10d7f3a69b6306f13deb87a07729f9ed201` |
| 8 | `theorem` | [continuous_qRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/continuous-qright--affef5d96af0b5fb137899e8.md) | 190 | `result-track:affef5d96af0b5fb137899e844d0da06a4b97da08b53b703688246f5c1e1fc15` |
| 9 | `theorem` | [qRight_zero_left](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/qright-zero-left--b0f25dded2cd805b4c58da33.md) | 195 | `result-track:b0f25dded2cd805b4c58da33c926e41d4fcb4de61e5319084e70f199b22e03e9` |
| 10 | `theorem` | [qRight_one_left](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/qright-one-left--6e503b061d56c59ce131117c.md) | 199 | `result-track:6e503b061d56c59ce131117c44b25f6cb58578b2710308868447b77ffa62e23c` |
| 11 | `theorem` | [qRight_zero_right](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/qright-zero-right--403094299827eed36e0195cd.md) | 208 | `result-track:403094299827eed36e0195cdd83b4c55509250d7ad1b75041e40f71694aca6ad` |
| 12 | `theorem` | [qRight_one_right](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/qright-one-right--d565439b1c21c0d9a1e5b58f.md) | 220 | `result-track:d565439b1c21c0d9a1e5b58fa4d373d63dd60dcded64cca689818f90613245f1` |
| 13 | `def` | [delayReflRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/delayreflright--52189301556b096c347b802c.md) | 241 | `declaration-track:52189301556b096c347b802cad20d9a0b45b1a273eb86af97ab8fbbd5c7a262c` |
| 14 | `theorem` | [continuous_delayReflRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/continuous-delayreflright--8077d5aabc8ef8edfb1bdd26.md) | 252 | `result-track:8077d5aabc8ef8edfb1bdd26fc1b921acbf79faa4a327d456eba4d3c49416e1c` |
| 15 | `theorem` | [delayReflRight_zero](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/delayreflright-zero--8e97644dff14616b3b340701.md) | 258 | `result-track:8e97644dff14616b3b340701eacdb2f181eb5ecdc9ce80466f2738961c651d7f` |
| 16 | `theorem` | [delayReflRight_one](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/delayreflright-one--9dafbce7925a5e8e86a982ed.md) | 267 | `result-track:9dafbce7925a5e8e86a982ed2073e7a3bfc553dab38e844f443d2014d873cb32` |
| 17 | `def` | [delayReflLeft](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/delayreflleft--42f77e035988bd29c0bddf94.md) | 274 | `declaration-track:42f77e035988bd29c0bddf940c576dae49add74bdad1e8f0ecf680cd60a0b78f` |
| 18 | `theorem` | [continuous_delayReflLeft](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/continuous-delayreflleft--e54ba4998a08f861b8de2a5f.md) | 278 | `result-track:e54ba4998a08f861b8de2a5ffaf0687bb8af57fb0fa2442497ea13e7e47eb17f` |
| 19 | `theorem` | [delayReflLeft_zero](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/delayreflleft-zero--f49528334093dde5f8c18366.md) | 284 | `result-track:f49528334093dde5f8c183664a1eab8c53d96cf0715a1b52fc5a079ae35f26fd` |
| 20 | `theorem` | [delayReflLeft_one](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/delayreflleft-one--2aa3f454c4eb46933252eb3f.md) | 288 | `result-track:2aa3f454c4eb46933252eb3fe6491271a8bafe27388e8d4581397c6335162451` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variant5d6a0d9fdc203a91f503797ce3dd6ba396b1106bd891296be0950bba24f9558a.lean/declarations/instance--1741e62376952518e43ec2e9.md) | 296 | `declaration-track:1741e62376952518e43ec2e90616b49b776a0fc0bd5e37d8150ee5de35c8da61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
