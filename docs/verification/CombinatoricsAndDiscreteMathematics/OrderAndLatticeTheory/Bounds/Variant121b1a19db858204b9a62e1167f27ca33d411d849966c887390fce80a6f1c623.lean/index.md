# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Bounds.Variant121b1a19db858204b9a62e1167f27ca33d411d849966c887390fce80a6f1c623

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27d501075b0e3c6876e086a3f57734d465a8de31",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant121b1a19db858204b9a62e1167f27ca33d411d849966c887390fce80a6f1c623.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant121b1a19db858204b9a62e1167f27ca33d411d849966c887390fce80a6f1c623.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant121b1a19db858204b9a62e1167f27ca33d411d849966c887390fce80a6f1c623.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27d501075b0e3c6876e086a3f57734d465a8de31`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant121b1a19db858204b9a62e1167f27ca33d411d849966c887390fce80a6f1c623.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant121b1a19db858204b9a62e1167f27ca33d411d849966c887390fce80a6f1c623.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Image` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [BddAbove.range_comp_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant121b1a19db858204b9a62e1167f27ca33d411d849966c887390fce80a6f1c623.lean/declarations/bddabove-range-comp-of-nonneg--aa98ff7adfdb69ba9dc51722.md) | 26 | `result-track:aa98ff7adfdb69ba9dc51722646efec13e20ac815a90410d5fab2f02173298a6` |
| 2 | `theorem` | [bddAbove_range_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant121b1a19db858204b9a62e1167f27ca33d411d849966c887390fce80a6f1c623.lean/declarations/bddabove-range-mul--965c083f91cd800d7adf18f0.md) | 38 | `result-track:965c083f91cd800d7adf18f049fbb77033d90e40b54b7e78da487169240bf673` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
