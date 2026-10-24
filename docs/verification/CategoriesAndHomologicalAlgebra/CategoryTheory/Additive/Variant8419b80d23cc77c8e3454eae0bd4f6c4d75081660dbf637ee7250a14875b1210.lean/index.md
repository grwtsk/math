# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Additive.Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eef7a6e97aa3b7249a20f982ba658a20e547a547",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eef7a6e97aa3b7249a20f982ba658a20e547a547`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [right_adjoint_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/right-adjoint-additive--10df57c1137e468f99a98370.md) | 46 | `result-track:10df57c1137e468f99a983700e02193742555483b95f1c772dcc41e01ed37804` |
| 2 | `lemma` | [left_adjoint_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/left-adjoint-additive--0c61e570e7afe0ce61c93548.md) | 50 | `result-track:0c61e570e7afe0ce61c93548a2a7dbcfb084827dc5437b2ad7aa3460d9356d34` |
| 3 | `def` | [homAddEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/homaddequiv--1ff885ac5e6cd76cc6b74f4c.md) | 61 | `declaration-track:1ff885ac5e6cd76cc6b74f4cc0ec88c3094ea67c95fefb245fbc972874b0429f` |
| 4 | `lemma` | [homAddEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/homaddequiv-apply--c7e5c4435ca687a00a1f31a6.md) | 68 | `result-track:c7e5c4435ca687a00a1f31a6acf2d0eb30c7aa5eaf3ed841df89e333287174d7` |
| 5 | `lemma` | [homAddEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/homaddequiv-symm-apply--e29308f607a50cde24b26f4e.md) | 72 | `result-track:e29308f607a50cde24b26f4e41404eb6aa4e64e5bde939cd7266cb66ba8f39ff` |
| 6 | `lemma` | [homAddEquiv_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/homaddequiv-zero--767faa0827b0335eafb194c0.md) | 76 | `result-track:767faa0827b0335eafb194c0f37ae4a91d1aeaab96c45c2d8fc73da0457506de` |
| 7 | `lemma` | [homAddEquiv_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/homaddequiv-add--03cfbef29bdb300f5fc9be68.md) | 79 | `result-track:03cfbef29bdb300f5fc9be68a6a98c8ab91cd7e7187334a3e5258cfa78dd2330` |
| 8 | `lemma` | [homAddEquiv_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/homaddequiv-sub--5a830c7fdc78d5b4da8e91d1.md) | 84 | `result-track:5a830c7fdc78d5b4da8e91d18d2afcb0d10baed20010b6eb58997395e10d2a2a` |
| 9 | `lemma` | [homAddEquiv_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/homaddequiv-neg--b0def9b61508dfaa942dc4e7.md) | 89 | `result-track:b0def9b61508dfaa942dc4e701c25c01433f41ebfd43fcd567ddd14cbc7bdec4` |
| 10 | `lemma` | [homAddEquiv_symm_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/homaddequiv-symm-zero--edc620cb96a98311784f860f.md) | 93 | `result-track:edc620cb96a98311784f860ff481179bbdf32504c0c913c9b79272b5b868d55c` |
| 11 | `lemma` | [homAddEquiv_symm_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/homaddequiv-symm-add--8ffcb783b1943b7aab51064a.md) | 97 | `result-track:8ffcb783b1943b7aab51064ae5b7098a2821730245d2c804b4c0710383872106` |
| 12 | `lemma` | [homAddEquiv_symm_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/homaddequiv-symm-sub--ab5d373f1cdef28b14ae2635.md) | 102 | `result-track:ab5d373f1cdef28b14ae26355b3283056817500f4ac3e3130cca711affb1a408` |
| 13 | `lemma` | [homAddEquiv_symm_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/homaddequiv-symm-neg--f658c210f8052254cadb1202.md) | 107 | `result-track:f658c210f8052254cadb1202f4758f61b6c4d06ead22159e81e3dda02012fbf2` |
| 14 | `def` | [compPreadditiveYonedaIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/comppreadditiveyonedaiso--be47e0da74e09c50c912688d.md) | 119 | `declaration-track:be47e0da74e09c50c912688dafec9e7363b41e8ef09c2e08f6715f90a7cb3313` |
| 15 | `lemma` | [compPreadditiveYonedaIso_hom_app_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/comppreadditiveyonedaiso-hom-app-app-apply--91abec741ded051939195618.md) | 134 | `result-track:91abec741ded051939195618567d9a48aae34bcedb58c69bffae4db181a0a1ac` |
| 16 | `lemma` | [compPreadditiveYonedaIso_inv_app_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant8419b80d23cc77c8e3454eae0bd4f6c4d75081660dbf637ee7250a14875b1210.lean/declarations/comppreadditiveyonedaiso-inv-app-app-apply--ecef7fa1222ff48911bb1aa6.md) | 139 | `result-track:ecef7fa1222ff48911bb1aa6e73d75036d489d38429ae87c13cb0a93eb34b11d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
