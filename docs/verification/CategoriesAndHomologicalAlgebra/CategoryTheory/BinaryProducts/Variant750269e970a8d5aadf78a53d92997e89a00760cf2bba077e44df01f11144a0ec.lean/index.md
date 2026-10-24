# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BinaryProducts.Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b91eaa713a60ee654fa54710773411a8d4a8d78c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b91eaa713a60ee654fa54710773411a8d4a8d78c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitMapConeBinaryFanEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/islimitmapconebinaryfanequiv--3b66a8f3490ec6736af8fe33.md) | 40 | `declaration-track:3b66a8f3490ec6736af8fe338fb08a0e2d535b4d5670879440a111402be98482` |
| 2 | `def` | [mapIsLimitOfPreservesOfIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/mapislimitofpreservesofislimit--c6cdd443a74ec3aa38308763.md) | 48 | `declaration-track:c6cdd443a74ec3aa38308763771f637ccd4af0f6aae62129b9e879a92ca12a46` |
| 3 | `def` | [isLimitOfReflectsOfMapIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/islimitofreflectsofmapislimit--c1f9ddc644ccf27725269fcf.md) | 53 | `declaration-track:c1f9ddc644ccf27725269fcf2faebf6231491028ce02cb1483f8d317f86a4a7f` |
| 4 | `def` | [isLimitOfHasBinaryProductOfPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/islimitofhasbinaryproductofpreserveslimit--c9fb22c16effc060d1b9f96c.md) | 63 | `declaration-track:c9fb22c16effc060d1b9f96c122831b5979228e84c10c8f4d107988636a77f72` |
| 5 | `lemma` | [PreservesLimitPair.of_iso_prod_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/preserveslimitpair-of-iso-prod-comparison--10aca0d1628c0735b00584dc.md) | 72 | `result-track:10aca0d1628c0735b00584dce51383c76145ba3be0da625348061c05f1410889` |
| 6 | `def` | [PreservesLimitPair.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/preserveslimitpair-iso--a36f101acc87424bfbbbc43a.md) | 84 | `declaration-track:a36f101acc87424bfbbbc43a7a663cc219b8d8b29662e1e7740defa0ccc8efdf` |
| 7 | `theorem` | [PreservesLimitPair.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/preserveslimitpair-iso-hom--9f10c21970846c14261fa2dc.md) | 88 | `result-track:9f10c21970846c14261fa2dc831aa3812fa1cda9a0364fe87fa333d0547233d9` |
| 8 | `theorem` | [PreservesLimitPair.iso_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/preserveslimitpair-iso-inv-fst--d5c6bd54a5f6b8eabdc68e86.md) | 92 | `result-track:d5c6bd54a5f6b8eabdc68e86ce40e5304113d2c6bd20c2f520fd0d4c6ba5dfe2` |
| 9 | `theorem` | [PreservesLimitPair.iso_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/preserveslimitpair-iso-inv-snd--cbae5b10162d83a487b76e5a.md) | 98 | `result-track:cbae5b10162d83a487b76e5a49015b163e742f0b424b266fc8f243c27eaa83e5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/instance--b7049ac2cdf56ac91e7520bb.md) | 103 | `declaration-track:b7049ac2cdf56ac91e7520bb6b6f00af34bd9c6e5303d426c346f2d22aa3a408` |
| 11 | `lemma` | [preservesBinaryProducts_of_isIso_prodComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/preservesbinaryproducts-of-isiso-prodcomparison--157981d3f45b84eeb8f19235.md) | 109 | `result-track:157981d3f45b84eeb8f192352e899010933a0f2bb3408ebebd3db0c382f54c48` |
| 12 | `def` | [isColimitMapCoconeBinaryCofanEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/iscolimitmapcoconebinarycofanequiv--b2be4387f79e98fb6762b4ae.md) | 129 | `declaration-track:b2be4387f79e98fb6762b4aea48f6d86d9a3276815e90540a7fc6965d9ca073f` |
| 13 | `def` | [mapIsColimitOfPreservesOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/mapiscolimitofpreservesofiscolimit--66d85fe160b8a041d3afba9c.md) | 138 | `declaration-track:66d85fe160b8a041d3afba9cdaab644166b8769f1e2f0b048f13982613176555` |
| 14 | `def` | [isColimitOfReflectsOfMapIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/iscolimitofreflectsofmapiscolimit--3e5c000301aa551165b756f5.md) | 143 | `declaration-track:3e5c000301aa551165b756f5d27945f1a2ec34907ea5e1ff61e5c36f229432ed` |
| 15 | `def` | [isColimitOfHasBinaryCoproductOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/iscolimitofhasbinarycoproductofpreservescolimit--c8df20a31ce3062dc7f2046a.md) | 154 | `declaration-track:c8df20a31ce3062dc7f2046a8252ab38be36d0f4e7507bfe67acf197dee994bc` |
| 16 | `lemma` | [PreservesColimitPair.of_iso_coprod_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/preservescolimitpair-of-iso-coprod-comparison--b70cde78ad48f4a67d808c98.md) | 163 | `result-track:b70cde78ad48f4a67d808c98118481d60a12089139edca9eacd07245752cbc47` |
| 17 | `def` | [PreservesColimitPair.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/preservescolimitpair-iso--7dc01c58e260c6c2f95ae995.md) | 176 | `declaration-track:7dc01c58e260c6c2f95ae995a7a4b5fffe6d195226ec3f02ec5644293fdbb765` |
| 18 | `theorem` | [PreservesColimitPair.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/preservescolimitpair-iso-hom--458a60e43420c4adbe7bb514.md) | 181 | `result-track:458a60e43420c4adbe7bb5145371fe9472a0be1c97147869c440d1bece154f82` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/instance--a3a5da95e51dce9515592346.md) | 184 | `declaration-track:a3a5da95e51dce951559234660137c20b61900950d70871eef60327d4d59dd48` |
| 20 | `lemma` | [preservesBinaryCoproducts_of_isIso_coprodComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/declarations/preservesbinarycoproducts-of-isiso-coprodcomparison--eccf3e187f1ba99f3dbac6ed.md) | 190 | `result-track:eccf3e187f1ba99f3dbac6edb8ec310ee6b0d8a384b2a479c3a807e93dd94da5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
