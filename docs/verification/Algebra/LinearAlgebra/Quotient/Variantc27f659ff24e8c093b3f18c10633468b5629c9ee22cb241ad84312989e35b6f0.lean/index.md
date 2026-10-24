# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variantc27f659ff24e8c093b3f18c10633468b5629c9ee22cb241ad84312989e35b6f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8aa919c243a2bc5c840bdf3312a0d49a8a794d4f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantc27f659ff24e8c093b3f18c10633468b5629c9ee22cb241ad84312989e35b6f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc27f659ff24e8c093b3f18c10633468b5629c9ee22cb241ad84312989e35b6f0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc27f659ff24e8c093b3f18c10633468b5629c9ee22cb241ad84312989e35b6f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8aa919c243a2bc5c840bdf3312a0d49a8a794d4f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variantc27f659ff24e8c093b3f18c10633468b5629c9ee22cb241ad84312989e35b6f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variantc27f659ff24e8c093b3f18c10633468b5629c9ee22cb241ad84312989e35b6f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.QuotientRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Pi` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientEquivPiSpan](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc27f659ff24e8c093b3f18c10633468b5629c9ee22cb241ad84312989e35b6f0.lean/declarations/quotientequivpispan--190bc660667485954a4cd3e7.md) | 32 | `declaration-track:190bc660667485954a4cd3e75d01515d56fcf989ce2199d1c401a05cd82d71c8` |
| 2 | `def` | [quotientEquivPiZMod](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc27f659ff24e8c093b3f18c10633468b5629c9ee22cb241ad84312989e35b6f0.lean/declarations/quotientequivpizmod--8932938db1eb3d8731ab3147.md) | 78 | `declaration-track:8932938db1eb3d8731ab314787db118dc4307f69882a63af0b0a4ebc8e8716c6` |
| 3 | `theorem` | [finiteQuotientOfFreeOfRankEq](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc27f659ff24e8c093b3f18c10633468b5629c9ee22cb241ad84312989e35b6f0.lean/declarations/finitequotientoffreeofrankeq--f1f7096db790da91af7d4d00.md) | 91 | `result-track:f1f7096db790da91af7d4d00f80813260747a2bba1e80748d66ab8ac7a247f85` |
| 4 | `def` | [quotientEquivDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc27f659ff24e8c093b3f18c10633468b5629c9ee22cb241ad84312989e35b6f0.lean/declarations/quotientequivdirectsum--f7342c2448e3fcacb1076d68.md) | 108 | `declaration-track:f7342c2448e3fcacb1076d68277fda9da52db6c715cdbea5b48a3a63824d153f` |
| 5 | `theorem` | [finrank_quotient_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc27f659ff24e8c093b3f18c10633468b5629c9ee22cb241ad84312989e35b6f0.lean/declarations/finrank-quotient-eq-sum--74febdeda546fbd6c38ec230.md) | 114 | `result-track:74febdeda546fbd6c38ec230cfb885db196723444ed55171ef3a020ad26c74cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
