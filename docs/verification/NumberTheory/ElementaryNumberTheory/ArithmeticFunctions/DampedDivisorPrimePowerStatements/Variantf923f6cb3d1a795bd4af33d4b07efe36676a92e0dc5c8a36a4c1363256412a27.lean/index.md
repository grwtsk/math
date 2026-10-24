# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DampedDivisorPrimePowerStatements.Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a342354728e842e373b89a231bc7e8f62304dab6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a342354728e842e373b89a231bc7e8f62304dab6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean.json)

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
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/dampeddivisorcoefficient--6c52cf8a835d5e3bddf9f40d.md) | 13 | `declaration-track:6c52cf8a835d5e3bddf9f40da61214c24d457d68429b4263cf8fbfa32586dd9e` |
| 2 | `def` | [damping](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/damping--4ac439fae9767cc592ef49d3.md) | 16 | `declaration-track:4ac439fae9767cc592ef49d3b9778636c28cf73aef0b7e9612e3d0c9399656f1` |
| 3 | `theorem` | [damping_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/damping-multiplicative--af7fda94e49923d732d75ea5.md) | 19 | `result-track:af7fda94e49923d732d75ea57b062ab18eb0845558fd4336e2cc9802787a8118` |
| 4 | `def` | [divisorFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/divisorfunction--d81ae768e23e6e7301958f3d.md) | 30 | `declaration-track:d81ae768e23e6e7301958f3dfa64a1d13c56ec4425f1aff479f34aed87909a02` |
| 5 | `theorem` | [divisorFunction_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/divisorfunction-apply--b3b2e123d1c22469c958bc4f.md) | 33 | `result-track:b3b2e123d1c22469c958bc4f2567dc1dbe2d2da5c1ac9d0dee297cb39f093ba1` |
| 6 | `theorem` | [divisorFunction_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/divisorfunction-multiplicative--94da1fa5a90deef78f3cfbdc.md) | 43 | `result-track:94da1fa5a90deef78f3cfbdcee3ddc25f818227b6e7daec45ddcc712e4b83fee` |
| 7 | `theorem` | [divisorFunction_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/divisorfunction-prime-pow--764bb0c5a7d538b4b695aeec.md) | 47 | `result-track:764bb0c5a7d538b4b695aeece9331e7d1e7dba5317d00afd113eaf40c64298b2` |
| 8 | `theorem` | [dampedDivisorCoefficient_eq_primeFactors_prod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/dampeddivisorcoefficient-eq-primefactors-prod--f197f6769b2eec31c8fd2500.md) | 65 | `result-track:f197f6769b2eec31c8fd25000e5e3df96e5d18779a9271cc61af73a0984e395c` |
| 9 | `theorem` | [dampedDivisorCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/dampeddivisorcoefficient-nonneg--f20a58a07cb74ec4ae043e29.md) | 79 | `result-track:f20a58a07cb74ec4ae043e293a13b7e1fb8cc3bc4587976d3612c8138f92e808` |
| 10 | `theorem` | [dampedDivisorCoefficient_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/dampeddivisorcoefficient-le-one--3e30b5734ed598ee71ad8d19.md) | 91 | `result-track:3e30b5734ed598ee71ad8d192589db9b2dd4f6b69628dfe8ab96de1b12463421` |
| 11 | `theorem` | [dampedDivisorCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/dampeddivisorcoefficient-zero--b1e86541f73206b7ba97bcba.md) | 103 | `result-track:b1e86541f73206b7ba97bcbae52caa382c919aae01ea38bec1f25ca664cf11f7` |
| 12 | `theorem` | [dampedDivisorCoefficient_zero_ne_zero_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/dampeddivisorcoefficient-zero-ne-zero-iff--034ee418d7d89b8e90f15355.md) | 113 | `result-track:034ee418d7d89b8e90f15355b4c1c1ef62b40e2ca22070b90cdb2b83e4122b5f` |
| 13 | `theorem` | [dampedDivisorCoefficient_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/dampeddivisorcoefficient-prime-pow--dfba7541b3332a4b6bb7ac0c.md) | 129 | `result-track:dfba7541b3332a4b6bb7ac0c75d3ad98b98b78c690999fbb59d6d0743a1e7fd6` |
| 14 | `theorem` | [dampedDivisorCoefficient_le_sq_of_not_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/dampeddivisorcoefficient-le-sq-of-not-prime-pow--d4e72687e6e29dbbc2c4c7d3.md) | 136 | `result-track:d4e72687e6e29dbbc2c4c7d3187ecebaabfb6556cfccc0c3b2ff024052dc7588` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/example--13e80f1a2f751f19e2098670.md) | 176 | `declaration-track:13e80f1a2f751f19e20986702b6712b957ee62a900990e15a66f5b92bce1cb7e` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variantf923f6cb3d1a795bd4af33d4b07efe36676a92e0dc5c8a36a4c1363256412a27.lean/declarations/example--fc8997f6d015b28ca2b46755.md) | 180 | `declaration-track:fc8997f6d015b28ca2b4675575d5099a30840040155026a6265f07c6f1347f93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
