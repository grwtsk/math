# Verification target: GRWTSK.Topology.GeneralTopology.Constructions.Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcd731b39e401c04dd74cdfb6242d11ae2852a0a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcd731b39e401c04dd74cdfb6242d11ae2852a0a`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean.json)

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
| 1 | `instance` | [topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/topologicalspace--7ad6f2510b52495af12d14b1.md) | 43 | `declaration-track:7ad6f2510b52495af12d14b12293be79b1a11fe38f3c8e228067cc8d672de4ff` |
| 2 | `theorem` | [isInducing_toProd](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/isinducing-toprod--334d677a9a2c099644081453.md) | 49 | `result-track:334d677a9a2c099644081453155d652b3cc1cad14cb98069cadead483de893b1` |
| 3 | `def` | [homeomorphProd](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/homeomorphprod--324bfdf45506433b50de1d43.md) | 54 | `declaration-track:324bfdf45506433b50de1d43090e543a0001904c57bef745d074ee66ab443131` |
| 4 | `def` | [trivialization](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/trivialization--3f9683348ef24ec665a93eee.md) | 59 | `declaration-track:3f9683348ef24ec665a93eeee8ea5bc4d8b811e36512350d044969a7728dc27d` |
| 5 | `lemma` | [trivialization_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/trivialization-symm-apply--48bdc5d607a714e1ff575d37.md) | 69 | `result-track:48bdc5d607a714e1ff575d37fc550ce3eea98145d66180abd57bdac12ec512d1` |
| 6 | `lemma` | [toOpenPartialHomeomorph_trivialization_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/toopenpartialhomeomorph-trivialization-symm-apply--010e66b4f825c884a13661bf.md) | 74 | `result-track:010e66b4f825c884a13661bfc754878fa9291a181be6f0e436a69280fb460e8e` |
| 7 | `instance` | [fiberBundle](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/fiberbundle--e22cb3b7fd13669ec6b6f003.md) | 78 | `declaration-track:e22cb3b7fd13669ec6b6f0031d9752bce11a5da338c38a14d5cdccc8fa213a9b` |
| 8 | `theorem` | [eq_trivialization](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/eq-trivialization--fbe9e8c25c005acfb4282b87.md) | 86 | `result-track:fbe9e8c25c005acfb4282b87b27de9d46e1ec64699ccd93f4f2e192d05c3cbaf` |
| 9 | `instance` | [FiberBundle.Prod.topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/fiberbundle-prod-topologicalspace--eb64dc44c8ea068f150ac2d1.md) | 107 | `declaration-track:eb64dc44c8ea068f150ac2d1c6eef94de2db1374dd7a37503d2fbf61f3a8d034` |
| 10 | `theorem` | [FiberBundle.Prod.isInducing_diag](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/fiberbundle-prod-isinducing-diag--002e8980ea4539a2e619ecf9.md) | 114 | `result-track:002e8980ea4539a2e619ecf983bbf7662e8c771072d008f6eba2a8de69899ee8` |
| 11 | `def` | [Prod.toFun'](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/prod-tofun--c4904a5c82dc975aa56a30cb.md) | 135 | `declaration-track:c4904a5c82dc975aa56a30cb1dfe0a4a6a9a2f37133882dd024414d04e3be45e` |
| 12 | `theorem` | [Prod.continuous_to_fun](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/prod-continuous-to-fun--822338493bac5a237b9cc8a0.md) | 140 | `result-track:822338493bac5a237b9cc8a0133c1f8b0b4248bb6bbb01c57141c660f6e31fee` |
| 13 | `def` | [Prod.invFun'](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/prod-invfun--746c6ac5720e7e7892d46049.md) | 164 | `declaration-track:746c6ac5720e7e7892d460496f3cf0fb36b82be5d8d172aa509447e1c6220985` |
| 14 | `theorem` | [Prod.left_inv](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/prod-left-inv--4cdd91635cc13a7d4ba5d12b.md) | 169 | `result-track:4cdd91635cc13a7d4ba5d12be64b91d5e020a24925cf2937fbd32aec6e0d3674` |
| 15 | `theorem` | [Prod.right_inv](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/prod-right-inv--cccfcc537f978c2b245f7722.md) | 176 | `result-track:cccfcc537f978c2b245f7722f8da02a429fe226b88377d20b2c077cc6335390c` |
| 16 | `theorem` | [Prod.continuous_inv_fun](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/prod-continuous-inv-fun--515806ff24346aef271ceca0.md) | 183 | `result-track:515806ff24346aef271ceca0052ac2ce3860433ec0819ffca3884d784a7f4d3b` |
| 17 | `def` | [prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/prod--e602cb3f30bb4f48e06a6d8c.md) | 196 | `declaration-track:e602cb3f30bb4f48e06a6d8c01f3cbf8a2fa86b1bf567b45d7672ed1a23092fe` |
| 18 | `theorem` | [prod_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/prod-symm-apply--c47c6cb9b28faea7083df641.md) | 220 | `result-track:c47c6cb9b28faea7083df641187bacd5433382a1e6bb858c256d39423f6247af` |
| 19 | `instance` | [FiberBundle.prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/fiberbundle-prod--02f7a46126cd77493b5e3247.md) | 231 | `declaration-track:02f7a46126cd77493b5e3247e961641e35630ac914812fd746e74dff3e963833` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/instance--a57e59416fa0695741d4e41a.md) | 245 | `declaration-track:a57e59416fa0695741d4e41a5822d635e8781eba2d85414a8c818bc5a18d3903` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/instance--7fa2afa043bc2f4e55849e89.md) | 262 | `declaration-track:7fa2afa043bc2f4e55849e8909f0b118cc29face82575e7286c83fe591437e43` |
| 22 | `instance` | [Pullback.TotalSpace.topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/pullback-totalspace-topologicalspace--74150c8d9aa28bb800f412c7.md) | 276 | `declaration-track:74150c8d9aa28bb800f412c700212832ad306ffd34424609a6bad950a88749bb` |
| 23 | `theorem` | [Pullback.continuous_proj](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/pullback-continuous-proj--ea7c645b83147e6925f0a04c.md) | 279 | `result-track:ea7c645b83147e6925f0a04cf4d378003b2eb6c73d558ca0bf70d90977e4b76e` |
| 24 | `theorem` | [Pullback.continuous_lift](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/pullback-continuous-lift--ae3f567442f1f00862b7bd45.md) | 283 | `result-track:ae3f567442f1f00862b7bd45787d4d939c98d69e2ded49951d18d138d09130c3` |
| 25 | `theorem` | [inducing_pullbackTotalSpaceEmbedding](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/inducing-pullbacktotalspaceembedding--6ebc38ba6010cf4f556aa278.md) | 287 | `result-track:6ebc38ba6010cf4f556aa27838067f0a4bd0be36f4686ff82a1fdd51ff7a2171` |
| 26 | `theorem` | [Pullback.continuous_totalSpaceMk](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/pullback-continuous-totalspacemk--9f7d2e357ae31e3236e19844.md) | 298 | `result-track:9f7d2e357ae31e3236e19844b03992c5958996abcf25392507998a9de76d5a94` |
| 27 | `def` | [Bundle.Trivialization.pullback](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/bundle-trivialization-pullback--612be94202ad87b148e4acbe.md) | 310 | `declaration-track:612be94202ad87b148e4acbe8efff790579df94dad65c7e81800c5d6d6883ea0` |
| 28 | `instance` | [FiberBundle.pullback](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/declarations/fiberbundle-pullback--45a0b41da8bde632992eec4c.md) | 350 | `declaration-track:45a0b41da8bde632992eec4c5df6c44ac18ca74168cfe785636f1e0ee9aa9a03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
