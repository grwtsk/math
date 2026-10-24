# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ProdStdSimplex.Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d54c0ddcb1320bbf8c97b7ae9118533c04a3abb9",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d54c0ddcb1320bbf8c97b7ae9118533c04a3abb9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Fin.InsertNth` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Prod` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Finite` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [objEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/objequiv--c13df4d8f9868fdf637413e4.md) | 52 | `declaration-track:c13df4d8f9868fdf637413e4854454adeaac95ce540db6a2743f81d1191184d4` |
| 2 | `lemma` | [objEquiv_apply_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/objequiv-apply-symm-apply--e396fd4251a46ae3cb5e0be9.md) | 65 | `result-track:e396fd4251a46ae3cb5e0be94c0e173b8b2aac1dfe1828cc12542a0da0265750` |
| 3 | `lemma` | [objEquiv_apply_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/objequiv-apply-fst--4ce37b3adb2ecb604cee7f5d.md) | 69 | `result-track:4ce37b3adb2ecb604cee7f5db78a16c9d8b2a2d76e8a4feb10497cd536b1942f` |
| 4 | `lemma` | [objEquiv_apply_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/objequiv-apply-snd--1e48935a9454bf445431cf64.md) | 73 | `result-track:1e48935a9454bf445431cf6458bef767cf6917a82af92cbe6f902a6b8818ab3f` |
| 5 | `lemma` | [objEquiv_naturality](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/objequiv-naturality--e57f755d3920aa4b1cecb912.md) | 76 | `result-track:e57f755d3920aa4b1cecb912557f5ff2f157e49d191e08a1c0c501fc3fc97cfc` |
| 6 | `lemma` | [objEquiv_map_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/objequiv-map-apply--ee214febed7aafbddb71ad18.md) | 81 | `result-track:ee214febed7aafbddb71ad18612ebb4399da7470390ea8682983e02e15c82fee` |
| 7 | `lemma` | [objEquiv_δ_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/objequiv-apply--4f1a7ea6dadcfe3c57495132.md) | 86 | `result-track:4f1a7ea6dadcfe3c57495132ca403d8b444c1c7e6670bac2968ae6cd5574048f` |
| 8 | `def` | [isoNerve](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/isonerve--fb8e3c562601a2359e65e973.md) | 93 | `declaration-track:fb8e3c562601a2359e65e97342bf2ab0ef9c6b8da3e81b6d3e53b8351628e805` |
| 9 | `lemma` | [nonDegenerate_iff_injective_objEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/nondegenerate-iff-injective-objequiv--6b9e15941402096d1aa46cd1.md) | 98 | `result-track:6b9e15941402096d1aa46cd13d70fe1fb01786cefba996c0174315684aaa2a66` |
| 10 | `lemma` | [nonDegenerate_iff_strictMono_objEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/nondegenerate-iff-strictmono-objequiv--1fcfbd72e537d2c2448d6414.md) | 105 | `result-track:1fcfbd72e537d2c2448d641467b7a5599253a1bcb1aafbd7f1f078b9f56afe84` |
| 11 | `lemma` | [isoNerve_hom_app_obj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/isonerve-hom-app-obj--f53fc7d8c87481b26dd17758.md) | 111 | `result-track:f53fc7d8c87481b26dd17758b3e9b7c1ba79e2a735ac7f19c89707d4e0e84694` |
| 12 | `lemma` | [range_isoNerve_hom_app_obj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/range-isonerve-hom-app-obj--fc2cfb225ac9fc05d740b905.md) | 114 | `result-track:fc2cfb225ac9fc05d740b9055861f4d777ccc12215ccd7ee88ea05e2d7a8a397` |
| 13 | `lemma` | [ofSimplex_le_ofSimplex_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/ofsimplex-le-ofsimplex-iff--f63999ed491b5ff351c85821.md) | 120 | `result-track:f63999ed491b5ff351c858217402287b4704e26ba88562c99302f593a097077a` |
| 14 | `def` | [orderHomOfSimplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/orderhomofsimplex--22b4be048415c8f2a93d3502.md) | 133 | `declaration-track:22b4be048415c8f2a93d3502c0f56a0fdc2c49f71ce47c4c70fa17baabbf339b` |
| 15 | `lemma` | [strictMono_orderHomOfSimplex_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/strictmono-orderhomofsimplex-iff--29c1bd21a17157cdeb707585.md) | 144 | `result-track:29c1bd21a17157cdeb707585a68f87e10b1a6d088335a617275b34aa250da09f` |
| 16 | `lemma` | [strictMono_orderHomOfSimplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/strictmono-orderhomofsimplex--a75efaa72c3c9cb18627e1cc.md) | 155 | `result-track:a75efaa72c3c9cb18627e1cc7c62055c5fc61bc46724caeebb16e9012b2368a2` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/instance--077e9d21534715bba8ff62c7.md) | 160 | `declaration-track:077e9d21534715bba8ff62c7f831478d0f4f38aef2873006c0afc3c780cfd5d5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/instance--ea488c715a05f5194f37f03b.md) | 172 | `declaration-track:ea488c715a05f5194f37f03b72aff07a4b0f816cbde6f11a0f6453e74fae31eb` |
| 19 | `lemma` | [le_orderHomOfSimplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/le-orderhomofsimplex--96ed7eb8052334dd6c6c6c97.md) | 175 | `result-track:96ed7eb8052334dd6c6c6c97c5164ec567b3cb00e2a85f1f46ae228bcb7491ee` |
| 20 | `lemma` | [nonDegenerate_max_dim_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/nondegenerate-max-dim-iff--832102a2f4aa7d044d00f3af.md) | 182 | `result-track:832102a2f4aa7d044d00f3afc9a0e931aaa82cbfcf9465be0175c2f64efacfdd` |
| 21 | `lemma` | [nonDegenerate_ext₁](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/nondegenerate-ext--0f5d6864b12f33bf0a995b0c.md) | 194 | `result-track:0f5d6864b12f33bf0a995b0c8559326dd66c0aa7364c31516d96e4225100b217` |
| 22 | `lemma` | [nonDegenerate_ext₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/nondegenerate-ext--75a2df7b7e3794b9cb8b2c30.md) | 207 | `result-track:75a2df7b7e3794b9cb8b2c30785c7f9145119dc86713dc13be964e99d1ece4d5` |
| 23 | `lemma` | [exists_nonDegenerate_max_dim_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/exists-nondegenerate-max-dim-aux--d5f99948b029021258c0a8e8.md) | 212 | `result-track:d5f99948b029021258c0a8e8048a21e0a3a9551d3959c3f415743e070cb67adc` |
| 24 | `lemma` | [exists_nonDegenerate_max_dim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/exists-nondegenerate-max-dim--d80ce14e73e8085811052fcf.md) | 251 | `result-track:d80ce14e73e8085811052fcf634870d52e5533e6774a89bb1b539940735956ba` |
| 25 | `lemma` | [subcomplex_eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/declarations/subcomplex-eq-top-iff--9cb50cbd2120dfec844701e1.md) | 267 | `result-track:9cb50cbd2120dfec844701e1e2b8deff74d72d9e02ad36b22237c86a30e5fc92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
