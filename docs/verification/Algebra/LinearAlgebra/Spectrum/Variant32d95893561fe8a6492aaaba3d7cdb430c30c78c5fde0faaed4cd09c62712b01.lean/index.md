# Verification target: GRWTSK.Algebra.LinearAlgebra.Spectrum.Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "873ac320c1f56ff01b2c54b662e2600174633cef",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `873ac320c1f56ff01b2c54b662e2600174633cef`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Minpoly` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [invariant_orthogonalComplement_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/invariant-orthogonalcomplement-eigenspace--a93eebc1ae57f67da87d5b6f.md) | 69 | `result-track:a93eebc1ae57f67da87d5b6f05a148721cac87a75718d848f18948ce5fc92d84` |
| 2 | `theorem` | [conj_eigenvalue_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/conj-eigenvalue-eq-self--7c9296850ce5940a6d723ad1.md) | 77 | `result-track:7c9296850ce5940a6d723ad1012e4d00d1020ebd9b98a01b8d31fda5dcd8c42b` |
| 3 | `theorem` | [orthogonalFamily_eigenspaces](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/orthogonalfamily-eigenspaces--f3a9b578bc12cdba60d6641e.md) | 84 | `result-track:f3a9b578bc12cdba60d6641ec2e8127877f330e5cdf59ffa79c9e7cbaf314942` |
| 4 | `theorem` | [orthogonalFamily_eigenspaces'](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/orthogonalfamily-eigenspaces--d5e151c817d1d20d40f96f44.md) | 95 | `result-track:d5e151c817d1d20d40f96f44ac6a20e4da4cd3d6189be1f48d55943e74f779f0` |
| 5 | `theorem` | [orthogonalComplement_iSup_eigenspaces_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/orthogonalcomplement-isup-eigenspaces-invariant--7cd2a5cff4c90fc1838916ff.md) | 103 | `result-track:7cd2a5cff4c90fc1838916ff1375052090187ee978d64b9edc7cd3cd66d70dec` |
| 6 | `theorem` | [orthogonalComplement_iSup_eigenspaces](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/orthogonalcomplement-isup-eigenspaces--12aa2a3df75c24dd0442ccdf.md) | 111 | `result-track:12aa2a3df75c24dd0442ccdf00a8664cb86eb25ce8ea63f7bf11924b28e3c1b9` |
| 7 | `theorem` | [orthogonalComplement_iSup_eigenspaces_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/orthogonalcomplement-isup-eigenspaces-eq-bot--3a9af170653063b0ba1ffa64.md) | 126 | `result-track:3a9af170653063b0ba1ffa64f073185e2713aa17860e3138b24c969983bf06a0` |
| 8 | `theorem` | [orthogonalComplement_iSup_eigenspaces_eq_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/orthogonalcomplement-isup-eigenspaces-eq-bot--ad5d4b931983ccd07c82a2f9.md) | 135 | `result-track:ad5d4b931983ccd07c82a2f9a00b564a8bb3c0c115936607e34d0ac47e0382a2` |
| 9 | `instance` | [directSumDecomposition](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/directsumdecomposition--1fc3cfe606274792d7aca494.md) | 147 | `declaration-track:1fc3cfe606274792d7aca494444335a28dfdfafe4c156103f660431767985b07` |
| 10 | `theorem` | [directSum_decompose_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/directsum-decompose-apply--7f5a488d084d808d746f76d3.md) | 154 | `result-track:7f5a488d084d808d746f76d3c98c86238bdb37da166a74ce75f7ab96dc6617fe` |
| 11 | `theorem` | [direct_sum_isInternal](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/direct-sum-isinternal--f5d590a68d2293cb72962870.md) | 162 | `result-track:f5d590a68d2293cb72962870f04d2a324093cecedcbffb23d4e859feb241a529` |
| 12 | `def` | [diagonalization](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/diagonalization--218cf660cea5da01e21b5322.md) | 171 | `declaration-track:218cf660cea5da01e21b53227c9d23140095321d10b4e9d1b11d3533fb988bd2` |
| 13 | `theorem` | [diagonalization_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/diagonalization-symm-apply--3fc8698328b1c05d23261ed8.md) | 176 | `result-track:3fc8698328b1c05d23261ed8a5cb1c6fe5617476fb21b3c9077d62659b831a03` |
| 14 | `theorem` | [diagonalization_apply_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/diagonalization-apply-self-apply--ff02374625b8d9a0a221b1d2.md) | 185 | `result-track:ff02374625b8d9a0a221b1d2c2112daa9c17de1124273d2330125103f8f910fd` |
| 15 | `theorem` | [hasEigenvector_eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/haseigenvector-eigenvectorbasis--eb5c798d1d9c2d9ee0fb56b3.md) | 221 | `result-track:eb5c798d1d9c2d9ee0fb56b3dfdd0121dabc265d4d7cb8fbd514dc891a659339` |
| 16 | `theorem` | [hasEigenvalue_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/haseigenvalue-eigenvalues--09fc3904767975a03a901d1f.md) | 243 | `result-track:09fc3904767975a03a901d1f88ef2c028aab4495e8fdde8b150bd206a6046c42` |
| 17 | `theorem` | [apply_eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/apply-eigenvectorbasis--90203e2bd53a807931ab15a8.md) | 248 | `result-track:90203e2bd53a807931ab15a81ac737951b5e0a245f337e82695d55e6764de79b` |
| 18 | `theorem` | [eigenvectorBasis_apply_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/eigenvectorbasis-apply-self-apply--ae882d9994c304f6aaa10470.md) | 256 | `result-track:ae882d9994c304f6aaa104709d43dff52d40ea2aea444ec8d7c6ca6bf9f1d08b` |
| 19 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/macro-rules--6df8c773a9d4322ea83d31ed.md) | 282 | `declaration-track:6df8c773a9d4322ea83d31edab99513890cc9bc3bf0d470076586a02a119339b` |
| 20 | `theorem` | [inner_product_apply_eigenvector](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/inner-product-apply-eigenvector--fb1d986a8368a0f76cd2da86.md) | 285 | `result-track:fb1d986a8368a0f76cd2da861c6ab38c5c95aefc9403b5000e186a89f0c8c365` |
| 21 | `theorem` | [eigenvalue_nonneg_of_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/eigenvalue-nonneg-of-nonneg--3dc7e1887467a4b1dd5a06ad.md) | 290 | `result-track:3dc7e1887467a4b1dd5a06ad2be171b3d6df6b1a541d5d07423df3c3f2e3e8af` |
| 22 | `theorem` | [eigenvalue_pos_of_pos](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant32d95893561fe8a6492aaaba3d7cdb430c30c78c5fde0faaed4cd09c62712b01.lean/declarations/eigenvalue-pos-of-pos--0450b8dd75dc2cfb89f3fa7c.md) | 302 | `result-track:0450b8dd75dc2cfb89f3fa7c9b3219ec8bb14804b73387fbb7a24978fa853dc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
