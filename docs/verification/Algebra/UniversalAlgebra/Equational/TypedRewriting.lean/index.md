# Verification target: GRWTSK.Algebra.UniversalAlgebra.Equational.TypedRewriting

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8f62d9cab4141acbddac062bca1922c086915b0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8f62d9cab4141acbddac062bca1922c086915b0`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Domain](../../../../../mathematics/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean/declarations/domain--03a7fe08019a630250b2b338.md) | 18 | `declaration-track:03a7fe08019a630250b2b33833f415179f2ae4509badf845860b7ab69d7bf589` |
| 2 | `inductive` | [Expr](../../../../../mathematics/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean/declarations/expr--d52f6949b6bc8e3bc633c9f4.md) | 21 | `declaration-track:d52f6949b6bc8e3bc633c9f4c335b5cfad2e55df730348e6d8adec4b6bbc1fea` |
| 3 | `abbrev` | [Meaning](../../../../../mathematics/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean/declarations/meaning--88ceff863cca01d0a63c2980.md) | 31 | `declaration-track:88ceff863cca01d0a63c2980983098c9476e9eab820c18058fb5af7a37ec1e08` |
| 4 | `def` | [eval](../../../../../mathematics/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean/declarations/eval--c2e80230441c498455ce2db0.md) | 35 | `declaration-track:c2e80230441c498455ce2db0a8c5357e044281230e1c03ad2a181056b3d590f2` |
| 5 | `inductive` | [Step](../../../../../mathematics/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean/declarations/step--9bd0ca342852d58831e76f66.md) | 47 | `declaration-track:9bd0ca342852d58831e76f663d8976ffb1286d5fe3a22f56c6946c215c595ca0` |
| 6 | `theorem` | [sound](../../../../../mathematics/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean/declarations/sound--639889dfdec592a0df5b3063.md) | 79 | `result-track:639889dfdec592a0df5b306323bddc88b2fae664c51cb583fea13ff9636accaa` |
| 7 | `theorem` | [append_does_not_commute](../../../../../mathematics/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean/declarations/append-does-not-commute--53f8ed4e260b8e0cecb4f0ed.md) | 114 | `result-track:53f8ed4e260b8e0cecb4f0ed03022646c93fc526f2c17ffd1697d2019656a697` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
