# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fin.Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0821081b056f1899d6a3bd0d0271db6e2f9eff7c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0821081b056f1899d6a3bd0d0271db6e2f9eff7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [attachFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/attachfin--3346abab7fafb82083ea011a.md) | 34 | `declaration-track:3346abab7fafb82083ea011a7bd77c8ea6c88bd631b0a135b0eaa82c363461d4` |
| 2 | `theorem` | [mem_attachFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/mem-attachfin--048a224fad1ed87c535eedbf.md) | 38 | `result-track:048a224fad1ed87c535eedbf04f3ec5a9b8770b1f61b128f4948761598fbdde3` |
| 3 | `lemma` | [coe_attachFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/coe-attachfin--3096f3250d11875dd48f0fb1.md) | 46 | `result-track:3096f3250d11875dd48f0fb1ca2d5f4452d8d71cdcbb11ec9e5c759fd8726152` |
| 4 | `theorem` | [card_attachFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/card-attachfin--7579dd247acfaf1c55e48e92.md) | 51 | `result-track:7579dd247acfaf1c55e48e923a3c064077064bc967ef323230a478733ea64f59` |
| 5 | `lemma` | [image_val_attachFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/image-val-attachfin--484e9b8d45c90c2625594cf1.md) | 56 | `result-track:484e9b8d45c90c2625594cf13c3ffe9844245f7eb48b3d378b54f1cbd2b93a45` |
| 6 | `lemma` | [map_valEmbedding_attachFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/map-valembedding-attachfin--0e9821df704cdfe079b054e2.md) | 63 | `result-track:0e9821df704cdfe079b054e2ab504e3f1dae29c405d6becc4bd86d6df4ebf2b7` |
| 7 | `lemma` | [attachFin_subset_attachFin_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/attachfin-subset-attachfin-iff--6e71f470471053b45fc621f8.md) | 68 | `result-track:6e71f470471053b45fc621f87d53d57e5a9039a9cb1c58849f8c4d9bd3d7ecbc` |
| 8 | `lemma` | [attachFin_subset_attachFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/attachfin-subset-attachfin--d372b32e31718c369e5ccd59.md) | 73 | `result-track:d372b32e31718c369e5ccd59eff99b5c7f725f7a9316de42c10ca9499d695ec6` |
| 9 | `lemma` | [attachFin_ssubset_attachFin_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/attachfin-ssubset-attachfin-iff--5cee3f2c33b76d7e5c379e64.md) | 77 | `result-track:5cee3f2c33b76d7e5c379e646451aeaf71ce403874a7a6bdeec3c0c23490b522` |
| 10 | `lemma` | [attachFin_ssubset_attachFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/attachfin-ssubset-attachfin--4b6f5f8162b7de992fd6c5d1.md) | 82 | `result-track:4b6f5f8162b7de992fd6c5d1e50f3e3e4887a73da219db686fe92ecab0af666c` |
| 11 | `def` | [fin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/fin--5f6593cb1c8c5c4b1c0d5aec.md) | 93 | `declaration-track:5f6593cb1c8c5c4b1c0d5aeca96e433ffbb714e32d3ece14e56fb8f7dde7e856` |
| 12 | `theorem` | [mem_fin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/mem-fin--19f81267780646a1ae88e831.md) | 99 | `result-track:19f81267780646a1ae88e83110d96e497791ebb689511454a193284e888bf160` |
| 13 | `theorem` | [coe_fin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/coe-fin--6a1f1b2f31676ad2d2e92e75.md) | 103 | `result-track:6a1f1b2f31676ad2d2e92e75d2d8849018d7f0ba9939073c37de3fab986a7123` |
| 14 | `theorem` | [fin_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/fin-mono--358b1811b7d754cd7a15d395.md) | 106 | `result-track:358b1811b7d754cd7a15d395613eed2d72ef8981cb7bd5ba1a5f11fce83ae0f2` |
| 15 | `theorem` | [fin_subset_fin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/fin-subset-fin--ae0ff0e8ccaca19cea9d12c6.md) | 109 | `result-track:ae0ff0e8ccaca19cea9d12c6e1c48ab008b16f7a161334c5f8071baa620e8a48` |
| 16 | `theorem` | [fin_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/fin-map--fa58d3eee69abcf08f6fbc43.md) | 112 | `result-track:fa58d3eee69abcf08f6fbc434a1851452e7fbc395b27402bb47722db8a5058aa` |
| 17 | `theorem` | [attachFin_eq_fin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant5ace41949b79eae273ea4447507819714c5968d4228c8d1786229025ee169253.lean/declarations/attachfin-eq-fin--f530467dbc0972a885148aa2.md) | 116 | `result-track:f530467dbc0972a885148aa23df8433e28e342022a334fd351b5f0b13701d1ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
