# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.XiNormalizationDraft.Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9274ac95ae8d1ebd0c9947327c8d76790d23006",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9274ac95ae8d1ebd0c9947327c8d76790d23006`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Divisor` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comparisonDomain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/comparisondomain--f956bf82aa2f432bf4dbe9f9.md) | 17 | `declaration-track:f956bf82aa2f432bf4dbe9f9c956c93758a47de3fbb0b2ce28e2f33316f79e01` |
| 2 | `def` | [prefactor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/prefactor--36674e0b00c2193a57d8aad6.md) | 20 | `declaration-track:36674e0b00c2193a57d8aad60e21878d7575c6c6ccdd3829cb3ef61cbf89932c` |
| 3 | `theorem` | [gamma_analytic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/gamma-analytic--68c74f26037896362488f5ad.md) | 22 | `result-track:68c74f26037896362488f5ad29333e4d117864faa74bc36db05cfaf8870c6643` |
| 4 | `theorem` | [prefactor_analytic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/prefactor-analytic--35b98d53e4a903e403bd5749.md) | 26 | `result-track:35b98d53e4a903e403bd5749095600d06e2d44df88cde8a5ed0e34c8549cd266` |
| 5 | `theorem` | [prefactor_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/prefactor-ne-zero--221124a152d583cacda69d2b.md) | 31 | `result-track:221124a152d583cacda69d2bda7ab9b738a1890d2f687b24df8f3682d57423c6` |
| 6 | `theorem` | [comparisonDomain_exceptional_guard](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/comparisondomain-exceptional-guard--c74f4a455ed1fce873051de9.md) | 34 | `result-track:c74f4a455ed1fce873051de92ca2818c1fcf7ba31618a5e3a473aeb97009baab` |
| 7 | `theorem` | [strip_mem_domain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/strip-mem-domain--f8479e3ae7d21ee30115f227.md) | 48 | `result-track:f8479e3ae7d21ee30115f2271d25fe3467876b5a1fd4d5bdb167c002596144b0` |
| 8 | `theorem` | [xi_eq_prefactor_zeta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/xi-eq-prefactor-zeta--8d633d44c51d07360c059d10.md) | 57 | `result-track:8d633d44c51d07360c059d10c8eabc4037af8f30d5ab93090d8fe5b6bf1ddafc` |
| 9 | `theorem` | [comparisonDomain_open](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/comparisondomain-open--c4ba2e222b9d5c44b29d0691.md) | 63 | `result-track:c4ba2e222b9d5c44b29d0691bf304fe6b83751763da3833b385bab4612d8f5b2` |
| 10 | `theorem` | [actual_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/actual-normalization--7df9c89b4dec9b74f45e0eca.md) | 72 | `result-track:7df9c89b4dec9b74f45e0eca98b7821d2d914ad917a36769af0858447c26c3c8` |
| 11 | `theorem` | [xi_eventuallyEq_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/xi-eventuallyeq-normalization--36a467d05e6b89c0ba72ecf5.md) | 79 | `result-track:36a467d05e6b89c0ba72ecf5136bb69dfb7e50d551445e02d3767fc7e8fa26dc` |
| 12 | `theorem` | [xi_order_eq_zeta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/xi-order-eq-zeta--6944d8e00bab49251be0e68f.md) | 86 | `result-track:6944d8e00bab49251be0e68f1a9b9bf6d5ab553f9fbcb18692c2265faf27a6d7` |
| 13 | `theorem` | [xi_order_finite](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/xi-order-finite--26b4bd5965efef5f49cf2173.md) | 93 | `result-track:26b4bd5965efef5f49cf2173c3d7cc12b5d61ffee595b03582ca47be7d4b6f85` |
| 14 | `theorem` | [xi_orderNat_eq_zeta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/xi-ordernat-eq-zeta--9197f4059f16654f243eff1e.md) | 98 | `result-track:9197f4059f16654f243eff1ec5a2408569848cd43060614133a9a0c2da76b7d0` |
| 15 | `theorem` | [xi_divisor_eq_zeta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/xi-divisor-eq-zeta--fca8d717311f704e200f6b0d.md) | 102 | `result-track:fca8d717311f704e200f6b0d6c392d54cfe816fdfc12bc7737e48bafba8d0920` |
| 16 | `def` | [verticalParameter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/verticalparameter--07590eeac12fc6ec64e75653.md) | 114 | `declaration-track:07590eeac12fc6ec64e756539df79cec99f638072e5d72e38d9bd4e683f1995f` |
| 17 | `def` | [verticalXi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/verticalxi--5fd5e9a5e893120e62bb0e94.md) | 116 | `declaration-track:5fd5e9a5e893120e62bb0e9462098179421f94f4d479e89077714c8b6e494130` |
| 18 | `def` | [verticalDomain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/verticaldomain--55f4bdd610d4327da58c5ebe.md) | 119 | `declaration-track:55f4bdd610d4327da58c5ebe1250430bdf87b05aab3504f02ca870e1513a73b3` |
| 19 | `theorem` | [verticalParameter_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/verticalparameter-deriv--b0a997f072c282e86597b63a.md) | 121 | `result-track:b0a997f072c282e86597b63ab4221e9e1b83b27c068354787325cc1a5172d2f6` |
| 20 | `theorem` | [verticalParameter_strip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/verticalparameter-strip--aefd08bc8314f0dce6b38170.md) | 126 | `result-track:aefd08bc8314f0dce6b38170b5a14456c0977da35c09c22d4cfd6da8dd011489` |
| 21 | `theorem` | [verticalXi_order](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/verticalxi-order--bed9bd9badf07aba12c9552e.md) | 133 | `result-track:bed9bd9badf07aba12c9552e66fdf8dbf98f8f5cbbb4bf12b02cb77f31f57bee` |
| 22 | `theorem` | [verticalXi_order_finite](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/verticalxi-order-finite--45f2e8f50b38e1039d35eefb.md) | 142 | `result-track:45f2e8f50b38e1039d35eefb5551b35aaa70ed613a28ee6ed96301e77026a305` |
| 23 | `theorem` | [verticalXi_divisor_eq_zeta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/verticalxi-divisor-eq-zeta--6077aeed5d2639ac792b2d3a.md) | 148 | `result-track:6077aeed5d2639ac792b2d3af5097c260f101ba45629e6c08bffaf7126ded939` |
| 24 | `theorem` | [naive_endpoint_product_fails](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/declarations/naive-endpoint-product-fails--ea62f8437e14c9a60fc39d78.md) | 168 | `result-track:ea62f8437e14c9a60fc39d78b51dfd09786963d218d500e2a8461126d8a4ddf9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
