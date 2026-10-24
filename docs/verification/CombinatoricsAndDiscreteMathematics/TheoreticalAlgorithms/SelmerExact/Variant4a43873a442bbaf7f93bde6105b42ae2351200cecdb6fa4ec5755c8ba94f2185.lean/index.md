# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SelmerExact.Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3ad93097b8688eef35069e50e49d97529c725e5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3ad93097b8688eef35069e50e49d97529c725e5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.GaloisCohomology.Kummer` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteSelmerClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/declarations/finiteselmerclass--d6aa887737326d48fcd3b5b6.md) | 29 | `declaration-track:d6aa887737326d48fcd3b5b6038abcae2b5961d5c4a883f9c1715e25bbc573df` |
| 2 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/declarations/ext--16311d688bdf70a51cbd4ea0.md) | 37 | `result-track:16311d688bdf70a51cbd4ea06535a495a081281c754d0d4600ebd2bd0e5b1bf0` |
| 3 | `def` | [globalImageAsSelmerClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/declarations/globalimageasselmerclass--c31a48a7cbf0df67c04c7da5.md) | 54 | `declaration-track:c31a48a7cbf0df67c04c7da50b06a24f044dba09863832668541c2483fbbcbce` |
| 4 | `structure` | [FiniteSelmerExactSequenceData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/declarations/finiteselmerexactsequencedata--72a085d03f6529e7de1f4515.md) | 72 | `declaration-track:72a085d03f6529e7de1f45153c133e56a3f6682d2a34f49e40a37352cfc0f890` |
| 5 | `def` | [inObstructionKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/declarations/inobstructionkernel--fdbcdcc6ebfcda884de31283.md) | 98 | `declaration-track:fdbcdcc6ebfcda884de312839c7a816157ea0efc42c2453cf73954501ac3c9fe` |
| 6 | `def` | [inGlobalKummerImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/declarations/inglobalkummerimage--97f306abe91bdf4c24a1ca0b.md) | 106 | `declaration-track:97f306abe91bdf4c24a1ca0b4eccb1922a3c66e77f21cf99504271b6c5e30196` |
| 7 | `theorem` | [globalKummerImage_subset_obstructionKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/declarations/globalkummerimage-subset-obstructionkernel--d371f1ee20774dfa81910629.md) | 115 | `result-track:d371f1ee20774dfa819106291dd36e5de8b210538d12f0b1d3e32ed73c039102` |
| 8 | `theorem` | [obstructionKernel_subset_globalKummerImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/declarations/obstructionkernel-subset-globalkummerimage--ab3d1737b6eb7cb4145cbca3.md) | 124 | `result-track:ab3d1737b6eb7cb4145cbca335b4b64ff871c27022a0c8945cb547ea8b0fc88c` |
| 9 | `theorem` | [obstructionKernel_iff_globalKummerImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/declarations/obstructionkernel-iff-globalkummerimage--17c67dd03e7eacaaae7af1f2.md) | 134 | `result-track:17c67dd03e7eacaaae7af1f2ea362d130d0209d93ed5d5f5690a5b3152ca22f3` |
| 10 | `theorem` | [obstructionMap_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/declarations/obstructionmap-surjective--32627240006eb45b53b84813.md) | 153 | `result-track:32627240006eb45b53b84813d5bd716f0b70a3de0e1d3dcc68fc88876969190f` |
| 11 | `theorem` | [globalKummer_injective_of_exactSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/declarations/globalkummer-injective-of-exactsequence--95469716565a616e99a2fcca.md) | 163 | `result-track:95469716565a616e99a2fcca19fa876edfcc08bed02ea697b359cc5be9774f07` |
| 12 | `theorem` | [depends_after_abstractKummer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variant4a43873a442bbaf7f93bde6105b42ae2351200cecdb6fa4ec5755c8ba94f2185.lean/declarations/depends-after-abstractkummer--e7bdf367f78d5107a3fea4cc.md) | 173 | `result-track:e7bdf367f78d5107a3fea4ccddfefcce0ef2bfbed37cc286cfc1bcd45606424b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
