# Verification target: GRWTSK.NumberTheory.GaussSum.Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af9710f9b838fd118dc2b938194e75e5ded715fa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af9710f9b838fd118dc2b938194e75e5ded715fa`.

Source path: `GRWTSK/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.GaussSum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadraticChar_two](../../../../mathematics/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean/declarations/quadraticchar-two--170f44aac704ce56af2ce430.md) | 41 | `result-track:170f44aac704ce56af2ce4305746d9fdb82520d271d38353244ff2c92c9dc9e2` |
| 2 | `theorem` | [FiniteField.isSquare_two_iff](../../../../mathematics/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean/declarations/finitefield-issquare-two-iff--82a99c649ab57a5513c18602.md) | 47 | `result-track:82a99c649ab57a5513c18602e9e9e5b78be71b74214da51c41cdf1865224e207` |
| 3 | `theorem` | [quadraticChar_neg_two](../../../../mathematics/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean/declarations/quadraticchar-neg-two--0fd5d750e98a1ddc4e33ddfc.md) | 60 | `result-track:0fd5d750e98a1ddc4e33ddfcb7ee52b0381fc455bdfff9ffdf55607311419429` |
| 4 | `theorem` | [FiniteField.isSquare_neg_two_iff](../../../../mathematics/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean/declarations/finitefield-issquare-neg-two-iff--41d26136689bc26c03e09948.md) | 66 | `result-track:41d26136689bc26c03e09948bf923d5d287396119c848c725d5f12c5d0d92ebb` |
| 5 | `theorem` | [quadraticChar_card_card](../../../../mathematics/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean/declarations/quadraticchar-card-card--32f93d255464112132100c92.md) | 81 | `result-track:32f93d255464112132100c922b5f45320610f00c0ace561c57e832624e46d6fe` |
| 6 | `theorem` | [quadraticChar_odd_prime](../../../../mathematics/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean/declarations/quadraticchar-odd-prime--48264daaa577b51de451517d.md) | 97 | `result-track:48264daaa577b51de451517dd98c232f8ec973cc2fc0ebd67bba4df1b9e547ad` |
| 7 | `theorem` | [FiniteField.isSquare_odd_prime_iff](../../../../mathematics/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean/declarations/finitefield-issquare-odd-prime-iff--0fb877453f36289c5fe47b38.md) | 107 | `result-track:0fb877453f36289c5fe47b3830b9916442314307a378e9fc11fb9ea43b4ad8fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
