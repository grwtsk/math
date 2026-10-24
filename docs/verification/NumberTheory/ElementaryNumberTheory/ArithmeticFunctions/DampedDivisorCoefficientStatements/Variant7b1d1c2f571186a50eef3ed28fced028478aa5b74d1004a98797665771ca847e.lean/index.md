# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DampedDivisorCoefficientStatements.Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5e62b161a4abc1c878794a3bddbbc1895c30b63",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5e62b161a4abc1c878794a3bddbbc1895c30b63`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/dampeddivisorcoefficient--2f8b98c4f5ed018288d8088a.md) | 12 | `declaration-track:2f8b98c4f5ed018288d8088a5c423e814240a00a3babeb593a8812b36465cc06` |
| 2 | `def` | [damping](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/damping--ac49b71f5cd233bdbe783e64.md) | 15 | `declaration-track:ac49b71f5cd233bdbe783e648f509cddca5a5d84603a2fd04afe6c83f36b4417` |
| 3 | `theorem` | [damping_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/damping-multiplicative--591a0dedc16ba8afccfefe46.md) | 18 | `result-track:591a0dedc16ba8afccfefe46e855d63c1c4d763eff4638df12fa804f54901050` |
| 4 | `def` | [divisorFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/divisorfunction--4b582b636afb78c110cd52aa.md) | 29 | `declaration-track:4b582b636afb78c110cd52aab3af083fde91446c9b94d6255bb3d3ab45c696c2` |
| 5 | `theorem` | [divisorFunction_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/divisorfunction-apply--9f62f7e7e2a9fbc4c30446fd.md) | 32 | `result-track:9f62f7e7e2a9fbc4c30446fd37fc5c4a030b74543a68660456926b9d16db981a` |
| 6 | `theorem` | [divisorFunction_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/divisorfunction-multiplicative--d4361171179a5429ff003337.md) | 42 | `result-track:d4361171179a5429ff003337b03f9c7e8f4d17be2448cfe772af3ed3707b0f86` |
| 7 | `theorem` | [divisorFunction_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/divisorfunction-prime-pow--e222ad3d68f8b59a73480920.md) | 46 | `result-track:e222ad3d68f8b59a734809204f7c4ab5d21c015c1b7d8bc40529d37cb7a7382f` |
| 8 | `theorem` | [dampedDivisorCoefficient_eq_primeFactors_prod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/dampeddivisorcoefficient-eq-primefactors-prod--85b3ecf0d84e194e41ae698c.md) | 64 | `result-track:85b3ecf0d84e194e41ae698cfafa775b182bcd276af9e7711d3ead4db0ef6782` |
| 9 | `theorem` | [dampedDivisorCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/dampeddivisorcoefficient-nonneg--b5d68412bab385e07bc255db.md) | 78 | `result-track:b5d68412bab385e07bc255dbc496ebe30309b742ad5b0bad68b64071ed5d09e0` |
| 10 | `theorem` | [dampedDivisorCoefficient_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/dampeddivisorcoefficient-le-one--3514158beeaf9c9539616a8e.md) | 90 | `result-track:3514158beeaf9c9539616a8eb953725424689a798492f2762b2a2e88af6cf9f5` |
| 11 | `theorem` | [dampedDivisorCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/dampeddivisorcoefficient-zero--61cf91f95137f7c7c118aadd.md) | 102 | `result-track:61cf91f95137f7c7c118aadd4e67627229d74766da7abcdffe254c230efbb0fb` |
| 12 | `theorem` | [dampedDivisorCoefficient_zero_ne_zero_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/dampeddivisorcoefficient-zero-ne-zero-iff--af8e674cc72e53e83498518f.md) | 112 | `result-track:af8e674cc72e53e83498518fb376623056e1fbbd994af1852ca85b8d2605ff40` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/example--75150209a3831390ed081e9e.md) | 121 | `declaration-track:75150209a3831390ed081e9e3cf02426a6c243868e340b6b5e15f67cf202fb26` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/example--69ca67341bbe7274b78ba746.md) | 123 | `declaration-track:69ca67341bbe7274b78ba7469a10e64991c1b62363067c207e24afd1c30c3212` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/example--2455574e0c367efa3dc1d199.md) | 126 | `declaration-track:2455574e0c367efa3dc1d199dddbac97335f7e5decfb1012a9f1a507ea005c83` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/example--7fb8b4caa66ee3414160b320.md) | 128 | `declaration-track:7fb8b4caa66ee3414160b32090489b298de97194f9e41691c0891faf026042d0` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/example--7a450cde6f2095a11a684ef9.md) | 130 | `declaration-track:7a450cde6f2095a11a684ef918d05d67fdd03ad54a76f289541dbe405b34d559` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/declarations/example--513322b0d0c6d1904d501211.md) | 133 | `declaration-track:513322b0d0c6d1904d501211ac63732578d3223e896089003d8afb5089f9f4be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
