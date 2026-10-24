# Verification target: GRWTSK.Algebra.LinearAlgebra.CatalanJacobiBeforeDocstrings.Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c38b3a285efe19a7ceafe3f49ba66b77b574dd32",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c38b3a285efe19a7ceafe3f49ba66b77b574dd32`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.DyckWord` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [consEmbedding](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/consembedding--2ce9d7e8098c0dc1f35f2916.md) | 30 | `declaration-track:2ce9d7e8098c0dc1f35f2916a1cb7840ac9a4f12bd4a7554e0ee524af22333df` |
| 2 | `lemma` | [consEmbedding_apply](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/consembedding-apply--e102715d9cfc3a10d69a583a.md) | 33 | `result-track:e102715d9cfc3a10d69a583a13de970d4a766106b10f19a6e7ad10236246ee46` |
| 3 | `def` | [paths](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/paths--9557ffbe7b823dcbad7d3f4d.md) | 36 | `declaration-track:9557ffbe7b823dcbad7d3f4dc41f81fef66b219cfa859163e89f18b6f2d4c2ec` |
| 4 | `def` | [Nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/nonnegative--1b8bd3cc3c23e893601b3708.md) | 42 | `declaration-track:1b8bd3cc3c23e893601b37081032d967e5490e32fe7c4440d268bb8d87b180b5` |
| 5 | `lemma` | [nonnegative_cons_U](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/nonnegative-cons-u--eb36ba627d70b20ee5c35f34.md) | 45 | `result-track:eb36ba627d70b20ee5c35f34a9ee8da3eb3bd11b4a60be4de0f79e5358dc1ad3` |
| 6 | `lemma` | [nonnegative_cons_D](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/nonnegative-cons-d--8c41382896b881d016dfe962.md) | 55 | `result-track:8c41382896b881d016dfe96284ff5f77cc78f6aa48ed11046cdaf34239334e7b` |
| 7 | `lemma` | [not_nonnegative_cons_D_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/not-nonnegative-cons-d-zero--e19974394fe1a0f6fe5ce334.md) | 67 | `result-track:e19974394fe1a0f6fe5ce3347bfe624e6ff55edda4faeeb68de53adaa269e9dd` |
| 8 | `lemma` | [mem_paths](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/mem-paths--0c151831102400a9aad3bb12.md) | 73 | `result-track:0c151831102400a9aad3bb1222be9e5c795912d2ab4243be49e684f3af9c3d1d` |
| 9 | `lemma` | [paths_union_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/paths-union-disjoint--a82282cdf794d533ef1852d4.md) | 100 | `result-track:a82282cdf794d533ef1852d486bbdf7c7e7d475d43e9c1703bfc834ad44b3cac` |
| 10 | `lemma` | [card_paths_succ_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/card-paths-succ-zero--67128d2c70ba0e6aaad823dd.md) | 105 | `result-track:67128d2c70ba0e6aaad823dddb4336426c03edcff8803daf482fb0e656c3651a` |
| 11 | `lemma` | [card_paths_succ_succ](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/card-paths-succ-succ--8b24bc65052d5774b1e474aa.md) | 108 | `result-track:8b24bc65052d5774b1e474aa0e3a5ad17fb93467bd7215cbd2842c0869cf7335` |
| 12 | `lemma` | [length_eq_counts](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/length-eq-counts--9bf6d3a7612e6e0e0e3310eb.md) | 114 | `result-track:9bf6d3a7612e6e0e0e3310eb755e7ac61c7d11605c68f4d9d1a2dc53139c4f1e` |
| 13 | `def` | [returningPathsEquivDyck](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/returningpathsequivdyck--754844771ac78ef2809a368f.md) | 121 | `declaration-track:754844771ac78ef2809a368fe0704a224cb6aea6d94dbabcab44bd88b96dfe8d` |
| 14 | `lemma` | [card_paths_even](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/card-paths-even--211f2df75e10f86275676ef5.md) | 139 | `result-track:211f2df75e10f86275676ef584e14afb70ded46515cd4bd9e79449878be2cee3` |
| 15 | `lemma` | [paths_odd_eq_empty](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/paths-odd-eq-empty--979dd72136e6165fa211c5cf.md) | 143 | `result-track:979dd72136e6165fa211c5cf950692a3f9a192644beaa5345beb5fe9617ac22f` |
| 16 | `lemma` | [paths_eq_empty_of_length_lt_height](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/paths-eq-empty-of-length-lt-height--81684a019d068d3f1f5a0789.md) | 151 | `result-track:81684a019d068d3f1f5a0789c5771bb5af35afc8c02bfd94220fb7397b876a44` |
| 17 | `def` | [Jfree](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/jfree--481a29934fd5314138c5178a.md) | 162 | `declaration-track:481a29934fd5314138c5178a0481dce522318a6b08e0c6824d3d2d8d72993c52` |
| 18 | `lemma` | [Jfree_apply_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/jfree-apply-zero--d4ad86780b3613a6290f3f80.md) | 166 | `result-track:d4ad86780b3613a6290f3f80788f7ca840a4e0d91f19d8dd3214ef5bfc67457a` |
| 19 | `lemma` | [Jfree_apply_succ](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/jfree-apply-succ--ca84a6b5d51b8be4179c5be5.md) | 170 | `result-track:ca84a6b5d51b8be4179c5be5dcc4f6b2f1368e63723f6c0cd81e0cee5fc7d5d7` |
| 20 | `def` | [basisVector](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/basisvector--2a83cc872e4f5238fe802372.md) | 175 | `declaration-track:2a83cc872e4f5238fe8023727b53ab61484d10288156a05f0dab6f0e0738af16` |
| 21 | `lemma` | [Jfree_basis_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/jfree-basis-zero--60a515125d6e8d380d19160a.md) | 177 | `result-track:60a515125d6e8d380d19160aadc319a28c8868709d07d17291a9f29dba54d775` |
| 22 | `lemma` | [Jfree_basis_succ](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/jfree-basis-succ--7bc1cdf78f96d75c421e2528.md) | 186 | `result-track:7bc1cdf78f96d75c421e25282dc90136dfa667c09547b94e69d5e69b0748703a` |
| 23 | `def` | [cyclicCoefficient](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/cycliccoefficient--ca69f5a04a6e3218ddd9704c.md) | 198 | `declaration-track:ca69f5a04a6e3218ddd9704c5368f20edf7140143f75219b92b365d30cc8783e` |
| 24 | `lemma` | [power_basis_eq_card_paths](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/power-basis-eq-card-paths--7837771f380809f7f076ff7b.md) | 201 | `result-track:7837771f380809f7f076ff7bce006330fcae162ba450cae7884a6ffafd2abf7a` |
| 25 | `lemma` | [cyclicCoefficient_even](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/cycliccoefficient-even--cabaf349d3123b67a9223588.md) | 213 | `result-track:cabaf349d3123b67a9223588c7195e247a369c33466d668c087b40b14b94ef53` |
| 26 | `lemma` | [cyclicCoefficient_odd](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/cycliccoefficient-odd--4a8e00646f7d998250e85ff5.md) | 217 | `result-track:4a8e00646f7d998250e85ff5fed035508c5250a6394623bced29d447fed6f5b8` |
| 27 | `lemma` | [cyclicCoefficient_one](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/cycliccoefficient-one--f68917b1fe992adea362ff26.md) | 221 | `result-track:f68917b1fe992adea362ff264926a04eaf5ad9ad1386ac96c7d894ae37795b2c` |
| 28 | `lemma` | [power_basis_support_bound](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/power-basis-support-bound--daf005a5f37c51cf70fd001d.md) | 224 | `result-track:daf005a5f37c51cf70fd001d02b19a2e73b3180d1f6e600fb279dfd28c86d4ff` |
| 29 | `def` | [pairing](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/pairing--56a87e5bf1ff66a61e679be9.md) | 231 | `declaration-track:56a87e5bf1ff66a61e679be9036fdf5ce3eda369806a889255830367bec36f24` |
| 30 | `lemma` | [pairing_basis_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/pairing-basis-zero--9eedea720d3bcda13cc11b4c.md) | 233 | `result-track:9eedea720d3bcda13cc11b4c2ece3b2c770cc4b3e8de5f4e0bdb7f735e789236` |
| 31 | `lemma` | [free_even_moment](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/free-even-moment--c0dac628ac742793c6b7ae0e.md) | 236 | `result-track:c0dac628ac742793c6b7ae0e0ef3bda9bf4f331ba626e55c00b0f1579c8164f4` |
| 32 | `lemma` | [free_odd_moment](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/free-odd-moment--476e7d5b67f80e6e92c045d1.md) | 241 | `result-track:476e7d5b67f80e6e92c045d133a22b8d3a09aff8d5e65be617e1bdbb167c7cd0` |
| 33 | `lemma` | [cyclicCoefficient_even_normalization](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/declarations/cycliccoefficient-even-normalization--1fd2686740adb453d38c399f.md) | 248 | `result-track:1fd2686740adb453d38c399f23e74dcb2236094b7ebaf93c6ed841d251d45ab9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
