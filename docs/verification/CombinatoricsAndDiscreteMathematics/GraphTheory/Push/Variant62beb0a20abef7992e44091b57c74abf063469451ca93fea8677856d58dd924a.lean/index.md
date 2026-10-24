# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Push.Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90a1c1778262c8deef612460395d7b27cad63124",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90a1c1778262c8deef612460395d7b27cad63124`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Prefunctor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean/declarations/push--21808b87825477db4137f248.md) | 25 | `declaration-track:21808b87825477db4137f248cf6c99c44d1299b609c05a04906ae69f6a7f9be7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean/declarations/instance--5dc9a4da047e763d08d61e3d.md) | 28 | `declaration-track:5dc9a4da047e763d08d61e3d13e205e09ed96a63d3aec89b7ebf974b91ff9685` |
| 3 | `inductive` | [PushQuiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean/declarations/pushquiver--aade6c9f981a3ab67f430d1e.md) | 32 | `declaration-track:aade6c9f981a3ab67f430d1e32036b25c6ba42b78b6ae6cb8e1ecefbb39b6a23` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean/declarations/instance--68fe3f30eb357e2f1872a708.md) | 35 | `declaration-track:68fe3f30eb357e2f1872a708c9e093b220dbc3c3a5012c4b7d2c32a4c39023b6` |
| 5 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean/declarations/of--4146e3e384c413fe1974a800.md) | 41 | `declaration-track:4146e3e384c413fe1974a8008d53887b80c074f4b368dd991d2ce757a9019c4d` |
| 6 | `theorem` | [of_obj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean/declarations/of-obj--2baf06258fba752a84c693fe.md) | 46 | `result-track:2baf06258fba752a84c693fedd51813efd22b51e7076857544fd2dcc338a1d24` |
| 7 | `def` | [lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean/declarations/lift--027d726e402d157755d83499.md) | 54 | `declaration-track:027d726e402d157755d834994291f49853b7937f71ffc14249d09e99c7c8d5a6` |
| 8 | `theorem` | [lift_obj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean/declarations/lift-obj--3966b284daab1d463ce11695.md) | 62 | `result-track:3966b284daab1d463ce116954af0b172ab21638cdc24594d496641d14df065f8` |
| 9 | `theorem` | [lift_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean/declarations/lift-comp--fb5384998175f3d0ce484fce.md) | 65 | `result-track:fb5384998175f3d0ce484fce371e77463cd09c1cca7f1fa8f6e2d17d3f569a07` |
| 10 | `theorem` | [lift_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant62beb0a20abef7992e44091b57c74abf063469451ca93fea8677856d58dd924a.lean/declarations/lift-unique--f9b7cd91c343af0658149772.md) | 83 | `result-track:f9b7cd91c343af0658149772fe1894ec0465bf79aaeb6c3243fcc064925ecad9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
