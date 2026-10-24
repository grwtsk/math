# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Degree.Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fd1e68ca373581021cce8602e4affcf201ce94a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fd1e68ca373581021cce8602e4affcf201ce94a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sup_support_add_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/sup-support-add-le--d04f852016b4dd9e4ccba76a.md) | 87 | `result-track:d04f852016b4dd9e4ccba76a3027c47804c09b16c4d453521e930bc36785429c` |
| 2 | `theorem` | [le_inf_support_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/le-inf-support-add--a2b8dbbbcbe5c1ab4ada8971.md) | 91 | `result-track:a2b8dbbbcbe5c1ab4ada8971ad82b18eb79b8e480a3f73d19f73deaba49dceba` |
| 3 | `theorem` | [sup_support_mul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/sup-support-mul-le--983b1289743d4dcda960f1ab.md) | 103 | `result-track:983b1289743d4dcda960f1abf862c7368be5bf87ab237b2ada14047b9ceb3e45` |
| 4 | `theorem` | [le_inf_support_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/le-inf-support-mul--e7a73425b8777fcf1f6f3b77.md) | 112 | `result-track:e7a73425b8777fcf1f6f3b77785c06738de794a7f79913bbd4e7195792a7fa30` |
| 5 | `theorem` | [sup_support_list_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/sup-support-list-prod-le--8347bc3e9fd9d9a5260361ef.md) | 129 | `result-track:8347bc3e9fd9d9a5260361efe96bbee8351d37ce1dae62b5e547d4ada35ceada` |
| 6 | `theorem` | [le_inf_support_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/le-inf-support-list-prod--e6b822af10b718807087bf48.md) | 142 | `result-track:e6b822af10b718807087bf48971db44ba3398aea2ec479e8e482d113b3f4e972` |
| 7 | `theorem` | [sup_support_pow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/sup-support-pow-le--6b1dbf2d94cf89419ae7ad62.md) | 153 | `result-track:6b1dbf2d94cf89419ae7ad62a8666173a4cdec508134286edd58781ed2f09584` |
| 8 | `theorem` | [le_inf_support_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/le-inf-support-pow--6151bf35fd4395fb6c74698a.md) | 160 | `result-track:6151bf35fd4395fb6c74698a29c9ffb01a89dc473191c21e8007623cf9af8ba8` |
| 9 | `theorem` | [sup_support_multiset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/sup-support-multiset-prod-le--86ed3901611c3a689b8a7c3f.md) | 179 | `result-track:86ed3901611c3a689b8a7c3fa63b816a18b3cbb493c84648981c0f5ad7246c24` |
| 10 | `theorem` | [le_inf_support_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/le-inf-support-multiset-prod--49c89fe407d05dac415382d5.md) | 187 | `result-track:49c89fe407d05dac415382d5eee34f1d9e0173b51a930ee63bfa90c06af4963a` |
| 11 | `theorem` | [sup_support_finset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/sup-support-finset-prod-le--fabee33883bf95a0b0753bdb.md) | 197 | `result-track:fabee33883bf95a0b0753bdb3c777906fcdfe91a977e1969dcb45bf98f660e54` |
| 12 | `theorem` | [le_inf_support_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/le-inf-support-finset-prod--eba9a1e6daa92136bfd8875c.md) | 203 | `result-track:eba9a1e6daa92136bfd8875cdc00a31fa7a74f91759e18d788ec175364cb1137` |
| 13 | `def` | [supDegree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/supdegree--f10dff4bbff31165e8776fdb.md) | 236 | `declaration-track:f10dff4bbff31165e8776fdb3cc8a460b7e3c84dade65fd89cec22593ffa0f91` |
| 14 | `theorem` | [supDegree_add_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/supdegree-add-le--bcd757fb7a88b99d23a1be02.md) | 239 | `result-track:bcd757fb7a88b99d23a1be024870c088beb482022ee556bce5a67e6902805e15` |
| 15 | `theorem` | [supDegree_mul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/supdegree-mul-le--9459afd72eefe802a083461d.md) | 245 | `result-track:9459afd72eefe802a083461dda2aa3457c3be31a7c29d889688ce2a0674253ee` |
| 16 | `def` | [infDegree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/infdegree--c5437fd1bc2e0b85ce8a70f6.md) | 263 | `declaration-track:c5437fd1bc2e0b85ce8a70f631e32fd7efaefc8748a5c4f2256a09dcfee7feae` |
| 17 | `theorem` | [le_infDegree_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/le-infdegree-add--6b9d04f24a60cc5d68609356.md) | 266 | `result-track:6b9d04f24a60cc5d6860935646bdb8da723be6ecefbcf25199e4c0a8dcc2e1cb` |
| 18 | `theorem` | [le_infDegree_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant2238b1da7232a834e2010967fe0f5e9834091c3a96a7df315ddad0f45e8c1598.lean/declarations/le-infdegree-mul--c0d4a0d0aca4789ce564db28.md) | 272 | `result-track:c0d4a0d0aca4789ce564db287d6e0a592f6011b92e214544f1ec3cecd8228bf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
