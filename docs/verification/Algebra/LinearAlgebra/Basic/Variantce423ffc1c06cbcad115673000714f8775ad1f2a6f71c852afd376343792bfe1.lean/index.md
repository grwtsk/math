# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2eb08f03606139793ea03c6820de7cdba3f2759",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2eb08f03606139793ea03c6820de7cdba3f2759`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1.lean.json)

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
| 1 | `abbrev` | [BitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1.lean/declarations/bitmatrix--d80fe8f45fe3043bc432acb6.md) | 8 | `declaration-track:d80fe8f45fe3043bc432acb6c6cf786a4670ec4520842ea5ff58f549804f1c86` |
| 2 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1.lean/declarations/ext--4a994cf54daed96347663715.md) | 12 | `result-track:4a994cf54daed963476637150ba36f01b29eadf4d87dfb2ae825fa6a6dd531bf` |
| 3 | `def` | [transpose](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1.lean/declarations/transpose--443b0e4bf774074ac4e9181f.md) | 19 | `declaration-track:443b0e4bf774074ac4e9181fa384974de432a4e6927bab214802da1e5c8492b6` |
| 4 | `def` | [diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1.lean/declarations/diagonal--567ae87fcd3958762dc0401f.md) | 22 | `declaration-track:567ae87fcd3958762dc0401f5a6311856e37758e3eda731549a862d516856f2f` |
| 5 | `theorem` | [transpose_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1.lean/declarations/transpose-apply--a97197067b0b0191112e8e73.md) | 25 | `result-track:a97197067b0b0191112e8e73f56476b0de9bdfdace13813d769c4f57b812d66f` |
| 6 | `theorem` | [transpose_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1.lean/declarations/transpose-transpose--30bf8ef00f50f8c7f12ce44e.md) | 32 | `result-track:30bf8ef00f50f8c7f12ce44ec252acb99d0b9d8284967d927ea40657d8513577` |
| 7 | `theorem` | [diagonal_on](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1.lean/declarations/diagonal-on--756c31f07b11d5431348dd39.md) | 38 | `result-track:756c31f07b11d5431348dd394eb811756cc71ee4d2f4748f05bd4e6d86293c3d` |
| 8 | `theorem` | [diagonal_off](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1.lean/declarations/diagonal-off--2b74c5fee0f74dd9a5ccd5b9.md) | 44 | `result-track:2b74c5fee0f74dd9a5ccd5b95c0d44fa0ac5833fa707f7923de22cec391d2677` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
