# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobsonObservation.Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a97c6e1a246978b58edf3c5f7034f0dcb3b47b98",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a97c6e1a246978b58edf3c5f7034f0dcb3b47b98`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DualNumber` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Radical` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [observation_eq_iff_sub_mem](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/observation-eq-iff-sub-mem--d3476108c128374b48215a12.md) | 32 | `result-track:d3476108c128374b48215a12f740a87f69798c8f92e7d3451dc1c452af7a263b` |
| 2 | `theorem` | [observation_eq_iff_exists_add](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/observation-eq-iff-exists-add--d15c79af909f39cb9843ab5b.md) | 38 | `result-track:d15c79af909f39cb9843ab5b7877bd032bb29f835eae4d1e6d820b7fa254576e` |
| 3 | `theorem` | [observation_fiber_eq_range](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/observation-fiber-eq-range--a1ca955a25fec25c94c242bb.md) | 49 | `result-track:a1ca955a25fec25c94c242bb0e56bf41116557d0d276f086c2a47f848c1bc3b6` |
| 4 | `theorem` | [quotient_observation_injective](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/quotient-observation-injective--e6481b349666d41464f03ac4.md) | 61 | `result-track:e6481b349666d41464f03ac46226170f7eda4d88b98ad80b48ea5ac5eea547bf` |
| 5 | `def` | [CosetInvariant](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/cosetinvariant--1d04079683a224213306667e.md) | 73 | `declaration-track:1d04079683a224213306667ef598b31843a30599f07300553684754d02a96e48` |
| 6 | `def` | [descend](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/descend--aa35e97aaf1bb9fa2d4a0f1d.md) | 77 | `declaration-track:aa35e97aaf1bb9fa2d4a0f1da0c34fff577cbae23fd41d1bd4f85093be03af8e` |
| 7 | `theorem` | [descend_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/descend-mkq--438f5e457d376ff0d36a08af.md) | 84 | `result-track:438f5e457d376ff0d36a08afc28067202b0346a88c867cd2ae693f3c338d3ac7` |
| 8 | `theorem` | [coset_invariant_iff_quotient_factor](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/coset-invariant-iff-quotient-factor--06ddbbc57c7275f87b877855.md) | 89 | `result-track:06ddbbc57c7275f87b87785579fad1953369b258aa80618b1bbc23ea3a773216` |
| 9 | `theorem` | [linear_coset_invariant_iff](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/linear-coset-invariant-iff--7d720997dd6587df6af5cf43.md) | 101 | `result-track:7d720997dd6587df6af5cf43e96694880cc922f5840a31e7bfd1897f7ac5e195` |
| 10 | `theorem` | [quotient_maps_commute_iff](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/quotient-maps-commute-iff--bef2d9d4157371da4d35cc07.md) | 118 | `result-track:bef2d9d4157371da4d35cc071436af801d74f4bfa95e5792e104178fe28ddee1` |
| 11 | `theorem` | [ring_radical_observation_fiber](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/ring-radical-observation-fiber--284d26212e26589dc47fc7ea.md) | 140 | `result-track:284d26212e26589dc47fc7ea76eec9b83a1df5c3970446e56515db894e7ac968` |
| 12 | `def` | [dualObservation](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/dualobservation--ed63f656e6d76f39499ee245.md) | 152 | `declaration-track:ed63f656e6d76f39499ee24583966a015ca9ef9c1b50b8ad9222112764c36165` |
| 13 | `theorem` | [dual_observation_ker_eq_jacobson](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/dual-observation-ker-eq-jacobson--d24763495fe45bd006bc3f3c.md) | 156 | `result-track:d24763495fe45bd006bc3f3c8bc2891ac002b4070f307450386aa72e07931b95` |
| 14 | `def` | [dualProduct](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/dualproduct--49eb02d380c284f9c896f474.md) | 162 | `declaration-track:49eb02d380c284f9c896f4742da3255e3245933babad578138a9a111d24cf2d0` |
| 15 | `theorem` | [dual_product_vanishes_on_jacobson](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/dual-product-vanishes-on-jacobson--40a7c1162d3fd2cbdd88648c.md) | 165 | `result-track:40a7c1162d3fd2cbdd88648c02cf9c6a2ac1cddb7d84f6c46661127278199ad0` |
| 16 | `theorem` | [dual_eps_mem_jacobson](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/dual-eps-mem-jacobson--3b858126f3e213d15f82e99a.md) | 173 | `result-track:3b858126f3e213d15f82e99a2d0eedb227fb52fa0ae68dc04dc4dd67437f1c31` |
| 17 | `theorem` | [dual_eps_nonzero_square_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/dual-eps-nonzero-square-zero--e3386f98bc1250b86329ade3.md) | 179 | `result-track:e3386f98bc1250b86329ade37a3c89943abcd2e2362086da6695532045e0eb43` |
| 18 | `theorem` | [dual_product_not_coset_invariant](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/dual-product-not-coset-invariant--19bcda88d242eace49d274fb.md) | 190 | `result-track:19bcda88d242eace49d274fb64b176312257f8c683951da5b286664b76287f70` |
| 19 | `theorem` | [dual_product_no_quotient_factor](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/dual-product-no-quotient-factor--1fff0ab2d6b1b821e663873f.md) | 198 | `result-track:1fff0ab2d6b1b821e663873f9d1866a27392a47b40d9199503b03d4246dae65e` |
| 20 | `theorem` | [dual_product_fiber_full_range](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/dual-product-fiber-full-range--d97fbf726ea72a118da22d1d.md) | 206 | `result-track:d97fbf726ea72a118da22d1d73805d132e01e21d353f132c21f7b5b1723b21a9` |
| 21 | `theorem` | [dual_product_no_upper_bound_on_fiber](../../../../../mathematics/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/declarations/dual-product-no-upper-bound-on-fiber--6cd2b6d0a75a67f5eb354ba5.md) | 212 | `result-track:6cd2b6d0a75a67f5eb354ba5b741fa3eb9ab05e924cb62b0845bebacdde22fc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
