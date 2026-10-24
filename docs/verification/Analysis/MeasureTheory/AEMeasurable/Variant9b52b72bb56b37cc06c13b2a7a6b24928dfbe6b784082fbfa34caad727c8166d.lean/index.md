# Verification target: GRWTSK.Analysis.MeasureTheory.AEMeasurable.Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f397779b8f3f10c3541ee1f14058988ec8df78a3",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f397779b8f3f10c3541ee1f14058988ec8df78a3`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean.json)

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
| 1 | `theorem` | [ae_eq_trim_iff_of_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/ae-eq-trim-iff-of-aestronglymeasurable--5920e4c9956725e2ede8031a.md) | 54 | `result-track:5920e4c9956725e2ede8031a722dfac39d7b38ee6d40de6fbef35618e13052d9` |
| 2 | `theorem` | [AEStronglyMeasurable.comp_ae_measurable'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/aestronglymeasurable-comp-ae-measurable--4c9ae3d61e1832acaacf640d.md) | 62 | `result-track:4c9ae3d61e1832acaacf640d09be4386b242fa0700034034664381a0599fd49c` |
| 3 | `def` | [lpMeasSubgroup](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeassubgroup--80fc8f85d2a4600a1f0353d8.md) | 84 | `declaration-track:80fc8f85d2a4600a1f0353d89659ec8814349e5cb14b48dd01bdb0d992832008` |
| 4 | `def` | [lpMeas](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeas--2198eb4f9b0e5faa2eecd452.md) | 96 | `declaration-track:2198eb4f9b0e5faa2eecd4523a06ed87b12b9e03e22a04f2e40a200f028b612e` |
| 5 | `theorem` | [mem_lpMeasSubgroup_iff_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/mem-lpmeassubgroup-iff-aestronglymeasurable--7370876214d0ea2fca068904.md) | 105 | `result-track:7370876214d0ea2fca06890445fcc0f0d53c8b80a767e5a78766c51bbdaa8e19` |
| 6 | `theorem` | [mem_lpMeas_iff_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/mem-lpmeas-iff-aestronglymeasurable--cd1550c92ab79a729030b395.md) | 109 | `result-track:cd1550c92ab79a729030b395c308c1c3b870818d8ccd6220fb4299f1b695987f` |
| 7 | `theorem` | [lpMeas.aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeas-aestronglymeasurable--15ed8b70f8bba1026e2f0de3.md) | 113 | `result-track:15ed8b70f8bba1026e2f0de31b2081b248e1c37aebaabc2fc5c4ced78a939208` |
| 8 | `theorem` | [mem_lpMeas_self](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/mem-lpmeas-self--a36e478d3f87a928d3bf4472.md) | 117 | `result-track:a36e478d3f87a928d3bf44726e4b630f8726f275124e3416720d6e5b0e53adf7` |
| 9 | `theorem` | [mem_lpMeas_indicatorConstLp](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/mem-lpmeas-indicatorconstlp--c4ac19fce74f69389789320d.md) | 121 | `result-track:c4ac19fce74f69389789320d29547b571a8157d96860ad421fb707ff02c01344` |
| 10 | `theorem` | [memLp_trim_of_mem_lpMeasSubgroup](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/memlp-trim-of-mem-lpmeassubgroup--b7707666f495032778778c3b.md) | 140 | `result-track:b7707666f495032778778c3bcd146dc47b4a98163fe7526392ba66e9dbf2e6ed` |
| 11 | `theorem` | [mem_lpMeasSubgroup_toLp_of_trim](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/mem-lpmeassubgroup-tolp-of-trim--270bd1643429c07dc0a98e42.md) | 154 | `result-track:270bd1643429c07dc0a98e4231790e222a99dbeb457b810a514c14ead1883507` |
| 12 | `def` | [lpMeasSubgroupToLpTrim](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeassubgrouptolptrim--a833134ab8112ab3db570d97.md) | 164 | `declaration-track:a833134ab8112ab3db570d9703b868acb3915b65da8554ac5d6c71a8902d4fb8` |
| 13 | `def` | [lpMeasToLpTrim](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeastolptrim--6276dd7ac928088e8f7d8c97.md) | 171 | `declaration-track:6276dd7ac928088e8f7d8c973d390ae783a5564c3440f88a7f8034b65a6ff5e0` |
| 14 | `def` | [lpTrimToLpMeasSubgroup](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lptrimtolpmeassubgroup--490daf94727086dc86508383.md) | 177 | `declaration-track:490daf94727086dc86508383e5e71f0909471555aeb820868e9fb146d83a29be` |
| 15 | `def` | [lpTrimToLpMeas](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lptrimtolpmeas--f895b856999b3a2a1e4355a6.md) | 183 | `declaration-track:f895b856999b3a2a1e4355a610fcffce2efb8ce6f161290a1ad1ae20163eb252` |
| 16 | `theorem` | [lpMeasSubgroupToLpTrim_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeassubgrouptolptrim-ae-eq--42fb66bbb2ad54792bde30a7.md) | 188 | `result-track:42fb66bbb2ad54792bde30a78944277f1119adf5a67a2ef13ef503928171c5af` |
| 17 | `theorem` | [lpTrimToLpMeasSubgroup_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lptrimtolpmeassubgroup-ae-eq--7a866d981ce0e62e843fd0dc.md) | 193 | `result-track:7a866d981ce0e62e843fd0dce6d1d4dbac79ec54df45d25f979047599c75944c` |
| 18 | `theorem` | [lpMeasToLpTrim_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeastolptrim-ae-eq--dc33b2a23bbb3dda0dcdeefe.md) | 197 | `result-track:dc33b2a23bbb3dda0dcdeefe76416e56c02c64908bb8200380f08918c4a4cd12` |
| 19 | `theorem` | [lpTrimToLpMeas_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lptrimtolpmeas-ae-eq--d3b56034f512c9fb25497257.md) | 202 | `result-track:d3b56034f512c9fb2549725798e382914bf0581722e47a3b3d404682b7f07c15` |
| 20 | `theorem` | [lpMeasSubgroupToLpTrim_right_inv](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeassubgrouptolptrim-right-inv--92275a9170494db17262c09c.md) | 207 | `result-track:92275a9170494db17262c09c588783b5d42cf0da6811cb709b1f9ddb0f72983c` |
| 21 | `theorem` | [lpMeasSubgroupToLpTrim_left_inv](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeassubgrouptolptrim-left-inv--28215ddb21c4c64edee3ca75.md) | 216 | `result-track:28215ddb21c4c64edee3ca754a9f78e5c449f0b7353d6f96964fe4eee1c9703b` |
| 22 | `theorem` | [lpMeasSubgroupToLpTrim_add](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeassubgrouptolptrim-add--59c641cb12da273f04e6c4c3.md) | 223 | `result-track:59c641cb12da273f04e6c4c3f9be1623334e1ed676d1b928746efaa9a98154f0` |
| 23 | `theorem` | [lpMeasSubgroupToLpTrim_neg](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeassubgrouptolptrim-neg--01fe769481cde62f9c0719b4.md) | 234 | `result-track:01fe769481cde62f9c0719b408a33aebd1764b7f4adf9a41d7e77c186dfbed91` |
| 24 | `theorem` | [lpMeasSubgroupToLpTrim_sub](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeassubgrouptolptrim-sub--5a2ce4498d00ca469e475003.md) | 243 | `result-track:5a2ce4498d00ca469e4750030a5a5ec5fe24464edd8b740f7ccd07e5f1dd20b5` |
| 25 | `theorem` | [lpMeasToLpTrim_smul](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeastolptrim-smul--be3f645b8c10404eaed8e83c.md) | 249 | `result-track:be3f645b8c10404eaed8e83c349cd3c729387ae4f57d65558d08c03c514d0ee6` |
| 26 | `theorem` | [lpMeasSubgroupToLpTrim_norm_map](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeassubgrouptolptrim-norm-map--74980467953dc403ca0ddcf2.md) | 260 | `result-track:74980467953dc403ca0ddcf2acea77c38821b764209a310a41456913e199a011` |
| 27 | `theorem` | [isometry_lpMeasSubgroupToLpTrim](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/isometry-lpmeassubgrouptolptrim--662441fe09a717922463047d.md) | 268 | `result-track:662441fe09a717922463047d119a093c943be88e6dce2641530feb6e2c79f456` |
| 28 | `def` | [lpMeasSubgroupToLpTrimIso](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeassubgrouptolptrimiso--4d71c1ce9ccf6d65275c428f.md) | 277 | `declaration-track:4d71c1ce9ccf6d65275c428f5f9ea11cdb352cccd27f2e5349d3d28e5f4ac93b` |
| 29 | `def` | [lpMeasSubgroupToLpMeasIso](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeassubgrouptolpmeasiso--93e0d87b7d56c42f018ab716.md) | 288 | `declaration-track:93e0d87b7d56c42f018ab7168c7873e5cdd8a6e829ef49af486bb10cf554707b` |
| 30 | `def` | [lpMeasToLpTrimLie](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeastolptrimlie--1131cb3e9a8a0724ac9f8139.md) | 293 | `declaration-track:1131cb3e9a8a0724ac9f81394847e97c24d6f80f90bc563e5e3a5aa502205a67` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/instance--709ee1f9684e1b0a34c2a552.md) | 305 | `declaration-track:709ee1f9684e1b0a34c2a552e689784a76f39705ca3b61bd9958d01020a7869a` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/instance--679e9c6b77cb4a48ced66a62.md) | 309 | `declaration-track:679e9c6b77cb4a48ced66a62dbe8fce99bcdd3b0f236b071f35aa1501b26c520` |
| 33 | `theorem` | [isComplete_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/iscomplete-aestronglymeasurable--1a058e0d0cfa5377250d6414.md) | 313 | `result-track:1a058e0d0cfa5377250d641431ff3849fa2d2ac688029e71e5d04ad6fa50e660` |
| 34 | `theorem` | [isClosed_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/isclosed-aestronglymeasurable--c221fc36d4879e6c056a7203.md) | 320 | `result-track:c221fc36d4879e6c056a720376cfb94b59518858d817b187d22c70bccbc0efdf` |
| 35 | `theorem` | [lpMeas.ae_fin_strongly_measurable'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeas-ae-fin-strongly-measurable--67ca1806b541da3b1fc2f593.md) | 333 | `result-track:67ca1806b541da3b1fc2f59304cf4d68c057275ce2c43d9ee508133c3b25559d` |
| 36 | `theorem` | [lpMeasToLpTrimLie_symm_indicator](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeastolptrimlie-symm-indicator--32d23f41c0bb476fab1eea15.md) | 342 | `result-track:32d23f41c0bb476fab1eea1527fea35f6341d054dc30c26385e5431954ae179b` |
| 37 | `theorem` | [lpMeasToLpTrimLie_symm_toLp](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lpmeastolptrimlie-symm-tolp--cfd8b3a474d43fe06558fb44.md) | 352 | `result-track:cfd8b3a474d43fe06558fb44ae8bbdbf72c284d28a04a8f330ad1b351241a773` |
| 38 | `theorem` | [Lp.induction_stronglyMeasurable_aux](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lp-induction-stronglymeasurable-aux--66ce7465d49636a79497f79a.md) | 370 | `result-track:66ce7465d49636a79497f79aa60bf84725c60d518dd63488061abce77c7f2b92` |
| 39 | `theorem` | [Lp.induction_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/lp-induction-stronglymeasurable--3e4abb511833b659bf172f37.md) | 416 | `result-track:3e4abb511833b659bf172f3706631d91f54512b5f1d6e6a9389384d38bf32f24` |
| 40 | `theorem` | [MemLp.induction_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/declarations/memlp-induction-stronglymeasurable--6fe03a457bfed8f268e9c273.md) | 479 | `result-track:6fe03a457bfed8f268e9c27345f7cf84756026208409c52537a536710d94553d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
