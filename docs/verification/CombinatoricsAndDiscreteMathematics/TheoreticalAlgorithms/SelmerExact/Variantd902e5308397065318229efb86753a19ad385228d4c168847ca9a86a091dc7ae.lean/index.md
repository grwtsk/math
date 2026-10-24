# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SelmerExact.Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53d5c4a95b29ada578dc1ea6f5adb9b534a17619",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53d5c4a95b29ada578dc1ea6f5adb9b534a17619`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.GaloisCohomology.Kummer` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteSelmerClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/declarations/finiteselmerclass--2933f34debbd8a168ce91a45.md) | 37 | `declaration-track:2933f34debbd8a168ce91a451b3623887a0b31e6af0f832706b062a626cc2d73` |
| 2 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/declarations/ext--a0d7c76682e4e684405a1974.md) | 45 | `result-track:a0d7c76682e4e684405a19741e39a7937794290bd695916e4db789c924931cf4` |
| 3 | `def` | [globalImageAsSelmerClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/declarations/globalimageasselmerclass--ef303a405846c5b04eb620f0.md) | 62 | `declaration-track:ef303a405846c5b04eb620f0628a2ed1d324dfd37d3e4e94cc3353ba33af255e` |
| 4 | `structure` | [FiniteSelmerExactSequenceData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/declarations/finiteselmerexactsequencedata--cfd87dca0aa397f42ccdfbc5.md) | 80 | `declaration-track:cfd87dca0aa397f42ccdfbc5211b5bd34613c0e69cc99f5aabfb3e5d8db2faea` |
| 5 | `def` | [inObstructionKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/declarations/inobstructionkernel--e47a2ae5a84cf415eb5a7bdf.md) | 106 | `declaration-track:e47a2ae5a84cf415eb5a7bdf933d12156ee64d0d7d89288fe768958d54ced455` |
| 6 | `def` | [inGlobalKummerImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/declarations/inglobalkummerimage--6f5176424cff0f099a0d5050.md) | 114 | `declaration-track:6f5176424cff0f099a0d50507dde79235f25dfee59168b4eb096bf4850c34656` |
| 7 | `theorem` | [globalKummerImage_subset_obstructionKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/declarations/globalkummerimage-subset-obstructionkernel--de13f25fa547f40269b72662.md) | 123 | `result-track:de13f25fa547f40269b726629155f2b35d5caae3d5d118587e8e19a1d059708f` |
| 8 | `theorem` | [obstructionKernel_subset_globalKummerImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/declarations/obstructionkernel-subset-globalkummerimage--970e83c2cce9867e0a9500c2.md) | 132 | `result-track:970e83c2cce9867e0a9500c29803e8064943967b41669987f23c27eb1f239783` |
| 9 | `theorem` | [obstructionKernel_iff_globalKummerImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/declarations/obstructionkernel-iff-globalkummerimage--839f10c6f8972f08ed9a2bbb.md) | 142 | `result-track:839f10c6f8972f08ed9a2bbbb30d350a63e9c98102ae709ccbd8369b14d6a8e3` |
| 10 | `theorem` | [obstructionMap_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/declarations/obstructionmap-surjective--a0309d1bbb44ca1410fafe5c.md) | 161 | `result-track:a0309d1bbb44ca1410fafe5c9b3ae2a56ff26f52180e13be8da338da80af9590` |
| 11 | `theorem` | [globalKummer_injective_of_exactSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/declarations/globalkummer-injective-of-exactsequence--2abfa3d2307aa0666730aac5.md) | 171 | `result-track:2abfa3d2307aa0666730aac54fbc3932041453907e5df6a4c5f15d38ac42c5fc` |
| 12 | `theorem` | [depends_after_abstractKummer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/declarations/depends-after-abstractkummer--ed0058d263a3325439b6a490.md) | 181 | `result-track:ed0058d263a3325439b6a490516cf7634ed9c18c48a44f604b3add03ab411d54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
