# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Folds.Variant96d23841019e43cae10e3e8ebae15e1c71c8a92a0ffa98d8d7d30d284cc5e091

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37f6220af776e3bf2de970d32427b070678fd34f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant96d23841019e43cae10e3e8ebae15e1c71c8a92a0ffa98d8d7d30d284cc5e091.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant96d23841019e43cae10e3e8ebae15e1c71c8a92a0ffa98d8d7d30d284cc5e091.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant96d23841019e43cae10e3e8ebae15e1c71c8a92a0ffa98d8d7d30d284cc5e091.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37f6220af776e3bf2de970d32427b070678fd34f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant96d23841019e43cae10e3e8ebae15e1c71c8a92a0ffa98d8d7d30d284cc5e091.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant96d23841019e43cae10e3e8ebae15e1c71c8a92a0ffa98d8d7d30d284cc5e091.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.BitVec.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Iterate` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iunfoldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant96d23841019e43cae10e3e8ebae15e1c71c8a92a0ffa98d8d7d30d284cc5e091.lean/declarations/iunfoldr--6295eb94da010722ab3f51e1.md) | 33 | `declaration-track:6295eb94da010722ab3f51e1453f7afee595a1d3247ac4db20ed6acf4860dbc2` |
| 2 | `theorem` | [iunfoldr.fst_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant96d23841019e43cae10e3e8ebae15e1c71c8a92a0ffa98d8d7d30d284cc5e091.lean/declarations/iunfoldr-fst-eq--3582e3dcc4ac4dbb264204bf.md) | 37 | `result-track:3582e3dcc4ac4dbb264204bf8fd0990282d6d38a18deb576b406b20ae2e3f4b1` |
| 3 | `theorem` | [iunfoldr.eq_test](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant96d23841019e43cae10e3e8ebae15e1c71c8a92a0ffa98d8d7d30d284cc5e091.lean/declarations/iunfoldr-eq-test--953b8e9b7b5de00c364a00da.md) | 50 | `result-track:953b8e9b7b5de00c364a00dad5252cfde7fcf6c635ab4fc6c719594bc3f42773` |
| 4 | `theorem` | [iunfoldr_getLsbD'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant96d23841019e43cae10e3e8ebae15e1c71c8a92a0ffa98d8d7d30d284cc5e091.lean/declarations/iunfoldr-getlsbd--b12608d7db85fbe4a332e998.md) | 62 | `result-track:b12608d7db85fbe4a332e99844fe78df5ec4298995c570deb2231cd58bbce96c` |
| 5 | `theorem` | [iunfoldr_getLsbD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant96d23841019e43cae10e3e8ebae15e1c71c8a92a0ffa98d8d7d30d284cc5e091.lean/declarations/iunfoldr-getlsbd--a61b50ec29d30f10db272bba.md) | 102 | `result-track:a61b50ec29d30f10db272bba79ad36351a27c3c672c3e5e2323701119c0e50a6` |
| 6 | `theorem` | [iunfoldr_replace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant96d23841019e43cae10e3e8ebae15e1c71c8a92a0ffa98d8d7d30d284cc5e091.lean/declarations/iunfoldr-replace--a805ff0a218d6ad42ad304a8.md) | 115 | `result-track:a805ff0a218d6ad42ad304a818f26708f759b5881364de1301251dfbd7387a89` |
| 7 | `theorem` | [iunfoldr_replace_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variant96d23841019e43cae10e3e8ebae15e1c71c8a92a0ffa98d8d7d30d284cc5e091.lean/declarations/iunfoldr-replace-snd--6001bb92348e06ea08b7c6fc.md) | 122 | `result-track:6001bb92348e06ea08b7c6fcde9d352d2b13476dfe46785e4da4729808cc4f05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
