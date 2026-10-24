# Verification target: GRWTSK.Analysis.MeasureTheory.Lebesgue.Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5fed7e3be6c28f5f8e823e63dfcf38e422bacd5",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5fed7e3be6c28f5f8e823e63dfcf38e422bacd5`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean.json)

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
| 1 | `class` | [HaveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/havelebesguedecomposition--1d8ad20ce12eedd54a45c87f.md) | 72 | `declaration-track:1d8ad20ce12eedd54a45c87fab92a032126447ae6280d409c6cd3306530c7e2b` |
| 2 | `theorem` | [not_haveLebesgueDecomposition_iff](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/not-havelebesguedecomposition-iff--8b092d5927152732ed9529f4.md) | 80 | `result-track:8b092d5927152732ed9529f4b00ea8fa597a2c753dd7e9484421f8702828a0a1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/instance--9b7a13777796009a4fc93f81.md) | 88 | `declaration-track:9b7a13777796009a4fc93f8136b2b0c47f2de6bcbcbf6ba19e915cb1c8f084d7` |
| 4 | `instance` | [haveLebesgueDecomposition_neg](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/havelebesguedecomposition-neg--e3fd41787983c8f1ed95d614.md) | 93 | `declaration-track:e3fd41787983c8f1ed95d614768916aa96da8f0e3c25191c31562400c030f634` |
| 5 | `instance` | [haveLebesgueDecomposition_smul](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/havelebesguedecomposition-smul--e818466ff9b32571b7e3842c.md) | 102 | `declaration-track:e818466ff9b32571b7e3842ce8700e6cf6796d2bb1f0a66981f923b1cf6e6877` |
| 6 | `instance` | [haveLebesgueDecomposition_smul_real](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/havelebesguedecomposition-smul-real--008a1b69783e23ab3b1f1f1d.md) | 111 | `declaration-track:008a1b69783e23ab3b1f1f1d264ebc44c77ff8ffe1f76845b7ea2f3213973dca` |
| 7 | `def` | [singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/singularpart--03aee5845630cfc7ecd0607a.md) | 127 | `declaration-track:03aee5845630cfc7ecd0607aa58ace6f92df520e951cccb0de1788ea05b4ae68` |
| 8 | `theorem` | [singularPart_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/singularpart-mutuallysingular--4e1a57ea4f4eb92f9fb67e2d.md) | 133 | `result-track:4e1a57ea4f4eb92f9fb67e2da9cc1585a48c9664731b6d15fd95a3937a35588d` |
| 9 | `theorem` | [singularPart_totalVariation](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/singularpart-totalvariation--9cd0a6e61c282c842822d307.md) | 138 | `result-track:9cd0a6e61c282c842822d3071c8eed8862273193d8908558f58cd0dc827b9998` |
| 10 | `theorem` | [mutuallySingular_singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/mutuallysingular-singularpart--ae1dc2ffed463281ad5b0992.md) | 150 | `result-track:ae1dc2ffed463281ad5b0992413f90318ceb35e99dcd4500347084a07f9fdcfb` |
| 11 | `def` | [rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/rnderiv--096fd831bb4938467c23ca70.md) | 164 | `declaration-track:096fd831bb4938467c23ca703e72d16d6e871bc3a34fe48e8ca4a7d2e4ffb555` |
| 12 | `theorem` | [rnDeriv_def](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/rnderiv-def--bed5ed1157ad06ed53775037.md) | 169 | `result-track:bed5ed1157ad06ed53775037b30561c22ee6c63838d4e5e61641ac972c75f837` |
| 13 | `theorem` | [measurable_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/measurable-rnderiv--fd334fd67a316d6496a7efe7.md) | 177 | `result-track:fd334fd67a316d6496a7efe7b18d63f49ae6d021e069c922c595def4f81390b0` |
| 14 | `theorem` | [integrable_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/integrable-rnderiv--3ad13fe3da44c837fbb7fdea.md) | 181 | `result-track:3ad13fe3da44c837fbb7fdea7847ad13f42ae8950e7365cc45b72e45bfed5a3d` |
| 15 | `theorem` | [singularPart_add_withDensity_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/singularpart-add-withdensity-rnderiv-eq--4bc08205d6f2aac731069fb3.md) | 195 | `result-track:4bc08205d6f2aac731069fb3fe6b7ee6d32c354f8eb7e2b382666f298792dc9f` |
| 16 | `theorem` | [jordanDecomposition_add_withDensity_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/jordandecomposition-add-withdensity-mutuallysingular--bd1758de6d7c532584811270.md) | 219 | `result-track:bd1758de6d7c532584811270d3a284cb0e5d8ec14bcd4e46039f43796bbd4701` |
| 17 | `theorem` | [toJordanDecomposition_eq_of_eq_add_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/tojordandecomposition-eq-of-eq-add-withdensity--a5712b3ee31506bd4b14d54e.md) | 231 | `result-track:a5712b3ee31506bd4b14d54e609e3c55ca74d36e88da025a789407c15f4e47ef` |
| 18 | `theorem` | [haveLebesgueDecomposition_mk'](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/havelebesguedecomposition-mk--b05f2be4b283ab9e8735f094.md) | 255 | `result-track:b05f2be4b283ab9e8735f0947bfef9d788bbf02ed4ccab1a2a75c21da035d089` |
| 19 | `theorem` | [haveLebesgueDecomposition_mk](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/havelebesguedecomposition-mk--d2ac8832a9d12aa0acc39722.md) | 272 | `result-track:d2ac8832a9d12aa0acc39722d5048a694c43bc7a66ca8e6d5cd9cf29003ea60f` |
| 20 | `theorem` | [eq_singularPart'](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/eq-singularpart--7744014cf703f841fd10f9a4.md) | 281 | `result-track:7744014cf703f841fd10f9a4a11c8e4fd3af91eacfc9afcdf33fae0640177224` |
| 21 | `theorem` | [eq_singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/eq-singularpart--6efbb3110718f0c8a630f4ac.md) | 301 | `result-track:6efbb3110718f0c8a630f4ac3f4a6ca9cf57db38a596a87cea5bc3511b607bbe` |
| 22 | `theorem` | [singularPart_zero](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/singularpart-zero--e0e7b95722b7dbdde20adfeb.md) | 311 | `result-track:e0e7b95722b7dbdde20adfeb3360cac66e0e3681d68e2ba8edae4fa5c3786398` |
| 23 | `theorem` | [singularPart_neg](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/singularpart-neg--7a08a3253909073a934f1acc.md) | 315 | `result-track:7a08a3253909073a934f1acc6110225487499572362dd7ac4624ce0e36c396a2` |
| 24 | `theorem` | [singularPart_smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/singularpart-smul-nnreal--d5390a108c33797ddf116bda.md) | 319 | `result-track:d5390a108c33797ddf116bda0b5d69fde4070a78a660a6e636f06d199dac4e52` |
| 25 | `theorem` | [singularPart_smul](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/singularpart-smul--c22a39d180f2996aea0a4c2e.md) | 329 | `result-track:c22a39d180f2996aea0a4c2ee5743bcd7f9dfaa3be834e63fb95f8316fa91fdb` |
| 26 | `theorem` | [singularPart_add](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/singularpart-add--97cdebc7f6c6fb88a3009188.md) | 348 | `result-track:97cdebc7f6c6fb88a30091880c479fd33c5e050e8f66805703f3bfa92e1070a3` |
| 27 | `theorem` | [singularPart_sub](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/singularpart-sub--3757e1149625da14c5dbc291.md) | 360 | `result-track:3757e1149625da14c5dbc2912c1905683bda94f32f5c9746399abc6854624026` |
| 28 | `theorem` | [eq_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/eq-rnderiv--666149f5f2e7f58a4fb9e0a0.md) | 368 | `result-track:666149f5f2e7f58a4fb9e0a02c8ed7f5a1afe60a35e0dd0b3aa8fae0f5b55958` |
| 29 | `theorem` | [rnDeriv_neg](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/rnderiv-neg--16763682dbb963e51192e419.md) | 380 | `result-track:16763682dbb963e51192e419e310e05417497a0aca1be18e56c0ca8e08e3f9d5` |
| 30 | `theorem` | [rnDeriv_smul](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/rnderiv-smul--5c172758ddda62949b0e262a.md) | 388 | `result-track:5c172758ddda62949b0e262afe9d28f6cf2d4896881a37b7ea877d3e56232745` |
| 31 | `theorem` | [rnDeriv_add](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/rnderiv-add--7ce512544a85652b51f30570.md) | 397 | `result-track:7ce512544a85652b51f3057021c93211c053015e842da3156c2e8835fe89d572` |
| 32 | `theorem` | [rnDeriv_sub](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/rnderiv-sub--dbaddeb2812e1efb00e75a39.md) | 409 | `result-track:dbaddeb2812e1efb00e75a39a4946e3fa21dc063e2a650abb7c37021de5b6045` |
| 33 | `class` | [HaveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/havelebesguedecomposition--1a9febb00145d913f2f95409.md) | 422 | `declaration-track:1a9febb00145d913f2f95409e2510bdc8910efa97aefa69add449018d76e0a1d` |
| 34 | `def` | [singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/singularpart--dcbad1e4c9fc348c0ace0167.md) | 433 | `declaration-track:dcbad1e4c9fc348c0ace01677589c8aefb136f7a8414a3daf4c3b315975843c9` |
| 35 | `def` | [rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/rnderiv--c79d06f3d2242112dd55fc85.md) | 437 | `declaration-track:c79d06f3d2242112dd55fc850ca4fcf14e372f4b022200cfc0df102e7f394ed9` |
| 36 | `theorem` | [integrable_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/integrable-rnderiv--c89624b2c96efb7cafe7b516.md) | 442 | `result-track:c89624b2c96efb7cafe7b516c0ca3dd4cddbc09dacd51572a8edd2ce6ce644f3` |
| 37 | `theorem` | [singularPart_add_withDensity_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/declarations/singularpart-add-withdensity-rnderiv-eq--000f543a1f0dd46d86e0ff32.md) | 448 | `result-track:000f543a1f0dd46d86e0ff329c167683d971c5f0ed592e3954ff88f8fc64b24c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
