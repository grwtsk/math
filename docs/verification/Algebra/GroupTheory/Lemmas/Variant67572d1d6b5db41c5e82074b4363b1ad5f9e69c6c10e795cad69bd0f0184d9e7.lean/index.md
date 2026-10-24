# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaee23d8d1da14694d78aca81a08f60fefd57103",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaee23d8d1da14694d78aca81a08f60fefd57103`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Commute` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Hom` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isLocalHom_of_exists_map_ne_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/declarations/islocalhom-of-exists-map-ne-one--73744eee827faa6f943c00e3.md) | 24 | `result-track:73744eee827faa6f943c00e3adb7935d04c203c3227de376ffd0c436c4f8dda3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/declarations/instance--dedc48d06649d184344426df.md) | 35 | `declaration-track:dedc48d06649d184344426dfbc0860dbd08e3493885f6dcb561fb2a0009a08a9` |
| 3 | `lemma` | [div_eq_div_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/declarations/div-eq-div-iff--23c07404e64e381ae6a00d9d.md) | 48 | `result-track:23c07404e64e381ae6a00d9df141db30a58c251897373164ea3ead1ba1da20e6` |
| 4 | `theorem` | [map_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/declarations/map-ne-zero--9b2182efce403903f5d87a28.md) | 60 | `result-track:9b2182efce403903f5d87a28088b33b40efc782dcb48861f0255d03179852c18` |
| 5 | `theorem` | [map_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/declarations/map-eq-zero--1e87198c59e08330a908d54f.md) | 64 | `result-track:1e87198c59e08330a908d54f4126c51e7dc88b0f649676324c41086dd3178f02` |
| 6 | `theorem` | [eq_on_inv₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/declarations/eq-on-inv--b2c6f8c7777a9829e9f4da11.md) | 67 | `result-track:b2c6f8c7777a9829e9f4da1182c6b7f87cfabc07373529b3fec65a705904b367` |
| 7 | `theorem` | [map_inv₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/declarations/map-inv--f6f03ec30d8c289835d00cba.md) | 82 | `result-track:f6f03ec30d8c289835d00cba8867020bd5e3ff4e824bee9ce2e04eab28390dc1` |
| 8 | `theorem` | [map_div₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/declarations/map-div--eb357d962e0943a8989ceb4b.md) | 89 | `result-track:eb357d962e0943a8989ceb4bea43fd98ce9fe3ac4a523451767e42290296031e` |
| 9 | `def` | [MonoidWithZero.inverse](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/declarations/monoidwithzero-inverse--71f3bd57a220a1c850fc270d.md) | 96 | `declaration-track:71f3bd57a220a1c850fc270db5734922e6ce032b1d857fe6204b460fce8a3608` |
| 10 | `theorem` | [MonoidWithZero.coe_inverse](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/declarations/monoidwithzero-coe-inverse--9d78154f5222f4b72f3eefba.md) | 104 | `result-track:9d78154f5222f4b72f3eefba613080300e6a503bc30f6e073d7a7e3007909ba5` |
| 11 | `theorem` | [MonoidWithZero.inverse_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/declarations/monoidwithzero-inverse-apply--e9896f83410d8de713816eb5.md) | 109 | `result-track:e9896f83410d8de713816eb5f40be813665bdc38df681ee17a646e9c46c85c0f` |
| 12 | `def` | [invMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/declarations/invmonoidwithzerohom--38b194239bb44293a2834c24.md) | 114 | `declaration-track:38b194239bb44293a2834c24ad273435ac17fce054bea3b8e1c766ed09b8d1e4` |
| 13 | `theorem` | [map_zpow₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant67572d1d6b5db41c5e82074b4363b1ad5f9e69c6c10e795cad69bd0f0184d9e7.lean/declarations/map-zpow--4afbaa386978634550aa3488.md) | 120 | `result-track:4afbaa386978634550aa3488d2a23396e4fbe5cd1207ad55f79e057e5c72bf4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
