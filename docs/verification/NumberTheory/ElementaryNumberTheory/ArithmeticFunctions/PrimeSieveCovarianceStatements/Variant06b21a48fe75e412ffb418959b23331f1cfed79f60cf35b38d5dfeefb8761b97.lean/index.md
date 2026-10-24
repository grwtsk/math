# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimeSieveCovarianceStatements.Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "879b6ab99bc22157c1b65dcfdb85bd9bfdb83634",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `879b6ab99bc22157c1b65dcfdb85bd9bfdb83634`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean.json)

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
| 1 | `theorem` | [prime_lcm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean/declarations/prime-lcm--4066aaf31785afd7076bb38d.md) | 18 | `result-track:4066aaf31785afd7076bb38dfdd21f0e60bb17e6e1ca313cc2f7575c6f0dc969` |
| 2 | `theorem` | [prime_moebius_lcm_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean/declarations/prime-moebius-lcm-identity--54c172ec8bcccb4b6e79984f.md) | 26 | `result-track:54c172ec8bcccb4b6e79984fa68a295d52c603d130173ec2fcb68bc160c0c770` |
| 3 | `theorem` | [prime_moebius_lcm_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean/declarations/prime-moebius-lcm-le--69aac767a31088cb1a24f934.md) | 72 | `result-track:69aac767a31088cb1a24f9341bc6d4853d57ee988bab130b0bc5475e84910bc9` |
| 4 | `theorem` | [prime_moebius_lcm_le_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean/declarations/prime-moebius-lcm-le-card--938b88105340f73cb3037e8a.md) | 108 | `result-track:938b88105340f73cb3037e8ab207125ebe239f9b55967fe3e928a467c94acdea` |
| 5 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean/declarations/example--f5383623e0e61f4f7cbe9cff.md) | 128 | `declaration-track:f5383623e0e61f4f7cbe9cffe4c5ac344cb582d79a42b71598662de23d604fe4` |
| 6 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean/declarations/example--a6478e2b631bc24a6411fe30.md) | 136 | `declaration-track:a6478e2b631bc24a6411fe3081d1d52a4e247abc0a0882df6c3a276d05a1fc89` |
| 7 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant06b21a48fe75e412ffb418959b23331f1cfed79f60cf35b38d5dfeefb8761b97.lean/declarations/example--3ce457dd0abf4386a4ddaeeb.md) | 144 | `declaration-track:3ce457dd0abf4386a4ddaeebe0e2ceb514354f23570b062bd9e0271c2ad561b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
