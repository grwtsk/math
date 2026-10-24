# Verification target: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c343a7fcc959f20cd8c08ab7e51fbbe269360adc",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeIDS.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c343a7fcc959f20cd8c08ab7e51fbbe269360adc`.

Source path: `GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeIDS.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/OperatorTheory/SpectralTheory/FreeIDS.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeDirichletSpectrum`](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angleFraction](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/anglefraction--6db4bb312b356c271da4794d.md) | 15 | `declaration-track:6db4bb312b356c271da4794d56e28027683d0a72af865ec548fd84b1584684b5` |
| 2 | `def` | [freeIDS](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/freeids--dbff56a8fe98a3a2759cf53c.md) | 16 | `declaration-track:dbff56a8fe98a3a2759cf53c39ea8832d8c450af20fc83e709a7e8d4f10631e0` |
| 3 | `def` | [cutoff](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/cutoff--f6fd9a437526b815aa8d859b.md) | 17 | `declaration-track:f6fd9a437526b815aa8d859b580d17bfb67c67f20456b4d04ec85b1bba0f4b3b` |
| 4 | `def` | [freeEnergy](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/freeenergy--dfbe2bfd80d0f1ca766288d9.md) | 18 | `declaration-track:dfbe2bfd80d0f1ca766288d990a6318806935004bf809f56473bedf3b5ca5d74` |
| 5 | `theorem` | [angleFraction_bounds](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/anglefraction-bounds--70b625ad233ac6cf4b4b4162.md) | 20 | `result-track:70b625ad233ac6cf4b4b4162e7807886ca6e19b85e03e8d04228a3cdbc37c437` |
| 6 | `theorem` | [eigenvalue_le_iff_angle](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/eigenvalue-le-iff-angle--e0b191a9cf50ec1b062dc7ec.md) | 25 | `result-track:e0b191a9cf50ec1b062dc7ecaabda2e1a2e3132be6e6cf6dbec2bc78e9d9730a` |
| 7 | `theorem` | [eigenvalue_le_iff_cutoff](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/eigenvalue-le-iff-cutoff--d9f796ac2f602c1b69aba82a.md) | 53 | `result-track:d9f796ac2f602c1b69aba82a31d940b0d217c2a6b4941e0699eeaecd1610bf56` |
| 8 | `theorem` | [card_small_indices](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/card-small-indices--2a51deed43ece03c40d61628.md) | 62 | `result-track:2a51deed43ece03c40d61628ce0949cd36c857fcf65c7aee5b15e62ffda91524` |
| 9 | `theorem` | [cutoff_bounds](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/cutoff-bounds--df346dfc17dc90b03c880872.md) | 71 | `result-track:df346dfc17dc90b03c880872f8c64dd8ce34efaac9bf8e9b37b5bff9a38ca140` |
| 10 | `theorem` | [cutoff_ceil_le](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/cutoff-ceil-le--10c9a835685d80877215dbf3.md) | 78 | `result-track:10c9a835685d80877215dbf38ac3a1a5ff0089939a112840baf8f1acd8594c4e` |
| 11 | `theorem` | [freeCount_eq_ceil](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/freecount-eq-ceil--690c0ea79f8acea7081f0774.md) | 83 | `result-track:690c0ea79f8acea7081f0774e923028966295a4855ea25725add220031c5b5ac` |
| 12 | `theorem` | [cutoff_rounding_bounds](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/cutoff-rounding-bounds--3a2212073b47ced617a78bc4.md) | 104 | `result-track:3a2212073b47ced617a78bc43db1a0dfce0d17c00a7ad4561f6e68d8056e02fe` |
| 13 | `theorem` | [normalized_count_bounds](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/normalized-count-bounds--2196025cf00c52ba23675149.md) | 117 | `result-track:2196025cf00c52ba236751492c90e8abdc0aafa368cdf9efa02e2a7ffb9a31be` |
| 14 | `theorem` | [freeNormalizedCount_tendsto](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/freenormalizedcount-tendsto--cb441dfbf2c3da68699d89ba.md) | 138 | `result-track:cb441dfbf2c3da68699d89ba62af86f47b4eaca05cd82598717944054a36d24d` |
| 15 | `theorem` | [freeIDS_of_le_neg_two](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/freeids-of-le-neg-two--ee86ec7a51a0eb9e80dda5cc.md) | 152 | `result-track:ee86ec7a51a0eb9e80dda5cc04d39825b4ce564c8ff66614bbb871374323f1dd` |
| 16 | `theorem` | [freeIDS_of_two_le](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/freeids-of-two-le--2b9a4e919bf767cfbbb122f9.md) | 156 | `result-track:2b9a4e919bf767cfbbb122f9d8add246f2427c170cbcb3fc684aee67b7faa96e` |
| 17 | `theorem` | [freeIDS_strictMonoOn](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/freeids-strictmonoon--9041bce43a6c5e2b726ce6b7.md) | 160 | `result-track:9041bce43a6c5e2b726ce6b7f894ba03f040f06e39b71d5b31bd62e64f03ef7f` |
| 18 | `theorem` | [freeEnergy_mem_Ioo](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/freeenergy-mem-ioo--22f0037efb479a10b2cdb345.md) | 168 | `result-track:22f0037efb479a10b2cdb3458779dcdfd3319081585d7a06d4f7ab3b97367a40` |
| 19 | `theorem` | [freeIDS_freeEnergy](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/freeids-freeenergy--86fe55c34b3261c5b008c3af.md) | 178 | `result-track:86fe55c34b3261c5b008c3afa2489b6994c366a96f25a20533849382d6413aa9` |
| 20 | `theorem` | [freeIDS_inverse_left](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/freeids-inverse-left--f00c35e3c558e97a3013d7a4.md) | 188 | `result-track:f00c35e3c558e97a3013d7a4cf8b7a6283990ec625038128be5c0448acfefb0c` |
| 21 | `theorem` | [freeIDS_inverse_right](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/freeids-inverse-right--8926ccc99f6b2aa959312a20.md) | 201 | `result-track:8926ccc99f6b2aa959312a205873bbdff09ab5409011c25bf7dd99140b47b4a7` |
| 22 | `theorem` | [gap_width_le_abs_coupling](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/gap-width-le-abs-coupling--31d1abd5191ef19a624c7f18.md) | 216 | `result-track:31d1abd5191ef19a624c7f18799c175220820a6bc4c990ca7b4a2bb5f545fa39` |
| 23 | `theorem` | [sturmianNormalizedCount_zero](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/sturmiannormalizedcount-zero--c5d12d2ce4e606618efa88e2.md) | 225 | `result-track:c5d12d2ce4e606618efa88e2a41d3fda3bddfbaae2153a34d08c847a5328c8e0` |
| 24 | `theorem` | [sturmianNormalizedCount_zero_tendsto](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/sturmiannormalizedcount-zero-tendsto--9bc75dc2217883cca59208ce.md) | 230 | `result-track:9bc75dc2217883cca59208ce1638380c6b882f6021cb211201946a81b3dee055` |
| 25 | `theorem` | [no_internal_free_gap](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/declarations/no-internal-free-gap--4ebaff088ac1b4b5fff8a3c4.md) | 236 | `result-track:4ebaff088ac1b4b5fff8a3c4394ea6493f011663929486597458aca8bbe6753f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
