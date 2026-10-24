# Verification target: GRWTSK.Algebra.GroupTheory.Embedding.Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "833234c1422ef15ee16ceabc4cde1f6aeb735139",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Embedding/Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `833234c1422ef15ee16ceabc4cde1f6aeb735139`.

Source path: `GRWTSK/Algebra/GroupTheory/Embedding/Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Embedding/Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smul](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf.lean/declarations/smul--c9d998530bcf53481fe2e881.md) | 36 | `declaration-track:c9d998530bcf53481fe2e881ab3691e989668580fe4aa6f46733c118a73255ae` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf.lean/declarations/smul-def--c0c95bc8be0e7f07a9f38a5d.md) | 40 | `result-track:c0c95bc8be0e7f07a9f38a5ddb4c0cab33db2c8f464b66c44f2448450fe49a91` |
| 3 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf.lean/declarations/smul-apply--4a8dcdd14586092e4df81c86.md) | 45 | `result-track:4a8dcdd14586092e4df81c8616e3c49439e1cb4be7008bc9721a9782b1c138c6` |
| 4 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf.lean/declarations/coe-smul--d633b696e1df5af613f0ea51.md) | 49 | `result-track:d633b696e1df5af613f0ea51a9d49051afbcb7fadbc9269479f0b2c1f14dd6b2` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf.lean/declarations/instance--62d27e41d199716cce597ada.md) | 52 | `declaration-track:62d27e41d199716cce597ada7a93a37f4c301e8b5827d72aca7e9c5eac5d1297` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf.lean/declarations/instance--9b0fd2b04ae360343071db88.md) | 57 | `declaration-track:9b0fd2b04ae360343071db88cc62b09da0e795783cbe54899669cc756f0ca14f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf.lean/declarations/instance--647e5b5e21fc908c53424f6d.md) | 61 | `declaration-track:647e5b5e21fc908c53424f6d3606e99254b01e36d9cdcc4e44a979648e271543` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variant7faa6b6a5b46cfa81988d2be890fe6f3feeed86b8dc0e209bf30a3b10ee9aedf.lean/declarations/instance--da7fa7e4235060337f0c99bc.md) | 66 | `declaration-track:da7fa7e4235060337f0c99bc84098736456a304df7ceb1861a552c4789a474ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
