# Verification target: GRWTSK.Topology.GeneralTopology.Constructions.Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf98b0997bc58e558cb34efbdc86ba74024a7c5f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf98b0997bc58e558cb34efbdc86ba74024a7c5f`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean.json)

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
| 1 | `instance` | [topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/topologicalspace--f7c67641ae88701e9a078c18.md) | 51 | `declaration-track:f7c67641ae88701e9a078c1811d3d91d27e2e6253304b3389df7466924373b44` |
| 2 | `theorem` | [isInducing_toProd](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/isinducing-toprod--ce611ce46349595d67302dbe.md) | 57 | `result-track:ce611ce46349595d67302dbe63410ecf34ec99887bcccb01420a902d4a9de215` |
| 3 | `def` | [homeomorphProd](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/homeomorphprod--f818e596dc39ca9651368ec0.md) | 62 | `declaration-track:f818e596dc39ca9651368ec050b17f782f56c58de6446f61e4de67214ee4a232` |
| 4 | `def` | [trivialization](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/trivialization--a4df9a7da3296fc10392f44f.md) | 67 | `declaration-track:a4df9a7da3296fc10392f44f5b762a58fe7526c11606629d95c1ff940ada1659` |
| 5 | `lemma` | [trivialization_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/trivialization-symm-apply--fd73f59bc7c78024198dfff2.md) | 77 | `result-track:fd73f59bc7c78024198dfff20274bc9e854b5cf6573a43c0433a208c7705269f` |
| 6 | `lemma` | [toOpenPartialHomeomorph_trivialization_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/toopenpartialhomeomorph-trivialization-symm-apply--4cc7358c20d77cb51dd642a2.md) | 82 | `result-track:4cc7358c20d77cb51dd642a2f1d4e359d66d61088d613c6e7c3b863d14b98a82` |
| 7 | `instance` | [fiberBundle](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/fiberbundle--e713e08beb6357a4ba4ca0c7.md) | 86 | `declaration-track:e713e08beb6357a4ba4ca0c715dbf0c03ef0ab81af8a061dd1fb001026bca298` |
| 8 | `theorem` | [eq_trivialization](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/eq-trivialization--0ac2e6b266c6b6b2db5714a6.md) | 94 | `result-track:0ac2e6b266c6b6b2db5714a6819d488d5217da940bb72607c38274f2704eb966` |
| 9 | `instance` | [FiberBundle.Prod.topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/fiberbundle-prod-topologicalspace--fcccad7e1f0f411fe8119beb.md) | 115 | `declaration-track:fcccad7e1f0f411fe8119beb6830686f3a72d7f72407aa25e7643d8fae625e8b` |
| 10 | `theorem` | [FiberBundle.Prod.isInducing_diag](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/fiberbundle-prod-isinducing-diag--d7f102382812e74108ed1645.md) | 122 | `result-track:d7f102382812e74108ed164529f55aa7c809af51b145625a0093db14630d4cbb` |
| 11 | `def` | [Prod.toFun'](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/prod-tofun--8291dde3c3fd77be5f8fd3b7.md) | 143 | `declaration-track:8291dde3c3fd77be5f8fd3b714c09e93ab3540a46259c497a30bc051c2de490f` |
| 12 | `theorem` | [Prod.continuous_to_fun](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/prod-continuous-to-fun--6600215066eb2c4a47ab5449.md) | 148 | `result-track:6600215066eb2c4a47ab5449b72e523ce14138814a66bf423a413883262be35d` |
| 13 | `def` | [Prod.invFun'](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/prod-invfun--ea3b32518cd0573a2923d908.md) | 172 | `declaration-track:ea3b32518cd0573a2923d9088d076e7b2f51fd00d5be357ca9d769e84152cdd8` |
| 14 | `theorem` | [Prod.left_inv](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/prod-left-inv--9ccf6cddfe99b0afb7174fc1.md) | 177 | `result-track:9ccf6cddfe99b0afb7174fc10682a72da8e38f423c17f7458ce8e17705002327` |
| 15 | `theorem` | [Prod.right_inv](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/prod-right-inv--fec6c427ba675d75e074050c.md) | 184 | `result-track:fec6c427ba675d75e074050c5cd7c5895ff1afec0b45ca3621cca32efdd6dd31` |
| 16 | `theorem` | [Prod.continuous_inv_fun](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/prod-continuous-inv-fun--e0e517819694d12986fc31a4.md) | 191 | `result-track:e0e517819694d12986fc31a47e80deb33a0b03d0615b21310deb63da4522ed01` |
| 17 | `def` | [prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/prod--dfef36e29f86533f4c0e7f6b.md) | 204 | `declaration-track:dfef36e29f86533f4c0e7f6b6023d1819781d2529c51e0b3937d86d4d2a05fd0` |
| 18 | `theorem` | [prod_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/prod-symm-apply--5226b657a2f652a4f1ad89ea.md) | 228 | `result-track:5226b657a2f652a4f1ad89eaa0c763a6981a033272a7bd5aeafb8351232af31c` |
| 19 | `instance` | [FiberBundle.prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/fiberbundle-prod--f6cdc68f5f3e77b0e8d3207c.md) | 239 | `declaration-track:f6cdc68f5f3e77b0e8d3207c03053245c633c720d2c143eb774f7ad0abe84087` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/instance--76fc65f7c905230e9b1ddfd0.md) | 253 | `declaration-track:76fc65f7c905230e9b1ddfd06ee29a36f614e23a57f72d27c2a2e33ea645f2c0` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/instance--56ed51f2b2fa879e468c08fd.md) | 270 | `declaration-track:56ed51f2b2fa879e468c08fda0e7d6d1a701b77c1c2e0503b198a9a551ee9e04` |
| 22 | `instance` | [Pullback.TotalSpace.topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/pullback-totalspace-topologicalspace--8bd1ec410a2a470cf26dc81f.md) | 284 | `declaration-track:8bd1ec410a2a470cf26dc81f057a727922d90b0b52aa2502efb7b719fde0be9a` |
| 23 | `theorem` | [Pullback.continuous_proj](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/pullback-continuous-proj--8575f061162a7e3d93f9bf75.md) | 287 | `result-track:8575f061162a7e3d93f9bf75964bce493419aeee5694f3fc59af8c04fecf4766` |
| 24 | `theorem` | [Pullback.continuous_lift](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/pullback-continuous-lift--a56e5bc1e5263ddb401097c8.md) | 291 | `result-track:a56e5bc1e5263ddb401097c8a0ecf80fe97db6a5ab0468878417d32f610eec71` |
| 25 | `theorem` | [inducing_pullbackTotalSpaceEmbedding](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/inducing-pullbacktotalspaceembedding--a54b8822a7aa67887d45c2a3.md) | 295 | `result-track:a54b8822a7aa67887d45c2a3d1e3627291cd590600bac8406bb83997eeb2040b` |
| 26 | `theorem` | [Pullback.continuous_totalSpaceMk](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/pullback-continuous-totalspacemk--0aae618bb3f6d5dcf12944d1.md) | 306 | `result-track:0aae618bb3f6d5dcf12944d1d6ba03ef6d998de09dbced18671e134ea1610c2f` |
| 27 | `def` | [Bundle.Trivialization.pullback](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/bundle-trivialization-pullback--9ff7c6e44d5b2892a2b89188.md) | 318 | `declaration-track:9ff7c6e44d5b2892a2b891886178568a2471ca5664e3148c5bac35fad40523fd` |
| 28 | `instance` | [FiberBundle.pullback](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/declarations/fiberbundle-pullback--702ee591e8836a9db02b1026.md) | 358 | `declaration-track:702ee591e8836a9db02b10269bb0773d1afe8a341091a575525f44411adfcad1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
