# Verification target: GRWTSK.Algebra.GroupTheory.PointwisePi.Variant8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40379da001d397b61c66e9627d7c22da6069ab41",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PointwisePi/Variant8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/PointwisePi/Variant8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/PointwisePi/Variant8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40379da001d397b61c66e9627d7c22da6069ab41`.

Source path: `GRWTSK/Algebra/GroupTheory/PointwisePi/Variant8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PointwisePi/Variant8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_pi_subset](../../../../../mathematics/Algebra/GroupTheory/PointwisePi/Variant8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c.lean/declarations/smul-pi-subset--c4e82580c1f73ec80815972a.md) | 28 | `result-track:c4e82580c1f73ec80815972aae1fbe46b56d52aed6485c75f0af8f03659033c8` |
| 2 | `theorem` | [smul_univ_pi](../../../../../mathematics/Algebra/GroupTheory/PointwisePi/Variant8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c.lean/declarations/smul-univ-pi--389557d2b027e00dcca058f7.md) | 33 | `result-track:389557d2b027e00dcca058f7cc139f1b889ae5ff76614489f2fa55da63a24de2` |
| 3 | `theorem` | [smul_pi](../../../../../mathematics/Algebra/GroupTheory/PointwisePi/Variant8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c.lean/declarations/smul-pi--70c6484bfd42687eec83d8ce.md) | 38 | `result-track:70c6484bfd42687eec83d8cea936bc116ed1a9051b7a68f297bd9b04a4381884` |
| 4 | `theorem` | [smul_pi₀](../../../../../mathematics/Algebra/GroupTheory/PointwisePi/Variant8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c.lean/declarations/smul-pi--5e82c88ebd653669a340a805.md) | 42 | `result-track:5e82c88ebd653669a340a80539f3013413618d0c049089f2c2290922374c0db8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
