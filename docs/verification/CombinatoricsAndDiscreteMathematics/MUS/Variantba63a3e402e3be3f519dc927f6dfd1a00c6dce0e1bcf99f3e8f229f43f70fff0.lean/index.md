# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MUS.Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "157dc38658dd80888534ccbc8af8efbdc84f3da3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `157dc38658dd80888534ccbc8af8efbdc84f3da3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Completion.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UnsatCore](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean/declarations/unsatcore--321f342edf1915bd8e4d1268.md) | 25 | `declaration-track:321f342edf1915bd8e4d1268b092b821387c38ef4bca11fbd10b953f0417ec6f` |
| 2 | `structure` | [PrimitiveCore](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean/declarations/primitivecore--6b850d54a9d2f37fefd15815.md) | 43 | `declaration-track:6b850d54a9d2f37fefd15815cac1c3606a90f5c50b772b0864ad797001e4a484` |
| 3 | `theorem` | [PrimitiveCore.primitive_core_unsatisfiable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean/declarations/primitivecore-primitive-core-unsatisfiable--0a52896be6837fe616abb2aa.md) | 60 | `result-track:0a52896be6837fe616abb2aa2fda3f2b8c87b3ff36cdad224ed10201c32039a9` |
| 4 | `theorem` | [PrimitiveCore.every_proper_subset_feasible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean/declarations/primitivecore-every-proper-subset-feasible--d172e979fadda7827be417d0.md) | 76 | `result-track:d172e979fadda7827be417d0a126a3dba1a2cffc3b769776ad64baf84d0316f1` |
| 5 | `def` | [primitive_of_all_proper_subsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean/declarations/primitive-of-all-proper-subsets--ab1bb5068c3b1515b1a9df3c.md) | 103 | `declaration-track:ab1bb5068c3b1515b1a9df3cd938ca0a010f5702c8122e4e05d1c4d1334f6337` |
| 6 | `def` | [PrimitiveCore.extendRegistry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean/declarations/primitivecore-extendregistry--e62aac2309612289d7c2a665.md) | 128 | `declaration-track:e62aac2309612289d7c2a66569689ee2864917bb7d29469c303e453361ac33b3` |
| 7 | `abbrev` | [PrimitiveCoreAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean/declarations/primitivecoreat--2c0de5caa8b65803a37febd8.md) | 155 | `declaration-track:2c0de5caa8b65803a37febd809e96c899b13eabf856828818c0ea32c61290014` |
| 8 | `abbrev` | [ExtractedPrimitiveCore](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean/declarations/extractedprimitivecore--02d6f9161e9efd35ab678819.md) | 166 | `declaration-track:02d6f9161e9efd35ab67881916d1b2d8ec14ed3cb3c505cad4d8273581d94839` |
| 9 | `structure` | [MUSExtractor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MUS/Variantba63a3e402e3be3f519dc927f6dfd1a00c6dce0e1bcf99f3e8f229f43f70fff0.lean/declarations/musextractor--fd34eacf1df4e69e3a1ffd00.md) | 179 | `declaration-track:fd34eacf1df4e69e3a1ffd002d8e7c8e2a04dd1c13bb3ffde8ceb86b89474e7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
