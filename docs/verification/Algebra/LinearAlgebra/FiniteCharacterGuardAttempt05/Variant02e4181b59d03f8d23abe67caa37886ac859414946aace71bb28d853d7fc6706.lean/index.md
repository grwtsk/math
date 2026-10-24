# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteCharacterGuardAttempt05.Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdec04755523006593fa67e3030767d0870faa5e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdec04755523006593fa67e3030767d0870faa5e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/coefficientmap--67a11d13da1dedf6ad2b8219.md) | 22 | `declaration-track:67a11d13da1dedf6ad2b821916a65c22471c1d712d2f5bde0dd21cf9388cc1f2` |
| 2 | `theorem` | [coefficient_eq_expect](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/coefficient-eq-expect--3d012146fd02a3c13ada0d39.md) | 28 | `result-track:3d012146fd02a3c13ada0d39f0a30401d7e2d45a0f5cbba133789df1ab34dd2c` |
| 3 | `theorem` | [trivial_coefficient_eq_mean](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/trivial-coefficient-eq-mean--3fde6a40aeb7ee083222d686.md) | 33 | `result-track:3fde6a40aeb7ee083222d68671a0f8ff0ccc43c968a01b5f7801d7294b2e7058` |
| 4 | `theorem` | [coefficient_character](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/coefficient-character--6c9703e8832f31ff92ae6038.md) | 38 | `result-track:6c9703e8832f31ff92ae60381ccbb8d4d9e96406b616ce01d673f9bc2f9a58a5` |
| 5 | `theorem` | [coefficient_eq_basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/coefficient-eq-basis-repr--ece85da28dfc2ab826e1550a.md) | 43 | `result-track:ece85da28dfc2ab826e1550a8cabd5e935c9d982bd6f93abfb531e826c4c1f8c` |
| 6 | `theorem` | [complete_reconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/complete-reconstruction--e6daa9a3afdafc09d2c65790.md) | 51 | `result-track:e6daa9a3afdafc09d2c6579077f6c50a6ec67793e7a4717e7705274e461a0ab2` |
| 7 | `def` | [incompleteReconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/incompletereconstruction--23e6043a2dd9593244d72523.md) | 57 | `declaration-track:23e6043a2dd9593244d72523c886872f4c879090830e1d4329049daca3cbb54a` |
| 8 | `theorem` | [reconstruction_split](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/reconstruction-split--7141fdc8457ea120b5dae476.md) | 62 | `result-track:7141fdc8457ea120b5dae476aeb159eaa04cd64ba4bce6c70159b3aef133bbcc` |
| 9 | `theorem` | [incomplete_eq_self_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/incomplete-eq-self-iff--a4bf01d30b6248cf3e8fd09c.md) | 76 | `result-track:a4bf01d30b6248cf3e8fd09c5b2a8bcc0820347bd3db10309d6f4cbbe7016955` |
| 10 | `def` | [nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/nontrivialspan--d7db3a91b4cd55cde3ad435f.md) | 88 | `declaration-track:d7db3a91b4cd55cde3ad435ffb2a14b1f5dc0e22a0b36beeb2832302f34b14da` |
| 11 | `theorem` | [nontrivialSpan_le_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/nontrivialspan-le-trivial-kernel--11bb0ea78a8dc881a433425d.md) | 91 | `result-track:11bb0ea78a8dc881a433425d69ad19ba44b7ecd6c1c4db3e6a91b4de1c513730` |
| 12 | `theorem` | [trivial_not_mem_nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/trivial-not-mem-nontrivialspan--5c7f22704befe7f96c438a09.md) | 100 | `result-track:5c7f22704befe7f96c438a095b54b7c7a8ef26696d20c58594f74fa192928428` |
| 13 | `theorem` | [mem_nontrivialSpan_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/mem-nontrivialspan-iff--6a5b1a8c4bff3bbf09cc2b59.md) | 112 | `result-track:6a5b1a8c4bff3bbf09cc2b59ee593cd9f1773144023b4566550590d9d6fc1b2c` |
| 14 | `theorem` | [nontrivialSpan_eq_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/nontrivialspan-eq-trivial-kernel--098a335cdd550c2caad79fd0.md) | 127 | `result-track:098a335cdd550c2caad79fd03ba521dc70415cd16e52339ffb3ee538d742b00e` |
| 15 | `theorem` | [coefficient_constant](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/coefficient-constant--119826e13df96fa883893aad.md) | 132 | `result-track:119826e13df96fa883893aade63dde39dc6a6efdeb8a76baf3e5acb832be60d2` |
| 16 | `def` | [nontrivialStack](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/nontrivialstack--1955e442c3c3a05e6e156ecb.md) | 141 | `declaration-track:1955e442c3c3a05e6e156ecbb8255762accf2f8b7e2bfc4201a3ad8eb7490361` |
| 17 | `theorem` | [nontrivialStack_add_constant](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/nontrivialstack-add-constant--a6ed42cd2b559035a94e2ac3.md) | 144 | `result-track:a6ed42cd2b559035a94e2ac3b5422e7c0fa157e0a7f2d666fe0411216883f4c5` |
| 18 | `theorem` | [nontrivialStack_eq_iff_constant_difference](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/nontrivialstack-eq-iff-constant-difference--d8d27bcb183398dee5e8b848.md) | 150 | `result-track:d8d27bcb183398dee5e8b848e349563088acda0467dddf814bd110bd29ecb732` |
| 19 | `theorem` | [no_trivial_coefficient_decoder](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/no-trivial-coefficient-decoder--53a82fb9823d03f818252509.md) | 167 | `result-track:53a82fb9823d03f8182525093000ee7c4b6f1223b6123febcc03cfb94b5a90fb` |
| 20 | `def` | [scalarFiber](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/scalarfiber--d62cf00f00492cde9f93a4d2.md) | 180 | `declaration-track:d62cf00f00492cde9f93a4d2498996aca27841a0c213a545fab2b085790950ea` |
| 21 | `theorem` | [scalarFiber_sum](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/scalarfiber-sum--1893bd6f3743005634c80cf9.md) | 182 | `result-track:1893bd6f3743005634c80cf99bde5bedb0851ccee11eaad0211a48b78ff039e9` |
| 22 | `theorem` | [scalarFiber_positive_total](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/scalarfiber-positive-total--76b17d74907b3cf40f4cf580.md) | 194 | `result-track:76b17d74907b3cf40f4cf580afd6f7685f51f53f17fb22bb7df58f70c46539ef` |
| 23 | `theorem` | [scalarFiber_negative_trivial](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/scalarfiber-negative-trivial--fe0c955b9fc36130e4ddfc6a.md) | 202 | `result-track:fe0c955b9fc36130e4ddfc6a48126e1b00982ea15dbe221e0f6794e43250dd9f` |
| 24 | `theorem` | [scalarFiber_positive_nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/scalarfiber-positive-nontrivial--4ff905b010ec0cc0e9462786.md) | 206 | `result-track:4ff905b010ec0cc0e94627861e35a8c035fb2604566071d78a75d705ad48fd9f` |
| 25 | `theorem` | [positive_total_not_fiberwise](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant02e4181b59d03f8d23abe67caa37886ac859414946aace71bb28d853d7fc6706.lean/declarations/positive-total-not-fiberwise--c73cc12b01a24959e9ff64f2.md) | 211 | `result-track:c73cc12b01a24959e9ff64f2ca8eaa60c31a9c88a10bc95fbdd1e71daa1d628e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
