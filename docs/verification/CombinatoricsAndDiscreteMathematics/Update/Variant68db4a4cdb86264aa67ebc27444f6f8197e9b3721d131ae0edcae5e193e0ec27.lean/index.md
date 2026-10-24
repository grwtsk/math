# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Update.Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bc46406aed8ad970c543907370220078c4c7084",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bc46406aed8ad970c543907370220078c4c7084`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.DependsOn` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/declarations/updatefinset--2f2ed8742729b61f82333f0f.md) | 24 | `declaration-track:2f2ed8742729b61f82333f0f79263e7f5d1e13cc5f52d377979460bacad82b8d` |
| 2 | `theorem` | [updateFinset_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/declarations/updatefinset-def--e43bdfbe369e9125217cbdda.md) | 29 | `result-track:e43bdfbe369e9125217cbdda6c046cf79294b88713d17c06055c4ee738729d63` |
| 3 | `theorem` | [updateFinset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/declarations/updatefinset-empty--4cb6d8c6a877b298f4b4f180.md) | 33 | `result-track:4cb6d8c6a877b298f4b4f1804defb2ddceca3d9df6daba1586ea447cef27d6d4` |
| 4 | `theorem` | [updateFinset_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/declarations/updatefinset-singleton--3f96ad8c434a15bb01d77778.md) | 36 | `result-track:3f96ad8c434a15bb01d77778f6c870353c7d21838443b881f5d184b3dd094d76` |
| 5 | `theorem` | [update_eq_updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/declarations/update-eq-updatefinset--09d1f55a087544fff66ef548.md) | 44 | `result-track:09d1f55a087544fff66ef5489ea1ff3ef4d840e818721464c442e0259270e20f` |
| 6 | `theorem` | [_root_.DependsOn.updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/declarations/root-dependson-updatefinset--153d9c355c508b5769ecbd38.md) | 55 | `result-track:153d9c355c508b5769ecbd3858310b2d2b856a5e6e146b835598b315cab5ada8` |
| 7 | `theorem` | [_root_.DependsOn.update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/declarations/root-dependson-update--046016dbd289e039a3d5e76e.md) | 65 | `result-track:046016dbd289e039a3d5e76e349cdc662b13c78ed4ef03c1841fb0a2645cab37` |
| 8 | `theorem` | [updateFinset_updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/declarations/updatefinset-updatefinset--d5c5b8f8a10e1c90935e7240.md) | 70 | `result-track:d5c5b8f8a10e1c90935e7240baff8210e91db1827c427b1ed31ed44e5e12a295` |
| 9 | `lemma` | [updateFinset_updateFinset_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/declarations/updatefinset-updatefinset-of-subset--92f72727b016894e283ae351.md) | 82 | `result-track:92f72727b016894e283ae3518517f5e61ccc8788f6e7fe4301d8281594f74758` |
| 10 | `lemma` | [restrict_updateFinset_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/declarations/restrict-updatefinset-of-subset--e5a04d8af23f691af778929a.md) | 90 | `result-track:e5a04d8af23f691af778929affd8fa684cccc10dea30b1f5ad9713a6e6e2ec1d` |
| 11 | `lemma` | [restrict_updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/declarations/restrict-updatefinset--4c2a526248de55d337120955.md) | 95 | `result-track:4c2a526248de55d3371209555f40b7b7302633eb114ba15c76bca762b5f919af` |
| 12 | `lemma` | [updateFinset_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.lean/declarations/updatefinset-restrict--bbcd7db953a05224ab816671.md) | 101 | `result-track:bbcd7db953a05224ab8166712d7a2906c1b784cf8c6b80b6ff86a82582f9140f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
