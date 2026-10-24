# Verification target: GRWTSK.Analysis.TestFunction.Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bb940703b56fcadeb174e7fb412eae6f23513fd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TestFunction/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/index.md) · [Full source](../../../../mathematics/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bb940703b56fcadeb174e7fb412eae6f23513fd`.

Source path: `GRWTSK/Analysis/TestFunction/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TestFunction/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimitiveWeilTestFunction](../../../../mathematics/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/declarations/primitiveweiltestfunction--6f73f270244c33522d2e8756.md) | 40 | `declaration-track:6f73f270244c33522d2e87566f39248fa0ca20e23ffd4c322611aef47883c80f` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/declarations/instance--c3d9f9c01512fd5f41287168.md) | 50 | `declaration-track:c3d9f9c01512fd5f412871687f07e533831edba939d9dd760c8a37612740574d` |
| 3 | `theorem` | [coe_mk](../../../../mathematics/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/declarations/coe-mk--f32d5ce4eb25814f4fdcdced.md) | 54 | `result-track:f32d5ce4eb25814f4fdcdced47bb742feb317cbabf85be1aa7bb1fb6cba4f5f1` |
| 4 | `theorem` | [continuous](../../../../mathematics/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/declarations/continuous--286a2450bc7d20767b3eef8f.md) | 61 | `result-track:286a2450bc7d20767b3eef8f0c2e737881a3ca13b2d13b519359e2f0e7a588b9` |
| 5 | `theorem` | [hasCompactSupport](../../../../mathematics/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/declarations/hascompactsupport--5c8b391d73ac54410825e4ba.md) | 65 | `result-track:5c8b391d73ac54410825e4bae3a9487ee671c144fad5e38e0c45e6e4a2dc8f92` |
| 6 | `theorem` | [integrable](../../../../mathematics/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/declarations/integrable--17e4056cede46a71a00f4d51.md) | 70 | `result-track:17e4056cede46a71a00f4d513d083224456778c0b5369212b187561cff24c887` |
| 7 | `theorem` | [locallyIntegrable](../../../../mathematics/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/declarations/locallyintegrable--09f5c8dc6f20fb4d4dbe6347.md) | 74 | `result-track:09f5c8dc6f20fb4d4dbe6347a7aa2bfb4f0648a0b696907cc82e756e289df787` |
| 8 | `def` | [star](../../../../mathematics/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/declarations/star--c64cd6aacfba63f3d2c5f230.md) | 80 | `declaration-track:c64cd6aacfba63f3d2c5f2304df83b6eb4651b8f53eb47a4b05af0642202d168` |
| 9 | `theorem` | [star_apply](../../../../mathematics/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/declarations/star-apply--38c0719508ca57a532a6380c.md) | 96 | `result-track:38c0719508ca57a532a6380ccb8fa1e5267900c2511e535f1ba0ff507683fcc3` |
| 10 | `theorem` | [star_supportRadius](../../../../mathematics/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/declarations/star-supportradius--3fb9000ac2f9e012ef4ae589.md) | 101 | `result-track:3fb9000ac2f9e012ef4ae58944aa0245667364756093b761fbef97d309ba06ed` |
| 11 | `theorem` | [star_star_apply](../../../../mathematics/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/declarations/star-star-apply--db2b0f4ade6e54b60605b45d.md) | 106 | `result-track:db2b0f4ade6e54b60605b45db8821fedeaf4a7b6e4263db89ff4962283ab87ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
