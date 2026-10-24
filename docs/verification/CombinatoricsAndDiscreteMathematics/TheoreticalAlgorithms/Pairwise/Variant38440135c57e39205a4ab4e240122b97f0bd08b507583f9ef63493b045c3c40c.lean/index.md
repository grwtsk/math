# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pairwise.Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eda3fecb5bd4a13b04b9f4df0c0e782b9a83c31d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eda3fecb5bd4a13b04b9f4df0c0e782b9a83c31d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.List.Pairwise` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_getElem_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean/declarations/map-getelem-sublist--fadb9df8f7df90f4b668f8dd.md) | 32 | `result-track:fadb9df8f7df90f4b668f8dd99b004dab3b2985ed3d8224bdfb974a4c7da844c` |
| 2 | `theorem` | [sublist_eq_map_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean/declarations/sublist-eq-map-getelem--9ea02d22cd25c2d4a305cd27.md) | 51 | `result-track:9ea02d22cd25c2d4a305cd2752750911a7b328c0d45cc53fca5cdc257cdee513` |
| 3 | `theorem` | [pairwise_iff_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean/declarations/pairwise-iff-getelem--7a0e89917cc00e3bed733e23.md) | 67 | `result-track:7a0e89917cc00e3bed733e23025046006293d1464d0925b4a5041728b831dbd1` |
| 4 | `theorem` | [pairwise_lt_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean/declarations/pairwise-lt-finrange--6c506a1f26b544b4f6e4d43b.md) | 81 | `result-track:6c506a1f26b544b4f6e4d43ba8e2edb198ca61b1f8c021bab928a180ad4cd2f6` |
| 5 | `theorem` | [pairwise_le_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean/declarations/pairwise-le-finrange--c6e7a713c1c99bb616b5cf21.md) | 88 | `result-track:c6e7a713c1c99bb616b5cf2178b9099b87e7855d1cb33e895f080c3cbce6c42e` |
| 6 | `theorem` | [nodup_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean/declarations/nodup-finrange--b21a25a1a5bfa73016b4a671.md) | 95 | `result-track:b21a25a1a5bfa73016b4a6711d46fb6e2460a0bd2938455b9ff01d4f343212cb` |
| 7 | `theorem` | [Nodup.idxOf_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean/declarations/nodup-idxof-getelem--0397e0aac74a162aecfe4370.md) | 101 | `result-track:0397e0aac74a162aecfe437050932fd50073ae5694fb0d88def08a907380225e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
