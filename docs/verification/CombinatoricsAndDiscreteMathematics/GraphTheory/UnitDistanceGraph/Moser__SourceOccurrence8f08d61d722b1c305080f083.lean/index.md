# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UnitDistanceGraph.Moser

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a42877bff28048d6697829e1056f0744faeabfb6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a42877bff28048d6697829e1056f0744faeabfb6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UnitDistanceGraph.MoserSource`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource__SourceOccurrence07210c6967e07b4261e32397.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Data.Fin.SuccPred` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moserFourColor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/moserfourcolor--fb4a3f72e691f3efacd88f45.md) | 13 | `declaration-track:fb4a3f72e691f3efacd88f457c1925388a91f943d00df8620e80261a9b900131` |
| 2 | `theorem` | [moserFourColor_proper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/moserfourcolor-proper--d654aa45cc20de104ac97bd8.md) | 16 | `result-track:d654aa45cc20de104ac97bd8adff696cae4e8ba56ee592b50d3bd0fe50c95638` |
| 3 | `theorem` | [moser_listed_graph_exact_four](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/moser-listed-graph-exact-four--5e6e897a78303ff793316313.md) | 22 | `result-track:5e6e897a78303ff793316313752c99e710819be4f56866cfd3b5443b5ce7e8ed` |
| 4 | `lemma` | [radicalProduct_bounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/radicalproduct-bounds--52d3b4cceabcf187d8747c3d.md) | 31 | `result-track:52d3b4cceabcf187d8747c3d096a36d8622d4c7eb98f540b2a9aaf447a2fa994` |
| 5 | `lemma` | [moser_normSq_unit_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/moser-normsq-unit-iff--7b9ab5f7947fe905f16b9ef3.md) | 43 | `result-track:7b9ab5f7947fe905f16b9ef3c554d4fd2f8fbe922feb8a5bbae9cadd547a9ca9` |
| 6 | `lemma` | [moserPoint_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/moserpoint-injective--1a9dda28ad81e1a2b96ab8bf.md) | 58 | `result-track:1a9dda28ad81e1a2b96ab8bf03ada150aa931b8ac2482920381c4949da496b5a` |
| 7 | `theorem` | [moser_unit_iff_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/moser-unit-iff-edge--208d6c52cf3fe9005ff6f6ab.md) | 74 | `result-track:208d6c52cf3fe9005ff6f6ab53d681d3b0995a20d32807cf3cc1a7a914be8b4b` |
| 8 | `def` | [FinitePointColorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/finitepointcolorable--9047721b5b8b67108b08969c.md) | 88 | `declaration-track:9047721b5b8b67108b08969ca256c0af6a568ead9637ea4bb7c522a9428006e3` |
| 9 | `lemma` | [finitePointColorable_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/finitepointcolorable-mono--a79cc62105b789940696ed53.md) | 91 | `result-track:a79cc62105b789940696ed539b38460efdc3c77ca656f579ffb47dedf38a725a` |
| 10 | `theorem` | [moserFourColor_unit_proper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/moserfourcolor-unit-proper--4ff6d9b94f81604807e43a4e.md) | 99 | `result-track:4ff6d9b94f81604807e43a4edf9f2bb54ea04d84f77ac347edf30cc6512fe3ca` |
| 11 | `theorem` | [moser_unit_graph_exact_four](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/moser-unit-graph-exact-four--1b0f577c480b1a9f2ee2ec02.md) | 107 | `result-track:1b0f577c480b1a9f2ee2ec02484fc783b62999a9b65d521c91490e546be73e7e` |
| 12 | `def` | [PlaneColorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/planecolorable--fa12902a693ad2b412e1b62a.md) | 116 | `declaration-track:fa12902a693ad2b412e1b62abf14012d9b62e291d4a8c9fc16d1dfe8690f7589` |
| 13 | `def` | [ExactPlaneChromaticNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/exactplanechromaticnumber--6588005617e367b694e4691b.md) | 120 | `declaration-track:6588005617e367b694e4691b039add04cb8c2661cfa0179e982e1844df67c370` |
| 14 | `theorem` | [plane_not_three_colorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence8f08d61d722b1c305080f083.lean/declarations/plane-not-three-colorable--c6e8fcc4b1f9284e7013399b.md) | 124 | `result-track:c6e8fcc4b1f9284e7013399bffa5b3e1564283bfffc1d4362aba114faca53085` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
