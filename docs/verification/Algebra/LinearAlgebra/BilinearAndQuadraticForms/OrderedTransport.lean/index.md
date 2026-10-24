# Verification target: GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.OrderedTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da1306ddad6bb6e1ad7fa8dc0bd3734a0e2abda4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/OrderedTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/OrderedTransport.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/OrderedTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da1306ddad6bb6e1ad7fa8dc0bd3734a0e2abda4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/OrderedTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BilinearAndQuadraticForms/OrderedTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Majorizes](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/OrderedTransport.lean/declarations/majorizes--726cb506de117903449166b4.md) | 16 | `declaration-track:726cb506de117903449166b40271863dbbd33a923c22d024c5183e98812bd97f` |
| 2 | `theorem` | [Majorizes.comp](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/OrderedTransport.lean/declarations/majorizes-comp--0ad2828b11012d73168a326b.md) | 19 | `result-track:0ad2828b11012d73168a326baed5e5e4bde56e87d1ac1f622c734348c5d8aadd` |
| 3 | `theorem` | [Majorizes.spectator](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/OrderedTransport.lean/declarations/majorizes-spectator--6b72c646fb57f71d4dca6f29.md) | 31 | `result-track:6b72c646fb57f71d4dca6f29192c20c973a63a20fc931a5959d3948f88dbe66a` |
| 4 | `inductive` | [Chain](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/OrderedTransport.lean/declarations/chain--ccdd507a41a4db254ce8cb5c.md) | 44 | `declaration-track:ccdd507a41a4db254ce8cb5cca9e007d41b5b9326ec6e232026c2530b875883e` |
| 5 | `theorem` | [Chain.sound](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/OrderedTransport.lean/declarations/chain-sound--ffb0e14a659cb75ab3000c3d.md) | 51 | `result-track:ffb0e14a659cb75ab3000c3d317deb979e83d80d99c4f39433809e8acf4cefb5` |
| 6 | `theorem` | [endpoint_norm_bound](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/OrderedTransport.lean/declarations/endpoint-norm-bound--ef2aa807bf4fc3fd6b95758a.md) | 58 | `result-track:ef2aa807bf4fc3fd6b95758a382290daa9455a5855238c4f9baca1864c728744` |
| 7 | `theorem` | [squared_to_norm](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/OrderedTransport.lean/declarations/squared-to-norm--e5dee02270b8425d53da73fb.md) | 71 | `result-track:e5dee02270b8425d53da73fbb6adc77f1bfd655d68d381d31f892a64539cb9e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
