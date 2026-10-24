# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FDeriv.Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6ab2293f68f91775017a4ab8cd8569c2e6b7f8b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6ab2293f68f91775017a4ab8cd8569c2e6b7f8b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.ApproximatesLinearOn` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [approximates_deriv_on_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/approximates-deriv-on-nhds--83b8505b107af5ed960f5df8.md) | 69 | `result-track:83b8505b107af5ed960f5df812e446965c599689f462bf2a3c19dd80e71b5584` |
| 2 | `theorem` | [map_nhds_eq_of_surj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/map-nhds-eq-of-surj--45832f907805956b133a55da.md) | 80 | `result-track:45832f907805956b133a55da2a23130a68ca98786a2ba009d6d3aa3cd36dda7b` |
| 3 | `theorem` | [approximates_deriv_on_open_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/approximates-deriv-on-open-nhds--4873110ef7fe9f26e9aea99b.md) | 94 | `result-track:4873110ef7fe9f26e9aea99bd08f1a0dad690ee11062bfd4b56a5ae456b3f219` |
| 4 | `def` | [toPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/topartialhomeomorph--b5f5f89ac247a8bb6896ccbb.md) | 110 | `declaration-track:b5f5f89ac247a8bb6896ccbb45a268dacf9a1db86c8b79e3c7cdcfae959eb9fb` |
| 5 | `theorem` | [toPartialHomeomorph_coe](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/topartialhomeomorph-coe--d6146c072a2ab3a209a7d43b.md) | 120 | `result-track:d6146c072a2ab3a209a7d43bcf60f149a55aac6742035081ae043a8b634ab5b5` |
| 6 | `theorem` | [mem_toPartialHomeomorph_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/mem-topartialhomeomorph-source--4fd48837feea04c259907b52.md) | 124 | `result-track:4fd48837feea04c259907b52938c567a33edac576f720ab923564cfefd4cb122` |
| 7 | `theorem` | [image_mem_toPartialHomeomorph_target](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/image-mem-topartialhomeomorph-target--48024a031f8ca8e0d9b150da.md) | 128 | `result-track:48024a031f8ca8e0d9b150da5f9902358e29ccb6f652e76c4578f7cdea2b6260` |
| 8 | `theorem` | [map_nhds_eq_of_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/map-nhds-eq-of-equiv--b06bbc0aede164dcc9e1dc47.md) | 132 | `result-track:b06bbc0aede164dcc9e1dc47c68956c49f7315a0058ecab4de6c79d91ecc2864` |
| 9 | `def` | [localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/localinverse--09f45732a760316ebaed051a.md) | 140 | `declaration-track:09f45732a760316ebaed051a65e7ff23e8e5fc237ac9d700c13d57479978657c` |
| 10 | `theorem` | [localInverse_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/localinverse-def--ffcd6a458e8e4968ecd85981.md) | 145 | `result-track:ffcd6a458e8e4968ecd8598167157240166ceafd27245ebd58e51915a388b3fe` |
| 11 | `theorem` | [eventually_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/eventually-left-inverse--84025580432a1fe13849f85b.md) | 149 | `result-track:84025580432a1fe13849f85b1bed95627d0cae345437f0123cf0e3cf57621c21` |
| 12 | `theorem` | [localInverse_apply_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/localinverse-apply-image--d54be798a17acc941bcd2558.md) | 154 | `result-track:d54be798a17acc941bcd2558960c1cee68f0c50af06f86a8dc9706d419b3b356` |
| 13 | `theorem` | [eventually_right_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/eventually-right-inverse--b8b24756a319ffbbe5e92804.md) | 158 | `result-track:b8b24756a319ffbbe5e92804e6834239b462f311a2557978d0708ef587e322d6` |
| 14 | `theorem` | [localInverse_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/localinverse-continuousat--2c82c7262ff4e6ef77ae5d39.md) | 162 | `result-track:2c82c7262ff4e6ef77ae5d3922de4d5386c05d37c06012fce34a2bf4b594958f` |
| 15 | `theorem` | [localInverse_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/localinverse-tendsto--3e8e50ee0c7df0568bdeccf6.md) | 166 | `result-track:3e8e50ee0c7df0568bdeccf6fd4a6948fd5a5d4ab35f17af131afd4e5758b54f` |
| 16 | `theorem` | [localInverse_unique](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/localinverse-unique--389bc20d3c4329ffc995fa2d.md) | 170 | `result-track:389bc20d3c4329ffc995fa2d5b01c0a24886bd5e924b191a55a173ccebedbf50` |
| 17 | `theorem` | [to_localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/to-localinverse--7f047499de47856e82165e19.md) | 177 | `result-track:7f047499de47856e82165e1900fe189c355c701522436f2f254e12d916c6266c` |
| 18 | `theorem` | [to_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/to-local-left-inverse--3ed2a2a92d697bbe7d23fd7c.md) | 187 | `result-track:3ed2a2a92d697bbe7d23fd7cb055a5653a3a7a9b974925da3d7508bebbd78cac` |
| 19 | `theorem` | [isOpenMap_of_hasStrictFDerivAt_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant78f1e886e0bbc5ca29dc1916c5d20d824191a3632daf32f78345f20d82b1e701.lean/declarations/isopenmap-of-hasstrictfderivat-equiv--81a52c97b1e4458d38f78101.md) | 194 | `result-track:81a52c97b1e4458d38f7810124ff2f2c4401d2af74b81ef0714a5ee180898a1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
