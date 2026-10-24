# Verification target: GRWTSK.Algebra.FiniteField.GF128.Grouped

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d0ab2efc2c4193218c04e7d383dc1b268383324",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteField/GF128/Grouped.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Grouped.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Grouped.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d0ab2efc2c4193218c04e7d383dc1b268383324`.

Source path: `GRWTSK/Algebra/FiniteField/GF128/Grouped.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteField/GF128/Grouped.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.FiniteField.GF128.Arithmetic`](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mulFuel_add](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Grouped.lean/declarations/mulfuel-add--bf390b66596dd49a526b87d8.md) | 10 | `result-track:bf390b66596dd49a526b87d814b203ff74eb6b728b4c0bcbdfe21a34beba7889` |
| 2 | `def` | [groupedFuel](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Grouped.lean/declarations/groupedfuel--3e579dd47182952c4bfc30d2.md) | 21 | `declaration-track:3e579dd47182952c4bfc30d2782a1bed1f33fd822469bcf8e7d3a52beae9de3f` |
| 3 | `theorem` | [groupedFuel_eq](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Grouped.lean/declarations/groupedfuel-eq--91304717891ca4ed486edf1c.md) | 26 | `result-track:91304717891ca4ed486edf1c07bedf2cdd82f682264e02628ba6597888de801c` |
| 4 | `theorem` | [nibble_grouping](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Grouped.lean/declarations/nibble-grouping--a8d730ef5024394222660271.md) | 35 | `result-track:a8d730ef5024394222660271531c21b581551b19ff843f7f7599be6c90323d91` |
| 5 | `theorem` | [byte_grouping](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Grouped.lean/declarations/byte-grouping--14d69829ae227360d8794d96.md) | 40 | `result-track:14d69829ae227360d8794d96665468dac80e3f409078672a955a2e278edfe498` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
