# Verification target: GRWTSK.Analysis.FiniteCharacterGuardAttempt02.Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2382c92751eac893163826e95f0a7488106c8c2a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2382c92751eac893163826e95f0a7488106c8c2a`.

Source path: `GRWTSK/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMap](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/declarations/coefficientmap--77c7864786fdee0313276b8f.md) | 22 | `declaration-track:77c7864786fdee0313276b8f9ca7079aee70a69af7022516b8a02b6e2747b536` |
| 2 | `theorem` | [coefficient_eq_expect](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/declarations/coefficient-eq-expect--62c717c522366fb00b9c824b.md) | 28 | `result-track:62c717c522366fb00b9c824b0951a2a940ad203cbc4829b8280959a7336537a8` |
| 3 | `theorem` | [trivial_coefficient_eq_mean](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/declarations/trivial-coefficient-eq-mean--cf24b1836bf0ceed5baeb992.md) | 33 | `result-track:cf24b1836bf0ceed5baeb992aa337db0deabe05e20304777183bbfac8794b43d` |
| 4 | `theorem` | [coefficient_character](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/declarations/coefficient-character--a12a3b33b373bec915be83b9.md) | 38 | `result-track:a12a3b33b373bec915be83b9b5fc60b8610ce906f532bfd4007d69809e7e2ca1` |
| 5 | `theorem` | [coefficient_eq_basis_repr](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/declarations/coefficient-eq-basis-repr--9f0956da85325743601eca66.md) | 43 | `result-track:9f0956da85325743601eca662d4e299dfb072d8d0588c2bffa6bb29185cd3b8c` |
| 6 | `theorem` | [complete_reconstruction](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/declarations/complete-reconstruction--d9bb3c89cca4a9aabd4125ee.md) | 51 | `result-track:d9bb3c89cca4a9aabd4125eedd1bcd3423f1afe2b22c0f0e89b05fc77e14f48a` |
| 7 | `def` | [incompleteReconstruction](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/declarations/incompletereconstruction--6e95b3cc8e660f2a9de4068e.md) | 57 | `declaration-track:6e95b3cc8e660f2a9de4068ea66ec0ecf87d3f5be8e58291cfded75470143c0a` |
| 8 | `theorem` | [reconstruction_split](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/declarations/reconstruction-split--d20e730fc8c231b3f4caa498.md) | 62 | `result-track:d20e730fc8c231b3f4caa498ef375c5819b07bdf46a087bfbc56af1781640bc0` |
| 9 | `theorem` | [incomplete_eq_self_iff](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/declarations/incomplete-eq-self-iff--11c53f32d4d300d9bea0c944.md) | 73 | `result-track:11c53f32d4d300d9bea0c94407b677c1c6bd12b0c8b75572f499458acfd535d2` |
| 10 | `def` | [nontrivialSpan](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/declarations/nontrivialspan--788570cb71b1044b7e5d5ae7.md) | 85 | `declaration-track:788570cb71b1044b7e5d5ae7b8b5677a38c40be942f533fde55cdc69dda838e8` |
| 11 | `theorem` | [nontrivialSpan_le_trivial_kernel](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/declarations/nontrivialspan-le-trivial-kernel--e86a0a79d75550eecb93b2de.md) | 88 | `result-track:e86a0a79d75550eecb93b2de2ba845182af4678be1d2db1fca20c2fb05ecda50` |
| 12 | `theorem` | [trivial_not_mem_nontrivialSpan](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt02/Variantb97d0d5e18f189b7a8ae4a0a63b0c28df6a524a40fe048ed93be213a68fecc8b.lean/declarations/trivial-not-mem-nontrivialspan--91a68239ed56773bacacf869.md) | 97 | `result-track:91a68239ed56773bacacf869a796862a7da81f90be5fb92f9da9e77b6859f8bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
