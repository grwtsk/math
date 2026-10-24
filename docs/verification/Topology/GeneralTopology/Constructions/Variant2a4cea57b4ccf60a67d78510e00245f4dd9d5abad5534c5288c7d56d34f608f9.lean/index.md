# Verification target: GRWTSK.Topology.GeneralTopology.Constructions.Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0f42dffdd9e481b3f6c0d9a92a70235803bfea4",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0f42dffdd9e481b3f6c0d9a92a70235803bfea4`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.FiberBundle.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/topologicalspace--3c2ee20a3a12ccecece8bef5.md) | 47 | `declaration-track:3c2ee20a3a12ccecece8bef5a552f886812e0a9b3e307afaca1b7a7f0b5801d0` |
| 2 | `theorem` | [isInducing_toProd](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/isinducing-toprod--81f1cce47410e82cf1aa0ca4.md) | 53 | `result-track:81f1cce47410e82cf1aa0ca4c44298e2527aa3cd8903254b3eb2ec2b889d3627` |
| 3 | `def` | [homeomorphProd](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/homeomorphprod--27f266325a80321383c75ba2.md) | 59 | `declaration-track:27f266325a80321383c75ba224cdb3cff7cc9821f19e2557579a9bd32c19f596` |
| 4 | `def` | [trivialization](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/trivialization--d956685fc0cb71181e9da785.md) | 63 | `declaration-track:d956685fc0cb71181e9da785d34d018911a7ad90f31a9a3c3aac261a6488875c` |
| 5 | `theorem` | [trivialization_source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/trivialization-source--0e0920142c8d1e0f4df99e93.md) | 72 | `result-track:0e0920142c8d1e0f4df99e9380c53917e944bf5c95a850c1567abcb08ccef95e` |
| 6 | `theorem` | [trivialization_target](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/trivialization-target--d27c193e24971b96f47ac0df.md) | 75 | `result-track:d27c193e24971b96f47ac0df21fd1510158d558c2bbb21cda4dbe3932c43fb55` |
| 7 | `instance` | [fiberBundle](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/fiberbundle--6a58dbac803cb65f9c900c2c.md) | 78 | `declaration-track:6a58dbac803cb65f9c900c2c652481d42d5b4e704ea2d4ef09b5b91843584b16` |
| 8 | `theorem` | [eq_trivialization](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/eq-trivialization--4d2edf52e96d49115298755c.md) | 86 | `result-track:4d2edf52e96d49115298755ca01973542f8d71b616d35ef8dbd66758aaf474b0` |
| 9 | `instance` | [FiberBundle.Prod.topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/fiberbundle-prod-topologicalspace--fde061c92a2f874ca5901c3d.md) | 107 | `declaration-track:fde061c92a2f874ca5901c3d96a26d39c74a08c31f3bbaf6aeccc337b87d3cfd` |
| 10 | `theorem` | [FiberBundle.Prod.isInducing_diag](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/fiberbundle-prod-isinducing-diag--4a0a34223f5243f54ed30f11.md) | 114 | `result-track:4a0a34223f5243f54ed30f11a219a12852d5644c5b1f1bd6f1545f754bbb1aad` |
| 11 | `def` | [Prod.toFun'](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/prod-tofun--93ba370c46fd4906c580d8b4.md) | 138 | `declaration-track:93ba370c46fd4906c580d8b4da902a5986af2cad03bb771ff350ef0d400f3809` |
| 12 | `theorem` | [Prod.continuous_to_fun](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/prod-continuous-to-fun--18d1479d55cbd44e945f51a0.md) | 143 | `result-track:18d1479d55cbd44e945f51a0995f02bf89cd312815a759c0baec9aeb9551888b` |
| 13 | `def` | [Prod.invFun'](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/prod-invfun--c63737505123c06443a7c652.md) | 167 | `declaration-track:c63737505123c06443a7c65268fdafbccffd6ab7a0f9dd9e915a477715a60b29` |
| 14 | `theorem` | [Prod.left_inv](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/prod-left-inv--eada4d3f2dfa896d472e8578.md) | 172 | `result-track:eada4d3f2dfa896d472e8578ba8b6b1aaf117edaee67f4ee19928247c704cb28` |
| 15 | `theorem` | [Prod.right_inv](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/prod-right-inv--079fba632cdcec8a17df9c47.md) | 179 | `result-track:079fba632cdcec8a17df9c471bbe457060d21500af8ab97e62a4e68799b4ea5b` |
| 16 | `theorem` | [Prod.continuous_inv_fun](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/prod-continuous-inv-fun--aace72615972e66cb912f2b2.md) | 186 | `result-track:aace72615972e66cb912f2b21180b081c3cbfd0dd463e197155908a3b32fd534` |
| 17 | `def` | [prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/prod--5172cdfd3d171522af04a732.md) | 198 | `declaration-track:5172cdfd3d171522af04a732ac258c08f86fe4a75c7581a22d469e636cb6de9d` |
| 18 | `theorem` | [baseSet_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/baseset-prod--d74d63d36c568133023c96b9.md) | 222 | `result-track:d74d63d36c568133023c96b9a7c4eef2f7be95f0dd6546f9322fa72070bdcea8` |
| 19 | `theorem` | [prod_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/prod-symm-apply--c58564a0967983bc4b0ef949.md) | 224 | `result-track:c58564a0967983bc4b0ef94961618a700524873ca65590ea18d7d73a1bdc9da5` |
| 20 | `instance` | [FiberBundle.prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/fiberbundle-prod--1fa7120646c8a1f817220d47.md) | 235 | `declaration-track:1fa7120646c8a1f817220d47f7f3608749fb6562963cf54573f755b62ef967ee` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/instance--f8ed998e05487eacac25543c.md) | 249 | `declaration-track:f8ed998e05487eacac25543ca8015198c4ac7ad3f598e93bc2c6e5fcfb888d5d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/instance--4bcd157313e5395a171c3632.md) | 264 | `declaration-track:4bcd157313e5395a171c3632bc054082185a6ea68871abab94ac4c48dd591b49` |
| 23 | `instance` | [Pullback.TotalSpace.topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/pullback-totalspace-topologicalspace--bd5798b58370bab8ca792f35.md) | 276 | `declaration-track:bd5798b58370bab8ca792f35a817cc278e1b9dacc9e0f0f7ff1372c2673317f6` |
| 24 | `theorem` | [Pullback.continuous_proj](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/pullback-continuous-proj--e89cfeaf18115298c5a01c05.md) | 279 | `result-track:e89cfeaf18115298c5a01c05d9228c5a8be84cc4fd9634799923d11761c4b8a2` |
| 25 | `theorem` | [Pullback.continuous_lift](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/pullback-continuous-lift--a6bff4ac584ab11fd7212c60.md) | 283 | `result-track:a6bff4ac584ab11fd7212c6028b90f50015443d81802e0d548692e9afaf67580` |
| 26 | `theorem` | [inducing_pullbackTotalSpaceEmbedding](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/inducing-pullbacktotalspaceembedding--db8806873cd39173a4282024.md) | 287 | `result-track:db8806873cd39173a4282024ebafe63fa71e677092c171e3c9a9a18b403cb84c` |
| 27 | `theorem` | [Pullback.continuous_totalSpaceMk](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/pullback-continuous-totalspacemk--db300f7807e0805409223238.md) | 298 | `result-track:db300f7807e0805409223238256c5fab110b463f3526614c67386c091a65a0e9` |
| 28 | `def` | [Trivialization.pullback](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/trivialization-pullback--dccc288474811efddbe770ff.md) | 308 | `declaration-track:dccc288474811efddbe770ff5930ab4f8feecd9929136bce9c01a2d96b13e51e` |
| 29 | `instance` | [FiberBundle.pullback](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/declarations/fiberbundle-pullback--1d0c5821616a5d497b8e55ea.md) | 347 | `declaration-track:1d0c5821616a5d497b8e55ea192450902ad8840aafb41d663cf0bc41274d49cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
