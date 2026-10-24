# Verification target: GRWTSK.Algebra.LinearAlgebra.AdicTopology.Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d8fefa289ed042b553c048b55efc1a09351f7f2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d8fefa289ed042b553c048b55efc1a09351f7f2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Maps` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.Bases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adic_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/adic-basis--0efd1722c939845457fee528.md) | 60 | `result-track:0efd1722c939845457fee52848d574668a31b8f8b2a51b22ca3fa921ba8a7abc` |
| 2 | `def` | [ringFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/ringfilterbasis--9e2673c7f6b1c6a72e10af9c.md) | 82 | `declaration-track:9e2673c7f6b1c6a72e10af9c908b1e9740b94b38aef9e3dabd497960f07e1e40` |
| 3 | `def` | [adicTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/adictopology--2cb559e47e5e69c1aace0d20.md) | 87 | `declaration-track:2cb559e47e5e69c1aace0d203c944909d7556820c9053730cec4093bea07372c` |
| 4 | `theorem` | [nonarchimedean](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/nonarchimedean--9bb00bd57b42e928a6219496.md) | 90 | `result-track:9bb00bd57b42e928a62194963a00597bf04002ade1d8f759c5c010628e2f67e7` |
| 5 | `theorem` | [hasBasis_nhds_zero_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/hasbasis-nhds-zero-adic--036c21df1d7cf451850a9baf.md) | 94 | `result-track:036c21df1d7cf451850a9bafb84bd76a8636089725ad002cc1272e435ab79177` |
| 6 | `theorem` | [hasBasis_nhds_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/hasbasis-nhds-adic--2e1aecda7c71324fc45d0f73.md) | 107 | `result-track:2e1aecda7c71324fc45d0f737ca23459a7e042d1f4cd19478678b8b0ac61aaf7` |
| 7 | `theorem` | [adic_module_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/adic-module-basis--ae50fb902a332259a14fa171.md) | 116 | `result-track:ae50fb902a332259a14fa171463ce6ef16b7aab7e51f313a53df122807dbd757` |
| 8 | `def` | [adicModuleTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/adicmoduletopology--2ded9456a5b84a967b361b3d.md) | 130 | `declaration-track:2ded9456a5b84a967b361b3df30fa6999695acf72537ec4b41ca2ea27ba4ee02` |
| 9 | `def` | [openAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/openaddsubgroup--04770355188e7fa669dda45e.md) | 136 | `declaration-track:04770355188e7fa669dda45ec644203eaf571c4e41420db01ca01c7b64ab6cd8` |
| 10 | `def` | [IsAdic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/isadic--d2de1c0e420083f7fa2b87a8.md) | 149 | `declaration-track:d2de1c0e420083f7fa2b87a87d75bffb91813e80936030cb7744a3f9dccb83c4` |
| 11 | `theorem` | [isAdic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/isadic-iff--38f570c2ffa5818cf6b26658.md) | 154 | `result-track:38f570c2ffa5818cf6b26658f4efbb17da70a21a9917561b904772f15ac18e9c` |
| 12 | `theorem` | [is_ideal_adic_pow](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/is-ideal-adic-pow--6894a771a3bafcee8807a476.md) | 184 | `result-track:6894a771a3bafcee8807a476a569bb1b9b0739c582167019734e6250073c565e` |
| 13 | `theorem` | [is_bot_adic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/is-bot-adic-iff--e5d4eb7d83a99b6864da5365.md) | 201 | `result-track:e5d4eb7d83a99b6864da536532752ac10c94cfce235a20db55d03531485b481a` |
| 14 | `class` | [WithIdeal](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/withideal--5f326d4bbd536b3b60415654.md) | 218 | `declaration-track:5f326d4bbd536b3b60415654a4e8c60e5962a5305ec4e57dbe0abf5f9c3f7395` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/instance--aca7c7c10ea4061d20ab37d1.md) | 226 | `declaration-track:aca7c7c10ea4061d20ab37d14304893d15bf573e3a5bfb9f4c4e8ff4537cbe63` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/instance--3669bdef5532045a95724716.md) | 229 | `declaration-track:3669bdef5532045a957247162f16a026759497626f199fe43140797c0beef368` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/instance--b73019e10e5fca95656a5288.md) | 232 | `declaration-track:b73019e10e5fca95656a528841b55adebbd625b7486b1326518e467a6edf316a` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/instance--d95419f376c1b88c0ba00b19.md) | 235 | `declaration-track:d95419f376c1b88c0ba00b19e5efab8bcf427e33bdb4ae0c59fff36d52287187` |
| 19 | `def` | [topologicalSpaceModule](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/topologicalspacemodule--ae88cf9d8a1c4000ee8485fd.md) | 240 | `declaration-track:ae88cf9d8a1c4000ee8485fde505f8a8dae0f8bc912264b3963ba26d1cbe03a5` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/example--2a6f34a4f4f873372417fe9f.md) | 247 | `declaration-track:2a6f34a4f4f873372417fe9f3cece381b8b02e0a15c9b5ad4b81bf727ccb6866` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/example--6bf17fcc0ee6105529c6b14d.md) | 249 | `declaration-track:6bf17fcc0ee6105529c6b14d904a2d888a62650c7a968724aa106d80f957f5f3` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/example--69159a73930eaba4d6d4335a.md) | 251 | `declaration-track:69159a73930eaba4d6d4335abcc5c01d75b1e7715268bd54c2e59e7130bb8310` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/example--d00dff2eaa5a2d3cc8e9094b.md) | 254 | `declaration-track:d00dff2eaa5a2d3cc8e9094bdd5365d9ffd4f0e6b7a04aadfc99a4b48972812f` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/declarations/example--72b2680ccc778fca5886c772.md) | 257 | `declaration-track:72b2680ccc778fca5886c7728b91d946f8563b5bd6c1e731f3dfc8e0ecf830bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
