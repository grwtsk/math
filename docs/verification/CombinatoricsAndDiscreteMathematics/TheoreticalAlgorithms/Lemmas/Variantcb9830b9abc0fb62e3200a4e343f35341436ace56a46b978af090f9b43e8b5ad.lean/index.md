# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2e226f85f842a42fab8d2717112b84dcf7101ce",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2e226f85f842a42fab8d2717112b84dcf7101ce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Slice.InternalLemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forIn_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean/declarations/forin-tolist--7c6264c92b2bc246556a16af.md) | 25 | `result-track:7c6264c92b2bc246556a16af7cc514e3382959ca09cb9bbe33e8c1ac2f62869e` |
| 2 | `theorem` | [forIn_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean/declarations/forin-toarray--c1a3a137d662f54ef16c95c5.md) | 37 | `result-track:c1a3a137d662f54ef16c95c5289398bcffee6a03a627650d5f6aa054cbb4df24` |
| 3 | `theorem` | [Internal.foldlM_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean/declarations/internal-foldlm-iter--099c6506e484ce64d4f7caa9.md) | 48 | `result-track:099c6506e484ce64d4f7caa99c1f3349945651499a290d586d3c82ba0feb3de1` |
| 4 | `theorem` | [foldlM_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean/declarations/foldlm-tolist--7ba93ce4e1739810db39780a.md) | 54 | `result-track:7ba93ce4e1739810db39780a65d5cd600e4a2ca64c23e673289999cd1741a557` |
| 5 | `theorem` | [foldlM_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean/declarations/foldlm-toarray--55970794e3f14fdea1404705.md) | 60 | `result-track:55970794e3f14fdea1404705c4223060c6a89a39dc914f7d65ce5db1e6e1e1e7` |
| 6 | `theorem` | [Internal.foldl_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean/declarations/internal-foldl-iter--550b10f3c21b2ca7e73307e4.md) | 66 | `result-track:550b10f3c21b2ca7e73307e44404d9e8c3d239feb5ad034948eda2f1fa23c147` |
| 7 | `theorem` | [foldl_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean/declarations/foldl-tolist--54d3c75c4d1bc736c9437730.md) | 72 | `result-track:54d3c75c4d1bc736c9437730c93ba68ff5ed30911dbf42c96399dfe0ab8fa3f3` |
| 8 | `theorem` | [foldl_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean/declarations/foldl-toarray--849b8ba4bed54dc33d999289.md) | 78 | `result-track:849b8ba4bed54dc33d999289c17332621a8c08044e67266de0161994f0553b87` |
| 9 | `theorem` | [size_toArray_eq_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean/declarations/size-toarray-eq-size--6c356f1eadf813ed93b2ab3e.md) | 85 | `result-track:6c356f1eadf813ed93b2ab3e742be1d5a44b07423ef1f7ad1a4ba76e805522d2` |
| 10 | `theorem` | [length_toList_eq_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean/declarations/length-tolist-eq-size--6b71380bc66a6d020fd06981.md) | 94 | `result-track:6b71380bc66a6d020fd0698193138f8830976e0e4cfbc211bdcd7afc3939e607` |
| 11 | `theorem` | [length_toListRev_eq_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad.lean/declarations/length-tolistrev-eq-size--c8ebaf195ee41f673e2ae7b7.md) | 103 | `result-track:c8ebaf195ee41f673e2ae7b793c89e2383e44510659339e0c1db12dcc22412dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
