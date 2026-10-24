# Verification target: GRWTSK.Algebra.UniversalAlgebra.Order.Variantba28caf07a6edbeb383a13f3c5cfdad26948e44e13da076fe5a0fbb10780d9e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0382f44fc499af5531614c5e3ced538846716f6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Order/Variantba28caf07a6edbeb383a13f3c5cfdad26948e44e13da076fe5a0fbb10780d9e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variantba28caf07a6edbeb383a13f3c5cfdad26948e44e13da076fe5a0fbb10780d9e3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variantba28caf07a6edbeb383a13f3c5cfdad26948e44e13da076fe5a0fbb10780d9e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0382f44fc499af5531614c5e3ced538846716f6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Order/Variantba28caf07a6edbeb383a13f3c5cfdad26948e44e13da076fe5a0fbb10780d9e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Order/Variantba28caf07a6edbeb383a13f3c5cfdad26948e44e13da076fe5a0fbb10780d9e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Hom.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [toIsOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variantba28caf07a6edbeb383a13f3c5cfdad26948e44e13da076fe5a0fbb10780d9e3.lean/declarations/toisorderedring--fbf5d737f2bc39fc1fa8c90b.md) | 36 | `declaration-track:fbf5d737f2bc39fc1fa8c90b74d5684164baf3eba54b679b0f5412e895f4a0b4` |
| 2 | `instance` | [toIsStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variantba28caf07a6edbeb383a13f3c5cfdad26948e44e13da076fe5a0fbb10780d9e3.lean/declarations/toisstrictorderedring--dca1606169304a938cefe750.md) | 42 | `declaration-track:dca1606169304a938cefe75079a1d4d9545d2c5ea5fa08ab127d38514652e085` |
| 3 | `def` | [orderedSubtype](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variantba28caf07a6edbeb383a13f3c5cfdad26948e44e13da076fe5a0fbb10780d9e3.lean/declarations/orderedsubtype--4b8b3b2c7b76967a586af0de.md) | 48 | `declaration-track:4b8b3b2c7b76967a586af0de2bba4bf17cb7e4113f85bf4a862a75dff1517805` |
| 4 | `lemma` | [orderedSubtype_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variantba28caf07a6edbeb383a13f3c5cfdad26948e44e13da076fe5a0fbb10780d9e3.lean/declarations/orderedsubtype-coe--27fe07fb167086ccfb9c5733.md) | 55 | `result-track:27fe07fb167086ccfb9c573393321af35d7344346e4bf89a601b437a858a35b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
