# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteGram.Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb3a1b65b7d4979f44ecac40ab95c90c4b2fb8ed",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb3a1b65b7d4979f44ecac40ab95c90c4b2fb8ed`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteGram/Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Kernel.Core` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Rhetorical.Kernel.Regularization` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteGram](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299.lean/declarations/finitegram--b718d114b9904f0d75d6cb28.md) | 25 | `declaration-track:b718d114b9904f0d75d6cb28ecf715699a221a6f794bef49d5e84364ece01b9b` |
| 2 | `theorem` | [finiteGram_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299.lean/declarations/finitegram-apply--8530ec27babae639f29f9517.md) | 33 | `result-track:8530ec27babae639f29f9517f6d49b0a71abcea7bf535b3241e8ee22d2669e27` |
| 3 | `theorem` | [finiteGram_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299.lean/declarations/finitegram-hermitian--727e25c894bba5d3f6eef2e1.md) | 43 | `result-track:727e25c894bba5d3f6eef2e13505729fc1d624ea696a94584109ae07356f928b` |
| 4 | `theorem` | [finiteGram_psd](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299.lean/declarations/finitegram-psd--7da6a4f3e9808a8fed73e6c1.md) | 52 | `result-track:7da6a4f3e9808a8fed73e6c1440e550477417fce5b8c35015e9d917551b849b1` |
| 5 | `structure` | [GramFactorCertificate](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299.lean/declarations/gramfactorcertificate--c1b1b2529045baef6f096792.md) | 63 | `declaration-track:c1b1b2529045baef6f09679240ac3eee1cc496bdae4e977f68199f1fbb62cda2` |
| 6 | `theorem` | [column_inner_eq_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299.lean/declarations/column-inner-eq-kernel--0110d1c4b9b4727d7b05aa90.md) | 84 | `result-track:0110d1c4b9b4727d7b05aa90eddb525fc1f354beea1c1208a0433b6667537f74` |
| 7 | `theorem` | [finiteGram_regularized_posDef](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299.lean/declarations/finitegram-regularized-posdef--751b2785b7eaae255d5403f7.md) | 96 | `result-track:751b2785b7eaae255d5403f7ce12977373a468f471c0d6cf4f412e5449632844` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
