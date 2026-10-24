# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Cast.Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "286973b3f2537888a08af24656af68125ab98d23",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `286973b3f2537888a08af24656af68125ab98d23`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Cast` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b.lean/declarations/cast-choose--d2e57e076f1d26bb436a858e.md) | 25 | `result-track:d2e57e076f1d26bb436a858ed04f7b3a45f97ec832743e6b33d0f4c05a92d095` |
| 2 | `theorem` | [cast_add_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b.lean/declarations/cast-add-choose--12898d06974ccd31f52e32a9.md) | 30 | `result-track:12898d06974ccd31f52e32a9199b294264b50d5b36db790f3efb98ddfee05455` |
| 3 | `theorem` | [cast_choose_eq_ascPochhammer_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b.lean/declarations/cast-choose-eq-ascpochhammer-div--48a8214e06e7e256c7ba5100.md) | 33 | `result-track:48a8214e06e7e256c7ba510056e519ddf359194f7cd05bff9a76488e01bc29ea` |
| 4 | `theorem` | [cast_choose_eq_descPochhammer_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b.lean/declarations/cast-choose-eq-descpochhammer-div--1913051c84d30bef4d797a72.md) | 43 | `result-track:1913051c84d30bef4d797a72991dc1f470283f8ab4b69538ea7491db703c604d` |
| 5 | `theorem` | [cast_choose_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantd6a814e59cb7621db071629c57611cdbacaf5f3e573b2b09be5973dded7cd73b.lean/declarations/cast-choose-two--66dcf9fe168c5990150a2422.md) | 48 | `result-track:66dcf9fe168c5990150a242209eff306d44a511a5adb467099339cd46ef3a1b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
