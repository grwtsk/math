# Verification target: GRWTSK.Algebra.LinearAlgebra.Spectrum.Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05b6d02e7acf0b421936fa8eb49429cc88d03c8c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05b6d02e7acf0b421936fa8eb49429cc88d03c8c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Minpoly` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Sort` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [invariant_orthogonalComplement_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/invariant-orthogonalcomplement-eigenspace--d0aad9e1b008a6069ff2f791.md) | 82 | `result-track:d0aad9e1b008a6069ff2f791f0e501ac2cbe0f3a3d11a4a7e27e44f046fd321d` |
| 2 | `theorem` | [conj_eigenvalue_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/conj-eigenvalue-eq-self--7f864660ef39a4678982e59b.md) | 89 | `result-track:7f864660ef39a4678982e59b1e6aa80d51f11175c1d7b582fe48b344bdf1d71d` |
| 3 | `theorem` | [orthogonalFamily_eigenspaces](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/orthogonalfamily-eigenspaces--d95415318e5d12a4d3df34c9.md) | 96 | `result-track:d95415318e5d12a4d3df34c959a6c3e3379343a10af2e391eda7978da99dfbe4` |
| 4 | `theorem` | [orthogonalFamily_eigenspaces'](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/orthogonalfamily-eigenspaces--e3fda5afa13b83c8666b3e01.md) | 106 | `result-track:e3fda5afa13b83c8666b3e011fa4d5e8620d0fcede4ab9e7b66870605d2fec76` |
| 5 | `theorem` | [orthogonalComplement_iSup_eigenspaces_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/orthogonalcomplement-isup-eigenspaces-invariant--d30f926e684fde77cf76156d.md) | 113 | `result-track:d30f926e684fde77cf76156de4926abd12b2dfef6f8ffae66191c9f917425f43` |
| 6 | `theorem` | [orthogonalComplement_iSup_eigenspaces](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/orthogonalcomplement-isup-eigenspaces--c4b3b798bcedbc358a49cef0.md) | 120 | `result-track:c4b3b798bcedbc358a49cef099797c7eb9eda3e61a149f7b8df91e26c99e3c42` |
| 7 | `theorem` | [orthogonalComplement_iSup_eigenspaces_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/orthogonalcomplement-isup-eigenspaces-eq-bot--f0ee263a4a043578e9198f23.md) | 133 | `result-track:f0ee263a4a043578e9198f237e29e63fd70449bebbe0a1043a067fa6ca7e4c79` |
| 8 | `theorem` | [orthogonalComplement_iSup_eigenspaces_eq_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/orthogonalcomplement-isup-eigenspaces-eq-bot--a50d50a64871c1d8e85d9c36.md) | 142 | `result-track:a50d50a64871c1d8e85d9c363b337eebee3512bf510c22b3b7e24bacdef103b4` |
| 9 | `instance` | [directSumDecomposition](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/directsumdecomposition--5bad58054cac5549d337964f.md) | 151 | `declaration-track:5bad58054cac5549d337964febd6eda0d15f369797ebb6bb3a12f6bffb321a3d` |
| 10 | `theorem` | [directSum_decompose_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/directsum-decompose-apply--7c0b903a78719f31476d783d.md) | 157 | `result-track:7c0b903a78719f31476d783d92ae176fbaaff7f8f69fcc8d51760cbb79a52b8b` |
| 11 | `theorem` | [direct_sum_isInternal](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/direct-sum-isinternal--dc32cb66ad8d7dc92f50ec70.md) | 164 | `result-track:dc32cb66ad8d7dc92f50ec706ab500015296783163b7bc0f11ff6bbd7259ebb3` |
| 12 | `def` | [diagonalization](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/diagonalization--de7e44e7799052fe2d0c7c47.md) | 173 | `declaration-track:de7e44e7799052fe2d0c7c4774c38f943cb3eada1b281b7d58a9a05f3f811171` |
| 13 | `theorem` | [diagonalization_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/diagonalization-symm-apply--9f20534ff2cf3020312f5c8c.md) | 178 | `result-track:9f20534ff2cf3020312f5c8c121a099243a1b43a875ca56b83222faef6057c5b` |
| 14 | `theorem` | [diagonalization_apply_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/diagonalization-apply-self-apply--df61b93b0d4f6cbb48f855b9.md) | 187 | `result-track:df61b93b0d4f6cbb48f855b9bb3063e98beec3ce44d4d51cf443c998bad61649` |
| 15 | `def` | [unsortedEigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/unsortedeigenvalues--057d7cbdcd5fb455271ef361.md) | 206 | `declaration-track:057d7cbdcd5fb455271ef36144088daf554336c00a3d2fb36ec7883f04ba9938` |
| 16 | `def` | [unsortedEigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/unsortedeigenvectorbasis--b3ce8c34b6017de4c4cd612f.md) | 211 | `declaration-track:b3ce8c34b6017de4c4cd612f1c8a1ca9e269b2e1427ba324733ff6a98ed3ca46` |
| 17 | `theorem` | [hasEigenvector_eigenvectorBasis_helper](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/haseigenvector-eigenvectorbasis-helper--2b3f0177a17632e401a70b23.md) | 215 | `result-track:2b3f0177a17632e401a70b23787278a4ac0982f4f1f60560d8a9b375ba8f456b` |
| 18 | `theorem` | [hasEigenvector_eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/haseigenvector-eigenvectorbasis--28e002207ca599b9d374fd46.md) | 252 | `result-track:28e002207ca599b9d374fd46b1e3c68f8cc6942ce5f55a4b70cd567ec8412c1e` |
| 19 | `theorem` | [eigenvalues_antitone](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/eigenvalues-antitone--ad3c210e7d7796cfdabe9792.md) | 258 | `result-track:ad3c210e7d7796cfdabe97928d06b7bb317fee1414f0ad70ab404a15d6fd9275` |
| 20 | `theorem` | [hasEigenvalue_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/haseigenvalue-eigenvalues--2c842862ec6fce234c396615.md) | 266 | `result-track:2c842862ec6fce234c396615e72ecca2fa565848c015499261bd2e61c8979462` |
| 21 | `theorem` | [apply_eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/apply-eigenvectorbasis--4c31512c0dd5e7fdefd8754f.md) | 271 | `result-track:4c31512c0dd5e7fdefd8754fcc0e71229b0efe1d791b9778d77a4d955c623dce` |
| 22 | `theorem` | [eigenvectorBasis_apply_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/eigenvectorbasis-apply-self-apply--def69f909761b9b142126fe0.md) | 278 | `result-track:def69f909761b9b142126fe01ac04d9409bc75d8b1cb63299b01a5383bfb3c5b` |
| 23 | `theorem` | [inner_product_apply_eigenvector](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/inner-product-apply-eigenvector--c8c926d48f1c29ad5b0d9862.md) | 304 | `result-track:c8c926d48f1c29ad5b0d98623d7113d2ea3fbaa4fa6e5353665eb6988daefc40` |
| 24 | `theorem` | [eigenvalue_nonneg_of_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/eigenvalue-nonneg-of-nonneg--f50a74ea090d4354be8ebb36.md) | 308 | `result-track:f50a74ea090d4354be8ebb368f7e0a398d515ed4381f76c0b1f6c03df6a0abf5` |
| 25 | `theorem` | [eigenvalue_pos_of_pos](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/declarations/eigenvalue-pos-of-pos--948c26e7e31ed6182e528592.md) | 316 | `result-track:948c26e7e31ed6182e5285924364f885d5bae50a16c4a1b453db073bdbe54e3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
