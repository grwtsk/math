# Verification target: GRWTSK.Algebra.LinearAlgebra.CatalanJacobi.Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9932f6e6e407fe1e92bd16eace9ae5b6cdf5619a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9932f6e6e407fe1e92bd16eace9ae5b6cdf5619a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean.json)

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
| 1 | `def` | [consEmbedding](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/consembedding--c00af98f88270c3a44fdad63.md) | 31 | `declaration-track:c00af98f88270c3a44fdad63569b8c7cebee89f8bf2dbefd0bf87e04638a09a3` |
| 2 | `lemma` | [consEmbedding_apply](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/consembedding-apply--ff5a7a0e35cea3c0b71f1442.md) | 34 | `result-track:ff5a7a0e35cea3c0b71f1442b2ec90e0d71f282a2f1ba236fa7b7f8ab32e334b` |
| 3 | `def` | [paths](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/paths--dff1154c06abce1c1fdf3d97.md) | 38 | `declaration-track:dff1154c06abce1c1fdf3d9798ae74392ab566f0e26c92b2bd166bff73189d40` |
| 4 | `def` | [Nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/nonnegative--75b706e12f528ffd25c3cacb.md) | 45 | `declaration-track:75b706e12f528ffd25c3cacbf81dc2f429c76c672547bfb9dcc280bb30f4771c` |
| 5 | `lemma` | [nonnegative_cons_U](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/nonnegative-cons-u--33d285c46f0ef71c4e82bdd6.md) | 48 | `result-track:33d285c46f0ef71c4e82bdd6cd223bdf9b46519bd897f9f7f4dacedf38007bef` |
| 6 | `lemma` | [nonnegative_cons_D](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/nonnegative-cons-d--a58098b79ac30368332a6a04.md) | 58 | `result-track:a58098b79ac30368332a6a0400ceedb4a9bbba9593760519aada1a2b48c2a111` |
| 7 | `lemma` | [not_nonnegative_cons_D_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/not-nonnegative-cons-d-zero--e818cd90917fbf99ca27b832.md) | 70 | `result-track:e818cd90917fbf99ca27b832a9c7b5dd5c52aee1845f3b9dc164df32f310bcdf` |
| 8 | `lemma` | [mem_paths](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/mem-paths--dcad9a6d55f19703557bcd53.md) | 76 | `result-track:dcad9a6d55f19703557bcd533e9390453916dca5430f547e905016e1f9e36c17` |
| 9 | `lemma` | [paths_union_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/paths-union-disjoint--0d3142f358543763a6fd7d87.md) | 103 | `result-track:0d3142f358543763a6fd7d87036f03632ff4916ae2144b7279498ea10b6173a3` |
| 10 | `lemma` | [card_paths_succ_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/card-paths-succ-zero--af048f70bc8744e59bbae311.md) | 108 | `result-track:af048f70bc8744e59bbae311b5dea4d80aec13ab2990ac9186863896daff04ef` |
| 11 | `lemma` | [card_paths_succ_succ](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/card-paths-succ-succ--7f253fa432fbc65389d94a16.md) | 111 | `result-track:7f253fa432fbc65389d94a1652aa62ba45ad3f10fa7c16d471261f6b895fd96a` |
| 12 | `lemma` | [length_eq_counts](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/length-eq-counts--16e38d3b156fc96e355c461e.md) | 117 | `result-track:16e38d3b156fc96e355c461e37f44e9ce5f7a6629a2ca17ef62d44810435f93c` |
| 13 | `def` | [returningPathsEquivDyck](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/returningpathsequivdyck--7c9a8a90acbbc7c532bd96cd.md) | 124 | `declaration-track:7c9a8a90acbbc7c532bd96cdc663f54f71e71eaf18854af8c08750602c02f671` |
| 14 | `lemma` | [card_paths_even](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/card-paths-even--70fa0b3f28bfccef825a1283.md) | 142 | `result-track:70fa0b3f28bfccef825a1283e3f774f986c9f4b1eb8552a0ced1e94fef88711e` |
| 15 | `lemma` | [paths_odd_eq_empty](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/paths-odd-eq-empty--077d06ffd4e889578ed6e9e5.md) | 146 | `result-track:077d06ffd4e889578ed6e9e5a09407f522a58b9f4f4c67981c3496e5819d957c` |
| 16 | `lemma` | [paths_eq_empty_of_length_lt_height](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/paths-eq-empty-of-length-lt-height--30d3fd6fd7220ba870235c78.md) | 154 | `result-track:30d3fd6fd7220ba870235c78677f39ca9683252f530bf2239dc2ba9d93736f56` |
| 17 | `def` | [Jfree](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/jfree--7a466afe69d9fb189b407d4c.md) | 165 | `declaration-track:7a466afe69d9fb189b407d4c244f7906a2c84110be50b8504affcc38e1a52bad` |
| 18 | `lemma` | [Jfree_apply_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/jfree-apply-zero--50b677292c74b93f7e011533.md) | 169 | `result-track:50b677292c74b93f7e0115335fcc0ad5f410124e5323581ba178f5b49bd88bfe` |
| 19 | `lemma` | [Jfree_apply_succ](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/jfree-apply-succ--19c01ae3965deaee32b14cb9.md) | 173 | `result-track:19c01ae3965deaee32b14cb917c24d554291049fc6300656f740de982e37250b` |
| 20 | `def` | [basisVector](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/basisvector--8e5498021dcfd72f66bc5907.md) | 178 | `declaration-track:8e5498021dcfd72f66bc590772feba4b38c9237346d1204779d3fdee4c2838e1` |
| 21 | `lemma` | [Jfree_basis_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/jfree-basis-zero--aa3ee3ce7d6a971c5243baa4.md) | 180 | `result-track:aa3ee3ce7d6a971c5243baa43823389fee0d061e44c9c765a8c5c5ea10341650` |
| 22 | `lemma` | [Jfree_basis_succ](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/jfree-basis-succ--d7a8c0f47ec726724880c501.md) | 189 | `result-track:d7a8c0f47ec726724880c5018748908739b43602ab094e9dbca4ce9a8a1aafe6` |
| 23 | `def` | [cyclicCoefficient](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/cycliccoefficient--91a35652ede349736136ec1e.md) | 201 | `declaration-track:91a35652ede349736136ec1ef196a9e657e2bd88dc0085f6c22b2900be5eea68` |
| 24 | `lemma` | [power_basis_eq_card_paths](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/power-basis-eq-card-paths--f1c79cf788c97045d72242dd.md) | 204 | `result-track:f1c79cf788c97045d72242dd5b93425b8b80d3f3d66a8ff14bd899a0931d04c2` |
| 25 | `lemma` | [cyclicCoefficient_even](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/cycliccoefficient-even--8b6cb9f1810ca63daeb65324.md) | 216 | `result-track:8b6cb9f1810ca63daeb65324bb30f4586ad6f23c1b86a71e85b2344ccb9788aa` |
| 26 | `lemma` | [cyclicCoefficient_odd](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/cycliccoefficient-odd--5e8a0d60f749f42a452a6e25.md) | 220 | `result-track:5e8a0d60f749f42a452a6e2514eaa1f599dbf9a76661d4ed56dcaf81cbac7347` |
| 27 | `lemma` | [cyclicCoefficient_one](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/cycliccoefficient-one--d8e872b255e51ebb2910835e.md) | 224 | `result-track:d8e872b255e51ebb2910835e1ea8a6ca72010684b09f9c0daa85c13eb87175d1` |
| 28 | `lemma` | [power_basis_support_bound](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/power-basis-support-bound--b57e7db8bf8a31078198beef.md) | 227 | `result-track:b57e7db8bf8a31078198beefb1d755e853192ee475162da15a249005f8c9880c` |
| 29 | `def` | [pairing](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/pairing--4f32ab0fd560e9f4a38e5766.md) | 234 | `declaration-track:4f32ab0fd560e9f4a38e57668d804c7e5fa5b2f129245f6ac8e072619593cc3c` |
| 30 | `lemma` | [pairing_basis_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/pairing-basis-zero--929f5fb1ca69afdda79bb079.md) | 236 | `result-track:929f5fb1ca69afdda79bb0793aff928368b49309101735f128e051203b7536b1` |
| 31 | `lemma` | [free_even_moment](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/free-even-moment--47ef9b8a04c98888c7059f24.md) | 239 | `result-track:47ef9b8a04c98888c7059f248c07cf6ddeeb296db80260bba359a089288a9d84` |
| 32 | `lemma` | [free_odd_moment](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/free-odd-moment--edd1b039784b7390682899ac.md) | 244 | `result-track:edd1b039784b7390682899acce87d182f8cf09e7226300edc4916f109c7268fc` |
| 33 | `lemma` | [cyclicCoefficient_even_normalization](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/declarations/cycliccoefficient-even-normalization--00f7180fec7c718ee66de70f.md) | 251 | `result-track:00f7180fec7c718ee66de70fa3070460589a1f153063675e625fda901aac2caf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
