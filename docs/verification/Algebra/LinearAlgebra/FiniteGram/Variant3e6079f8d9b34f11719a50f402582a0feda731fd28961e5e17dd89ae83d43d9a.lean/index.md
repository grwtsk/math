# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteGram.Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae66a23411839362150048d3817911b11c12c35e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae66a23411839362150048d3817911b11c12c35e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteGram/Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Kernel.Core` — import line 1; external provider; requires a separately pinned dependency.
- `MathDiscovery.Kernel.Regularization` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteGram](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a.lean/declarations/finitegram--e07efc6c7087f96441ceab54.md) | 23 | `declaration-track:e07efc6c7087f96441ceab5419dfb3adeed7e722933cb37b9b49eaa48295457f` |
| 2 | `theorem` | [finiteGram_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a.lean/declarations/finitegram-apply--4c2d6a803773505f285a0a0b.md) | 31 | `result-track:4c2d6a803773505f285a0a0b7701a0866e0a60b47ff8083e9f328a662c8097ce` |
| 3 | `theorem` | [finiteGram_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a.lean/declarations/finitegram-hermitian--d799df640f5b9e6c010a5fe6.md) | 41 | `result-track:d799df640f5b9e6c010a5fe623e861ac248b5b03bc2f772d5b3f684fe719516d` |
| 4 | `theorem` | [finiteGram_psd](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a.lean/declarations/finitegram-psd--33c3c18737176ed8dc483f84.md) | 50 | `result-track:33c3c18737176ed8dc483f842fa04305adce8031889d55aa4c0fab249860b0a7` |
| 5 | `structure` | [GramFactorCertificate](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a.lean/declarations/gramfactorcertificate--c6b788b3c699711db33538be.md) | 60 | `declaration-track:c6b788b3c699711db33538be04ccb1f0030b4308a714412e1a18a330a7e23761` |
| 6 | `theorem` | [column_inner_eq_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant3e6079f8d9b34f11719a50f402582a0feda731fd28961e5e17dd89ae83d43d9a.lean/declarations/column-inner-eq-kernel--341226c66fae76fd79f08d3f.md) | 80 | `result-track:341226c66fae76fd79f08d3f79bab80bfeff8eb7fe60fc07c1ad58dd17a336ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
