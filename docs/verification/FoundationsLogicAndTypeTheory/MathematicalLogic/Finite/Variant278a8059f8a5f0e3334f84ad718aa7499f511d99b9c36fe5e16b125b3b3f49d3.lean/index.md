# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Finite.Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "928a61e72a53c6b26dbf8eeafdfe6de198140aba",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `928a61e72a53c6b26dbf8eeafdfe6de198140aba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Sum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fintype` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isConj_of_support_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/isconj-of-support-equiv--7f1026951107736175920ad4.md) | 43 | `result-track:7f1026951107736175920ad4a206c0ab42cc7d225669d55fd5b5ed5b8777b791` |
| 2 | `theorem` | [perm_inv_on_of_perm_on_finset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/perm-inv-on-of-perm-on-finset--043df2d6b465e2aa46a847bb.md) | 62 | `result-track:043df2d6b465e2aa46a847bbb1b15f68f7edd464f380dc090700813b9c1fbab0` |
| 3 | `theorem` | [perm_inv_mapsTo_of_mapsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/perm-inv-mapsto-of-mapsto--dec7060d08d702b8f794e7fc.md) | 72 | `result-track:dec7060d08d702b8f794e7fc1bbbad3da4065d72bbf0995c8fa23f2e050a0eb5` |
| 4 | `theorem` | [perm_inv_mapsTo_iff_mapsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/perm-inv-mapsto-iff-mapsto--dc08b3fa188e40e5d1b1f3fa.md) | 82 | `result-track:dc08b3fa188e40e5d1b1f3fab9aaf10b64114305d781046b824fb974a50038d9` |
| 5 | `theorem` | [perm_inv_on_of_perm_on_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/perm-inv-on-of-perm-on-finite--a339379b8ac1846e85adbe3c.md) | 86 | `result-track:a339379b8ac1846e85adbe3ce085310bad76f5591e0e7b7ec909acd09470cf63` |
| 6 | `abbrev` | [subtypePermOfFintype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/subtypepermoffintype--0089c2648ca55319f5e31b2d.md) | 94 | `declaration-track:0089c2648ca55319f5e31b2d960522f1d508401f678d1f588cdb94bd9b313c26` |
| 7 | `theorem` | [subtypePermOfFintype_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/subtypepermoffintype-apply--2717325624a70fa79467cd98.md) | 99 | `result-track:2717325624a70fa79467cd98f606945a521623bf9a4751645a23a21856d4d30b` |
| 8 | `theorem` | [subtypePermOfFintype_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/subtypepermoffintype-one--c92bed36449ee16ab77aaf24.md) | 103 | `result-track:c92bed36449ee16ab77aaf241b90ff36156f56322c72df3ebc14d97032fd3797` |
| 9 | `theorem` | [perm_mapsTo_inl_iff_mapsTo_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/perm-mapsto-inl-iff-mapsto-inr--8f1d07fac3e4ba2765981f9e.md) | 107 | `result-track:8f1d07fac3e4ba2765981f9e5a7c032c600d47cbb2030e35690f1c8b7c225a84` |
| 10 | `theorem` | [mem_sumCongrHom_range_of_perm_mapsTo_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/mem-sumcongrhom-range-of-perm-mapsto-inl--586da25de6fa3960fe8e70a2.md) | 127 | `result-track:586da25de6fa3960fe8e70a27a7e0c2ea5900e9d2747378286f887b23f33283f` |
| 11 | `theorem` | [Disjoint.orderOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/disjoint-orderof--0448af0978f2762816a276cd.md) | 160 | `result-track:0448af0978f2762816a276cd252dbcdebeb24db68789251f38b609e842ccf284` |
| 12 | `theorem` | [Disjoint.extendDomain](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/disjoint-extenddomain--d44f5d840fcc61349897c5d5.md) | 169 | `result-track:d44f5d840fcc61349897c5d5a5dc686bcd2d72e2ecb15b31eda53f7d58eee3a0` |
| 13 | `theorem` | [Disjoint.isConj_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/disjoint-isconj-mul--1e87ecb43dcb787d68bf2e79.md) | 179 | `result-track:1e87ecb43dcb787d68bf2e790349893c33b875e31946b64777d29c2bc68fd504` |
| 14 | `theorem` | [apply_mem_fixedPoints_iff_mem_of_mem_centralizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/apply-mem-fixedpoints-iff-mem-of-mem-centralizer--e0dde98bb35a5c6fe7224254.md) | 225 | `result-track:e0dde98bb35a5c6fe722425444a4cf1b454bbb212dc05742cd66d46fa337bf7d` |
| 15 | `lemma` | [disjoint_ofSubtype_of_memFixedPoints_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/disjoint-ofsubtype-of-memfixedpoints-self--2032e2ae29fad01519999b10.md) | 236 | `result-track:2032e2ae29fad01519999b10fd4bbffd4482ae208f899daf875a251cfdde07ac` |
| 16 | `theorem` | [support_pow_coprime](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/support-pow-coprime--270e6566b96102f670245a60.md) | 249 | `result-track:270e6566b96102f670245a60be29c13d2477a8de3aa22ad8a7026861b131f7d2` |
| 17 | `lemma` | [ofSubtype_support_disjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/ofsubtype-support-disjoint--4a18ad5f17a8f15b1d1bfd03.md) | 256 | `result-track:4a18ad5f17a8f15b1d1bfd03a40cb35ccbab8c06357bebd890428e8a54ccdb83` |
| 18 | `lemma` | [disjoint_of_disjoint_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/disjoint-of-disjoint-support--1fd783d625b613e0d01dda97.md) | 265 | `result-track:1fd783d625b613e0d01dda97f4611178dd896df409a359556e4951bfdf795cca` |
| 19 | `lemma` | [support_closure_subset_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/support-closure-subset-union--9515bf2513b7a30f68f1e386.md) | 273 | `result-track:9515bf2513b7a30f68f1e386d8641c064c7f8d90ed0e2a291c5c71dbfb53f1f2` |
| 20 | `lemma` | [disjoint_support_closure_of_disjoint_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/disjoint-support-closure-of-disjoint-support--a35a27821f7baba1b3a649cb.md) | 284 | `result-track:a35a27821f7baba1b3a649cbaf5a33ab80ac93ddce122f268b4045f5ee10c24b` |
| 21 | `lemma` | [disjoint_closure_of_disjoint_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant278a8059f8a5f0e3334f84ad718aa7499f511d99b9c36fe5e16b125b3b3f49d3.lean/declarations/disjoint-closure-of-disjoint-support--02f581bbf1164b53691806bf.md) | 294 | `result-track:02f581bbf1164b53691806bfc04a426f793fb731026c6aa18962cc3a3bb2f43c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
