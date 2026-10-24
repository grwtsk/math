# Verification target: GRWTSK.Analysis.MeasureTheory.HasCondDistrib.Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d736771e5a73adcc1344767ba5aa6ea3eca32d0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d736771e5a73adcc1344767ba5aa6ea3eca32d0`.

Source path: `GRWTSK/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.Lemmas` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasCondDistrib](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/declarations/hasconddistrib--8b1b9cf30613f6cfe0c9b6fd.md) | 49 | `declaration-track:8b1b9cf30613f6cfe0c9b6fd0e7649412c1d6006e9848c87c02d5c2d6c6e275a` |
| 2 | `lemma` | [HasCondDistrib.aemeasurable_fst](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/declarations/hasconddistrib-aemeasurable-fst--53e2a7c0c06c37c728645160.md) | 53 | `result-track:53e2a7c0c06c37c728645160c08dd8e37a29a00f06e06b225e9315ed5da4031d` |
| 3 | `lemma` | [HasCondDistrib.aemeasurable_snd](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/declarations/hasconddistrib-aemeasurable-snd--032ca0df8530c1d7de5a7c75.md) | 57 | `result-track:032ca0df8530c1d7de5a7c75a4c73cde46fd5d0e04fecc1932964da20a533d26` |
| 4 | `lemma` | [HasLaw.prodMk_of_hasCondDistrib](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/declarations/haslaw-prodmk-of-hasconddistrib--d0d851ff6863da37a669fec3.md) | 60 | `result-track:d0d851ff6863da37a669fec3982a5afc4eedbd3b9e6fef77ede27597de1e1c20` |
| 5 | `lemma` | [HasCondDistrib.hasLaw_of_const](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/declarations/hasconddistrib-haslaw-of-const--b8de70eb64a7ae0ca72f23a0.md) | 64 | `result-track:b8de70eb64a7ae0ca72f23a020ca00c2844ae7e8886eb334db7936dd08a594d5` |
| 6 | `lemma` | [HasCondDistrib.comp_left](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/declarations/hasconddistrib-comp-left--c0941057205025e1de3b234f.md) | 75 | `result-track:c0941057205025e1de3b234f2c3de622736ca6e150abc000f287dabd6f05ea6d` |
| 7 | `lemma` | [HasCondDistrib.fst](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/declarations/hasconddistrib-fst--4e3d5d941b8013e5f5fc5e00.md) | 85 | `result-track:4e3d5d941b8013e5f5fc5e00cb312776312f32582e9613cb2d3a45acd85a222f` |
| 8 | `lemma` | [HasCondDistrib.snd](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/declarations/hasconddistrib-snd--09769e2ce45ed10d0eb27e8f.md) | 91 | `result-track:09769e2ce45ed10d0eb27e8faf66414deb6e2d32aa198161e75f1cdd474db1c7` |
| 9 | `lemma` | [HasCondDistrib.comp_right](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/declarations/hasconddistrib-comp-right--c960f2b23584f541df1d5095.md) | 97 | `result-track:c960f2b23584f541df1d50953a20293059754c4605ecdf31731dcf351964c93f` |
| 10 | `lemma` | [HasCondDistrib.measurableEquiv_comp_right](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/declarations/hasconddistrib-measurableequiv-comp-right--60c600e56c26f30e5d853edf.md) | 114 | `result-track:60c600e56c26f30e5d853edf4b43286876492c06206da96f8e381d77c3e0af8c` |
| 11 | `lemma` | [HasCondDistrib.of_compProd](../../../../../mathematics/Analysis/MeasureTheory/HasCondDistrib/Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456.lean/declarations/hasconddistrib-of-compprod--c3c66ced991fb2dfcd955373.md) | 119 | `result-track:c3c66ced991fb2dfcd95537383f19d00765f4c8c72fcc29f0006598d688fd753` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
