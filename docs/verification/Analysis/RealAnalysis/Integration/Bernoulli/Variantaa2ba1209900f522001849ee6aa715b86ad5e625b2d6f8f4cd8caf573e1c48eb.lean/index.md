# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Bernoulli.Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ebdc83d14a2a60de1acd65b241c770e168e7154",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ebdc83d14a2a60de1acd65b241c770e168e7154`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure--ceb7d2e9fea6510afa2c88a8.md) | 47 | `declaration-track:ceb7d2e9fea6510afa2c88a8c9d9250f6bbe658bb497f97c6e7bc37ef51b970d` |
| 2 | `lemma` | [bernoulliMeasure_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-def--8086a5f51951749872c5c4da.md) | 53 | `result-track:8086a5f51951749872c5c4dae73e4055b51de36d3b9705b0f03146132feb2b0b` |
| 3 | `lemma` | [bernoulliMeasure_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-zero--e906da9132172fd02460a4fe.md) | 57 | `result-track:e906da9132172fd02460a4fee7762e10745d39e9530e201c9cc3a281e844e13b` |
| 4 | `lemma` | [bernoulliMeasure_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-one--36458ed76c4a28edbd4469bb.md) | 61 | `result-track:36458ed76c4a28edbd4469bbdf357dddda013573f8836d0ca316db6ac2a6d20b` |
| 5 | `lemma` | [bernoulliMeasure_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-apply--cae1c43df0664013d76a6e92.md) | 64 | `result-track:cae1c43df0664013d76a6e92d4bb3a76a808c7549cb8ebe30a5f177f0996035a` |
| 6 | `lemma` | [bernoulliMeasure_real_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-real-apply--281589148a5b449fd508c34b.md) | 76 | `result-track:281589148a5b449fd508c34b8c7e576b9dd8245894417e60ebc50bbfbb438560` |
| 7 | `lemma` | [bernoulliMeasure_apply_of_mem_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-apply-of-mem-of-mem--fa8e6f8ad768cd9054f33a05.md) | 89 | `result-track:fa8e6f8ad768cd9054f33a05d70cb5e43dd8ba8f2a9ba1fb08ea57fb0f300993` |
| 8 | `lemma` | [bernoulliMeasure_real_apply_of_mem_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-real-apply-of-mem-of-mem--a9237f70967bd123e16511e5.md) | 96 | `result-track:a9237f70967bd123e16511e580fb058e3e27f8b11aca03e87088b7cd5bb45c3f` |
| 9 | `lemma` | [bernoulliMeasure_apply_of_mem_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-apply-of-mem-of-notmem--a565e9662958f80186d47aa3.md) | 103 | `result-track:a565e9662958f80186d47aa39c0fdf565b828474285c6f948187093dcbcd8970` |
| 10 | `lemma` | [bernoulliMeasure_real_apply_of_mem_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-real-apply-of-mem-of-notmem--d87753027af8d1d9fb44901c.md) | 110 | `result-track:d87753027af8d1d9fb44901c7c6d4d1dcfa73e5d00dddc852594c4f6129b550d` |
| 11 | `lemma` | [bernoulliMeasure_apply_of_notMem_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-apply-of-notmem-of-mem--00aa4508d4c59c16d7612396.md) | 117 | `result-track:00aa4508d4c59c16d761239614c997262227add827b32068db16e610519cb91e` |
| 12 | `lemma` | [bernoulliMeasure_real_apply_of_notMem_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-real-apply-of-notmem-of-mem--921dfd46dad6205e67b49670.md) | 124 | `result-track:921dfd46dad6205e67b496701d4b82b01d226e4549e550fd6339d9e7c429fdb2` |
| 13 | `lemma` | [bernoulliMeasure_apply_of_notMem_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-apply-of-notmem-of-notmem--39a8a3a12bca03e6bee87606.md) | 131 | `result-track:39a8a3a12bca03e6bee87606981fd6908b754e60602ee873bc294931c373a5ac` |
| 14 | `lemma` | [bernoulliMeasure_real_apply_of_notMem_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-real-apply-of-notmem-of-notmem--1c5a829971329dcd403aa99b.md) | 138 | `result-track:1c5a829971329dcd403aa99befae738ffab67194dece66f8aeb96435e6e520d5` |
| 15 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/instance--b896856e6ea50665e3d8fb78.md) | 144 | `declaration-track:b896856e6ea50665e3d8fb78f60ecf624a18b908c7ffb79c7d056ec296d43d91` |
| 16 | `theorem` | [bernoulliMeasure_self_eq_dirac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/bernoullimeasure-self-eq-dirac--a06e7eb5323bdf4d756972d9.md) | 148 | `result-track:a06e7eb5323bdf4d756972d9906cbf28e5fac52f6ef3957b8a4ae144a6982e66` |
| 17 | `theorem` | [map_bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/map-bernoullimeasure--0e59a357fad99ade308c1eda.md) | 153 | `result-track:0e59a357fad99ade308c1eda3b891c7f8fe2f529e7ede08de4e158f31614d123` |
| 18 | `theorem` | [map_bernoulliMeasure'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/map-bernoullimeasure--82b6870a49c4339f3a123b26.md) | 161 | `result-track:82b6870a49c4339f3a123b26db9cb0c162d90156e840f26671f2a958b6b09b09` |
| 19 | `lemma` | [eq_bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/eq-bernoullimeasure--efd8a0fccbe339c06847e1a8.md) | 165 | `result-track:efd8a0fccbe339c06847e1a8fce8cd604c46aa2a13f18373cfd7c13ea1d986a0` |
| 20 | `lemma` | [integrable_bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/integrable-bernoullimeasure--cc95a4498506363c66c76865.md) | 178 | `result-track:cc95a4498506363c66c76865fe626974af2a392a8c3b5cb0de534b3c2f282f0f` |
| 21 | `lemma` | [integral_bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/integral-bernoullimeasure--c9463d8599e9d5b0943452c9.md) | 185 | `result-track:c9463d8599e9d5b0943452c9f2d6c385b385c7fee1e132d902d8cd646cb0bdd1` |
| 22 | `theorem` | [hasLaw_indicator_bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/haslaw-indicator-bernoullimeasure--1f8c30275ae44d1f7c503ba7.md) | 200 | `result-track:1f8c30275ae44d1f7c503ba7504de8193a58dbd9989487a2529a8639fc47a42b` |
| 23 | `theorem` | [hasLaw_indicator_one_bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/declarations/haslaw-indicator-one-bernoullimeasure--92ff615ec02f6d2bb0971f99.md) | 212 | `result-track:92ff615ec02f6d2bb0971f99c3c9923f7287c74012f0ef09246b1cc28c819d4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
