# Verification target: GRWTSK.Algebra.GroupTheory.Support.Variantd09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfade3af593c0858e7c7dc9003151aeadbae1757",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Support/Variantd09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Support/Variantd09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Support/Variantd09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfade3af593c0858e7c7dc9003151aeadbae1757`.

Source path: `GRWTSK/Algebra/GroupTheory/Support/Variantd09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Support/Variantd09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Pointwise.Set` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mulSupport_comp_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Support/Variantd09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30.lean/declarations/mulsupport-comp-inv-smul--3df1a0ef39a6b4e520313f58.md) | 24 | `result-track:3df1a0ef39a6b4e520313f58465fa8eb6f3f20ec926a9fc5921f3eaad73b7586` |
| 2 | `theorem` | [support_comp_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Support/Variantd09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30.lean/declarations/support-comp-inv-smul--c2c3f2934f778a0866f566fb.md) | 31 | `result-track:c2c3f2934f778a0866f566fb0114c2dba6ddf87114e355580e6ed1d70d89b006` |
| 3 | `theorem` | [mulSupport_comp_inv_smul₀](../../../../../mathematics/Algebra/GroupTheory/Support/Variantd09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30.lean/declarations/mulsupport-comp-inv-smul--b66696504eff1cf345b6ec2c.md) | 42 | `result-track:b66696504eff1cf345b6ec2c0a59d7fcce6f03bcef09fa0f9bed770f09098b20` |
| 4 | `theorem` | [support_comp_inv_smul₀](../../../../../mathematics/Algebra/GroupTheory/Support/Variantd09404f35ac1f5b89581d4b8ddac520a221249d5ba7ac1cd68727275ee056f30.lean/declarations/support-comp-inv-smul--199a968fa0dce87ca0062dec.md) | 49 | `result-track:199a968fa0dce87ca0062deced9cf9df7e76106988aa182af54f5bd4a11dddbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
