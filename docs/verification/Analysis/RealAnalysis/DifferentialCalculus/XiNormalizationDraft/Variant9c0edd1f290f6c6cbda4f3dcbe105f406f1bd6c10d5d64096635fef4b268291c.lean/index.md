# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.XiNormalizationDraft.Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b3b1cdda7f876cdbc4da80c28df249949af5b70",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b3b1cdda7f876cdbc4da80c28df249949af5b70`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Divisor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comparisonDomain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/comparisondomain--08854ebc3ea0bf907d3f76ca.md) | 25 | `declaration-track:08854ebc3ea0bf907d3f76ca39c5fd48f555897793b5166602e0f9a1d8fe36aa` |
| 2 | `def` | [prefactor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/prefactor--45968504ae9de72b9fa908f1.md) | 28 | `declaration-track:45968504ae9de72b9fa908f173c053b23e17466f81ce2d5eb4ca4c4c2f8fdc7d` |
| 3 | `theorem` | [gamma_analytic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/gamma-analytic--5759af42f0665927be34bc18.md) | 30 | `result-track:5759af42f0665927be34bc1885734184cd1c9fa878597e32dee646edab7d5a06` |
| 4 | `theorem` | [prefactor_analytic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/prefactor-analytic--fa3196e8d33751eb6c2435d6.md) | 34 | `result-track:fa3196e8d33751eb6c2435d6ec42cc62a564a4e12d92aaccca27588b018e6ab4` |
| 5 | `theorem` | [prefactor_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/prefactor-ne-zero--16b00d743fbd3c55951b53f6.md) | 39 | `result-track:16b00d743fbd3c55951b53f6da6093190d207c88433d155cd5db487a16c2cb29` |
| 6 | `theorem` | [comparisonDomain_exceptional_guard](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/comparisondomain-exceptional-guard--faaf7d0c9569e9e6e3cce072.md) | 42 | `result-track:faaf7d0c9569e9e6e3cce072a603c83b776106693c779f8c9561d6b11a3bb129` |
| 7 | `theorem` | [strip_mem_domain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/strip-mem-domain--b6674f8d2a81039b2b2bbc97.md) | 56 | `result-track:b6674f8d2a81039b2b2bbc979823b279d228818c9090fa19e459b7b507036bbf` |
| 8 | `theorem` | [xi_eq_prefactor_zeta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/xi-eq-prefactor-zeta--a0aee1d3d885e859707be6bc.md) | 65 | `result-track:a0aee1d3d885e859707be6bcb7c0c32b19f95d76ad2b70862fff28b5576cc831` |
| 9 | `theorem` | [comparisonDomain_open](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/comparisondomain-open--a6d6f42cd18e0b9ba77f7096.md) | 71 | `result-track:a6d6f42cd18e0b9ba77f7096d164145097debe11d6d89805778f59d7781d758b` |
| 10 | `theorem` | [actual_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/actual-normalization--0826a51822e1b32870c8cc48.md) | 80 | `result-track:0826a51822e1b32870c8cc482639fa0d6cea85a9cd6e04d1e309a1fa0f528dac` |
| 11 | `theorem` | [xi_eventuallyEq_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/xi-eventuallyeq-normalization--d8b9b375397bd3d6a087df21.md) | 87 | `result-track:d8b9b375397bd3d6a087df21b90a791efc658a2bf44601fad508679c3e49167f` |
| 12 | `theorem` | [xi_order_eq_zeta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/xi-order-eq-zeta--07a608a746902915802843ff.md) | 94 | `result-track:07a608a746902915802843ff48a36cd13f01793c0b686fc9018a2e7f0de6270b` |
| 13 | `theorem` | [xi_order_finite](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/xi-order-finite--2229eb466406821d208cbee3.md) | 101 | `result-track:2229eb466406821d208cbee3d98574a2df426785004b28c0951c7601682be5a4` |
| 14 | `theorem` | [xi_orderNat_eq_zeta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/xi-ordernat-eq-zeta--81e87ab771ca6d70f0afe290.md) | 106 | `result-track:81e87ab771ca6d70f0afe2901f1a4d528c16212a63f95999a17a9e234a35ac1c` |
| 15 | `theorem` | [xi_divisor_eq_zeta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/xi-divisor-eq-zeta--be72b3b6938ccd174c15e37d.md) | 110 | `result-track:be72b3b6938ccd174c15e37d7459219dfe057bc5c65d59d5b71cd8b694c79993` |
| 16 | `def` | [verticalParameter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/verticalparameter--053cedfcf3c636fd7a35dd0b.md) | 122 | `declaration-track:053cedfcf3c636fd7a35dd0bbcc7eccb71c5e2c817c64b9d1216c22c922c3d4b` |
| 17 | `def` | [verticalXi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/verticalxi--c3a377f95d3ce231827ab174.md) | 124 | `declaration-track:c3a377f95d3ce231827ab17499e26e8195b6638728d0527eea5328ba195ad4d0` |
| 18 | `def` | [verticalDomain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/verticaldomain--05407cd8e8c22311cf88df74.md) | 127 | `declaration-track:05407cd8e8c22311cf88df742535e695024e7cfb156ae8cd192a5c6d9c38487a` |
| 19 | `theorem` | [verticalParameter_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/verticalparameter-deriv--2009d27cc6327edcdbd7c01e.md) | 129 | `result-track:2009d27cc6327edcdbd7c01e57f102a233cc28a61cc9b02ad395593b94398c95` |
| 20 | `theorem` | [verticalParameter_strip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/verticalparameter-strip--cbd04e9fef27fa81ec1f2cd8.md) | 134 | `result-track:cbd04e9fef27fa81ec1f2cd8fd5e9bfdc0d04aaa30f28dec198012bd7554778b` |
| 21 | `theorem` | [verticalXi_order](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/verticalxi-order--a6afc5d9c12dd50646390753.md) | 141 | `result-track:a6afc5d9c12dd50646390753b1f92ba02c19dd030a109b8ec607d23ed71d8812` |
| 22 | `theorem` | [verticalXi_order_finite](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/verticalxi-order-finite--40de5115ba910e0564a18967.md) | 150 | `result-track:40de5115ba910e0564a189671d44855b9f1be3cc6cc2d74e3f6ff29d00ba1be0` |
| 23 | `theorem` | [verticalXi_divisor_eq_zeta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/verticalxi-divisor-eq-zeta--13d027bbc9fb45ebd2084aa5.md) | 156 | `result-track:13d027bbc9fb45ebd2084aa5c626c521e04431f23fcc0ee5b4d0ec08447aa0f3` |
| 24 | `theorem` | [naive_endpoint_product_fails](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/declarations/naive-endpoint-product-fails--cdbae2352e7d2d52a439e737.md) | 176 | `result-track:cdbae2352e7d2d52a439e737dc114f88d583ed3ca511a19cc16bc96b8510bde1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
