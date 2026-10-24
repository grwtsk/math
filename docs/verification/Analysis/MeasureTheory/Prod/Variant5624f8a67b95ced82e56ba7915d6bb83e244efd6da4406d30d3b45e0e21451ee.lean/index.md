# Verification target: GRWTSK.Analysis.MeasureTheory.Prod.Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccbd4a15c5845619bac6d506fe64148062840dfe",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccbd4a15c5845619bac6d506fe64148062840dfe`.

Source path: `GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasProd](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/hasprod--2a21e3702201761fd3908a98.md) | 53 | `declaration-track:2a21e3702201761fd3908a98b96e5f6a7ab284c22ed1e40684592f5f5829ec11` |
| 2 | `def` | [prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/prod--1af1a1deb9a13f4cd99a35f9.md) | 60 | `declaration-track:1af1a1deb9a13f4cd99a35f947fab3ca065ed7dcaed7dda546fbb63437abe565` |
| 3 | `lemma` | [prod_eq_zero_of_not_hasProd](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/prod-eq-zero-of-not-hasprod--f691b80de52f1693d50806c4.md) | 64 | `result-track:f691b80de52f1693d50806c427c963deeda77b055517d483ee110a646ad38a26` |
| 4 | `lemma` | [prod_apply](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/prod-apply--7046c47264ccdeb19e2d9839.md) | 68 | `result-track:7046c47264ccdeb19e2d9839626ffc787451d8fae9c45691e07ec8de4e0a362c` |
| 5 | `lemma` | [HasProd.flip](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/hasprod-flip--99ef3d7a6bd075627912b574.md) | 84 | `result-track:99ef3d7a6bd075627912b57416de81c03df3e21174b604199d6869a14775a022` |
| 6 | `lemma` | [hasProd_flip_iff](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/hasprod-flip-iff--40e514ee0b3cec4d2cfe4727.md) | 90 | `result-track:40e514ee0b3cec4d2cfe4727ef8041183f063c090efbf7c68e3357a03e1cc002` |
| 7 | `theorem` | [stronglyMeasurable_vectorMeasure_prodMk_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/stronglymeasurable-vectormeasure-prodmk-left--94a8e369a8fb122c701504e0.md) | 96 | `result-track:94a8e369a8fb122c701504e0b1b338a074aa3bd8777aa64282e0b6a13d6ce227` |
| 8 | `theorem` | [integrable_vectorMeasure_prodMk_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/integrable-vectormeasure-prodmk-left--9f44c881897656f05f9e57e4.md) | 116 | `result-track:9f44c881897656f05f9e57e4c9117674d41d8eabc8cb54cd47d1cedfe1ccb5ec` |
| 9 | `def` | [prodOfIsFiniteMeasureLeft](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/prodofisfinitemeasureleft--9a6559f29b8e5667431a8a0a.md) | 127 | `declaration-track:9a6559f29b8e5667431a8a0ac01519eb988872871c1a91eab1f9dbd99949d820` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/instance--e51747691b87dfe5f4e27cce.md) | 159 | `declaration-track:e51747691b87dfe5f4e27cce9b2041c62667a258421ab428848d0cb5ef5e65f0` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/instance--67d60a210cfaa6126a0eee91.md) | 166 | `declaration-track:67d60a210cfaa6126a0eee9140dc66abde47f3e8418d6122a0bd40ce51908544` |
| 12 | `lemma` | [prod_eq_of_forall_apply_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/prod-eq-of-forall-apply-prod--6a2a599f51499ab1c55d536f.md) | 169 | `result-track:6a2a599f51499ab1c55d536f60f162e5804f9b3bb86f564911267cda2d24ab4c` |
| 13 | `lemma` | [map_prod_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/map-prod-swap--8830d761db1eb653c26c9f09.md) | 178 | `result-track:8830d761db1eb653c26c9f09462f41dab7fe54f5e9295a5a7dff208d591db398` |
| 14 | `lemma` | [prod_apply_eq_integral](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/prod-apply-eq-integral--8a50d006f6f0bd2d188fb3d9.md) | 187 | `result-track:8a50d006f6f0bd2d188fb3d971442628ae0b95a4532c4dfcfab0c349dd559e05` |
| 15 | `lemma` | [prod_flip_apply_eq_integral](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/prod-flip-apply-eq-integral--faf4b40be3dc236f539a23b7.md) | 198 | `result-track:faf4b40be3dc236f539a23b7aaf94fd918670cb5d479915ad07933167041a52e` |
| 16 | `lemma` | [variation_prod_le](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/variation-prod-le--d130f6624842b7de967293c0.md) | 203 | `result-track:d130f6624842b7de967293c01d9cafceec030a8eba7b6c7986a5830274c77151` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/instance--a4c95eb6c12a99568491db74.md) | 211 | `declaration-track:a4c95eb6c12a99568491db749a54fd237589c0de64e5e08de4cfd3384fe53187` |
| 18 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.HasProd.Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.MeasureTheory.Integrable.prod_vectorMeasure](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/root-grwtsk-analysis-measuretheory-hasprod-variant261375c541e2ca2c1f3491--62bf6cb42227195c34a3d805.md) | 219 | `result-track:62bf6cb42227195c34a3d8052977de4532fb7b171398f700f36aa443791c1a2a` |
| 19 | `theorem` | [integral_prod_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/integral-prod-swap--0071fb3cad0d663555d3ab8d.md) | 225 | `result-track:0071fb3cad0d663555d3ab8d83e63cf6f002fc6cdfc6279c4583978c65f82603` |
| 20 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.HasProd.Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.MeasureTheory.StronglyMeasurable.integral_vectorMeasure_prod_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/root-grwtsk-analysis-measuretheory-hasprod-variant261375c541e2ca2c1f3491--5d79935fc67b65a98217a5a1.md) | 234 | `result-track:5d79935fc67b65a98217a5a1d9b8a2d83efdf8d89261f0fe4a8526c12d6219ac` |
| 21 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.HasProd.Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.MeasureTheory.StronglyMeasurable.integral_vectorMeasure_prod_right'](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/root-grwtsk-analysis-measuretheory-hasprod-variant261375c541e2ca2c1f3491--c33ee384cd2fcf18e615642a.md) | 243 | `result-track:c33ee384cd2fcf18e615642a95fe7cef4aef7a8ed24c1740ede4a54be5523fff` |
| 22 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.HasProd.Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.MeasureTheory.StronglyMeasurable.integral_vectorMeasure_prod_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/root-grwtsk-analysis-measuretheory-hasprod-variant261375c541e2ca2c1f3491--a88ee8ca3a3bd9d95c5aedd8.md) | 251 | `result-track:a88ee8ca3a3bd9d95c5aedd81bd45bf04d43341294a75e96a79ee3d0618fbfff` |
| 23 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.HasProd.Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.MeasureTheory.StronglyMeasurable.integral_vectorMeasure_prod_left'](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/root-grwtsk-analysis-measuretheory-hasprod-variant261375c541e2ca2c1f3491--a2adafa76a566824f08bed79.md) | 258 | `result-track:a2adafa76a566824f08bed79daf491b22b290439866e06097e3bac6cad4f0457` |
| 24 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.HasProd.Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.MeasureTheory.AEStronglyMeasurable.integral_vectorMeasure_prod_right'](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/root-grwtsk-analysis-measuretheory-hasprod-variant261375c541e2ca2c1f3491--c7c4a0fbebfcc441a7d409e8.md) | 265 | `result-track:c7c4a0fbebfcc441a7d409e8a1f4d419eed6bdd9c3f7dbd9406c4969e5895aaf` |
| 25 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.HasProd.Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.MeasureTheory.Integrable.integral_vectorMeasure_prod_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/root-grwtsk-analysis-measuretheory-hasprod-variant261375c541e2ca2c1f3491--8366e4efdaa54182374880c3.md) | 273 | `result-track:8366e4efdaa54182374880c38f382fdf54e42d63ea8c56b2db2ae4e7fc832d12` |
| 26 | `theorem` | [lintegral_fn_integral_sub](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/lintegral-fn-integral-sub--e62f1d78749228f34ffdb8d9.md) | 284 | `result-track:e62f1d78749228f34ffdb8d93f1ee715fe375bf8036a7bc536d731bc044c8095` |
| 27 | `theorem` | [continuous_integral_integral](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/continuous-integral-integral--1e612db56976a8d722f073ad.md) | 295 | `result-track:1e612db56976a8d722f073ad8259e031ef6a5bd04c81fd7165644d72b5017bf9` |
| 28 | `theorem` | [integral_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/integral-prod--00614d5d8b621f4457622127.md) | 322 | `result-track:00614d5d8b621f44576221274561557aa0b0676a7ef2bff58eb3f78b56fd3aa2` |
| 29 | `theorem` | [integral_prod_smul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/integral-prod-smul--6ad664ac2559e16dc70a8e78.md) | 370 | `result-track:6ad664ac2559e16dc70a8e78f65d3b95b208bf901c3759943d0eacfb7cfc0fba` |
| 30 | `theorem` | [integral_prod_symm](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/integral-prod-symm--c14eabac7f03cea4bd5aabc4.md) | 383 | `result-track:c14eabac7f03cea4bd5aabc4f9ccf64665d7da42640ef63cc979bcf320d1b627` |
| 31 | `theorem` | [integral_prod_smul_symm](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/integral-prod-smul-symm--591ea04c73f3df95e3ad4b3a.md) | 397 | `result-track:591ea04c73f3df95e3ad4b3a0faa13d315aa27b7ce6e561428a0f21936d59747` |
| 32 | `theorem` | [integral_integral](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/integral-integral--dc7e8e2944f263dce1c5509b.md) | 406 | `result-track:dc7e8e2944f263dce1c5509b749b01749b7f6571fa13e7d94b9821bb8dfa6fdb` |
| 33 | `theorem` | [integral_integral_smul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/integral-integral-smul--95500a8d4d8e342d47b5e5e2.md) | 416 | `result-track:95500a8d4d8e342d47b5e5e214fd8da3de67e5aa1e67734528abfbb8792b8963` |
| 34 | `theorem` | [integral_integral_symm](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/integral-integral-symm--5f95b1d35aac2878dbb393b4.md) | 423 | `result-track:5f95b1d35aac2878dbb393b49603c800e70051c16728e1adaee92bda06ba16b7` |
| 35 | `theorem` | [integral_integral_smul_symm](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/integral-integral-smul-symm--4c6b056e8ed2673f07130356.md) | 433 | `result-track:4c6b056e8ed2673f07130356cb185e462fb8b6b53dbddf94c58486e424c30e4d` |
| 36 | `theorem` | [integral_integral_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/integral-integral-swap--7741db5f99d2f310ac8840bb.md) | 442 | `result-track:7741db5f99d2f310ac8840bb852d340466cc86f16d8e5213b34380cf012bcabf` |
| 37 | `theorem` | [integral_integral_smul_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/declarations/integral-integral-smul-swap--9429e419bb57e286a39030eb.md) | 461 | `result-track:9429e419bb57e286a39030ebb1163074d20cad84d3ab4af27e3258913b7fe8ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
