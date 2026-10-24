# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MeanInequalities.Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cac203378984c4f5518115a7476a86395085199",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cac203378984c4f5518115a7476a86395085199`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MeanInequalities` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MeanInequalitiesPow` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SpecialFunctions.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/macro-rules--adff5307ec7b4634eaec9bd9.md) | 63 | `declaration-track:adff5307ec7b4634eaec9bd94069c2e33d59fc40889c49cdb70ff56e57fa5f8a` |
| 2 | `theorem` | [lintegral_mul_le_one_of_lintegral_rpow_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/lintegral-mul-le-one-of-lintegral-rpow-eq-one--01cce0d254211f762821f6d3.md) | 69 | `result-track:01cce0d254211f762821f6d307f12820cbfd33032495b1cdcb3dda5329ff05cb` |
| 3 | `def` | [funMulInvSnorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/funmulinvsnorm--fbcc75104c8a1cf40e925cae.md) | 86 | `declaration-track:fbcc75104c8a1cf40e925cae7708863e950f175e666d6ae47680470b6a37df77` |
| 4 | `theorem` | [fun_eq_funMulInvSnorm_mul_snorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/fun-eq-funmulinvsnorm-mul-snorm--e9f5bb39cef898360030498a.md) | 90 | `result-track:e9f5bb39cef898360030498aedcfea38a461bb02abb091fb467831ca010983ff` |
| 5 | `theorem` | [funMulInvSnorm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/funmulinvsnorm-rpow--ab550df66394da7260e1a95f.md) | 96 | `result-track:ab550df66394da7260e1a95f1748a8c137a277486a9c69b3c418e3bf0ffb9ca0` |
| 6 | `theorem` | [lintegral_rpow_funMulInvSnorm_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/lintegral-rpow-funmulinvsnorm-eq-one--d81c6d61f210758e22834173.md) | 104 | `result-track:d81c6d61f210758e22834173677e0aef2da0b1be0110e38fe5d5e5be1ad7796a` |
| 7 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-ne-top--d16a35d5128206ee819ff054.md) | 113 | `result-track:d16a35d5128206ee819ff054e71234aa4f92c0ee2b91f3933ca247966bac7092` |
| 8 | `theorem` | [ae_eq_zero_of_lintegral_rpow_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/ae-eq-zero-of-lintegral-rpow-eq-zero--b2f00d551e446098d588d7d4.md) | 136 | `result-track:b2f00d551e446098d588d7d4b6c474d306751b8ed28852d5f20be83c00e62c3a` |
| 9 | `theorem` | [lintegral_mul_eq_zero_of_lintegral_rpow_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/lintegral-mul-eq-zero-of-lintegral-rpow-eq-zero--e8a07a74342b723b79cb1957.md) | 145 | `result-track:e8a07a74342b723b79cb1957dea54d9bd3a8cd479573918b200b0fa853e7bebe` |
| 10 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_eq_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-eq-top--cc31ad9798bb2148a5935d61.md) | 155 | `result-track:cc31ad9798bb2148a5935d61ea67805162f8a51f9a7e428dca68a63ca5e8180e` |
| 11 | `theorem` | [lintegral_mul_le_Lp_mul_Lq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/lintegral-mul-le-lp-mul-lq--bf909b32a8e54830b589e3eb.md) | 167 | `result-track:bf909b32a8e54830b589e3eb8d9581b0a65b3c57eda8472a6ef8f7f06a4eaa0e` |
| 12 | `theorem` | [lintegral_rpow_add_lt_top_of_lintegral_rpow_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/lintegral-rpow-add-lt-top-of-lintegral-rpow-lt-top--2f04f02560abf9e63a6b3a4f.md) | 186 | `result-track:2f04f02560abf9e63a6b3a4f9a003857131637252a613eabe6e7047d7d21be79` |
| 13 | `theorem` | [lintegral_Lp_mul_le_Lq_mul_Lr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/lintegral-lp-mul-le-lq-mul-lr--f144cb7c926c7e204ace6627.md) | 224 | `result-track:f144cb7c926c7e204ace6627c10bf450c1f264a78758cc048713935ce0b3e603` |
| 14 | `theorem` | [lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/lintegral-mul-rpow-le-lintegral-rpow-mul-lintegral-rpow--621d1c6fb65eb04280f01cf5.md) | 262 | `result-track:621d1c6fb65eb04280f01cf583105c30e3ef7e6de2d757b7b48d062e66980130` |
| 15 | `theorem` | [lintegral_rpow_add_le_add_snorm_mul_lintegral_rpow_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/lintegral-rpow-add-le-add-snorm-mul-lintegral-rpow-add--5aeab65c9cbfa093a751064e.md) | 282 | `result-track:5aeab65c9cbfa093a751064e4aef251998febcc823032917bfb706400047d9a4` |
| 16 | `theorem` | [lintegral_Lp_add_le_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/lintegral-lp-add-le-aux--1c1bbe50eb8057f02284774e.md) | 320 | `result-track:1c1bbe50eb8057f02284774ec4153b4f8b71b7806a2c1b016fa601d83f76c035` |
| 17 | `theorem` | [lintegral_Lp_add_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/lintegral-lp-add-le--83454ce011d7ce628a04318c.md) | 354 | `result-track:83454ce011d7ce628a04318c68b567487d2c6c63eb72bebffbe1e06cabcdfb52` |
| 18 | `theorem` | [lintegral_Lp_add_le_of_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/lintegral-lp-add-le-of-le-one--0142fb9860f68f0a7fc2fa16.md) | 385 | `result-track:0142fb9860f68f0a7fc2fa160c08000b8b22f6a87cd7042770ce3c8ae8cfa14f` |
| 19 | `theorem` | [NNReal.lintegral_mul_le_Lp_mul_Lq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/declarations/nnreal-lintegral-mul-le-lp-mul-lq--cc89ae53c3ccaeee4ce282b4.md) | 407 | `result-track:cc89ae53c3ccaeee4ce282b485f53aa3cad8db9a803fb93a4b7330ce359088ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
