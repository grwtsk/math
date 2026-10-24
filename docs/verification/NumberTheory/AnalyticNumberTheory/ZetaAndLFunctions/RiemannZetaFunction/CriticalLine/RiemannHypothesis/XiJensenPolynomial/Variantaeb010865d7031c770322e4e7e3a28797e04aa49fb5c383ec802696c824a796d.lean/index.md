# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiJensenPolynomial.Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d398c016103f22707657279412fec4833343583e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d398c016103f22707657279412fec4833343583e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiJensenReconstruction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jensenPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/jensenpolynomial--486d4d5b77b296a74e98bf86.md) | 24 | `declaration-track:486d4d5b77b296a74e98bf860880ded4f4beac9a4121f14bc781962a487fb7bb` |
| 2 | `theorem` | [jensenPolynomial_coeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/jensenpolynomial-coeff--59e5fb97674e0c6530fb8c79.md) | 29 | `result-track:59e5fb97674e0c6530fb8c7939cdeed8a9aa30b177b6f57d9b89ee5c5d1b9490` |
| 3 | `theorem` | [jensenPolynomial_coeff_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/jensenpolynomial-coeff-zero--e94e6ffe65ffdd1c9fdf3da2.md) | 38 | `result-track:e94e6ffe65ffdd1c9fdf3da2772d73779d080ebe266002a59a19dee6e732aa23` |
| 4 | `def` | [leadingScalar](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/leadingscalar--7e249ce50ef2c2168179852e.md) | 43 | `declaration-track:7e249ce50ef2c2168179852e0cf2808cb522817359c3741fc85ee799a05e887a` |
| 5 | `theorem` | [leadingScalar_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/leadingscalar-eq--405411e004b8680d981a9958.md) | 47 | `result-track:405411e004b8680d981a995854297bada4a7a0acd4febb31c74fd2d5fcf68da2` |
| 6 | `theorem` | [leadingScalar_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/leadingscalar-ne-zero--ef380dfd6972ec7396438a71.md) | 54 | `result-track:ef380dfd6972ec7396438a71b00693ab9dea18514f665dbab8e847b72680a4d1` |
| 7 | `theorem` | [jensenPolynomial_natDegree](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/jensenpolynomial-natdegree--68591e8ba793d50ec13f053c.md) | 61 | `result-track:68591e8ba793d50ec13f053c6d919489e253b18ce14d5d69a54cd6889f2d0aa3` |
| 8 | `theorem` | [jensenPolynomial_leadingCoeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/jensenpolynomial-leadingcoeff--c04beb0d377072e1bc99c08f.md) | 73 | `result-track:c04beb0d377072e1bc99c08f5996eb8ef12c2d56fa49ffd9e0da33fdbf36acf7` |
| 9 | `def` | [monicPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/monicpolynomial--39b24cdabff1d6df77945dee.md) | 79 | `declaration-track:39b24cdabff1d6df77945dee2268b8ccf1f3531cabc614a21d1e6714a53d10c6` |
| 10 | `theorem` | [monicPolynomial_monic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/monicpolynomial-monic--5d9261caaad5c60dea30fb53.md) | 82 | `result-track:5d9261caaad5c60dea30fb53c5136b1a322fb6272bf99d8c0dab2a67b01e02b7` |
| 11 | `theorem` | [monicPolynomial_natDegree](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/monicpolynomial-natdegree--2a8dc68d2ff0f6c0b986e44a.md) | 87 | `result-track:2a8dc68d2ff0f6c0b986e44aa461ad812ecd4f328e231ed6ee20d096014aeb55` |
| 12 | `theorem` | [leadingScalar_mul_monicPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/leadingscalar-mul-monicpolynomial--0477b18de21bc5e1dfe515a8.md) | 93 | `result-track:0477b18de21bc5e1dfe515a8c8568a858d7a3ba9cd3324fa356fee3932e390ff` |
| 13 | `theorem` | [jensenPolynomial_eval₂_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/jensenpolynomial-eval-sum--260acb594bb9ef781405f477.md) | 99 | `result-track:260acb594bb9ef781405f47749cdc3e01562bfc0e6aad464d0ca2201435d075b` |
| 14 | `theorem` | [jensenPolynomial_eval₂](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/jensenpolynomial-eval--88b08e8887a828db88454172.md) | 114 | `result-track:88b08e8887a828db884541729cd4079874f7af14e70062081c86e9e61bb35381` |
| 15 | `theorem` | [leadingScalar_mul_monicPolynomial_eval₂](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/leadingscalar-mul-monicpolynomial-eval--20fe4f756f472fb4de1a52c3.md) | 120 | `result-track:20fe4f756f472fb4de1a52c3c28409c694dc3874d27733e55a6794a28a0a32b1` |
| 16 | `theorem` | [monicPolynomial_eval₂_zero_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variantaeb010865d7031c770322e4e7e3a28797e04aa49fb5c383ec802696c824a796d.lean/declarations/monicpolynomial-eval-zero-iff--48a07a337ac15485216b1272.md) | 128 | `result-track:48a07a337ac15485216b12723854ceb8e45661c83554814fb673b4d7256c00a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
