# Verification target: GRWTSK.Topology.GeneralTopology.LocalPredicate.Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaae3065a8daa5594b2ec39c41b4c942b2fe018a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaae3065a8daa5594b2ec39c41b4c942b2fe018a`.

Source path: `GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.SheafOfFunctions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.UniqueGluing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrelocalPredicate](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/prelocalpredicate--2d4162f0356207a415db26b6.md) | 60 | `declaration-track:2d4162f0356207a415db26b62c45c844b1c98d87b48c07fe05f85aef5550ac02` |
| 2 | `def` | [continuousPrelocal](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/continuousprelocal--1d598a5e32d5e33e5fe05c45.md) | 71 | `declaration-track:1d598a5e32d5e33e5fe05c45c35f2c9379baa0e4a758b2678daea4b4e90b0bca` |
| 3 | `instance` | [inhabitedPrelocalPredicate](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/inhabitedprelocalpredicate--546c53099cd5ff48bc00c78c.md) | 76 | `declaration-track:546c53099cd5ff48bc00c78c4e172a9e31ad909157142299ab3a0ae1ea28b789` |
| 4 | `structure` | [LocalPredicate](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/localpredicate--28f989d2b921ed823aa8f3a1.md) | 91 | `declaration-track:28f989d2b921ed823aa8f3a1fe6ffc9defbeeb602d9f0fdf09a8b8683a981a2c` |
| 5 | `def` | [continuousLocal](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/continuouslocal--45896fbea91121dc2c70f020.md) | 101 | `declaration-track:45896fbea91121dc2c70f020a4663a9a9718dea7134297c692910177497c1caf` |
| 6 | `instance` | [inhabitedLocalPredicate](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/inhabitedlocalpredicate--e4f0ac562c1a507f8248202d.md) | 114 | `declaration-track:e4f0ac562c1a507f8248202df5c973a940cc43ae9d590e425512fe7c3f775b83` |
| 7 | `def` | [PrelocalPredicate.and](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/prelocalpredicate-and--77b21d46c2b64a60ab42253e.md) | 121 | `declaration-track:77b21d46c2b64a60ab42253ebf80e462ad0f3d237db99141840afd2a8ded0fac` |
| 8 | `def` | [LocalPredicate.and](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/localpredicate-and--404b91aae9121ca9a341392e.md) | 126 | `declaration-track:404b91aae9121ca9a341392eb7cba4c5d347f2a34095ccc5a85d0d19c9036bc0` |
| 9 | `def` | [isSection](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/issection--7a83fba6d9f57f55c39c35b6.md) | 134 | `declaration-track:7a83fba6d9f57f55c39c35b676ae77d6c44d8c25571c00e3e133cf07612eba89` |
| 10 | `def` | [PrelocalPredicate.sheafify](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/prelocalpredicate-sheafify--cdc4b8b18282144b77170205.md) | 142 | `declaration-track:cdc4b8b18282144b771702050f609cd79a78e65c174eb42f09d8ebcf506070e4` |
| 11 | `theorem` | [PrelocalPredicate.sheafifyOf](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/prelocalpredicate-sheafifyof--8b824d368ce68fb0321c113f.md) | 155 | `result-track:8b824d368ce68fb0321c113f43f82b3f8b716edfad835c7330d98ee9eaa8981a` |
| 12 | `def` | [subpresheafToTypes](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/subpresheaftotypes--7f534a9d062d9b945f94257c.md) | 162 | `declaration-track:7f534a9d062d9b945f94257c6e988df5f4e27f3a0a3082c724a777761eef79bc` |
| 13 | `def` | [subtype](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/subtype--669b77ad9668d7ee6bc311b3.md) | 173 | `declaration-track:669b77ad9668d7ee6bc311b3c9ca31320f0fe9131372d460a3596297c3737333` |
| 14 | `theorem` | [isSheaf](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/issheaf--499b18821de6c516dba63150.md) | 180 | `result-track:499b18821de6c516dba63150d1e78e793f102e075b534a223b08499fee286179` |
| 15 | `def` | [subsheafToTypes](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/subsheaftotypes--0b5410709171ea7564e9a86e.md) | 219 | `declaration-track:0b5410709171ea7564e9a86ebf4719fadc58cfa03a585ea771f661878b258892` |
| 16 | `def` | [stalkToFiber](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/stalktofiber--ae3333bd2ae2e4fe73bdfabe.md) | 224 | `declaration-track:ae3333bd2ae2e4fe73bdfabe24350351b9424ea6dcc6842784a9e15c617027ec` |
| 17 | `theorem` | [stalkToFiber_germ](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/stalktofiber-germ--f6f39b7db9d914bdb37ac88d.md) | 234 | `result-track:f6f39b7db9d914bdb37ac88d1f8f8d7924498bf1d24977cde74c94d7724be97c` |
| 18 | `theorem` | [stalkToFiber_surjective](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/stalktofiber-surjective--d310fd44d0c10f74b643e901.md) | 241 | `result-track:d310fd44d0c10f74b643e9011b88064b0fe5e6fe6b62e745f2b7e22592108d16` |
| 19 | `theorem` | [stalkToFiber_injective](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/stalktofiber-injective--1856f16d74455a8646b634e1.md) | 252 | `result-track:1856f16d74455a8646b634e1e412d78efb82e1ccbf274b6d8c5615ffdbf9a2f9` |
| 20 | `def` | [subpresheafContinuousPrelocalIsoPresheafToTop](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/subpresheafcontinuousprelocalisopresheaftotop--b46c2e5d36891bb27ff0d335.md) | 287 | `declaration-track:b46c2e5d36891bb27ff0d33536cb64bfc9d133bdf72830a35c6a92ddea3f3f5c` |
| 21 | `def` | [sheafToTop](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/declarations/sheaftotop--fdb82eeccb1b7b0ed26e2045.md) | 295 | `declaration-track:fdb82eeccb1b7b0ed26e20450b9418b48534a1214cd727b2c1d5228fb7a0d92a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
