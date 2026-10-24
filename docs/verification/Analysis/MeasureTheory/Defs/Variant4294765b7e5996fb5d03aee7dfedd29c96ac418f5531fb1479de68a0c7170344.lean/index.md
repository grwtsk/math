# Verification target: GRWTSK.Analysis.MeasureTheory.Defs.Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03e2c87f3564d68e73e47cce5111990ca20845c9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03e2c87f3564d68e73e47cce5111990ca20845c9`.

Source path: `GRWTSK/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean.json)

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
| 1 | `def` | [eLpNorm'](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnorm--e8d06b089582569bf3f1ab02.md) | 77 | `declaration-track:e8d06b089582569bf3f1ab026f5b0febf4daf0705708fc5c36730881834b24b5` |
| 2 | `lemma` | [eLpNorm'_eq_lintegral_enorm](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnorm-eq-lintegral-enorm--09eb838508094dad09e6f0a9.md) | 80 | `result-track:09eb838508094dad09e6f0a9ba84322c2f560fc8120c1d64267393b384812dfc` |
| 3 | `def` | [eLpNormEssSup](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnormesssup--5c2ac983a649768b0d5644e3.md) | 85 | `declaration-track:5c2ac983a649768b0d5644e305cac3524de4d5cfd6b218b5cdc26ae804636a96` |
| 4 | `lemma` | [eLpNormEssSup_eq_essSup_enorm](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnormesssup-eq-esssup-enorm--53792bdf2b0aa3613fc12837.md) | 88 | `result-track:53792bdf2b0aa3613fc128379a4833456465c97932e969df369ce2289209bc7a` |
| 5 | `def` | [eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnorm--a9327ff03d007248eac4c033.md) | 95 | `declaration-track:a9327ff03d007248eac4c03312e93b85be6a0802a24dcc842819b0fefe7271f1` |
| 6 | `theorem` | [eLpNorm_of_not_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnorm-of-not-aestronglymeasurable--9477d6426de3d35be5983a56.md) | 104 | `result-track:9477d6426de3d35be5983a5676cdfe0c9af285da5aadbbec1901acd771daa028` |
| 7 | `theorem` | [aestronglyMeasurable_of_eLpNorm_ne_top](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/aestronglymeasurable-of-elpnorm-ne-top--64ccfe845757a0ba64483b2f.md) | 109 | `result-track:64ccfe845757a0ba64483b2f43d661ee9515f73534f33c4c672d7bb1dd04d122` |
| 8 | `theorem` | [eLpNorm_eq_eLpNorm'](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnorm-eq-elpnorm--599c33d26805b9365bb8ebac.md) | 114 | `result-track:599c33d26805b9365bb8ebac1b531d8148fa83f9b15d304f99e21beec80c98ef` |
| 9 | `lemma` | [eLpNorm_nnreal_eq_eLpNorm'](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnorm-nnreal-eq-elpnorm--2c8076701937a4d77c65c336.md) | 118 | `result-track:2c8076701937a4d77c65c3367e76803d48fac2dac3cf8cab3e2cbde625f4e40c` |
| 10 | `lemma` | [eLpNorm_eq_lintegral_rpow_enorm_toReal](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnorm-eq-lintegral-rpow-enorm-toreal--195a9a6663ddd6ebdd8227e1.md) | 123 | `result-track:195a9a6663ddd6ebdd8227e1073f422258d2702c741630be50c598be55cc5ec8` |
| 11 | `lemma` | [eLpNorm_nnreal_eq_lintegral](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnorm-nnreal-eq-lintegral--c7e9e3bf083dc80a1393a34c.md) | 131 | `result-track:c7e9e3bf083dc80a1393a34c61f2e5bcad621400328782e8f2b2ae642ff91047` |
| 12 | `theorem` | [eLpNorm_one_eq_lintegral_enorm](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnorm-one-eq-lintegral-enorm--64000cb853b110ae77fa2bc5.md) | 136 | `result-track:64000cb853b110ae77fa2bc58747d0d62003d4b9d0aea578b221b1f10d5a7391` |
| 13 | `theorem` | [lintegral_enorm_le_eLpNorm_one](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/lintegral-enorm-le-elpnorm-one--ad46d2ca1db0ac47dc43e006.md) | 142 | `result-track:ad46d2ca1db0ac47dc43e006b3df5d7093ff767ba1168bc9aee0e6443b2fbaa2` |
| 14 | `theorem` | [eLpNorm_exponent_top](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnorm-exponent-top--e87770d8c17df8815f80d383.md) | 149 | `result-track:e87770d8c17df8815f80d383c847c4c7aff805335ca10e802818ea275fc47cdc` |
| 15 | `theorem` | [eLpNormEssSup_le_eLpNorm_top](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnormesssup-le-elpnorm-top--75609b2b9bc28401c20fcb61.md) | 152 | `result-track:75609b2b9bc28401c20fcb619fb6193046d6811d7b8557b728e276a9a634f1cd` |
| 16 | `def` | [MemLp](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/memlp--f0d31eb718b880fd3d11bd42.md) | 160 | `declaration-track:f0d31eb718b880fd3d11bd42a05378ad81dad70f9f02a9938cc5a7ad7fa05a34` |
| 17 | `lemma` | [memLp_iff](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/memlp-iff--9b2a07b3e57da6edf6bf652d.md) | 163 | `result-track:9b2a07b3e57da6edf6bf652d0b0f268f472860fd2f40eac0f3600ec1a762b5f4` |
| 18 | `theorem` | [MemLp.aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/memlp-aestronglymeasurable--713ab75326b38abec1edab12.md) | 165 | `result-track:713ab75326b38abec1edab120bcbae23e848696531ac2df8a7ba7c4d2a59def2` |
| 19 | `lemma` | [MemLp.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/memlp-aemeasurable--8520a45ccd7163ff886c3ae1.md) | 169 | `result-track:8520a45ccd7163ff886c3ae13edde57c712579397e048b8b8f17998ef0bdcc05` |
| 20 | `theorem` | [lintegral_rpow_enorm_eq_rpow_eLpNorm'](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/lintegral-rpow-enorm-eq-rpow-elpnorm--23d9f9f7b1fe596e4c380c89.md) | 175 | `result-track:23d9f9f7b1fe596e4c380c8972259309a83113a54963c913be0943b34e5ac190` |
| 21 | `lemma` | [eLpNorm_nnreal_pow_eq_lintegral](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/elpnorm-nnreal-pow-eq-lintegral--1ed6eb6b0e2f720a543bf2af.md) | 180 | `result-track:1ed6eb6b0e2f720a543bf2af9b6c84315795fb7c48f8cd84e8197ed37dead63f` |
| 22 | `def` | [lpNorm](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/declarations/lpnorm--253a016190ae97bffe46568d.md) | 190 | `declaration-track:253a016190ae97bffe46568d94343c8201cd4bd6d5fb846173e1a380f81bb30d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
