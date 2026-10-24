# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "099007fe9e7da885ef31e4c22cecc69c4deaad52",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `099007fe9e7da885ef31e4c22cecc69c4deaad52`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean.json)

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
| 1 | `instance` | [instModule](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/instmodule--1dbfa97acea0f35b09b8db7d.md) | 40 | `declaration-track:1dbfa97acea0f35b09b8db7d3f8cab71387512935a83a0c319cbc8c5c4576bf4` |
| 2 | `instance` | [instModule](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/instmodule--77265386776a8d1451c90b23.md) | 52 | `declaration-track:77265386776a8d1451c90b2336f510b22aed85d440d06c7ecd8c112863dc6ce8` |
| 3 | `instance` | [instDomMulActModule](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/instdommulactmodule--f0d2c4278f45335ffdddedba.md) | 58 | `declaration-track:f0d2c4278f45335ffdddedba00f66bbe62893a753510f9a8acfc3670caf3eed6` |
| 4 | `instance` | [instDistribSMul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/instdistribsmul--74e606b71d45e5c5299de676.md) | 82 | `declaration-track:74e606b71d45e5c5299de676b5301b0f47d32f11d940408d2b8595390e30271d` |
| 5 | `instance` | [instDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/instdistribmulaction--817e757a370bc5c7398812b1.md) | 87 | `declaration-track:817e757a370bc5c7398812b171b0d85cc9de85755df21cf716d7c72f2700a5ad` |
| 6 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/coe-smul--633db3fce87bd4a25377d413.md) | 90 | `result-track:633db3fce87bd4a25377d4131a5bd929e79f2849d3a50be6833ad0036f66fbd8` |
| 7 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/smul-apply--692390822b1585d4adf95f15.md) | 92 | `result-track:692390822b1585d4adf95f151f69a4ebd719f3829f54b671d0e038ee1bd09260` |
| 8 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/smulcommclass--83471cfb9eedd842a01ee872.md) | 95 | `declaration-track:83471cfb9eedd842a01ee8721e867af829247ab776451197b209f8fe750019b1` |
| 9 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/isscalartower--f988f1d00573948222264152.md) | 98 | `declaration-track:f988f1d005739482222641522159db3dafd3352b7b1ac8ea2a45ea72746297b7` |
| 10 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/iscentralscalar--b880b68e2e5a06536bcdd352.md) | 101 | `declaration-track:b880b68e2e5a06536bcdd35288e1abd772019b4a05e4380e01711ce85e0742ae` |
| 11 | `instance` | [instModule](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/instmodule--a66f370137926c619cd61d4f.md) | 107 | `declaration-track:a66f370137926c619cd61d4fba7829bb0375496faaf144dae5041d3aef299240` |
| 12 | `instance` | [applyModule](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/applymodule--f17c0271ef5a53f0a65fd4aa.md) | 113 | `declaration-track:f17c0271ef5a53f0a65fd4aa1598e4343891d3a811f6efdcbd4aab9c8191b5af` |
| 13 | `def` | [smul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/smul--18cc09cc204dddb21cd9f4b8.md) | 125 | `declaration-track:18cc09cc204dddb21cd9f4b8dee4cd81796b040056dca3dcecfc1475f7c2befd` |
| 14 | `theorem` | [coe_smul'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/declarations/coe-smul--7ff1866aa4e21f2c6385f714.md) | 128 | `result-track:7ff1866aa4e21f2c6385f7144c2aa4c1169c4535cae1388ff8adf5969cc1a3b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
