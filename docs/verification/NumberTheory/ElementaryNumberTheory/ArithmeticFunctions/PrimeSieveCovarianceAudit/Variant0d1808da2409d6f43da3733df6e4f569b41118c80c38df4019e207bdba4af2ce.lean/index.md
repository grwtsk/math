# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimeSieveCovarianceAudit.Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63185147445520c12347e380f7b493de45c7b842",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63185147445520c12347e380f7b493de45c7b842`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SelbergSieve` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_lcm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean/declarations/prime-lcm--aa0150a4a6181a296e129c84.md) | 10 | `result-track:aa0150a4a6181a296e129c84bc618a22556839d227531cb333ab92f870fbcac2` |
| 2 | `theorem` | [prime_moebius_lcm_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean/declarations/prime-moebius-lcm-identity--a9901939371374bfaf4f5132.md) | 18 | `result-track:a9901939371374bfaf4f5132b2107b59d37497cf4d61dd0aed83207323366f16` |
| 3 | `theorem` | [prime_moebius_lcm_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean/declarations/prime-moebius-lcm-le--7447e428324ab5823bf985c3.md) | 64 | `result-track:7447e428324ab5823bf985c3192c7fe999b2383116cc90d2776a17baa54b5e69` |
| 4 | `theorem` | [prime_moebius_lcm_le_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variant0d1808da2409d6f43da3733df6e4f569b41118c80c38df4019e207bdba4af2ce.lean/declarations/prime-moebius-lcm-le-card--c380aa442c4e925bdba448cc.md) | 100 | `result-track:c380aa442c4e925bdba448ccc3b66f244094664cd43cb7d3b1cfed5555c7927b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
