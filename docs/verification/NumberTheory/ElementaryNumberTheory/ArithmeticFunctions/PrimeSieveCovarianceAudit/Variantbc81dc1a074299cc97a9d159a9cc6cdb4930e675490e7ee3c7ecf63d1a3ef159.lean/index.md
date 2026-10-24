# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimeSieveCovarianceAudit.Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61aca1334bfc365b402158bdffd59b6536733478",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61aca1334bfc365b402158bdffd59b6536733478`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SelbergSieve` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_lcm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159.lean/declarations/prime-lcm--2cb46a97bb56e24aa76eaae2.md) | 18 | `result-track:2cb46a97bb56e24aa76eaae2f2116821867f6abdcd93fc5b0c5353228ac18988` |
| 2 | `theorem` | [prime_moebius_lcm_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159.lean/declarations/prime-moebius-lcm-identity--2280641c9632a0892327b794.md) | 26 | `result-track:2280641c9632a0892327b794696e93130c3d63b09343abb0254ca0b89b5e9125` |
| 3 | `theorem` | [prime_moebius_lcm_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159.lean/declarations/prime-moebius-lcm-le--ea5b080b0683728da581f125.md) | 72 | `result-track:ea5b080b0683728da581f125e286c65a9e15f77bfa679afdf163e90096fa6f9a` |
| 4 | `theorem` | [prime_moebius_lcm_le_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159.lean/declarations/prime-moebius-lcm-le-card--c21b7f589dee88641e5b9927.md) | 108 | `result-track:c21b7f589dee88641e5b9927fe76c0a697fb265155ecf8b126918fdfa665ed7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
