# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.RadicalMultiplicativeInterface

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f11be7402b720bed615560f33300bdc76d74515",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/RadicalMultiplicativeInterface.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/RadicalMultiplicativeInterface.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/RadicalMultiplicativeInterface.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f11be7402b720bed615560f33300bdc76d74515`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/RadicalMultiplicativeInterface.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/RadicalMultiplicativeInterface.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Radical`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RadicalMultiplicativeInterface](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/RadicalMultiplicativeInterface.lean/declarations/radicalmultiplicativeinterface--7157b57109d3b7508a5e3111.md) | 26 | `declaration-track:7157b57109d3b7508a5e31110c8cf9f3dc34e9670dc6dd1c7d866a6a48475862` |
| 2 | `def` | [RadicalMultiplicativeInterface.canonical](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/RadicalMultiplicativeInterface.lean/declarations/radicalmultiplicativeinterface-canonical--faa637ac68125926eedcb18f.md) | 34 | `declaration-track:faa637ac68125926eedcb18f193578a57e97028c95d5e790289d1970d192051c` |
| 3 | `theorem` | [RadicalMultiplicativeInterface.canonical_observable](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/RadicalMultiplicativeInterface.lean/declarations/radicalmultiplicativeinterface-canonical-observable--bd2018442ed67719c1fbde87.md) | 42 | `result-track:bd2018442ed67719c1fbde87e593994accefb0fcee73dc3e68e9c48c9aff060e` |
| 4 | `theorem` | [RadicalMultiplicativeInterface.observable_eq_coordinate_radicals](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/RadicalMultiplicativeInterface.lean/declarations/radicalmultiplicativeinterface-observable-eq-coordinate-radicals--f776cff09659fda0a4439459.md) | 51 | `result-track:f776cff09659fda0a4439459fd14924fc79b76b53894a206c9d7f31b625bbff6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
