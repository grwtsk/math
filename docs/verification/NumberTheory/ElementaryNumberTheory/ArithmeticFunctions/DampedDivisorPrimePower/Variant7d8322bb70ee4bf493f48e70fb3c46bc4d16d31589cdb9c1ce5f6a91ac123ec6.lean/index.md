# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DampedDivisorPrimePower.Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f437d28b10e4f6afece0ddace38a3e798837aec",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f437d28b10e4f6afece0ddace38a3e798837aec`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/dampeddivisorcoefficient--4ce9b270b62d6724d12ebc04.md) | 13 | `declaration-track:4ce9b270b62d6724d12ebc041c56811a6dc4d0046e8443e58ac124ff5b9b0a65` |
| 2 | `def` | [damping](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/damping--bd5e848c2a730c74ab9f9cbd.md) | 16 | `declaration-track:bd5e848c2a730c74ab9f9cbd25a6874900ed4bec5a3d978329d38d94f6861859` |
| 3 | `theorem` | [damping_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/damping-multiplicative--6843d64a2d751c8d22eaf304.md) | 19 | `result-track:6843d64a2d751c8d22eaf304f535e5b18c1446ff3380cb41b0a86bc5148d7ff7` |
| 4 | `def` | [divisorFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/divisorfunction--05562e1e04d00e6190c19933.md) | 30 | `declaration-track:05562e1e04d00e6190c19933dc64b587ba47d939b4ea588907baa28645357b0e` |
| 5 | `theorem` | [divisorFunction_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/divisorfunction-apply--7f75ca1eb5aeec3e7ef07c08.md) | 33 | `result-track:7f75ca1eb5aeec3e7ef07c0892415c1f10b87e765ff2ef46a12a044ad5abe58c` |
| 6 | `theorem` | [divisorFunction_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/divisorfunction-multiplicative--72a9ed2fe1cfcfdcfb7bbd0b.md) | 43 | `result-track:72a9ed2fe1cfcfdcfb7bbd0bca40f630bb4b92e39e1774e3202ad345f69a8f5e` |
| 7 | `theorem` | [divisorFunction_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/divisorfunction-prime-pow--ef6de0d52ee3280f8fd951a0.md) | 47 | `result-track:ef6de0d52ee3280f8fd951a05780e8e6c9a0194cc627a8d1f1d87ef51b3ed61a` |
| 8 | `theorem` | [dampedDivisorCoefficient_eq_primeFactors_prod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/dampeddivisorcoefficient-eq-primefactors-prod--cfb6a48da2658733421baf64.md) | 65 | `result-track:cfb6a48da2658733421baf64ddd85dc461ae85e539560d7c41bce919b42a09e8` |
| 9 | `theorem` | [dampedDivisorCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/dampeddivisorcoefficient-nonneg--a722265e7521e47584a6b41d.md) | 79 | `result-track:a722265e7521e47584a6b41db3cdc518621214e2d1b90fa83f3bd1bc6678e225` |
| 10 | `theorem` | [dampedDivisorCoefficient_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/dampeddivisorcoefficient-le-one--4bc791750a372781bf75e3e6.md) | 91 | `result-track:4bc791750a372781bf75e3e6db7c998171787aa64880021a99e0a30170cac29f` |
| 11 | `theorem` | [dampedDivisorCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/dampeddivisorcoefficient-zero--6a8dc8dd26c2966cee201149.md) | 103 | `result-track:6a8dc8dd26c2966cee20114923606e535f24992f781012237276ff2f6a012120` |
| 12 | `theorem` | [dampedDivisorCoefficient_zero_ne_zero_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/dampeddivisorcoefficient-zero-ne-zero-iff--46007e3746693dd3e2454d7b.md) | 113 | `result-track:46007e3746693dd3e2454d7baa6c7e06a7d62f8333b3d352fb05eaf3f04b9cb0` |
| 13 | `theorem` | [dampedDivisorCoefficient_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/dampeddivisorcoefficient-prime-pow--3586fae19d2274ca9ff07850.md) | 129 | `result-track:3586fae19d2274ca9ff078505c39fdb81618a2c243cd760ca27b3e3bb7eb52f8` |
| 14 | `theorem` | [dampedDivisorCoefficient_le_sq_of_not_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/declarations/dampeddivisorcoefficient-le-sq-of-not-prime-pow--c03385062ff303c84bc471b5.md) | 136 | `result-track:c03385062ff303c84bc471b52e3c96ac48e757c340c22f6fa78973e138b3befe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
