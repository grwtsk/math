# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KTheoryClass.Variantd0fe2a197da07c02a48fb79c0c7fc9197eb79d5baff2c281dee1db01cc6c8588

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c587021c72227a90e83f6f89538e670eedac6eb6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KTheoryClass/Variantd0fe2a197da07c02a48fb79c0c7fc9197eb79d5baff2c281dee1db01cc6c8588.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KTheoryClass/Variantd0fe2a197da07c02a48fb79c0c7fc9197eb79d5baff2c281dee1db01cc6c8588.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KTheoryClass/Variantd0fe2a197da07c02a48fb79c0c7fc9197eb79d5baff2c281dee1db01cc6c8588.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c587021c72227a90e83f6f89538e670eedac6eb6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KTheoryClass/Variantd0fe2a197da07c02a48fb79c0c7fc9197eb79d5baff2c281dee1db01cc6c8588.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KTheoryClass/Variantd0fe2a197da07c02a48fb79c0c7fc9197eb79d5baff2c281dee1db01cc6c8588.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [KTheorySpace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KTheoryClass/Variantd0fe2a197da07c02a48fb79c0c7fc9197eb79d5baff2c281dee1db01cc6c8588.lean/declarations/ktheoryspace--7133a30cc7b0fda8196ee040.md) | 26 | `declaration-track:7133a30cc7b0fda8196ee0401860acb8eec556c34e9f0983bfdc5bf72899b988` |
| 2 | `structure` | [KTheoryClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KTheoryClass/Variantd0fe2a197da07c02a48fb79c0c7fc9197eb79d5baff2c281dee1db01cc6c8588.lean/declarations/ktheoryclass--843157a3c5ee9bf1c0ec1d7d.md) | 34 | `declaration-track:843157a3c5ee9bf1c0ec1d7d5a6e110f8ee613c5f24f218a1161469496e708a8` |
| 3 | `def` | [KTheoryClass.IsZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KTheoryClass/Variantd0fe2a197da07c02a48fb79c0c7fc9197eb79d5baff2c281dee1db01cc6c8588.lean/declarations/ktheoryclass-iszero--238d4d2c9c2ff86b2bcc73f8.md) | 39 | `declaration-track:238d4d2c9c2ff86b2bcc73f8e36e87e2aa1eddea68f957afc29c6b01e383abfe` |
| 4 | `def` | [KTheoryClass.Nonzero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KTheoryClass/Variantd0fe2a197da07c02a48fb79c0c7fc9197eb79d5baff2c281dee1db01cc6c8588.lean/declarations/ktheoryclass-nonzero--938f35f8079e09c16a533616.md) | 44 | `declaration-track:938f35f8079e09c16a53361686a29bbc19a6b8bbbca12ef32d500d5fd9e4abd4` |
| 5 | `theorem` | [ktheory_class_has_value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KTheoryClass/Variantd0fe2a197da07c02a48fb79c0c7fc9197eb79d5baff2c281dee1db01cc6c8588.lean/declarations/ktheory-class-has-value--69021f56513b8f9b89fb251c.md) | 49 | `result-track:69021f56513b8f9b89fb251cedebee77f27bfccabbf8e54064df883274d180cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
