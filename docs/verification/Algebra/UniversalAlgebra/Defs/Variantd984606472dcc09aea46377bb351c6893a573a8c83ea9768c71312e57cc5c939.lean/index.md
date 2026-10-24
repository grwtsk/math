# Verification target: GRWTSK.Algebra.UniversalAlgebra.Defs.Variantd984606472dcc09aea46377bb351c6893a573a8c83ea9768c71312e57cc5c939

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53ae66e9fa098ffbb181b827a561734ed1084cd5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variantd984606472dcc09aea46377bb351c6893a573a8c83ea9768c71312e57cc5c939.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd984606472dcc09aea46377bb351c6893a573a8c83ea9768c71312e57cc5c939.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd984606472dcc09aea46377bb351c6893a573a8c83ea9768c71312e57cc5c939.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53ae66e9fa098ffbb181b827a561734ed1084cd5`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Defs/Variantd984606472dcc09aea46377bb351c6893a573a8c83ea9768c71312e57cc5c939.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Defs/Variantd984606472dcc09aea46377bb351c6893a573a8c83ea9768c71312e57cc5c939.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Solvable` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LieModule.IsIrreducible](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd984606472dcc09aea46377bb351c6893a573a8c83ea9768c71312e57cc5c939.lean/declarations/liemodule-isirreducible--8a82672cd81d8109d8cba933.md) | 37 | `declaration-track:8a82672cd81d8109d8cba933bd95ea0d0be3ab0dac5ef001078cff39d1757aef` |
| 2 | `lemma` | [LieSubmodule.eq_top_of_isIrreducible](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd984606472dcc09aea46377bb351c6893a573a8c83ea9768c71312e57cc5c939.lean/declarations/liesubmodule-eq-top-of-isirreducible--9e6b65e381179867da667d00.md) | 40 | `result-track:9e6b65e381179867da667d005972839211bb7436830194fa17e7f69787b717fb` |
| 3 | `class` | [HasTrivialRadical](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd984606472dcc09aea46377bb351c6893a573a8c83ea9768c71312e57cc5c939.lean/declarations/hastrivialradical--21420d3764430d1531c87973.md) | 63 | `declaration-track:21420d3764430d1531c87973bfe8a8382f9dd4e0ce47c90b96aa17b9b664ff22` |
| 4 | `class` | [HasCentralRadical](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd984606472dcc09aea46377bb351c6893a573a8c83ea9768c71312e57cc5c939.lean/declarations/hascentralradical--4c9d6465db67ffb64575b3be.md) | 74 | `declaration-track:4c9d6465db67ffb64575b3bee8cf320395391eaf56ef36c3fefbae3d6fb5bc29` |
| 5 | `lemma` | [hasCentralRadical_of_radical_le](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd984606472dcc09aea46377bb351c6893a573a8c83ea9768c71312e57cc5c939.lean/declarations/hascentralradical-of-radical-le--a721f552da0fd54b1e40c187.md) | 77 | `result-track:a721f552da0fd54b1e40c187fd68fc5563faf0e2b646c5d17fc01b0d06b0c216` |
| 6 | `class` | [IsSimple](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd984606472dcc09aea46377bb351c6893a573a8c83ea9768c71312e57cc5c939.lean/declarations/issimple--96ce2783062779a562e51213.md) | 86 | `declaration-track:96ce2783062779a562e512133ef3a390364789953dcb82f373eeb7858751452c` |
| 7 | `class` | [IsSemisimple](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd984606472dcc09aea46377bb351c6893a573a8c83ea9768c71312e57cc5c939.lean/declarations/issemisimple--795a8773926378fa39018cb4.md) | 101 | `declaration-track:795a8773926378fa39018cb4a29f2f7a5aa4314c3c68cfe3cbf791f4c3648a62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
