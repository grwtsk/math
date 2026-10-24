# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearRelaxation.Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60f7223145e8c11367098e7abbcf3a22c83e663e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60f7223145e8c11367098e7abbcf3a22c83e663e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.BoundedRicciFlow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Real` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FrozenMetricLinearRelaxation](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/frozenmetriclinearrelaxation--0f4865207d1e5c129339e7e4.md) | 41 | `declaration-track:0f4865207d1e5c129339e7e4bf521dbe76996ccb6696f16e2df0794b4697214f` |
| 2 | `def` | [composeChronological](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/composechronological--30990dde6454e37865a360b2.md) | 66 | `declaration-track:30990dde6454e37865a360b226752e1c2c1610f6d4fb274814b841038e5a3250` |
| 3 | `def` | [prefixMap](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/prefixmap--1baa01f345b6eb301c34e824.md) | 71 | `declaration-track:1baa01f345b6eb301c34e82465d40eb8a3305e3ee2fe1a43c5d889240217d73f` |
| 4 | `def` | [horizonMap](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/horizonmap--d7536a540ee2d2af2559f3d6.md) | 77 | `declaration-track:d7536a540ee2d2af2559f3d6f0061059d44664466a31ba1a59d9b7e2a9a5f7b6` |
| 5 | `def` | [trajectory](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/trajectory--98e6a02ba583b6806ce03682.md) | 82 | `declaration-track:98e6a02ba583b6806ce0368205a01012923bfddb6933a94df4b81ccdf13dd2fa` |
| 6 | `theorem` | [prefixMap_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/prefixmap-zero--5bb34f8c7664a19563d08140.md) | 88 | `result-track:5bb34f8c7664a19563d081409037385949325faa65a1e636a337bdd12040f0a6` |
| 7 | `theorem` | [horizonMap_add](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/horizonmap-add--f9e9d772c6b0b07b342680fa.md) | 93 | `result-track:f9e9d772c6b0b07b342680fac9f15ebb0d3454ff311c9684fdc465f0f6e2dcb2` |
| 8 | `theorem` | [horizonMap_smul](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/horizonmap-smul--3bc882abce213040714e638b.md) | 99 | `result-track:3bc882abce213040714e638b525353445c5e11f339400103b84d4facd0b6069d` |
| 9 | `def` | [reconstructAbsolute](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/reconstructabsolute--a7bf98bde6e59ffaed375ee1.md) | 107 | `declaration-track:a7bf98bde6e59ffaed375ee1bf2f02c52e5f95cc04d79af54e08c38aebcbc3de` |
| 10 | `structure` | [ContinuousRelaxationRaster](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/continuousrelaxationraster--706a21662bb44ab3b1dacf7a.md) | 117 | `declaration-track:706a21662bb44ab3b1dacf7a1c99fee5b562f13dffaa1231ef753b22f98e43d7` |
| 11 | `structure` | [RelaxationParameter](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/relaxationparameter--f69603c2fdbd4d21071d40c7.md) | 136 | `declaration-track:f69603c2fdbd4d21071d40c74b88c1b398d9feffa224dcb53cf86af0d5fee813` |
| 12 | `theorem` | [one_sub_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/one-sub-nonnegative--5ec0ef576107d41645ba643a.md) | 144 | `result-track:5ec0ef576107d41645ba643a12b0b67726aadc8d9a88d1b6212ff6da93fea172` |
| 13 | `def` | [involutionProjection](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/involutionprojection--ce13367d32ad025c818aa17e.md) | 151 | `declaration-track:ce13367d32ad025c818aa17ec6c1722350ed4671b30615dff213abab8dd0d3a3` |
| 14 | `theorem` | [involutionProjection_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/involutionprojection-idempotent--c56387ece86384750e5dd9d8.md) | 156 | `result-track:c56387ece86384750e5dd9d8d4918a6d37574d2f45302d4637b46bb4a764d9c9` |
| 15 | `def` | [involutionRelaxation](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/involutionrelaxation--2e6b8b152aff6d7b2da5ab4e.md) | 171 | `declaration-track:2e6b8b152aff6d7b2da5ab4eddf30b6e53464210d00c7d7420aca61b68c37296` |
| 16 | `def` | [RelaxationParameter.operator](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/relaxationparameter-operator--7d326c0c743df8bee57a1ac5.md) | 177 | `declaration-track:7d326c0c743df8bee57a1ac505d5819e03573fb2a1bde7e5f1695bf4ea4b3e68` |
| 17 | `theorem` | [involutionRelaxation_apply_of_invariant](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/involutionrelaxation-apply-of-invariant--41c8bdeb80ffa5b78cb3559f.md) | 183 | `result-track:41c8bdeb80ffa5b78cb3559f8c8df3745e658ec3639954e6a36284cdee7b0220` |
| 18 | `theorem` | [involutionRelaxation_apply_of_antiInvariant](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/involutionrelaxation-apply-of-antiinvariant--d41d023179b48f240feb81c9.md) | 194 | `result-track:d41d023179b48f240feb81c9234b27159d70d521edbc9993df8945c8079815e2` |
| 19 | `theorem` | [norm_involutionRelaxation_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/norm-involutionrelaxation-le--9db54f58313b563102fd00e2.md) | 216 | `result-track:9db54f58313b563102fd00e20c5b39ffac378ca92bff1cf228215d6b607fd3b3` |
| 20 | `theorem` | [norm_involutionRelaxation_lt_of_antiInvariant](../../../../../mathematics/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/declarations/norm-involutionrelaxation-lt-of-antiinvariant--1fb1cd7188f9f0fbb5e7f5ab.md) | 244 | `result-track:1fb1cd7188f9f0fbb5e7f5abbf886446438792cdb3dea0e0ab02c1364415f33b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
