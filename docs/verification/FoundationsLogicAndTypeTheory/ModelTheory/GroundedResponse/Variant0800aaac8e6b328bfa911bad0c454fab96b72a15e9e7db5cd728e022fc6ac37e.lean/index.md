# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.GroundedResponse.Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6769628c687171dadce872f6069d283e2d0ad4e5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6769628c687171dadce872f6069d283e2d0ad4e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Language.GroundedClause` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GroundedResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean/declarations/groundedresponse--758f89ab6e536b9309d0a289.md) | 16 | `declaration-track:758f89ab6e536b9309d0a289c0d65b443ad6fcc8d44e9ae3919adad964e6327c` |
| 2 | `inductive` | [ResponseGroundingError](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean/declarations/responsegroundingerror--476917dc91108fc9668b9cac.md) | 21 | `declaration-track:476917dc91108fc9668b9cac922734ed3bcae547969467726e121410fc355e38` |
| 3 | `structure` | [CheckedClauseList](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean/declarations/checkedclauselist--2bc95438407e7b0cc2a3d951.md) | 27 | `declaration-track:2bc95438407e7b0cc2a3d951d04e4518a6d4630b1bebf6e7a7994a15472983b8` |
| 4 | `def` | [validateClauseList](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean/declarations/validateclauselist--ead85b39568b660f411c4a31.md) | 33 | `declaration-track:ead85b39568b660f411c4a317d8a3b55f31be631f7211e146e6739725c3061a0` |
| 5 | `structure` | [CheckedGroundedResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean/declarations/checkedgroundedresponse--de539dfb54c11f5254653842.md) | 57 | `declaration-track:de539dfb54c11f5254653842eec9b5b3b5073307a0e25a4a0fa6c7f5ac24f657` |
| 6 | `def` | [validateGroundedResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean/declarations/validategroundedresponse--d238182738afad4ec05e4494.md) | 64 | `declaration-track:d238182738afad4ec05e4494d16c5e7d1a13a2771622c53a674a99feeb1e2bef` |
| 7 | `theorem` | [CheckedGroundedResponse.clause_accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean/declarations/checkedgroundedresponse-clause-accepted--096e35fb49cfb924bf2c5285.md) | 76 | `result-track:096e35fb49cfb924bf2c528519ea20b52905091a62b43c250d4893cb92ad5006` |
| 8 | `theorem` | [CheckedAssertion.not_embedding_only](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean/declarations/checkedassertion-not-embedding-only--ebc9278bf809a378dd149f13.md) | 86 | `result-track:ebc9278bf809a378dd149f134d0ac22de89073ee6ff17e2fb92abc87e6d9f0b5` |
| 9 | `theorem` | [CheckedAssertion.model_authored_not_established](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant0800aaac8e6b328bfa911bad0c454fab96b72a15e9e7db5cd728e022fc6ac37e.lean/declarations/checkedassertion-model-authored-not-established--c2b3c8d2b8ae8ebed501ccc3.md) | 94 | `result-track:c2b3c8d2b8ae8ebed501ccc3f6d99910e50ff89d138a70d4086d46d78de918ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
