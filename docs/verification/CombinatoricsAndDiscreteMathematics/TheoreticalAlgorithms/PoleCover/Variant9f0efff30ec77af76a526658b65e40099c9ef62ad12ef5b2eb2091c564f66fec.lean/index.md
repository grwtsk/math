# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PoleCover.Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfc529a2d56c429d33406f4c4885a16a80e14ebb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PoleCover/Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PoleCover/Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PoleCover/Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfc529a2d56c429d33406f4c4885a16a80e14ebb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PoleCover/Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PoleCover/Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Compact` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PoleChart](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PoleCover/Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec.lean/declarations/polechart--3701197b24be2ff632f69a94.md) | 7 | `declaration-track:3701197b24be2ff632f69a9447fe85bd03460ea554089c4b3cb6282e7d28be4a` |
| 2 | `structure` | [PoleCover](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PoleCover/Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec.lean/declarations/polecover--227bcf7b4f1fd151cb5963ee.md) | 14 | `declaration-track:227bcf7b4f1fd151cb5963ee6211bf37deda9796a68c4d4c3f203c27e76951a2` |
| 3 | `def` | [PoleCover.compactDeterminedByPoles](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PoleCover/Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec.lean/declarations/polecover-compactdeterminedbypoles--472f71ed14af340e5d3f860c.md) | 21 | `declaration-track:472f71ed14af340e5d3f860cea6ef5d004631aede7d120c0ad2f2650e3a1b1b3` |
| 4 | `def` | [polesFormCompactConservativeResidueCover](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PoleCover/Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec.lean/declarations/polesformcompactconservativeresiduecover--320ee83cdac83915863504a7.md) | 24 | `declaration-track:320ee83cdac83915863504a74899d6d421ef8854088400968c71da3c0de5a97b` |
| 5 | `theorem` | [compact_determined_requires_conservative_cover](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PoleCover/Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec.lean/declarations/compact-determined-requires-conservative-cover--6d4e650f1d5211fc1237db2f.md) | 27 | `result-track:6d4e650f1d5211fc1237db2f212de240c4e44760206638c1154c9df402787d89` |
| 6 | `theorem` | [conservative_residue_cover_with_overlaps_determines_compact](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PoleCover/Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec.lean/declarations/conservative-residue-cover-with-overlaps-determines-compact--38afe39647584532f92bbbfc.md) | 33 | `result-track:38afe39647584532f92bbbfcd96548e595bdedb449d255f230edd98bef86e2bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
