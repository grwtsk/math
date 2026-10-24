# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Newton.Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcac8876db389245cc31415de6df2c03d4029afc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcac8876db389245cc31415de6df2c03d4029afc`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean.json)

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
| 1 | `def` | [newtonMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean/declarations/newtonmap--a004583f468792d02cc59f9f.md) | 52 | `declaration-track:a004583f468792d02cc59f9fcd6d8022bd670bc28ff982c80a4f03e62c975cb1` |
| 2 | `theorem` | [newtonMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean/declarations/newtonmap-apply--02bbfa33eef56f7487a37096.md) | 55 | `result-track:02bbfa33eef56f7487a37096bd146c22a985b63cc70e0dafcda175a163f1d560` |
| 3 | `theorem` | [newtonMap_apply_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean/declarations/newtonmap-apply-of-isunit--af2d8f9b39818c4853d467ee.md) | 61 | `result-track:af2d8f9b39818c4853d467ee07df7f3c5e0ea15f05e5479319135878aafe5bf3` |
| 4 | `theorem` | [newtonMap_apply_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean/declarations/newtonmap-apply-of-not-isunit--6ebb191c0ad0f05a3ea8ce24.md) | 65 | `result-track:6ebb191c0ad0f05a3ea8ce2465daf9396b28341097ae2e53972487d50c67eb59` |
| 5 | `theorem` | [isNilpotent_iterate_newtonMap_sub_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean/declarations/isnilpotent-iterate-newtonmap-sub-of-isnilpotent--7a5bc31ac454e2d84119023a.md) | 69 | `result-track:7a5bc31ac454e2d84119023a2af78018291ccccce17ca6da51be2e9172404d31` |
| 6 | `theorem` | [isFixedPt_newtonMap_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean/declarations/isfixedpt-newtonmap-of-aeval-eq-zero--980c28c243b755fd9ca15dbe.md) | 79 | `result-track:980c28c243b755fd9ca15dbe9a046e5365e6a76540110c088e86d7091f02420a` |
| 7 | `theorem` | [isFixedPt_newtonMap_of_isUnit_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean/declarations/isfixedpt-newtonmap-of-isunit-iff--87bf56167bf0753163d3e64b.md) | 83 | `result-track:87bf56167bf0753163d3e64baeb4ea3e3106b14f533f927eaa1967e7a97136ba` |
| 8 | `theorem` | [aeval_pow_two_pow_dvd_aeval_iterate_newtonMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean/declarations/aeval-pow-two-pow-dvd-aeval-iterate-newtonmap--4db1bcf34d8ced5c4e9a5a6e.md) | 89 | `result-track:4db1bcf34d8ced5c4e9a5a6ec1f23c5b22a660f6a0073ca9c18b9dfa07eae73f` |
| 9 | `theorem` | [existsUnique_nilpotent_sub_and_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant4245694d6e9c7a1573b09bb60bec1855a26043f22405a1c04fe4ffb98de17ed7.lean/declarations/existsunique-nilpotent-sub-and-aeval-eq-zero--01783dfce804b9738d525034.md) | 114 | `result-track:01783dfce804b9738d52503420f22197201b9af68d2b95d71885975b1dadd53e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
