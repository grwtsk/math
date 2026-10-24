# Verification target: GRWTSK.Algebra.LinearAlgebra.Spectrum.Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c82b28ea10f6dff4c1d0bf6279278d442b66b01",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c82b28ea10f6dff4c1d0bf6279278d442b66b01`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Minpoly` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [invariant_orthogonalComplement_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/invariant-orthogonalcomplement-eigenspace--c2bc4acd9bada2fc1addc718.md) | 77 | `result-track:c2bc4acd9bada2fc1addc718ad993071030b0afc252377c9c1b73cd7d1e30638` |
| 2 | `theorem` | [conj_eigenvalue_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/conj-eigenvalue-eq-self--c2a3925d9f52f2019892bc4e.md) | 85 | `result-track:c2a3925d9f52f2019892bc4e0db17a7cc082b668f588fa6d9fa12ef61e08ad42` |
| 3 | `theorem` | [orthogonalFamily_eigenspaces](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/orthogonalfamily-eigenspaces--6ac50f1eb3c6ca3ea10dacce.md) | 92 | `result-track:6ac50f1eb3c6ca3ea10dacceeb2705ab72d2f9c1994dae63e5cde193bd0f9693` |
| 4 | `theorem` | [orthogonalFamily_eigenspaces'](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/orthogonalfamily-eigenspaces--cd68f6d4d257ccdbc76e5446.md) | 103 | `result-track:cd68f6d4d257ccdbc76e54465e3987d747fcfc93a86705369011710840723f40` |
| 5 | `theorem` | [orthogonalComplement_iSup_eigenspaces_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/orthogonalcomplement-isup-eigenspaces-invariant--b0131d3b83450dbc34f2fbde.md) | 111 | `result-track:b0131d3b83450dbc34f2fbde2ca60bc6a4c2410846cd2c2c7748b8228e3bdf44` |
| 6 | `theorem` | [orthogonalComplement_iSup_eigenspaces](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/orthogonalcomplement-isup-eigenspaces--c5cda91aa933e1bb738a0a6c.md) | 119 | `result-track:c5cda91aa933e1bb738a0a6c6fc473bcdbfbf70ff9a526944c5df8b128a24dd6` |
| 7 | `theorem` | [orthogonalComplement_iSup_eigenspaces_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/orthogonalcomplement-isup-eigenspaces-eq-bot--7ace222cf9d321f77fbede4d.md) | 134 | `result-track:7ace222cf9d321f77fbede4d669439b012f1dfde165f84169e67f5cac18e058b` |
| 8 | `theorem` | [orthogonalComplement_iSup_eigenspaces_eq_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/orthogonalcomplement-isup-eigenspaces-eq-bot--ff166decb3c9890bfc3aa7b6.md) | 143 | `result-track:ff166decb3c9890bfc3aa7b6bd0a721ba993430ce4a875cfd58d10ebab3efb26` |
| 9 | `instance` | [directSumDecomposition](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/directsumdecomposition--aebf208062b24b0b4d2dfa63.md) | 155 | `declaration-track:aebf208062b24b0b4d2dfa63a1af82d22cbfbcc472e5a5d56735d38987673c48` |
| 10 | `theorem` | [directSum_decompose_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/directsum-decompose-apply--09aeb2b5c62a1db50b533e9f.md) | 162 | `result-track:09aeb2b5c62a1db50b533e9f3398986693cad0a35e356d5c3bf645a4e10cdab3` |
| 11 | `theorem` | [direct_sum_isInternal](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/direct-sum-isinternal--680e8de3fd65881cbbe84ebe.md) | 170 | `result-track:680e8de3fd65881cbbe84ebe541fa98dc210269259cf165fb5ecf90e3898a5e8` |
| 12 | `def` | [diagonalization](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/diagonalization--6d8766780e67ac2b6f7d7ff9.md) | 179 | `declaration-track:6d8766780e67ac2b6f7d7ff9c61a509925c7e62bd566ba8ba3ded1596f0365af` |
| 13 | `theorem` | [diagonalization_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/diagonalization-symm-apply--65cd57c3aa6ff8a2525f7878.md) | 184 | `result-track:65cd57c3aa6ff8a2525f787882299de141d7b945f02b0933beeb288f88d7408a` |
| 14 | `theorem` | [diagonalization_apply_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/diagonalization-apply-self-apply--550e3bd329e3538c0397bd7a.md) | 193 | `result-track:550e3bd329e3538c0397bd7acec43133fd867fcef5c2d6d02421b47f61a06f82` |
| 15 | `theorem` | [hasEigenvector_eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/haseigenvector-eigenvectorbasis--4089bbb7b3810563566b7596.md) | 229 | `result-track:4089bbb7b3810563566b7596cf94f59923b3024ce1ec94b7031b12a47c9b4d82` |
| 16 | `theorem` | [hasEigenvalue_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/haseigenvalue-eigenvalues--93ec86c84c27d914c23d99a0.md) | 251 | `result-track:93ec86c84c27d914c23d99a018980c3e4a9f9f61bc36e31090cad31aab233ee9` |
| 17 | `theorem` | [apply_eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/apply-eigenvectorbasis--c300d2899e4fee454362e228.md) | 256 | `result-track:c300d2899e4fee454362e228f9406a6aeb9b22f087349003b6f5118c2de9a416` |
| 18 | `theorem` | [eigenvectorBasis_apply_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/eigenvectorbasis-apply-self-apply--30e4fbcc32489075574789aa.md) | 264 | `result-track:30e4fbcc32489075574789aaeace445dbd8e491f5b442afd825bc6f690310ae9` |
| 19 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/macro-rules--b50cb0c07553441513a2f881.md) | 290 | `declaration-track:b50cb0c07553441513a2f881cc6c9bb47f3f249e514fe424b4e3225968334244` |
| 20 | `theorem` | [inner_product_apply_eigenvector](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/inner-product-apply-eigenvector--3cda7376f51cf8f204745bb6.md) | 293 | `result-track:3cda7376f51cf8f204745bb6c6a393f916e2eb5969ddbbbff49ced94d4155ef0` |
| 21 | `theorem` | [eigenvalue_nonneg_of_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/eigenvalue-nonneg-of-nonneg--3b311650fa74dd1970a2d71c.md) | 298 | `result-track:3b311650fa74dd1970a2d71c2c33a2d38089cc41cbe1927bac853fadd8b95634` |
| 22 | `theorem` | [eigenvalue_pos_of_pos](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant87ffb19e08f863ef264fab5891fe84f60d94d67f479b5f921ec84f730ca9b323.lean/declarations/eigenvalue-pos-of-pos--006759d926d10add3020f029.md) | 310 | `result-track:006759d926d10add3020f0292581ad5ef997f916bdca591312340d96d560c77c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
