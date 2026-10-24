# Verification target: GRWTSK.Topology.GeneralTopology.LocPathConnected.Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e46524ab1e85a490f7e627d59bfb71c5582884ba",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e46524ab1e85a490f7e627d59bfb71c5582884ba`.

Source path: `GRWTSK/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Connected.PathConnected` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/locpathconnectedspace--d234a8e11ecc591a309d20d2.md) | 58 | `declaration-track:d234a8e11ecc591a309d20d2665e742963c0012cffc1ec258af134b2f119471f` |
| 2 | `theorem` | [LocPathConnectedSpace.of_bases](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/locpathconnectedspace-of-bases--6f898801c5367aee60cf9d46.md) | 64 | `result-track:6f898801c5367aee60cf9d46ea2ef22e9cf9d595d1354ff3bfc1cb835739fdaf` |
| 3 | `theorem` | [IsOpen.pathComponentIn](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/isopen-pathcomponentin--bb6ee239f465001c87a04ba1.md) | 75 | `result-track:bb6ee239f465001c87a04ba1bbb3288c3c9cc85aa62153ee6f661a644e30f0fc` |
| 4 | `theorem` | [IsOpen.pathComponent](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/isopen-pathcomponent--91dcb601058649091003123f.md) | 84 | `result-track:91dcb601058649091003123f4254f5266aeaebcf6ea02b7cf029ac12185b7bcf` |
| 5 | `theorem` | [IsClosed.pathComponent](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/isclosed-pathcomponent--801b20afd04c9ed6b5a32e4c.md) | 89 | `result-track:801b20afd04c9ed6b5a32e4c7e689dd0ee172769dac99b6e22e4bef1c8da4d96` |
| 6 | `theorem` | [IsClopen.pathComponent](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/isclopen-pathcomponent--cafefdec7cbf49533dbf67ec.md) | 97 | `result-track:cafefdec7cbf49533dbf67ec70dd4cd3926b8fb958472c1e22cc0471187dd02d` |
| 7 | `lemma` | [pathComponentIn_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/pathcomponentin-mem-nhds--ce1876472a9bc80be9328e84.md) | 100 | `result-track:ce1876472a9bc80be9328e842f695184027d4af5c117c8db45b3e7ecf13677ca` |
| 8 | `theorem` | [pathConnectedSpace_iff_connectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/pathconnectedspace-iff-connectedspace--3dd92f870b7975b9bed0ab88.md) | 105 | `result-track:3dd92f870b7975b9bed0ab88df2d1a95fe4447c3f6b39d61b53c085c94d87965` |
| 9 | `theorem` | [pathComponent_eq_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/pathcomponent-eq-connectedcomponent--6daa3bc42bca15e3ade2a2d5.md) | 109 | `result-track:6daa3bc42bca15e3ade2a2d5b95d92aae99599b9a32fd77ba800b3de6c632481` |
| 10 | `theorem` | [pathConnected_subset_basis](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/pathconnected-subset-basis--02bd2ba3bc849918f5dfd84d.md) | 113 | `result-track:02bd2ba3bc849918f5dfd84dc086a493b588a85289d7e549d27b66e75e931d06` |
| 11 | `theorem` | [isOpen_isPathConnected_basis](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/isopen-ispathconnected-basis--652adef5b9b867e05225d1c0.md) | 117 | `result-track:652adef5b9b867e05225d1c0d78e6e1cd652adcdf301c8f8af4ab5377abbd097` |
| 12 | `theorem` | [Topology.IsOpenEmbedding.locPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/topology-isopenembedding-locpathconnectedspace--4195c4cceefcac0886327735.md) | 124 | `result-track:4195c4cceefcac08863277350d75591a5829656163800c344e63517395f02092` |
| 13 | `theorem` | [IsOpen.locPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/isopen-locpathconnectedspace--7d4b3a6e82e51492aa9eeda3.md) | 132 | `result-track:7d4b3a6e82e51492aa9eeda3aa9cff65c195bd4fdd13f1ca6c2e4d724088743a` |
| 14 | `theorem` | [IsOpen.isConnected_iff_isPathConnected](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/isopen-isconnected-iff-ispathconnected--b5d7c04f0fc488d2add4d44f.md) | 135 | `result-track:b5d7c04f0fc488d2add4d44faf916606ddcb3e6e3c560893c47312f4f5828ce2` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/instance--2dbc52abff1abe767f55ca30.md) | 142 | `declaration-track:2dbc52abff1abe767f55ca30ee30de41afd57fee74bd16b6393c2a8d45b36e51` |
| 16 | `lemma` | [locPathConnectedSpace_iff_isOpen_pathComponentIn](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/locpathconnectedspace-iff-isopen-pathcomponentin--61356ea361f7b206bc2cc55b.md) | 149 | `result-track:61356ea361f7b206bc2cc55bea4d3a193ae221dd17e97ff40ff57716044e444a` |
| 17 | `lemma` | [locPathConnectedSpace_iff_pathComponentIn_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/locpathconnectedspace-iff-pathcomponentin-mem-nhds--9581f53790d64ff4a5f5676f.md) | 158 | `result-track:9581f53790d64ff4a5f5676f19e96ebdd7cbfc9dfdbd9ef7c864225ea2aeadf6` |
| 18 | `lemma` | [LocPathConnectedSpace.coinduced](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/locpathconnectedspace-coinduced--f3e745047e3a5816da9e8aaf.md) | 169 | `result-track:f3e745047e3a5816da9e8aafb7d63ff705d8af09c731184712f5812f99e3a6c2` |
| 19 | `lemma` | [Topology.IsQuotientMap.locPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/topology-isquotientmap-locpathconnectedspace--04ed9dce7f5796ccbbe1075d.md) | 183 | `result-track:04ed9dce7f5796ccbbe1075da96a5fc91d363d793b6a415264c944ba223ee05b` |
| 20 | `instance` | [Quot.locPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/quot-locpathconnectedspace--f0c072421cbacea5af2b1b80.md) | 188 | `declaration-track:f0c072421cbacea5af2b1b80ebce3d38b72624d66ec5e424a14945bf8a231082` |
| 21 | `instance` | [Quotient.locPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/quotient-locpathconnectedspace--9bbcf23880bd9c73860a2386.md) | 192 | `declaration-track:9bbcf23880bd9c73860a23864169bd92b123d0862524c2e22ce851795af56a8f` |
| 22 | `instance` | [Sum.locPathConnectedSpace.](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/sum-locpathconnectedspace--37556512596350acf6120973.md) | 196 | `declaration-track:37556512596350acf61209732eb1a2039b12c446dd8d03a4bcd0ccdba719c8e7` |
| 23 | `instance` | [Sigma.locPathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/LocPathConnected/Variant7ad9f3c09fd1875c4f74255e94d44d45255ba50b9fdec7a9d446ec947fd486a3.lean/declarations/sigma-locpathconnectedspace--93d0e564ed147ddf346faccf.md) | 217 | `declaration-track:93d0e564ed147ddf346faccf18cfc94fddd803dd75889de5a14057bc6a819292` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
