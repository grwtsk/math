# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DampedDivisorPrimePower.Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3af00287fbfc5483d68a6e1f6c28b4ef410eea8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3af00287fbfc5483d68a6e1f6c28b4ef410eea8`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean.json)

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
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/dampeddivisorcoefficient--bcb8478bfb828312e84512b9.md) | 21 | `declaration-track:bcb8478bfb828312e84512b9f5de05abfc99e9bb8b8c8b27e47b557e9a5ca617` |
| 2 | `def` | [damping](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/damping--bd918e4d8703648b0bf66827.md) | 24 | `declaration-track:bd918e4d8703648b0bf66827b8c558e05977a57bc06d1598cfbca44987eafb6c` |
| 3 | `theorem` | [damping_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/damping-multiplicative--09669e99ed688211e1b9f14b.md) | 27 | `result-track:09669e99ed688211e1b9f14b484140b7d195fe542a320c52cc5e1e5d66c20195` |
| 4 | `def` | [divisorFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/divisorfunction--ef4ce4bd71fe8b4b894c74f1.md) | 38 | `declaration-track:ef4ce4bd71fe8b4b894c74f1d75a147474840b22a1212dc4aeca2e696d0dc5c7` |
| 5 | `theorem` | [divisorFunction_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/divisorfunction-apply--e6f0533cafdfdde3564d3dbd.md) | 41 | `result-track:e6f0533cafdfdde3564d3dbd949703bc2385ab3a38cd936012960fb8f4819ea2` |
| 6 | `theorem` | [divisorFunction_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/divisorfunction-multiplicative--b0b53cf5280bbd65485d2d6e.md) | 51 | `result-track:b0b53cf5280bbd65485d2d6eefe40def893cc038c2e22d26d4acf5da1e7e1387` |
| 7 | `theorem` | [divisorFunction_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/divisorfunction-prime-pow--1c6de1860fdb86afc3d6029f.md) | 55 | `result-track:1c6de1860fdb86afc3d6029ff3631f99d2bc3b367f858ae831cc470176aff7d3` |
| 8 | `theorem` | [dampedDivisorCoefficient_eq_primeFactors_prod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/dampeddivisorcoefficient-eq-primefactors-prod--9da5e81d49694e439738eff0.md) | 73 | `result-track:9da5e81d49694e439738eff008037e62493fdc193916ef1ddae98d9452a8de9f` |
| 9 | `theorem` | [dampedDivisorCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/dampeddivisorcoefficient-nonneg--25458e969013efd067a2a937.md) | 87 | `result-track:25458e969013efd067a2a93790a94e6328b346ecc0effb8e0502b87725c45043` |
| 10 | `theorem` | [dampedDivisorCoefficient_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/dampeddivisorcoefficient-le-one--b2b557d790db9ff10511ccb4.md) | 99 | `result-track:b2b557d790db9ff10511ccb40363aba8da92d32bca35ffdd1ce5d8467a008c51` |
| 11 | `theorem` | [dampedDivisorCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/dampeddivisorcoefficient-zero--dced9dfd83f7c1ec09943a9b.md) | 111 | `result-track:dced9dfd83f7c1ec09943a9b2efc1dbaed54e54a74cc5c180d1914266bbf30c7` |
| 12 | `theorem` | [dampedDivisorCoefficient_zero_ne_zero_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/dampeddivisorcoefficient-zero-ne-zero-iff--0306978d886cb653d3e6932e.md) | 121 | `result-track:0306978d886cb653d3e6932ee85c90fdf1e79d40a34af4ae24918edbfd13a3a9` |
| 13 | `theorem` | [dampedDivisorCoefficient_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/dampeddivisorcoefficient-prime-pow--3759520187c7dfa67f79702e.md) | 137 | `result-track:3759520187c7dfa67f79702eeaad6eaa25dc51de3e004f299900cc95b65f7661` |
| 14 | `theorem` | [dampedDivisorCoefficient_le_sq_of_not_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/declarations/dampeddivisorcoefficient-le-sq-of-not-prime-pow--d51be19755f1cdaa92ce8eb0.md) | 144 | `result-track:d51be19755f1cdaa92ce8eb06c2afe61fc68465884ad9e2a51511f5fe50fa2a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
