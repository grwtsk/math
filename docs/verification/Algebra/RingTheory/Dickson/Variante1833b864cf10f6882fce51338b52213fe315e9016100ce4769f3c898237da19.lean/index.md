# Verification target: GRWTSK.Algebra.RingTheory.Dickson.Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a692a28a355cd9ff7fb44372b05cdc999f3c1523",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a692a28a355cd9ff7fb44372b05cdc999f3c1523`.

Source path: `GRWTSK/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Invertible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Field` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.ZMod` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Chebyshev` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dickson](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson--d00d3243fc1e65e63c226c1b.md) | 67 | `declaration-track:d00d3243fc1e65e63c226c1b437b0075233daccc0bfd2c17113a1e41f00e0dc4` |
| 2 | `theorem` | [dickson_zero](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-zero--c3a240cf644073179a7ef9fc.md) | 73 | `result-track:c3a240cf644073179a7ef9fcaaffa7c58f52b5d686879879bdd9b306128c8aec` |
| 3 | `theorem` | [dickson_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-one--a18a91e25e797e2c016ca419.md) | 77 | `result-track:a18a91e25e797e2c016ca41912ef693e3a9b39a8b1940a4370e1f6f0ab9c538e` |
| 4 | `theorem` | [dickson_two](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-two--ea97737823890bc61560fd5f.md) | 80 | `result-track:ea97737823890bc61560fd5f04eb392d2e1a37b5b087dee59421802ece487087` |
| 5 | `theorem` | [dickson_add_two](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-add-two--0677e71f60ab110f7271e3c1.md) | 84 | `result-track:0677e71f60ab110f7271e3c11ec89cedf4851d8ab16869c23f092ae9bb2f352e` |
| 6 | `theorem` | [dickson_of_two_le](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-of-two-le--0f3d799d9252c3f23f2b843b.md) | 87 | `result-track:0f3d799d9252c3f23f2b843b7acac7699f7cb02c775ebdd05ceea130fd857b30` |
| 7 | `theorem` | [map_dickson](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/map-dickson--e1e9c64c266b0aa6a5626d2e.md) | 95 | `result-track:e1e9c64c266b0aa6a5626d2e444366157134150405a437b25188168dc8fec49a` |
| 8 | `theorem` | [dickson_two_zero](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-two-zero--8967652ff0372bb59e86488a.md) | 104 | `result-track:8967652ff0372bb59e86488acadb15994aa85a84e19e2b1717b847e31929c00d` |
| 9 | `theorem` | [dickson_one_one_eval_add_inv](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-one-one-eval-add-inv--fc454c23dab52281cf32d465.md) | 126 | `result-track:fc454c23dab52281cf32d46554a572ef3aebc26e99a7148869d2a87eb9c20a72` |
| 10 | `theorem` | [two_mul_C_half_eq_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/two-mul-c-half-eq-one--0eb936bf38c8a4aa5af25e52.md) | 140 | `result-track:0eb936bf38c8a4aa5af25e52f88913b2bf595658dddc48a5d32180441d88565e` |
| 11 | `theorem` | [C_half_mul_two_eq_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/c-half-mul-two-eq-one--460b5a396bf8258960aa6b2e.md) | 143 | `result-track:460b5a396bf8258960aa6b2e3d10941a29224116fd36e8d0b3f0d253fa40fa84` |
| 12 | `theorem` | [dickson_one_one_eq_chebyshev_C](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-one-one-eq-chebyshev-c--278f81b2dd52e40656bb008a.md) | 146 | `result-track:278f81b2dd52e40656bb008ad5b2607eb76d4d180cb701a6537868da205f860d` |
| 13 | `theorem` | [dickson_one_one_eq_chebyshev_T](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-one-one-eq-chebyshev-t--4e5ac8546afa6d0b42e41cd0.md) | 158 | `result-track:4e5ac8546afa6d0b42e41cd0bed9c2bd4e3d70acab7ee55eb581de542560406b` |
| 14 | `theorem` | [chebyshev_T_eq_dickson_one_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/chebyshev-t-eq-dickson-one-one--6ab51e2d90c06a393103f647.md) | 162 | `result-track:6ab51e2d90c06a393103f647e4ef3e6b07573c3ff5ac989910e15dfc3642c332` |
| 15 | `theorem` | [dickson_two_one_eq_chebyshev_S](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-two-one-eq-chebyshev-s--f118b7fae5472b9d8fe76932.md) | 166 | `result-track:f118b7fae5472b9d8fe76932b152346010f201a13229a241c9627dfa45d3ce97` |
| 16 | `theorem` | [dickson_two_one_eq_chebyshev_U](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-two-one-eq-chebyshev-u--1fe55a78b1a4bac8d16b2639.md) | 178 | `result-track:1fe55a78b1a4bac8d16b26390697515834521cc800ca97b22f6c2a056c9453f2` |
| 17 | `theorem` | [chebyshev_U_eq_dickson_two_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/chebyshev-u-eq-dickson-two-one--96fdb5f338de64d771476eef.md) | 182 | `result-track:96fdb5f338de64d771476eefed50e8460d25a1051db7c230f9a3e1769cc3e6e7` |
| 18 | `theorem` | [dickson_one_one_mul](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-one-one-mul--f17d0b524d0a27ca9cd8a100.md) | 188 | `result-track:f17d0b524d0a27ca9cd8a10084821327414914347c07f34cdce7e51df993e46d` |
| 19 | `theorem` | [dickson_one_one_comp_comm](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-one-one-comp-comm--84ae5921bf72f7c181118b8b.md) | 203 | `result-track:84ae5921bf72f7c181118b8bc395644767321962f909388b2c36d41c7a6aefc3` |
| 20 | `theorem` | [dickson_one_one_zmod_p](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-one-one-zmod-p--1e5c75b5b9573c7d4e2739ba.md) | 207 | `result-track:1e5c75b5b9573c7d4e2739ba740150c281322c6bd3dea11672b6e29fed1fdb4b` |
| 21 | `theorem` | [dickson_one_one_charP](../../../../../mathematics/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/declarations/dickson-one-one-charp--52a92fa8c5016f43515d7193.md) | 274 | `result-track:52a92fa8c5016f43515d7193e44701ef88c5567d92178e7df58d1c39426c62fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
