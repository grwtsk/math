# Verification target: GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51b5f1eb6531183f202f6ff01b5a22091dce81f9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/Moser.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51b5f1eb6531183f202f6ff01b5a22091dce81f9`.

Source path: `GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/Moser.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/GraphTheory/UnitDistanceGraph/Moser.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserSource`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource__SourceOccurrence06da90f8c8c057c6c0e8ffb0.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Data.Fin.SuccPred` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moserFourColor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/moserfourcolor--406ad3564707be206d0a25c4.md) | 13 | `declaration-track:406ad3564707be206d0a25c4721eeef3f675fd8fbfe202024ef289e998c8f891` |
| 2 | `theorem` | [moserFourColor_proper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/moserfourcolor-proper--715b5f1c8c2189f9229f7420.md) | 16 | `result-track:715b5f1c8c2189f9229f7420981002e8e95ba3a014045655a6cd2f55b099db6c` |
| 3 | `theorem` | [moser_listed_graph_exact_four](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/moser-listed-graph-exact-four--952a77c46ed885426f1619d9.md) | 22 | `result-track:952a77c46ed885426f1619d9257bdef773ca0b216bc54a64f38d2caf2f9e0c4a` |
| 4 | `lemma` | [radicalProduct_bounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/radicalproduct-bounds--a80420f55f3c2f049d0c596a.md) | 31 | `result-track:a80420f55f3c2f049d0c596a795d1b9ab792f8293cfd9106d201a6e2cd7e790a` |
| 5 | `lemma` | [moser_normSq_unit_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/moser-normsq-unit-iff--36a481f3f2bdb0c73358086b.md) | 43 | `result-track:36a481f3f2bdb0c73358086b41350d5e8b4a2cb7a01bbe90c9af4800fc73f9ad` |
| 6 | `lemma` | [moserPoint_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/moserpoint-injective--7c69b8750de06ae891edd9ff.md) | 58 | `result-track:7c69b8750de06ae891edd9ffadb23ceb79be61fd61173107434e0b4954815ad9` |
| 7 | `theorem` | [moser_unit_iff_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/moser-unit-iff-edge--7d0f7351e7dc2fb44a935e23.md) | 74 | `result-track:7d0f7351e7dc2fb44a935e2347db84954fce30f9ac4c92b5706a8a32177af6d8` |
| 8 | `def` | [FinitePointColorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/finitepointcolorable--94358e1607de2dc95e7b9035.md) | 88 | `declaration-track:94358e1607de2dc95e7b90353f7c27d59eac64d3b7bd4ab350523135ba422644` |
| 9 | `lemma` | [finitePointColorable_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/finitepointcolorable-mono--d81b551e98c02d31010bc2b1.md) | 91 | `result-track:d81b551e98c02d31010bc2b1d1b882d4db3cc3c58c424bd67f47a752c440c86b` |
| 10 | `theorem` | [moserFourColor_unit_proper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/moserfourcolor-unit-proper--e8b64df0c4df4e52a458812a.md) | 99 | `result-track:e8b64df0c4df4e52a458812aacd0c1e973449b8b345265352b8df249e83203bd` |
| 11 | `theorem` | [moser_unit_graph_exact_four](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/moser-unit-graph-exact-four--636310c991d1c46a4fe65604.md) | 107 | `result-track:636310c991d1c46a4fe6560401d151e93dd45c0b107de1c5683c5cf0795c57b9` |
| 12 | `def` | [PlaneColorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/planecolorable--61556f9db8bce4551c7bd261.md) | 116 | `declaration-track:61556f9db8bce4551c7bd261dd5eefc915632d9bed1851d3e1972f06a5c48e5d` |
| 13 | `def` | [ExactPlaneChromaticNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/exactplanechromaticnumber--0f7ff649e220f5bee236ce20.md) | 120 | `declaration-track:0f7ff649e220f5bee236ce20fe14bd77d084e512d213773bb4a73a7dc6780c5c` |
| 14 | `theorem` | [plane_not_three_colorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/declarations/plane-not-three-colorable--91211d0ccc74e2ad0fa6106e.md) | 124 | `result-track:91211d0ccc74e2ad0fa6106ec245898f10a5c310da649ca6e2cfee73dc98366f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
