# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Acyclic.Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5303baf15f210fa41cae6cd06c24e2f0a46b9648",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5303baf15f210fa41cae6cd06c24e2f0a46b9648`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAcyclic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean/declarations/isacyclic--32a4d2f0cc19e33fa03ee96d.md) | 52 | `declaration-track:32a4d2f0cc19e33fa03ee96d044061ddec484cafc98310db8e8a05561ceb25e5` |
| 2 | `structure` | [IsTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean/declarations/istree--aba15b522f040b22f7997a4a.md) | 57 | `declaration-track:aba15b522f040b22f7997a4ac973a1661d961a0e8de0f3f845fb377c8e20ebc3` |
| 3 | `theorem` | [isAcyclic_iff_forall_adj_isBridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean/declarations/isacyclic-iff-forall-adj-isbridge--760b38fe038d7b4affc4f118.md) | 66 | `result-track:760b38fe038d7b4affc4f1189ac05eb74db60af126a3d4d4b8322eb3c443e308` |
| 4 | `theorem` | [isAcyclic_iff_forall_edge_isBridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean/declarations/isacyclic-iff-forall-edge-isbridge--828b4164d8c83c56ddca6c3e.md) | 81 | `result-track:828b4164d8c83c56ddca6c3e8d85b8720fae338c08640831a33a874a6aa04051` |
| 5 | `theorem` | [IsAcyclic.path_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean/declarations/isacyclic-path-unique--d12f9a808c559706836afb4c.md) | 86 | `result-track:d12f9a808c559706836afb4cb7fa8851af48d48f0caac7b12c6c504091adc944` |
| 6 | `theorem` | [isAcyclic_of_path_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean/declarations/isacyclic-of-path-unique--b569a9d9917dee31915db9cd.md) | 116 | `result-track:b569a9d9917dee31915db9cd0fb9504631f0be8fd414765859b6f650873487ec` |
| 7 | `theorem` | [isAcyclic_iff_path_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean/declarations/isacyclic-iff-path-unique--8fadddd4734e34d0d51f2ade.md) | 128 | `result-track:8fadddd4734e34d0d51f2ade7644061bd328e634593f2bc280245535c51bf524` |
| 8 | `theorem` | [isTree_iff_existsUnique_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean/declarations/istree-iff-existsunique-path--676ea4928d96bb0a89711600.md) | 132 | `result-track:676ea4928d96bb0a89711600033e07684b4c518d26705f8aee9fe7fd5c65436e` |
| 9 | `lemma` | [IsTree.existsUnique_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean/declarations/istree-existsunique-path--c8b5c3522f8bbcef878bee03.md) | 155 | `result-track:c8b5c3522f8bbcef878bee03aeb756386e3cb76f1167c27c9ab6939b32d316b5` |
| 10 | `lemma` | [IsTree.card_edgeFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variante162e4de75039ba8408b0ddabebd48099ab15a1e1b28acef0a031968d21744c1.lean/declarations/istree-card-edgefinset--be5376bcf6a00fecd141d388.md) | 158 | `result-track:be5376bcf6a00fecd141d388f923c54e679aaae9b49319487fe21cd089a81c58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
