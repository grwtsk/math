# Verification target: GRWTSK.Analysis.MeasureTheory.AEMeasurable.Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27cdf5d8f0d46b69f3378b6600cda1504f0ee976",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27cdf5d8f0d46b69f3378b6600cda1504f0ee976`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean.json)

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
| 1 | `theorem` | [ae_eq_trim_iff_of_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/ae-eq-trim-iff-of-aestronglymeasurable--95fa7e98ecee47cc58b32216.md) | 46 | `result-track:95fa7e98ecee47cc58b32216a89f6382f26ef071fe48b4748eef314c21f2cfee` |
| 2 | `theorem` | [AEStronglyMeasurable.comp_ae_measurable'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/aestronglymeasurable-comp-ae-measurable--f8ea82e0a53174c4596b9d03.md) | 54 | `result-track:f8ea82e0a53174c4596b9d039bcae2725f2949effb4ea9093ac45aa86ce33c6f` |
| 3 | `def` | [lpMeasSubgroup](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeassubgroup--65f28cf96ded98a875d5c888.md) | 76 | `declaration-track:65f28cf96ded98a875d5c8881aade46b69e92dfb5c6c90feb47509226667b042` |
| 4 | `def` | [lpMeas](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeas--f3a096d4bc92c2c41ba13f11.md) | 88 | `declaration-track:f3a096d4bc92c2c41ba13f11da1d972260628910fa8851d804cbd925b3f90325` |
| 5 | `theorem` | [mem_lpMeasSubgroup_iff_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/mem-lpmeassubgroup-iff-aestronglymeasurable--3abf5eae9bbf4af2706c3164.md) | 97 | `result-track:3abf5eae9bbf4af2706c316470b9aac34e4411b384e985bdc29cdde1182fdfa4` |
| 6 | `theorem` | [mem_lpMeas_iff_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/mem-lpmeas-iff-aestronglymeasurable--fcc75890ea99b5e6c3d705a5.md) | 101 | `result-track:fcc75890ea99b5e6c3d705a567a957619ae2a82ef73aaa0e871408ef77d1f992` |
| 7 | `theorem` | [lpMeas.aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeas-aestronglymeasurable--08624bbaf39ceec7b677a64c.md) | 105 | `result-track:08624bbaf39ceec7b677a64ccfb7125b00cceabf146b75e5036e2d96ccb9b62a` |
| 8 | `theorem` | [mem_lpMeas_self](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/mem-lpmeas-self--a0cb0829ea25b8f2ca1042ed.md) | 109 | `result-track:a0cb0829ea25b8f2ca1042edf5abc774867c8b1ba4ba5bb86c4ab917f8f9784a` |
| 9 | `theorem` | [mem_lpMeas_indicatorConstLp](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/mem-lpmeas-indicatorconstlp--26ee6b2489e3955fbcd9860f.md) | 113 | `result-track:26ee6b2489e3955fbcd9860f55d2750632011884af06de2a8cec69dfaeedcb02` |
| 10 | `theorem` | [memLp_trim_of_mem_lpMeasSubgroup](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/memlp-trim-of-mem-lpmeassubgroup--64a27e04e22b29b48af0098b.md) | 132 | `result-track:64a27e04e22b29b48af0098b0f9e7bdab2528060477b8cf9ec724458a69d68a8` |
| 11 | `theorem` | [mem_lpMeasSubgroup_toLp_of_trim](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/mem-lpmeassubgroup-tolp-of-trim--71c785b49a9a3cf55d019cbf.md) | 146 | `result-track:71c785b49a9a3cf55d019cbf5b34ec5698a23cb65d7f732237f326fdb7456cf8` |
| 12 | `def` | [lpMeasSubgroupToLpTrim](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeassubgrouptolptrim--553828d5bffb826f9a78101c.md) | 156 | `declaration-track:553828d5bffb826f9a78101c19be999fcd4a635d86062d2540f14e1f1469081b` |
| 13 | `def` | [lpMeasToLpTrim](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeastolptrim--13678a73e5f2bd1a4325038d.md) | 163 | `declaration-track:13678a73e5f2bd1a4325038d998290f199aeded0840baf3e0161a9eeb6fca23a` |
| 14 | `def` | [lpTrimToLpMeasSubgroup](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lptrimtolpmeassubgroup--9366e9a79f0af4d59fae0373.md) | 169 | `declaration-track:9366e9a79f0af4d59fae0373253047b03b5602485fc03f366d477155177725a5` |
| 15 | `def` | [lpTrimToLpMeas](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lptrimtolpmeas--8f3cc98480b1050d9f6d1034.md) | 175 | `declaration-track:8f3cc98480b1050d9f6d1034664a739e82cbf2f4a31507805512186bfc0d3317` |
| 16 | `theorem` | [lpMeasSubgroupToLpTrim_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeassubgrouptolptrim-ae-eq--2ef5dfb9b52630cd0d980209.md) | 180 | `result-track:2ef5dfb9b52630cd0d980209e3e74614ad5b096302fc078336b7ce6c7c11c9c6` |
| 17 | `theorem` | [lpTrimToLpMeasSubgroup_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lptrimtolpmeassubgroup-ae-eq--fc3e32973fd007740614f089.md) | 185 | `result-track:fc3e32973fd007740614f08901fb94f2ae0bad014b938eb01d1edca7e33be460` |
| 18 | `theorem` | [lpMeasToLpTrim_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeastolptrim-ae-eq--e82e20de018b028e592eb099.md) | 189 | `result-track:e82e20de018b028e592eb09902ce7dac446d4fafffedafb3b3e47a8526ab06c6` |
| 19 | `theorem` | [lpTrimToLpMeas_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lptrimtolpmeas-ae-eq--6f4d4bfd188ff5098b9c2c53.md) | 194 | `result-track:6f4d4bfd188ff5098b9c2c5334c857a899343fd034dcd83d14631e89a82a4c9c` |
| 20 | `theorem` | [lpMeasSubgroupToLpTrim_right_inv](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeassubgrouptolptrim-right-inv--4a07331cbf2476d7dae7e20f.md) | 199 | `result-track:4a07331cbf2476d7dae7e20f2b5cc187402a19a0d796dd314142c14dc33fc448` |
| 21 | `theorem` | [lpMeasSubgroupToLpTrim_left_inv](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeassubgrouptolptrim-left-inv--c4df1584ae30e99d14fed4e3.md) | 208 | `result-track:c4df1584ae30e99d14fed4e3ceccf147f8f0b2804a39f8fa4e6bf7bc35b79f91` |
| 22 | `theorem` | [lpMeasSubgroupToLpTrim_add](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeassubgrouptolptrim-add--3cb061031b541d8051844217.md) | 215 | `result-track:3cb061031b541d80518442174e4b37d6bb2a536c4c0b9b829bd2121177c9af7d` |
| 23 | `theorem` | [lpMeasSubgroupToLpTrim_neg](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeassubgrouptolptrim-neg--49cf54397ac3df50aa548c1e.md) | 226 | `result-track:49cf54397ac3df50aa548c1eae1b13e132ce22373cb87fce63f15a54e9582b61` |
| 24 | `theorem` | [lpMeasSubgroupToLpTrim_sub](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeassubgrouptolptrim-sub--ec4615a4051f0faeda98397a.md) | 235 | `result-track:ec4615a4051f0faeda98397a0ea73cfd99b6f798ff524dc07cb8d3102652617f` |
| 25 | `theorem` | [lpMeasToLpTrim_smul](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeastolptrim-smul--a772d3ac9a9d4e434ac52fa2.md) | 241 | `result-track:a772d3ac9a9d4e434ac52fa2a4ae2b0fecd8f1e1e7aee12bc91183280f0d0a38` |
| 26 | `theorem` | [lpMeasSubgroupToLpTrim_norm_map](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeassubgrouptolptrim-norm-map--43586e746ef8cd62e33015f3.md) | 252 | `result-track:43586e746ef8cd62e33015f30c894116c8d1d1e78c21c648d5dd245ccbfdc0c4` |
| 27 | `theorem` | [isometry_lpMeasSubgroupToLpTrim](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/isometry-lpmeassubgrouptolptrim--afe53c664c5534ef83b1a2ac.md) | 260 | `result-track:afe53c664c5534ef83b1a2ac4e6d0a37f5dc3bc9facf4fbe28fef0fc3d6dc634` |
| 28 | `def` | [lpMeasSubgroupToLpTrimIso](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeassubgrouptolptrimiso--e21c2b0b6c7df6fd9b8b8b29.md) | 269 | `declaration-track:e21c2b0b6c7df6fd9b8b8b29359325da946c13c8eaeaca9eb0925783d280d776` |
| 29 | `def` | [lpMeasSubgroupToLpMeasIso](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeassubgrouptolpmeasiso--93d9c3f14fc027eae49bfc6a.md) | 280 | `declaration-track:93d9c3f14fc027eae49bfc6ad8e7d253798cc414fa1ad46ce47f8c32120db6ab` |
| 30 | `def` | [lpMeasToLpTrimLie](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeastolptrimlie--e10db8e7e91bab64b42ac497.md) | 285 | `declaration-track:e10db8e7e91bab64b42ac497e845d6c8b5473e72a20ffff03fa6fc56a43a3fe3` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/instance--c7dd363642352363dda1142a.md) | 297 | `declaration-track:c7dd363642352363dda1142a4fcdb8fd949933d72e2323c7915e0664d993691e` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/instance--cbaca17f6e483049ff6af3aa.md) | 301 | `declaration-track:cbaca17f6e483049ff6af3aa12f3f66b02e304fed2e8f1d9b878819beaf73306` |
| 33 | `theorem` | [isComplete_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/iscomplete-aestronglymeasurable--6a87c3cca3e43b37d1aa222c.md) | 305 | `result-track:6a87c3cca3e43b37d1aa222c0bf145d485f7ff38fb486cd65b3ef6934b3d1911` |
| 34 | `theorem` | [isClosed_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/isclosed-aestronglymeasurable--3b0f02a50c3ff57a88152ae4.md) | 312 | `result-track:3b0f02a50c3ff57a88152ae4b99aa4cba02880a432ef100ac88cc705c53e02cc` |
| 35 | `theorem` | [lpMeas.ae_fin_strongly_measurable'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeas-ae-fin-strongly-measurable--38ea4e46181373a51f5fbf91.md) | 325 | `result-track:38ea4e46181373a51f5fbf9104b5fec311e2e0a211607c07e244b024bc360c3e` |
| 36 | `theorem` | [lpMeasToLpTrimLie_symm_indicator](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeastolptrimlie-symm-indicator--3f1234202757d18a38e89569.md) | 334 | `result-track:3f1234202757d18a38e89569af4f8bda6be2e327e3769a0a274981fe18977aa7` |
| 37 | `theorem` | [lpMeasToLpTrimLie_symm_toLp](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lpmeastolptrimlie-symm-tolp--233e0983f5356a50e60dd47b.md) | 344 | `result-track:233e0983f5356a50e60dd47bb08a297c11f5ce5bc149684ab70bf2b29a3aad03` |
| 38 | `theorem` | [Lp.induction_stronglyMeasurable_aux](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lp-induction-stronglymeasurable-aux--84e23a88966c365742f1ebe5.md) | 362 | `result-track:84e23a88966c365742f1ebe53248f39fa952f8cbea064749a7c531f8bfe2f771` |
| 39 | `theorem` | [Lp.induction_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/lp-induction-stronglymeasurable--ce0696b96a46cdd07afa4349.md) | 408 | `result-track:ce0696b96a46cdd07afa43493005bc31c856d2d2518e6c58590bc429291a3872` |
| 40 | `theorem` | [MemLp.induction_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/declarations/memlp-induction-stronglymeasurable--75c6dadcee8410660e559531.md) | 471 | `result-track:75c6dadcee8410660e559531d3018f5e9f3c84598b94850bdfc0432ed7d2ce4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
