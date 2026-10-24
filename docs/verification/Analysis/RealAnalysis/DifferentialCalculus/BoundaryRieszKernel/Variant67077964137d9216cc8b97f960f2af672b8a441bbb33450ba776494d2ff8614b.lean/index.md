# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BoundaryRieszKernel.Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ce2594688d30ff7d666c2de4b68b34cb8fdac39",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ce2594688d30ff7d666c2de4b68b34cb8fdac39`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceBoundaryLayer` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extendedBoundaryKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/extendedboundarykernel--799fe335756d089844804b09.md) | 35 | `declaration-track:799fe335756d089844804b0942a0fd817165692e6b0d9ae363241f60300935ff` |
| 2 | `theorem` | [extended_boundary_kernel_eq_boundary_kernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/extended-boundary-kernel-eq-boundary-kernel--15d011eeab22644d0faea593.md) | 41 | `result-track:15d011eeab22644d0faea593bb1f46b9b6b6f7c6da95f2fed4c3b2e36e77ee4f` |
| 3 | `theorem` | [boundary_profile_eq_pole_operator_monomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-profile-eq-pole-operator-monomial--db18ff51d6ff7e7fed0af66c.md) | 47 | `result-track:db18ff51d6ff7e7fed0af66c05a2fe35ad0920bb29f1aad4130bf5a94cf77f49` |
| 4 | `def` | [boundaryRieszBase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundaryrieszbase--f07c8d76d612e3938ef28490.md) | 56 | `declaration-track:f07c8d76d612e3938ef28490a4114bd9ba9bf529558ec004a3c072ebbf40c582` |
| 5 | `def` | [rieszCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/rieszcoefficient--c704b4565658f7a14a70f4cb.md) | 60 | `declaration-track:c704b4565658f7a14a70f4cb5b432d6074967fdf66bcc7d010df616db1daebc6` |
| 6 | `def` | [boundaryRieszTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundaryriesztransform--6db4b10f9325292a427aad41.md) | 74 | `declaration-track:6db4b10f9325292a427aad413f43db0ae1b52c7bbb2784440db8895cb88462df` |
| 7 | `theorem` | [boundary_riesz_base_eq_monomial_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-base-eq-monomial-sum--1938b3564fbcf92a5d25d8f4.md) | 81 | `result-track:1938b3564fbcf92a5d25d8f4e8169afab411b27075f3b67a5de3d799c0358712` |
| 8 | `theorem` | [boundary_riesz_base_iterated_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-base-iterated-deriv--12742f9084d371affc9d4855.md) | 90 | `result-track:12742f9084d371affc9d4855d29955d10d84116669c219d0bbb3dee5d23f599f` |
| 9 | `theorem` | [boundary_riesz_base_zero_jets](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-base-zero-jets--ab9717ecb6ed7f5ff0209eb6.md) | 102 | `result-track:ab9717ecb6ed7f5ff0209eb6fe1e756094ac2684048648bbc55b35a5ed27282f` |
| 10 | `theorem` | [boundary_riesz_base_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-base-second-deriv--0ca2a885441b828c7ff73e19.md) | 111 | `result-track:0ca2a885441b828c7ff73e19f96bd76539da457ca098470211109f44945cbb8c` |
| 11 | `theorem` | [boundary_riesz_base_fourth_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-base-fourth-deriv--6edf53501c13fff12ee76305.md) | 120 | `result-track:6edf53501c13fff12ee763059857436e5b83a89b7792c2848be0bfd0266ffda5` |
| 12 | `theorem` | [extended_boundary_kernel_eq_pole_operator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/extended-boundary-kernel-eq-pole-operator--ac1ea85975bc19bcf7938b7e.md) | 129 | `result-track:ac1ea85975bc19bcf7938b7e33f013d9ddb1debb609164f11284dbeb1342f382` |
| 13 | `theorem` | [extended_boundary_kernel_eq_monomial_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/extended-boundary-kernel-eq-monomial-sum--76dc7bcd0bfff728da017847.md) | 138 | `result-track:76dc7bcd0bfff728da0178470431ab98ef575e6fe7ec6d9deb430917d81a3277` |
| 14 | `theorem` | [boundary_riesz_transform_double_factor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-transform-double-factor--cf2e26fac20f2d74fce4863f.md) | 157 | `result-track:cf2e26fac20f2d74fce4863fe7e7830a93501c1b7a53fddb07294890fe6a1099` |
| 15 | `theorem` | [boundary_riesz_transform_at_right_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-transform-at-right-pole--b0c4cd03695affca04a9c0ec.md) | 166 | `result-track:b0c4cd03695affca04a9c0ec8d6bb8db2f57a6c859936f3b81c17c454a742808` |
| 16 | `theorem` | [boundary_riesz_transform_at_left_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-transform-at-left-pole--9290deccba7277af1f9bc6ca.md) | 172 | `result-track:9290deccba7277af1f9bc6ca69af06a94b284d90b227aadf2c3e11ed16736f8f` |
| 17 | `def` | [boundaryRieszNumerator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundaryriesznumerator--acc8b59291c7b67ad4ea859c.md) | 178 | `declaration-track:acc8b59291c7b67ad4ea859c1dc6bb9b4aab25f34ad4779c9c52dcb6ee68e3cb` |
| 18 | `theorem` | [boundary_riesz_transform_pole_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-transform-pole-normalization--73ce24781f894e624814a11b.md) | 184 | `result-track:73ce24781f894e624814a11bcf2efe3f1f6cfc1318efbf4f3c2d488b1b14e555` |
| 19 | `theorem` | [boundary_riesz_numerator_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-numerator-at-zero--0bd36a60a6aab64a9a4a7b85.md) | 197 | `result-track:0bd36a60a6aab64a9a4a7b8557f47c30ed507743bbc8b3a23fd855967b6e2a9f` |
| 20 | `theorem` | [boundary_riesz_numerator_at_zero_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-numerator-at-zero-ne-zero--8a0d0daf3384160eb56f7607.md) | 204 | `result-track:8a0d0daf3384160eb56f76077fccaaa2f7e2263d94b0c1718a4716bc96967043` |
| 21 | `theorem` | [boundary_riesz_numerator_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-numerator-continuous--94ae94ed6fca8599854288eb.md) | 213 | `result-track:94ae94ed6fca8599854288eb4ea245813e71a844f2a416ff140fea72a78017de` |
| 22 | `theorem` | [boundary_riesz_transform_pole_limit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-transform-pole-limit--49b3cd8708a9b25c636be086.md) | 219 | `result-track:49b3cd8708a9b25c636be08638c03fd1ddabcc3f72a9acb5d00403715f5c16dc` |
| 23 | `theorem` | [boundary_riesz_transform_meromorphic_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-transform-meromorphic-at--9ef6a606fe4faebcba2edb11.md) | 234 | `result-track:9ef6a606fe4faebcba2edb114b13b3ffa8ccfcdcc8aeff2b4916caac99bc2e6a` |
| 24 | `theorem` | [boundary_riesz_transform_analytic_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-transform-analytic-at--d17e6afac1ce11ee65e0857c.md) | 240 | `result-track:d17e6afac1ce11ee65e0857c64264a1ed2c9366e52e9b9565129e2540c50857b` |
| 25 | `theorem` | [boundary_riesz_transform_order_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-transform-order-at-zero--734493f4642dc77f9c309706.md) | 247 | `result-track:734493f4642dc77f9c3097068b6015497926b762900a63cae9eb28a3061a2830` |
| 26 | `theorem` | [boundary_riesz_factorial_sum_eq_source_polynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-factorial-sum-eq-source-polynomial--29a28a37375a6516d1ea64b0.md) | 262 | `result-track:29a28a37375a6516d1ea64b06204d6a290e67f96972c22d436f6600f58f9ea75` |
| 27 | `theorem` | [boundary_riesz_transform_eq_source_polynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/declarations/boundary-riesz-transform-eq-source-polynomial--5b77f82a2a591142988fbe58.md) | 276 | `result-track:5b77f82a2a591142988fbe5844153fe3c15ce9ce606929746f9a6f3289aeadeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
