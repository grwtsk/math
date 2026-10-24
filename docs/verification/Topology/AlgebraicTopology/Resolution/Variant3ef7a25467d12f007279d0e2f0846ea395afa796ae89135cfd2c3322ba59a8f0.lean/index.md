# Verification target: GRWTSK.Topology.AlgebraicTopology.Resolution.Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4e50245597028563330c53a420fd026f16a22f0",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4e50245597028563330c53a420fd026f16a22f0`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Projective.Resolution` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuppressCompilation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftFZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/liftfzero--47c72944dace6905e5e24f8f.md) | 58 | `declaration-track:47c72944dace6905e5e24f8ff6b685e37c22a43f6eb16079c50385fb07d233ac` |
| 2 | `lemma` | [exact₀](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/exact--cc32272ce290b6189e98f20f.md) | 68 | `result-track:cc32272ce290b6189e98f20f267d9df855991e9067bdb645dfcdf6f6ee0835c5` |
| 3 | `def` | [liftFOne](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/liftfone--597aa9b3bffc44124036c394.md) | 73 | `declaration-track:597aa9b3bffc44124036c394eeae8190af09cd546f33242e5200d060a4ddd230` |
| 4 | `theorem` | [liftFOne_zero_comm](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/liftfone-zero-comm--9846036c20b72d584ae18aa4.md) | 78 | `result-track:9846036c20b72d584ae18aa4e7aa59a006e538c15df5473a06bf7cca47a9d390` |
| 5 | `def` | [liftFSucc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/liftfsucc--72319040c00e118763e35639.md) | 84 | `declaration-track:72319040c00e118763e35639733d12b3552827920bac5fb6d069b55e6edd1053` |
| 6 | `def` | [lift](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/lift--d190a459f81dcb7fa8e6d6aa.md) | 94 | `declaration-track:d190a459f81dcb7fa8e6d6aa5709c54ae19abc5048401df42d8175b9545dcffc` |
| 7 | `theorem` | [lift_commutes](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/lift-commutes--1368ca0fc637f4cff8713974.md) | 101 | `result-track:1368ca0fc637f4cff87139746826761c8dcbff9aca4195b3d8ac829b606ffa39` |
| 8 | `lemma` | [lift_commutes_zero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/lift-commutes-zero--32c3cfba394374b5acc60442.md) | 107 | `result-track:32c3cfba394374b5acc60442853de5cb982b595100a879b43a974e498d7d80fa` |
| 9 | `def` | [liftHomotopyZeroZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/lifthomotopyzerozero--f4c1a5c6b97000d46d6cf3c2.md) | 113 | `declaration-track:f4c1a5c6b97000d46d6cf3c215936f479e4514cdaa6fec3657ccf0e9b52874c5` |
| 10 | `lemma` | [liftHomotopyZeroZero_comp](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/lifthomotopyzerozero-comp--3b811f7d65ec716a2ec1c89d.md) | 118 | `result-track:3b811f7d65ec716a2ec1c89def7cbf8ef338fb219715f0e9ac94bd1db24857cb` |
| 11 | `def` | [liftHomotopyZeroOne](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/lifthomotopyzeroone--97bcee918ba8e34329f99c6c.md) | 124 | `declaration-track:97bcee918ba8e34329f99c6ca3504d13c2bb42e3928029bad3cfa7efdf4ce268` |
| 12 | `lemma` | [liftHomotopyZeroOne_comp](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/lifthomotopyzeroone-comp--85496b733c2fcbc9d416a731.md) | 132 | `result-track:85496b733c2fcbc9d416a731552ff8624dac0a67ae87c11d589ada765e2d3d29` |
| 13 | `def` | [liftHomotopyZeroSucc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/lifthomotopyzerosucc--1b7698f1d3a3005404928b2a.md) | 139 | `declaration-track:1b7698f1d3a3005404928b2a50a706365b2ff8a19b748ba8b70ac1e7b8cfefaa` |
| 14 | `lemma` | [liftHomotopyZeroSucc_comp](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/lifthomotopyzerosucc-comp--fdbb663b7e9f4c71f510f5fb.md) | 147 | `result-track:fdbb663b7e9f4c71f510f5fb4ca16fb6398b5262694f8eca1002e481bb6a1a1d` |
| 15 | `def` | [liftHomotopyZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/lifthomotopyzero--599ee639e8ca24c1dbaff72c.md) | 156 | `declaration-track:599ee639e8ca24c1dbaff72c14260387e6579eeeb9d47a7d38d87ce813d7d7f8` |
| 16 | `def` | [liftHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/lifthomotopy--1c4fc93f653cc4d089299b82.md) | 163 | `declaration-track:1c4fc93f653cc4d089299b82ed9bb1402791f4d421a98a5b7f5b850d6a8821df` |
| 17 | `def` | [liftIdHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/liftidhomotopy--ebcb6b580f30f7908fdc13ad.md) | 169 | `declaration-track:ebcb6b580f30f7908fdc13ad21e8a6a7c6c53137929a9401aa4f6830ab4ea41b` |
| 18 | `def` | [liftCompHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/liftcomphomotopy--585521315c6fa26fd07355da.md) | 174 | `declaration-track:585521315c6fa26fd07355daa75288c14f28696e5f333da3524df75de5f39ded` |
| 19 | `def` | [homotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/homotopyequiv--2ecc43c49c791f2922ff2fcd.md) | 181 | `declaration-track:2ecc43c49c791f2922ff2fcde7966ef65cd5881b006cf76056a30b0d32c3e765` |
| 20 | `theorem` | [homotopyEquiv_hom_π](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/homotopyequiv-hom--5024f3d88388d1f3b50269db.md) | 191 | `result-track:5024f3d88388d1f3b50269db4c0da7c4798830612a6ec85195bd4cb2a8cae4c2` |
| 21 | `theorem` | [homotopyEquiv_inv_π](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/homotopyequiv-inv--172b52fb7873e6a00fe56912.md) | 195 | `result-track:172b52fb7873e6a00fe56912e6e23ff614da5191c2784c780627c80833d6ecef` |
| 22 | `abbrev` | [projectiveResolution](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/projectiveresolution--4b4bbbcdb7afa1cd0004e696.md) | 203 | `declaration-track:4b4bbbcdb7afa1cd0004e69685d448e8a2e68b250e248b241e3bc6d3ff28c46a` |
| 23 | `def` | [projectiveResolutions](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/projectiveresolutions--3b307de0de5e966ed9927533.md) | 218 | `declaration-track:3b307de0de5e966ed9927533221514de1352dc313743201e38dfad51c3b7b71a` |
| 24 | `def` | [ProjectiveResolution.iso](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/projectiveresolution-iso--8f3abc28699473d78a0da67e.md) | 234 | `declaration-track:8f3abc28699473d78a0da67e2733af5ab13ef71513e724e6dd4873d8334a8e26` |
| 25 | `lemma` | [ProjectiveResolution.iso_inv_naturality](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/projectiveresolution-iso-inv-naturality--d4845c6e8fc982fb16afa0d9.md) | 240 | `result-track:d4845c6e8fc982fb16afa0d91f0db6475d1b726fe86518b72b064876df5224b7` |
| 26 | `lemma` | [ProjectiveResolution.iso_hom_naturality](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/projectiveresolution-iso-hom-naturality--2c5ec61f053ca7c92926db71.md) | 251 | `result-track:2c5ec61f053ca7c92926db7140f11140055a2b47254b1e16805b268f874e5d98` |
| 27 | `theorem` | [exact_d_f](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/exact-d-f--6a67b9271f108cbdcef14ccc.md) | 264 | `result-track:6a67b9271f108cbdcef14ccc62598a925acc36f69bf521d61c938ca3f18cf6a3` |
| 28 | `def` | [ofComplex](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/ofcomplex--fe94bd5193cef341ec82efb5.md) | 295 | `declaration-track:fe94bd5193cef341ec82efb5dad10b13386fd693c3f5e9b3e0075aaa183b91c7` |
| 29 | `lemma` | [ofComplex_d_1_0](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/ofcomplex-d-1-0--6de7064103e72d10361a3944.md) | 299 | `result-track:6de7064103e72d10361a3944ec03fd35c21e63d07d06a637ff9da34f1cfa4e3f` |
| 30 | `lemma` | [ofComplex_exactAt_succ](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/ofcomplex-exactat-succ--370c568d19a99dff5c3f8bfc.md) | 303 | `result-track:370c568d19a99dff5c3f8bfc229727c6a7cb50adadf83333109989aa58f33c50` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/instance--3ca368780d2e25d03e09db6f.md) | 314 | `declaration-track:3ca368780d2e25d03e09db6f2da4b48d4072096478848f77fbdfa3a0fc77a5d0` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/instance--188708279d76c43dfd8b17ae.md) | 337 | `declaration-track:188708279d76c43dfd8b17ae6916c9651b238461c116c1733ea04b2c71898a07` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/declarations/instance--18c5e2db1c7c6511df865603.md) | 339 | `declaration-track:18c5e2db1c7c6511df865603dfe1564b06f67b8fb0b40952ec9e173ee8fe6e69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
