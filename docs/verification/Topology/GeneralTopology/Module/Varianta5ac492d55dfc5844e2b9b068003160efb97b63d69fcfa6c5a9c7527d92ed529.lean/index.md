# Verification target: GRWTSK.Topology.GeneralTopology.Module.Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57d3a1c3b8195dccb556c15fdf39d3ab865acdd8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57d3a1c3b8195dccb556c15fdf39d3ab865acdd8`.

Source path: `GRWTSK/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/instance--a447ac543d9a5c71d915d58d.md) | 29 | `declaration-track:a447ac543d9a5c71d915d58d63c73a2026f947d591ed71b37102c3bfe3ba4b0f` |
| 2 | `theorem` | [smul_apply](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/smul-apply--4c55e3ce11dd25f006c8ca0d.md) | 32 | `result-track:4c55e3ce11dd25f006c8ca0ddb3996d78b03d793efb380d51013610237f5ce85` |
| 3 | `theorem` | [coe_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/coe-smul--948e06159d9630f95a220d55.md) | 37 | `result-track:948e06159d9630f95a220d558748c0273eeb86a3b21114eb3c45c11014ee1da3` |
| 4 | `instance` | [smulCommClass](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/smulcommclass--7f6b82f963762dbaa16f0e60.md) | 41 | `declaration-track:7f6b82f963762dbaa16f0e60b32e69d91cd9535f483465881ca7616b07a36291` |
| 5 | `instance` | [isScalarTower](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/isscalartower--41ac01c6a7265c85ebf1e357.md) | 46 | `declaration-track:41ac01c6a7265c85ebf1e3572f678e093ca9160ae63da90acd91b1e139389b66` |
| 6 | `instance` | [isCentralScalar](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/iscentralscalar--b6d2c3ec32fd8bf663cf0afb.md) | 51 | `declaration-track:b6d2c3ec32fd8bf663cf0afbbbaece84155a767383f74cfa3d5fe5121cd5dab4` |
| 7 | `instance` | [distribMulAction](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/distribmulaction--c28892d7cf2d3badf21ffacb.md) | 58 | `declaration-track:c28892d7cf2d3badf21ffacb93265098cbd464eb05ad76e36ffa25eb9f6ad09c` |
| 8 | `instance` | [module](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/module--d8be4e02325ea4b8e3161a0b.md) | 64 | `declaration-track:d8be4e02325ea4b8e3161a0b77f809c19839bc86710cd0be9094c8ecbbf6d7c2` |
| 9 | `def` | [coeFnLinearMap](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/coefnlinearmap--29eafc1edd90d9d76189a9f1.md) | 74 | `declaration-track:29eafc1edd90d9d76189a9f1e8180bc78b604fba548c602da4733d2d82021e41` |
| 10 | `lemma` | [coeFnLinearMap_apply](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/coefnlinearmap-apply--8b8fa55f3dbe99da7797cb10.md) | 81 | `result-track:8b8fa55f3dbe99da7797cb103ccd5d7348ef48244cdb0286ff5ced7a2776414a` |
| 11 | `theorem` | [filter_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/filter-smul--78ba325e1c04cccc08725b9b.md) | 88 | `result-track:78ba325e1c04cccc08725b9b435a357f8af8c6885ba983ae343eedaeb4b41354` |
| 12 | `def` | [filterLinearMap](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/filterlinearmap--970421582d5a8c769c4660e2.md) | 97 | `declaration-track:970421582d5a8c769c4660e2f72fb2b74032316bbdcc3d454b29712af168db8f` |
| 13 | `theorem` | [subtypeDomain_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/subtypedomain-smul--6c32cb53a18f3295c6faf9d9.md) | 106 | `result-track:6c32cb53a18f3295c6faf9d9bae4fd2798ca89add679000c14d8d74b59c40082` |
| 14 | `def` | [subtypeDomainLinearMap](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/subtypedomainlinearmap--77395936baf0eec23cd77b0d.md) | 115 | `declaration-track:77395936baf0eec23cd77b0dc7f2fd79f038d02712540b0cdf498dd1e108c96a` |
| 15 | `theorem` | [mk_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/mk-smul--f7bd6cb196cd0fb1b3fae758.md) | 131 | `result-track:f7bd6cb196cd0fb1b3fae758876150e585032402efacd7ead5ac34cd81274621` |
| 16 | `theorem` | [single_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/single-smul--af9b979e6f57446f75f8e221.md) | 136 | `result-track:af9b979e6f57446f75f8e22175a70eda107e9071bfb3d13bace49e250a734c1e` |
| 17 | `theorem` | [support_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/support-smul--48aecd13949e48d88c430e8c.md) | 145 | `result-track:48aecd13949e48d88c430e8c799734b171126f39c2c175135cc679fb5853c6be` |
| 18 | `theorem` | [comapDomain_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/comapdomain-smul--fed830e7575aafe02db5a026.md) | 159 | `result-track:fed830e7575aafe02db5a026cef036d6e4cdc2941f4fdba8f414086cf13056d5` |
| 19 | `theorem` | [comapDomain'_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/comapdomain-smul--8e6de857236bb3e20fafe0e3.md) | 166 | `result-track:8e6de857236bb3e20fafe0e359e94d12acc44b12451231c8d703c957e1b46444` |
| 20 | `instance` | [distribMulAction₂](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/distribmulaction--1d6c9e405b0ed91052fd83d6.md) | 176 | `declaration-track:1d6c9e405b0ed91052fd83d6689bca392e4d640f4a1a3af65aa6bd2e2acfae69` |
| 21 | `theorem` | [equivProdDFinsupp_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/declarations/equivproddfinsupp-smul--319c47f8c6513e5d6d2ae91c.md) | 184 | `result-track:319c47f8c6513e5d6d2ae91c650c762b1dcd58662c1642ed51b8057d144afa27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
