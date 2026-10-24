# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteCharacterGuardAttempt01.Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc1d277a021ee8217e650bf11fe71be21dc724a3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc1d277a021ee8217e650bf11fe71be21dc724a3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/declarations/coefficientmap--e6a43df195345c5a487f3d6a.md) | 14 | `declaration-track:e6a43df195345c5a487f3d6a83861281081235b34aacd45f6d3779dc2ed51b7d` |
| 2 | `theorem` | [coefficient_eq_expect](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/declarations/coefficient-eq-expect--1da7a8246e0f8ed24b21bd59.md) | 20 | `result-track:1da7a8246e0f8ed24b21bd595784b3131aa01ca28d9aacd251cac307c45dd6cd` |
| 3 | `theorem` | [trivial_coefficient_eq_mean](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/declarations/trivial-coefficient-eq-mean--c83028446b19c0d9e3610520.md) | 25 | `result-track:c83028446b19c0d9e3610520584183f631251855099c9c1541450a65864f7ca8` |
| 4 | `theorem` | [coefficient_character](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/declarations/coefficient-character--ddfc54bbd7cc7d16540333b2.md) | 30 | `result-track:ddfc54bbd7cc7d16540333b2185d99178b453fa63ba4439803e8a7fa0ab9f8eb` |
| 5 | `theorem` | [coefficient_eq_basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/declarations/coefficient-eq-basis-repr--929c54336f3bf7070aa4125f.md) | 35 | `result-track:929c54336f3bf7070aa4125f7a560e20934ded1bc52dae5e4a43764a7d2047c4` |
| 6 | `theorem` | [complete_reconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/declarations/complete-reconstruction--88bfb2e2775ac76f3492eb26.md) | 43 | `result-track:88bfb2e2775ac76f3492eb2634d3a375682350a3c955274d2bcedaf0dec3398a` |
| 7 | `def` | [incompleteReconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/declarations/incompletereconstruction--a7c55cda4b913dae156ce6f7.md) | 49 | `declaration-track:a7c55cda4b913dae156ce6f74308fd8a48b0e76a7fb22a8eccee8078b7526bd8` |
| 8 | `theorem` | [reconstruction_split](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/declarations/reconstruction-split--83af535b9d7d44388ea02b79.md) | 54 | `result-track:83af535b9d7d44388ea02b79b74b6c664b73c0b9cbefd81a1d96b31755f3b752` |
| 9 | `theorem` | [incomplete_eq_self_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/declarations/incomplete-eq-self-iff--bd2ea869ed8eeeb96b1e3c5e.md) | 62 | `result-track:bd2ea869ed8eeeb96b1e3c5e9033d5df9d346991d00c292824f0d6b0f8acc9ea` |
| 10 | `def` | [nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/declarations/nontrivialspan--a2c90d550aa6cfebd4142109.md) | 73 | `declaration-track:a2c90d550aa6cfebd4142109cf25089eb9d1e20ddbdb5ec5a2b7aaba73242753` |
| 11 | `theorem` | [nontrivialSpan_le_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/declarations/nontrivialspan-le-trivial-kernel--7a88b8ddccf36c0467a82ffd.md) | 76 | `result-track:7a88b8ddccf36c0467a82ffd085be53a301d3c778b978236d74c80866b94d4e6` |
| 12 | `theorem` | [trivial_not_mem_nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant66f2a339d858d5149217aa647e9a69cc3bf12a4522b879cb15cdc332be23210a.lean/declarations/trivial-not-mem-nontrivialspan--bbbf52f2bda63ad04bed225c.md) | 85 | `result-track:bbbf52f2bda63ad04bed225c4ad29bdd75d9ab58410e38337031e354076a222d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
