# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Cast.Variantcc43c6cd2197c45c2b05ff1ed34366fbe591686af1cd08e06edf80c5002d622c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8688827b39afddfb304c448a743305f88e2aebf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantcc43c6cd2197c45c2b05ff1ed34366fbe591686af1cd08e06edf80c5002d622c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantcc43c6cd2197c45c2b05ff1ed34366fbe591686af1cd08e06edf80c5002d622c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantcc43c6cd2197c45c2b05ff1ed34366fbe591686af1cd08e06edf80c5002d622c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8688827b39afddfb304c448a743305f88e2aebf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantcc43c6cd2197c45c2b05ff1ed34366fbe591686af1cd08e06edf80c5002d622c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantcc43c6cd2197c45c2b05ff1ed34366fbe591686af1cd08e06edf80c5002d622c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Cast` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantcc43c6cd2197c45c2b05ff1ed34366fbe591686af1cd08e06edf80c5002d622c.lean/declarations/cast-choose--bb99d7f14d261c34d0f9d936.md) | 33 | `result-track:bb99d7f14d261c34d0f9d936158fc74dbac6c4232e006a2591b52d7f67f3ecb1` |
| 2 | `theorem` | [cast_add_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantcc43c6cd2197c45c2b05ff1ed34366fbe591686af1cd08e06edf80c5002d622c.lean/declarations/cast-add-choose--de20b9122821c63e1b1db3de.md) | 38 | `result-track:de20b9122821c63e1b1db3dea4acdd5dc67921d93363f9cdc2e32e360b9c7957` |
| 3 | `theorem` | [cast_choose_eq_ascPochhammer_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantcc43c6cd2197c45c2b05ff1ed34366fbe591686af1cd08e06edf80c5002d622c.lean/declarations/cast-choose-eq-ascpochhammer-div--841b4805ac5db3ad2506a982.md) | 41 | `result-track:841b4805ac5db3ad2506a982c5e0899859b0966742fc041d8d44919c7df9cbe1` |
| 4 | `theorem` | [cast_choose_eq_descPochhammer_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantcc43c6cd2197c45c2b05ff1ed34366fbe591686af1cd08e06edf80c5002d622c.lean/declarations/cast-choose-eq-descpochhammer-div--7acd71959aacc8a56ee72d72.md) | 51 | `result-track:7acd71959aacc8a56ee72d72ac95fef186cced9fc1933957dd684ce3d47296ee` |
| 5 | `theorem` | [cast_choose_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantcc43c6cd2197c45c2b05ff1ed34366fbe591686af1cd08e06edf80c5002d622c.lean/declarations/cast-choose-two--d3409ccf9ed153fa2fc3b65c.md) | 56 | `result-track:d3409ccf9ed153fa2fc3b65c8b136cddd7a3b85d5d91d2c899ae0f9f987dfc25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
