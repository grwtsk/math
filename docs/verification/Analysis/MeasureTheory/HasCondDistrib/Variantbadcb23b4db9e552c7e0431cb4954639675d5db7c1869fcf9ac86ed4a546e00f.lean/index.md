# Verification target: GRWTSK.Analysis.MeasureTheory.HasCondDistrib.Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff80fb950ba1beb61c99d250c4435dc094328154",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff80fb950ba1beb61c99d250c4435dc094328154`.

Source path: `GRWTSK/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasCondDistrib](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/declarations/hasconddistrib--59b77b177b1a900bec68b1cf.md) | 41 | `declaration-track:59b77b177b1a900bec68b1cf2971f04ca897a8935dd77881365c48eec5d5b757` |
| 2 | `lemma` | [HasCondDistrib.aemeasurable_fst](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/declarations/hasconddistrib-aemeasurable-fst--15ceb0f5dcb98e7407452a48.md) | 45 | `result-track:15ceb0f5dcb98e7407452a48d67be0e1315093a96409f1805179bf5565328b7f` |
| 3 | `lemma` | [HasCondDistrib.aemeasurable_snd](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/declarations/hasconddistrib-aemeasurable-snd--ff33873ef3e25ad861a4edf2.md) | 49 | `result-track:ff33873ef3e25ad861a4edf2f58d8064a27b9b5f65fc29d80ea18011330f4e90` |
| 4 | `lemma` | [HasLaw.prodMk_of_hasCondDistrib](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/declarations/haslaw-prodmk-of-hasconddistrib--56ae8e16f606e19cf1526c8c.md) | 52 | `result-track:56ae8e16f606e19cf1526c8cfbb73329c81413fe13112d6d6bc61be13e5beb81` |
| 5 | `lemma` | [HasCondDistrib.hasLaw_of_const](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/declarations/hasconddistrib-haslaw-of-const--c167396ab7cb4f0a62c42852.md) | 56 | `result-track:c167396ab7cb4f0a62c428529276172ee195696ba2a1b9c277d7baa00c78d202` |
| 6 | `lemma` | [HasCondDistrib.comp_left](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/declarations/hasconddistrib-comp-left--227a60eb8238ab557554f231.md) | 67 | `result-track:227a60eb8238ab557554f231bf8228d43bc950d8fb784d87a88e1c849b905d35` |
| 7 | `lemma` | [HasCondDistrib.fst](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/declarations/hasconddistrib-fst--0d5c01959edac6b8a56a28c1.md) | 77 | `result-track:0d5c01959edac6b8a56a28c1a5483a13d2cd25d205212a5890f6a583df34c268` |
| 8 | `lemma` | [HasCondDistrib.snd](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/declarations/hasconddistrib-snd--164a5e7ed4bf403fd4d0bf6b.md) | 83 | `result-track:164a5e7ed4bf403fd4d0bf6bb8385d2048b1b2f300b1bb2736405c6767c0e1c4` |
| 9 | `lemma` | [HasCondDistrib.comp_right](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/declarations/hasconddistrib-comp-right--c6648ef94e4e2825c3a1a73a.md) | 89 | `result-track:c6648ef94e4e2825c3a1a73a0463f01e6bfbc07107de1028428ee21d364ddc09` |
| 10 | `lemma` | [HasCondDistrib.measurableEquiv_comp_right](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/declarations/hasconddistrib-measurableequiv-comp-right--7d684ea1ba1befec2127e4ee.md) | 106 | `result-track:7d684ea1ba1befec2127e4ee82b5459e0abeecc4c9d8de810b4dc78ed96d56d1` |
| 11 | `lemma` | [HasCondDistrib.of_compProd](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/declarations/hasconddistrib-of-compprod--e88b23de0909fb74c1f3f8aa.md) | 111 | `result-track:e88b23de0909fb74c1f3f8aa5f03c9aad432e3458f3228dac187bcda17d43587` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
