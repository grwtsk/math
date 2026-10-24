# Verification target: GRWTSK.Algebra.GroupTheory.Quotient.Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ea66f79031bad69d976a66413277b764af1c22b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ea66f79031bad69d976a66413277b764af1c22b`.

Source path: `GRWTSK/Algebra/GroupTheory/Quotient/Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Quotient/Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Int` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.NatInt` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.ZPowers.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zsmul_mem_zmultiples_iff_exists_sub_div](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0.lean/declarations/zsmul-mem-zmultiples-iff-exists-sub-div--647979f9adb8e4c678108e23.md) | 30 | `result-track:647979f9adb8e4c678108e239acae6f1d740cd1ef3e2daad81e333a0b1278cc5` |
| 2 | `theorem` | [nsmul_mem_zmultiples_iff_exists_sub_div](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0.lean/declarations/nsmul-mem-zmultiples-iff-exists-sub-div--8cade741f509b643cf353ef5.md) | 51 | `result-track:8cade741f509b643cf353ef58f56f72c7314988a6db16910e4e26eebe5b4acde` |
| 3 | `theorem` | [zmultiples_zsmul_eq_zsmul_iff](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0.lean/declarations/zmultiples-zsmul-eq-zsmul-iff--d66ceca3cfe1fbc0a4455893.md) | 62 | `result-track:d66ceca3cfe1fbc0a445589372fabaddcb26d39918435f3468426f739dafb749` |
| 4 | `theorem` | [zmultiples_nsmul_eq_nsmul_iff](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0.lean/declarations/zmultiples-nsmul-eq-nsmul-iff--1bb1c12bd546bf2f763b8c4b.md) | 74 | `result-track:1bb1c12bd546bf2f763b8c4bb8e600d7c169ff3f92cd44d3b8e7314e02774867` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
