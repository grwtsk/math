# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Cut.Variant0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1df287563e79c5054145612f6bccf910279f567a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cut/Variant0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1df287563e79c5054145612f6bccf910279f567a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Cut/Variant0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Cut/Variant0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Carrier` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrimeCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d.lean/declarations/primecut--68947326a48d4015176d943b.md) | 10 | `declaration-track:68947326a48d4015176d943bbdfb03b86d8ece2ecda4959bbcd9e393ab67a86c` |
| 2 | `def` | [topCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d.lean/declarations/topcut--81fc5f880e2f52dfc133bfeb.md) | 14 | `declaration-track:81fc5f880e2f52dfc133bfeb1833d8ea3b64a65b9cc89880a89ad568b283c726` |
| 3 | `def` | [cutDepth](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d.lean/declarations/cutdepth--e37c0ad5ee3c137210962265.md) | 19 | `declaration-track:e37c0ad5ee3c1372109622655b0b338a7ed814325a25415346c93b07e157e438` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
