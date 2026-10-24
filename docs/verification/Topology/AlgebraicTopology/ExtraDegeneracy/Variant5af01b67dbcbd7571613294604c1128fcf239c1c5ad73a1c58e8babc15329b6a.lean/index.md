# Verification target: GRWTSK.Topology.AlgebraicTopology.ExtraDegeneracy.Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91f8bd351d5db58c2d7329efe8a105319c911808",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91f8bd351d5db58c2d7329efe8a105319c911808`.

Source path: `GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.AlternatingFaceMapComplex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.CechNerve` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Homotopy` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExtraDegeneracy](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/extradegeneracy--b73b18ca4542870290418140.md) | 68 | `declaration-track:b73b18ca4542870290418140c4be4f3f10a071f6c97d7267b6fe3408cb35c828` |
| 2 | `def` | [map](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/map--4a7718943d9adc6c9feed139.md) | 89 | `declaration-track:4a7718943d9adc6c9feed139822c74596879cae59e294257cbd2ee017bbcb301` |
| 3 | `def` | [ofIso](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/ofiso--cc99dfd98bd8259d36719b9e.md) | 123 | `declaration-track:cc99dfd98bd8259d36719b9e2be70cb90a78b29c72fd6f57d168a6237244fc71` |
| 4 | `def` | [shiftFun](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/shiftfun--491eb3afaa56d25cf34c6ef1.md) | 165 | `declaration-track:491eb3afaa56d25cf34c6ef10628459b36028bf59fba4b74c2b11622a35dd622` |
| 5 | `theorem` | [shiftFun_zero](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/shiftfun-zero--b3da46e70db1e631b7d55570.md) | 169 | `result-track:b3da46e70db1e631b7d555708081e7890e2bc80328e0872d9ec3ab54979dd2d7` |
| 6 | `theorem` | [shiftFun_succ](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/shiftfun-succ--d45117479cdfe582242dd8af.md) | 176 | `result-track:d45117479cdfe582242dd8af4d29b7ce7009ac98eb806422348f7d9212e8f3ba` |
| 7 | `def` | [shift](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/shift--543308963b5bd5409ccc2a4b.md) | 183 | `declaration-track:543308963b5bd5409ccc2a4b295db75bc7164b664db3278db86792173a0e7639` |
| 8 | `def` | [extraDegeneracy](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/extradegeneracy--93819c24ca1e34e467714543.md) | 201 | `declaration-track:93819c24ca1e34e4677145433e1c2c4a047f50c469a36feb4c40f2eb4317a588` |
| 9 | `instance` | [nonempty_extraDegeneracy_stdSimplex](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/nonempty-extradegeneracy-stdsimplex--653ff20bbdf0945219a1b655.md) | 239 | `declaration-track:653ff20bbdf0945219a1b6555158cadc8d7532d9d1d220b923b7c041353adf05` |
| 10 | `def` | [ExtraDegeneracy.s](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/extradegeneracy-s--8519dbdfce6ed47e3f77bc2e.md) | 264 | `declaration-track:8519dbdfce6ed47e3f77bc2e1931b58c9c1507689b4042bf2e9fde451fce8c40` |
| 11 | `theorem` | [ExtraDegeneracy.s_comp_π_0](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/extradegeneracy-s-comp-0--ec1d2c01144ac94edbfbb946.md) | 274 | `result-track:ec1d2c01144ac94edbfbb9465650eb41658474c8f532a2e82b3cf2548d2bdd8c` |
| 12 | `theorem` | [ExtraDegeneracy.s_comp_π_succ](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/extradegeneracy-s-comp-succ--df4d7df4ba1b2b88e0e37073.md) | 282 | `result-track:df4d7df4ba1b2b88e0e37073db217fd8e359adbb66ceba55e9ec8e34af346b82` |
| 13 | `theorem` | [ExtraDegeneracy.s_comp_base](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/extradegeneracy-s-comp-base--97d35ef7bb3dd6291d97f7bc.md) | 288 | `result-track:97d35ef7bb3dd6291d97f7bc7817059270ccc56d6a63086e59dbf300edfd543e` |
| 14 | `def` | [extraDegeneracy](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/extradegeneracy--f2941fda48d1cc1a67a18378.md) | 293 | `declaration-track:f2941fda48d1cc1a67a18378ee4b3c8299c12a4ffe67c85dd64f416a1d7e2991` |
| 15 | `def` | [const](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/const--b91698e2e48f703e3b2ca539.md) | 363 | `declaration-track:b91698e2e48f703e3b2ca539b7e2cc6a60778e5afa6f0ba99e7d8a1e68b6acdb` |
| 16 | `def` | [homotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/declarations/homotopyequiv--c13b9eaf5c4bceef2a3d3655.md) | 370 | `declaration-track:c13b9eaf5c4bceef2a3d3655cda3cbca627585e7b131fe90779502ca7547d242` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
