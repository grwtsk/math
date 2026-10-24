# Verification target: GRWTSK.Algebra.GroupTheory.Opposite.Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63018aadab33de8bcc38b68918cbc9fac9d28e30",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63018aadab33de8bcc38b68918cbc9fac9d28e30`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Congruence.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Opposite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean/declarations/op--f7e3f322319e0c2fd8c0e2c1.md) | 25 | `declaration-track:f7e3f322319e0c2fd8c0e2c12b38b16bd2954547b40b1e5750de00c207def327` |
| 2 | `lemma` | [op_iff](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean/declarations/op-iff--50163e6fe8cfab96973ffd1a.md) | 30 | `result-track:50163e6fe8cfab96973ffd1a48ab9695541d25bbfdcf6bd19ed5ba18359300fb` |
| 3 | `def` | [unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean/declarations/unop--532dfb68a5eb84c3dbe205f8.md) | 35 | `declaration-track:532dfb68a5eb84c3dbe205f82c043709ee9945e65437ac5a1b32dba0eabb4097` |
| 4 | `lemma` | [unop_iff](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean/declarations/unop-iff--992662e436c3120deb0863ad.md) | 40 | `result-track:992662e436c3120deb0863adb0db44d360c1875da913e7ed09c06d5f3761a575` |
| 5 | `def` | [opOrderIso](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean/declarations/oporderiso--751de40b468ec1d9ed4f4f3b.md) | 46 | `declaration-track:751de40b468ec1d9ed4f4f3b34dc105f12bb6fae6f6b975dc9a97fe4eba5e2a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
