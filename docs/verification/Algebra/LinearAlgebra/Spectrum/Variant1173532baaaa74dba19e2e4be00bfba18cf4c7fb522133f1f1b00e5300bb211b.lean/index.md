# Verification target: GRWTSK.Algebra.LinearAlgebra.Spectrum.Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55bd07c555f5b5119fd18487f58083e2747588b0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55bd07c555f5b5119fd18487f58083e2747588b0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Minpoly` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Sort` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [invariant_orthogonalComplement_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/invariant-orthogonalcomplement-eigenspace--8b2b65c358d74e69d9f1fb44.md) | 74 | `result-track:8b2b65c358d74e69d9f1fb44f15aa9c36613c92763ccaf7ab123899cf9e505dd` |
| 2 | `theorem` | [conj_eigenvalue_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/conj-eigenvalue-eq-self--fb300e06425d345d1fc2e9bd.md) | 81 | `result-track:fb300e06425d345d1fc2e9bd68d1f626f3b348ce02b5d03d99f1f17ce93adc3b` |
| 3 | `theorem` | [orthogonalFamily_eigenspaces](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/orthogonalfamily-eigenspaces--7301d414e93680a58dd92513.md) | 88 | `result-track:7301d414e93680a58dd925139e4e02e500ef4996debca16f1ce7e369383b64b5` |
| 4 | `theorem` | [orthogonalFamily_eigenspaces'](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/orthogonalfamily-eigenspaces--e72d635fbe464bf8309f6764.md) | 98 | `result-track:e72d635fbe464bf8309f676477058081448df9d31bd2d44d4427268167d76d44` |
| 5 | `theorem` | [orthogonalComplement_iSup_eigenspaces_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/orthogonalcomplement-isup-eigenspaces-invariant--9944aeb73a4cd5758f04f367.md) | 105 | `result-track:9944aeb73a4cd5758f04f367dfaa1f330952e5fe87e6be364c06dd4a73b32b4e` |
| 6 | `theorem` | [orthogonalComplement_iSup_eigenspaces](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/orthogonalcomplement-isup-eigenspaces--ad94f4ce9ae77d8c12a74271.md) | 112 | `result-track:ad94f4ce9ae77d8c12a742711b36eff57a082fc11df97f594acab233c9314c4d` |
| 7 | `theorem` | [orthogonalComplement_iSup_eigenspaces_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/orthogonalcomplement-isup-eigenspaces-eq-bot--2f2c38c7c4a31ddfbbcb9b51.md) | 125 | `result-track:2f2c38c7c4a31ddfbbcb9b51346d0891022677d8534741d41ee71ece7cf8a860` |
| 8 | `theorem` | [orthogonalComplement_iSup_eigenspaces_eq_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/orthogonalcomplement-isup-eigenspaces-eq-bot--bc288316e1a6185ffb614b2f.md) | 134 | `result-track:bc288316e1a6185ffb614b2f6204641cfe1e2719f63d0ec70032349b08f00712` |
| 9 | `instance` | [directSumDecomposition](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/directsumdecomposition--9a5258f1f1c964bca8453d17.md) | 143 | `declaration-track:9a5258f1f1c964bca8453d177b00bc2fea75093ab382e0cc633d46513b280d0b` |
| 10 | `theorem` | [directSum_decompose_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/directsum-decompose-apply--b0d635993b0fec697a554357.md) | 149 | `result-track:b0d635993b0fec697a5543573ee7cb7a1c0b43f8df3d85fa50310e8a2d265c54` |
| 11 | `theorem` | [direct_sum_isInternal](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/direct-sum-isinternal--678fd73e413ec8d827e07ed5.md) | 156 | `result-track:678fd73e413ec8d827e07ed5dbc4d94553ebd5883390d6bad08f903e7d1b81d7` |
| 12 | `def` | [diagonalization](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/diagonalization--3bfa170c2af8c04dcc3a1452.md) | 165 | `declaration-track:3bfa170c2af8c04dcc3a1452d10aa273749ed139280d656f79b6297dce8d2a3f` |
| 13 | `theorem` | [diagonalization_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/diagonalization-symm-apply--948c87287376b9976318c7cf.md) | 170 | `result-track:948c87287376b9976318c7cf0b04d1319eabf10f1365142a21874add3efca98f` |
| 14 | `theorem` | [diagonalization_apply_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/diagonalization-apply-self-apply--61560f547efc119d7f1fe728.md) | 179 | `result-track:61560f547efc119d7f1fe728b9ab3d0348ebe06f4c2a8a07414d1b7c95c2382d` |
| 15 | `def` | [unsortedEigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/unsortedeigenvalues--fbca7dd8b32fd09efc3b0a44.md) | 198 | `declaration-track:fbca7dd8b32fd09efc3b0a4447fe82f87a622a8d7552f28f88646c37541db002` |
| 16 | `def` | [unsortedEigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/unsortedeigenvectorbasis--443130b526b69b66e5589e79.md) | 203 | `declaration-track:443130b526b69b66e5589e796569a692413bf9dc1389fdc0d19c571fc7ba1277` |
| 17 | `theorem` | [hasEigenvector_eigenvectorBasis_helper](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/haseigenvector-eigenvectorbasis-helper--57df90ca5192b5459d8ba425.md) | 207 | `result-track:57df90ca5192b5459d8ba4259afa6e43017400f26a8a77579e4e6a2bb416954b` |
| 18 | `theorem` | [hasEigenvector_eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/haseigenvector-eigenvectorbasis--2c85704b2a7663cf803771f0.md) | 244 | `result-track:2c85704b2a7663cf803771f04db74479b2f1563454f69fe10ba39daf69cc8dcf` |
| 19 | `theorem` | [eigenvalues_antitone](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/eigenvalues-antitone--e6c78c1b2261de5b39057265.md) | 250 | `result-track:e6c78c1b2261de5b39057265d9acf8d2d62ff296363a1fa79382e7ebb76b66b5` |
| 20 | `theorem` | [hasEigenvalue_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/haseigenvalue-eigenvalues--bfbcc07207ce977f835fc4ce.md) | 258 | `result-track:bfbcc07207ce977f835fc4ced554216b7b8f31887bea517edd6e512cdb75ff73` |
| 21 | `theorem` | [apply_eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/apply-eigenvectorbasis--602f5c42e352e69c6f4fa2d0.md) | 263 | `result-track:602f5c42e352e69c6f4fa2d0d6ba77560cff8459b9088b84231c33f548a36786` |
| 22 | `theorem` | [eigenvectorBasis_apply_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/eigenvectorbasis-apply-self-apply--84a121e1c19be916d9ecbc1c.md) | 270 | `result-track:84a121e1c19be916d9ecbc1c9d408973182199ed7a40ddc66e210c06b0dec09d` |
| 23 | `theorem` | [inner_product_apply_eigenvector](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/inner-product-apply-eigenvector--32f25234d3e6f4bd6cb0cc0d.md) | 296 | `result-track:32f25234d3e6f4bd6cb0cc0d3c4754b2cf66166f0c7ed53dee83caf6590f5499` |
| 24 | `theorem` | [eigenvalue_nonneg_of_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/eigenvalue-nonneg-of-nonneg--52cb85d00ad4e00f302aa6aa.md) | 300 | `result-track:52cb85d00ad4e00f302aa6aa8d9dd12e36183377c5fc4db4fd462558d964465f` |
| 25 | `theorem` | [eigenvalue_pos_of_pos](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/declarations/eigenvalue-pos-of-pos--d88a6c399f3b960e45644a9b.md) | 308 | `result-track:d88a6c399f3b960e45644a9ba6c1c8013c18a2b6fc817f4154ced6492e0e47fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
