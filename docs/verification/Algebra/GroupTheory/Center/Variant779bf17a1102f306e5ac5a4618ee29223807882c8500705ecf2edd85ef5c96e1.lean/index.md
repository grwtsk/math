# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variant779bf17a1102f306e5ac5a4618ee29223807882c8500705ecf2edd85ef5c96e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56c2110365684d428c57caf45af1b4c555fef23e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant779bf17a1102f306e5ac5a4618ee29223807882c8500705ecf2edd85ef5c96e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variant779bf17a1102f306e5ac5a4618ee29223807882c8500705ecf2edd85ef5c96e1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variant779bf17a1102f306e5ac5a4618ee29223807882c8500705ecf2edd85ef5c96e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56c2110365684d428c57caf45af1b4c555fef23e`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant779bf17a1102f306e5ac5a4618ee29223807882c8500705ecf2edd85ef5c96e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant779bf17a1102f306e5ac5a4618ee29223807882c8500705ecf2edd85ef5c96e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Center` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [zero_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant779bf17a1102f306e5ac5a4618ee29223807882c8500705ecf2edd85ef5c96e1.lean/declarations/zero-mem-center--f102dfc530999b2239f4860a.md) | 29 | `result-track:f102dfc530999b2239f4860ae11149e5f542219e2b17bc7a9aa11b593f4ddb46` |
| 2 | `lemma` | [zero_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variant779bf17a1102f306e5ac5a4618ee29223807882c8500705ecf2edd85ef5c96e1.lean/declarations/zero-mem-centralizer--16ef1a10a749046e7ab9e574.md) | 35 | `result-track:16ef1a10a749046e7ab9e5745a1f90ce588283c72e6c0cbaa881c071bb55f8f5` |
| 3 | `lemma` | [center_units_subset](../../../../../mathematics/Algebra/GroupTheory/Center/Variant779bf17a1102f306e5ac5a4618ee29223807882c8500705ecf2edd85ef5c96e1.lean/declarations/center-units-subset--23f15affaff6421cd26798c4.md) | 42 | `result-track:23f15affaff6421cd26798c4b85a929b08438761e9609b1fb0e2ea60d7629dfe` |
| 4 | `lemma` | [center_units_eq](../../../../../mathematics/Algebra/GroupTheory/Center/Variant779bf17a1102f306e5ac5a4618ee29223807882c8500705ecf2edd85ef5c96e1.lean/declarations/center-units-eq--f34e623aa5723dec4e971e20.md) | 50 | `result-track:f34e623aa5723dec4e971e2016672549d711deba7d9c46e2753987e706bec883` |
| 5 | `lemma` | [inv_mem_centralizer₀](../../../../../mathematics/Algebra/GroupTheory/Center/Variant779bf17a1102f306e5ac5a4618ee29223807882c8500705ecf2edd85ef5c96e1.lean/declarations/inv-mem-centralizer--3f636e3f28880bcb0aad14b5.md) | 53 | `result-track:3f636e3f28880bcb0aad14b546bae71d6948c0659e6d3a666c9815980cfe3a54` |
| 6 | `lemma` | [div_mem_centralizer₀](../../../../../mathematics/Algebra/GroupTheory/Center/Variant779bf17a1102f306e5ac5a4618ee29223807882c8500705ecf2edd85ef5c96e1.lean/declarations/div-mem-centralizer--ae471fa67fa1815582d7cf56.md) | 60 | `result-track:ae471fa67fa1815582d7cf5644dd423216df55fb57ead877068c45f801c99777` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
