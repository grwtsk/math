# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobsonObservation.Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7df436e4daaeb731b2cb59771efbcc99ac878f1",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7df436e4daaeb731b2cb59771efbcc99ac878f1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DualNumber` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Radical` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [observation_eq_iff_sub_mem](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/observation-eq-iff-sub-mem--99547a77277726377fe7e03c.md) | 40 | `result-track:99547a77277726377fe7e03c8a4529fbcb09c442101f2e5e745736f69283be1d` |
| 2 | `theorem` | [observation_eq_iff_exists_add](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/observation-eq-iff-exists-add--13abe8b0bdfa1bec2e09bac0.md) | 46 | `result-track:13abe8b0bdfa1bec2e09bac0c1e7920c38cbf8dd1bee39c4e587eacc4ffdcba8` |
| 3 | `theorem` | [observation_fiber_eq_range](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/observation-fiber-eq-range--bda4f410cfa96ad068b7055c.md) | 57 | `result-track:bda4f410cfa96ad068b7055c7bc7cee7e3ad810298d05630a529ca7efb5c961a` |
| 4 | `theorem` | [quotient_observation_injective](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/quotient-observation-injective--0c0c0d08f0bf526ff3ee414c.md) | 69 | `result-track:0c0c0d08f0bf526ff3ee414c3ed5e0ae36e48724dc9a8c8ba81da21d891021d1` |
| 5 | `def` | [CosetInvariant](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/cosetinvariant--aac02ea91e8a17c176aa43f8.md) | 81 | `declaration-track:aac02ea91e8a17c176aa43f8cb86942d11ffce6212f1afb4de302442f96c6e9d` |
| 6 | `def` | [descend](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/descend--338653204c54badecc51fc02.md) | 85 | `declaration-track:338653204c54badecc51fc02d027333c597341383a2601924136765eb7914e9e` |
| 7 | `theorem` | [descend_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/descend-mkq--d0f9e1891febb855a7eab8fb.md) | 92 | `result-track:d0f9e1891febb855a7eab8fb6961a2a2ca9581754dd8f93c6a88f15965bf733f` |
| 8 | `theorem` | [coset_invariant_iff_quotient_factor](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/coset-invariant-iff-quotient-factor--f18dc2a9069bbe42b1edd368.md) | 97 | `result-track:f18dc2a9069bbe42b1edd3681b1e3508581aaf4b286f161167e2566bf7f37da4` |
| 9 | `theorem` | [linear_coset_invariant_iff](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/linear-coset-invariant-iff--d0d0444caed329d1b3ae1f6d.md) | 109 | `result-track:d0d0444caed329d1b3ae1f6d27726c6897d8a2462499e240c805cc4ba23f67d9` |
| 10 | `theorem` | [quotient_maps_commute_iff](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/quotient-maps-commute-iff--a387c67a30f0a46e0d52c770.md) | 126 | `result-track:a387c67a30f0a46e0d52c7702893d4d5db987b988ea3e3fe7a4658dc43934ac1` |
| 11 | `theorem` | [ring_radical_observation_fiber](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/ring-radical-observation-fiber--c1558ff9f678039bf3a4a949.md) | 148 | `result-track:c1558ff9f678039bf3a4a9496f3dad38340eaf1174b42544119b764d8b1c7fe5` |
| 12 | `def` | [dualObservation](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/dualobservation--e2eeefc21dabef22e6f2b5d9.md) | 160 | `declaration-track:e2eeefc21dabef22e6f2b5d91cfd308991abc8be72bdbd66af5c7b8ba00b286f` |
| 13 | `theorem` | [dual_observation_ker_eq_jacobson](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/dual-observation-ker-eq-jacobson--15a154326f3f073ded3536a9.md) | 164 | `result-track:15a154326f3f073ded3536a94573b79e4220eeae3ffe854f60a5998edeaab099` |
| 14 | `def` | [dualProduct](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/dualproduct--dc4e205abcb9c995324d185c.md) | 170 | `declaration-track:dc4e205abcb9c995324d185c7b034321b911a3ba13e52f7ca6d5bb06d82f1840` |
| 15 | `theorem` | [dual_product_vanishes_on_jacobson](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/dual-product-vanishes-on-jacobson--47a20fc7395059c185d166ee.md) | 173 | `result-track:47a20fc7395059c185d166ee24d086161d86cf8c1a185e14148b25f0439b7df9` |
| 16 | `theorem` | [dual_eps_mem_jacobson](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/dual-eps-mem-jacobson--2b62601a90d88f276c135f34.md) | 181 | `result-track:2b62601a90d88f276c135f3438d4c0dc0277c7ba3ff21d1e17e8c7c7ace3aff3` |
| 17 | `theorem` | [dual_eps_nonzero_square_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/dual-eps-nonzero-square-zero--045627c5fadb37fa83d59d11.md) | 187 | `result-track:045627c5fadb37fa83d59d118737498ceb303708b11111790189827a487aa28d` |
| 18 | `theorem` | [dual_product_not_coset_invariant](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/dual-product-not-coset-invariant--940322739739e39fcbf5e867.md) | 198 | `result-track:940322739739e39fcbf5e867e832f48d375555dc531258efbdc04ddae51f3c5b` |
| 19 | `theorem` | [dual_product_no_quotient_factor](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/dual-product-no-quotient-factor--f745d18c61e087ba1c1978dc.md) | 206 | `result-track:f745d18c61e087ba1c1978dcdfc4d749e4dd9a909a5c7d780b8d48ef156dbd53` |
| 20 | `theorem` | [dual_product_fiber_full_range](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/dual-product-fiber-full-range--6a87e21603f69dd81e5f2efc.md) | 214 | `result-track:6a87e21603f69dd81e5f2efce73051caa7fd815f984cc79cc0a2085a8988ea82` |
| 21 | `theorem` | [dual_product_no_upper_bound_on_fiber](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/declarations/dual-product-no-upper-bound-on-fiber--4ef9200a601629f62eae1ceb.md) | 220 | `result-track:4ef9200a601629f62eae1ceb2f98778f6a19b285aa2f21566cc8189998411a9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
