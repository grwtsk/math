# Verification target: GRWTSK.Algebra.GroupTheory.Sigma.Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e5d710535f6dfb2688acb8de686dbf477e08108",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e5d710535f6dfb2688acb8de686dbf477e08108`.

Source path: `GRWTSK/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean/declarations/instance--262c81db138cd45b8ec4133f.md) | 42 | `declaration-track:262c81db138cd45b8ec4133fd7ee0fb00fd4e5f437a3e853e758452146c1423d` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean/declarations/smul-def--02631a70b2d4034365e2dbed.md) | 46 | `result-track:02631a70b2d4034365e2dbedd2dac55118eb83635e497677c18e61c7dc327d28` |
| 3 | `theorem` | [smul_mk](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean/declarations/smul-mk--7117e53292dc3704948d9311.md) | 50 | `result-track:7117e53292dc3704948d93113a466e1eab6f3ebf0499539f4878309f8d8bfd7a` |
| 4 | `instance` | [instIsScalarTowerOfSMul](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean/declarations/instisscalartowerofsmul--7593f3d5593c1165fa618ff5.md) | 54 | `declaration-track:7593f3d5593c1165fa618ff5dce10bd81549722f3bbafdc85b41fba6e9385432` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean/declarations/instance--74f96602caaa3c0c4de94f1c.md) | 61 | `declaration-track:74f96602caaa3c0c4de94f1cb790ffd72feea64b1c96beef519f30983e7ddfb0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean/declarations/instance--824618b6b1d06945ff48ad2e.md) | 67 | `declaration-track:824618b6b1d06945ff48ad2ec1acf5ef00c34c91dcf8b53f074188d731dad820` |
| 7 | `theorem` | [FaithfulSMul'](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean/declarations/faithfulsmul--fd7df0777d7410f58accb461.md) | 74 | `result-track:fd7df0777d7410f58accb461b8134d38896a44832fcd646cd1b2aed939859593` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean/declarations/instance--492438680f48b4cdbfb8f819.md) | 78 | `declaration-track:492438680f48b4cdbfb8f81903c80cc81111b76d0d1a848a0d86f8ae84cf1d67` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sigma/Variant64633184e6498458804b28a240ea96fc6e3a37d9d0e3dccfe95c08a83a9e19d6.lean/declarations/instance--0a4515b0d8996bc09744cf2e.md) | 84 | `declaration-track:0a4515b0d8996bc09744cf2ed4c3e5c431ec3b304446d5d26e0c22003229aa41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
