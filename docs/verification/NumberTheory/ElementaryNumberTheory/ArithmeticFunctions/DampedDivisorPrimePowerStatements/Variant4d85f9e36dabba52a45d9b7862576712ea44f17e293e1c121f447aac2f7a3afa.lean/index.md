# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DampedDivisorPrimePowerStatements.Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7fb132a5d10708506d6cc15f34ae209f88cceb3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7fb132a5d10708506d6cc15f34ae209f88cceb3`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/dampeddivisorcoefficient--167ca65f0c91eea419f2ff97.md) | 21 | `declaration-track:167ca65f0c91eea419f2ff97564a5fe3e954945d350a7d00d24684d04bcf6144` |
| 2 | `def` | [damping](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/damping--eda02f35541875ab62ce5dfd.md) | 24 | `declaration-track:eda02f35541875ab62ce5dfdf9f2caccd3e089678aa38459ac0bbc8a967448d1` |
| 3 | `theorem` | [damping_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/damping-multiplicative--8fc0cf301fc4526bb4a5bb72.md) | 27 | `result-track:8fc0cf301fc4526bb4a5bb724eb4380d4b3018c05e496fd2175576763ed56959` |
| 4 | `def` | [divisorFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/divisorfunction--5f755cab68842adabff7e27f.md) | 38 | `declaration-track:5f755cab68842adabff7e27ff67ec48638f9a2d877b4d4cff6b9eb9ea28a06cc` |
| 5 | `theorem` | [divisorFunction_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/divisorfunction-apply--4b91a2118380822bd8031421.md) | 41 | `result-track:4b91a2118380822bd8031421d1856e11c1f3ed0598d71cd849a95b63584b21d0` |
| 6 | `theorem` | [divisorFunction_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/divisorfunction-multiplicative--bc89e2d1a6e0ba8e9f150a63.md) | 51 | `result-track:bc89e2d1a6e0ba8e9f150a63672b1ddb0a253c591fe60d7e8ce1b6298df219d8` |
| 7 | `theorem` | [divisorFunction_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/divisorfunction-prime-pow--f0c817fddfc9693c138c33ca.md) | 55 | `result-track:f0c817fddfc9693c138c33ca071ad4f6016f319893820a39934559f7183c0715` |
| 8 | `theorem` | [dampedDivisorCoefficient_eq_primeFactors_prod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/dampeddivisorcoefficient-eq-primefactors-prod--294f7093d0e9317b2a41c287.md) | 73 | `result-track:294f7093d0e9317b2a41c287f4f7062aabcba95dadb630b5e69e7806c52553ba` |
| 9 | `theorem` | [dampedDivisorCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/dampeddivisorcoefficient-nonneg--eefd752564af3a9b1e387375.md) | 87 | `result-track:eefd752564af3a9b1e3873753fd4aaac88a6a090a7c12a944edf5af761ef7718` |
| 10 | `theorem` | [dampedDivisorCoefficient_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/dampeddivisorcoefficient-le-one--bcd116905e6381771cbddfe5.md) | 99 | `result-track:bcd116905e6381771cbddfe534474e8762d143b0e7e7b78d81e3ce1109f39903` |
| 11 | `theorem` | [dampedDivisorCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/dampeddivisorcoefficient-zero--65b6c80816e9ea4b8cfa7aa5.md) | 111 | `result-track:65b6c80816e9ea4b8cfa7aa514d641a5e2068d9f1ee786601f9716654b5b57c8` |
| 12 | `theorem` | [dampedDivisorCoefficient_zero_ne_zero_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/dampeddivisorcoefficient-zero-ne-zero-iff--f9ae388f5e038b92e0c85aee.md) | 121 | `result-track:f9ae388f5e038b92e0c85aeeed188d2b679fc90fb5dabdd1391b25d08441e445` |
| 13 | `theorem` | [dampedDivisorCoefficient_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/dampeddivisorcoefficient-prime-pow--94f32a4036005d403c07b0ff.md) | 137 | `result-track:94f32a4036005d403c07b0ff9e906edaa44ae665e34f83798a0506321c6fc56a` |
| 14 | `theorem` | [dampedDivisorCoefficient_le_sq_of_not_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/dampeddivisorcoefficient-le-sq-of-not-prime-pow--fc64e3e098c7d44c11be17d1.md) | 144 | `result-track:fc64e3e098c7d44c11be17d1a6605ec9f49f6b5d92bc6eecdc3c98982e33892b` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/example--aa8445ac41d40e70cd206280.md) | 184 | `declaration-track:aa8445ac41d40e70cd206280b7c1d99d3907beb189b0fc007514306d0faabf6a` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/declarations/example--877e8972790e89741606dd95.md) | 188 | `declaration-track:877e8972790e89741606dd950205924e250dd99a6798db6b390aea83714bee66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
