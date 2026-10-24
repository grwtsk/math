# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sites.Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "381b75fb3d7b3b597c902e14a0d4f0a05a6dbec4",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `381b75fb3d7b3b597c902e14a0d4f0a05a6dbec4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Spaces` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Sheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.DenseSubsite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coveringOfPresieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/coveringofpresieve--3cde802a16e6a04aa3214ee1.md) | 50 | `declaration-track:3cde802a16e6a04aa3214ee151a28024b5eb90c97a47e8cf299e5d27bdabff1e` |
| 2 | `theorem` | [coveringOfPresieve_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/coveringofpresieve-apply--2add5780769fc10268ca36e1.md) | 55 | `result-track:2add5780769fc10268ca36e12bb02642116a9b4b556b72b9b0b3b767eb8e6bef` |
| 3 | `theorem` | [iSup_eq_of_mem_grothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/isup-eq-of-mem-grothendieck--3e810410758352fd9a3143f4.md) | 66 | `result-track:3e810410758352fd9a3143f473b147c7faa739fa162a7215622d7bfb834c81ac` |
| 4 | `def` | [presieveOfCoveringAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/presieveofcoveringaux--7ae7f1f17a3bc747d6c69d22.md) | 84 | `declaration-track:7ae7f1f17a3bc747d6c69d220f9b9badaa07cf2c74c0107e4c0e0f572f3d2dc4` |
| 5 | `def` | [presieveOfCovering](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/presieveofcovering--a667e308a1d977649aa52060.md) | 89 | `declaration-track:a667e308a1d977649aa5206094959f7eefa8ce43e740ad3738102a9a218dba85` |
| 6 | `theorem` | [covering_presieve_eq_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/covering-presieve-eq-self--b9aafbe483208e816644c500.md) | 98 | `result-track:b9aafbe483208e816644c5000d0f1e4ff4fa751c1ff277abef36ae1997f7009e` |
| 7 | `theorem` | [mem_grothendieckTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/mem-grothendiecktopology--fa60f232ff015cd15cce02d3.md) | 111 | `result-track:fa60f232ff015cd15cce02d30dea8a30b5bce638076e167b898680e0e686d904` |
| 8 | `def` | [homOfIndex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/homofindex--469ae6291a7f03934129f36f.md) | 121 | `declaration-track:469ae6291a7f03934129f36f25edabb0ddfe875b31d9239d9989eaa64f1b2bf9` |
| 9 | `def` | [indexOfHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/indexofhom--37ead50dcdd5f90c4167a75b.md) | 128 | `declaration-track:37ead50dcdd5f90c4167a75bdebc3b863b1d200cfa6ee030b29b4bbdcef7e3f8` |
| 10 | `theorem` | [indexOfHom_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/indexofhom-spec--b98d297ef21f59abd682f667.md) | 132 | `result-track:b98d297ef21f59abd682f66716f22e18f374bd077ccde29580e157ebeaa2ea94` |
| 11 | `theorem` | [coverDense_iff_isBasis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/coverdense-iff-isbasis--0e67be83f7d23a66b393251e.md) | 145 | `result-track:0e67be83f7d23a66b393251ec7ea8dfda3c3c89821d83b964741c3e0aab34ba7` |
| 12 | `theorem` | [coverDense_inducedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/coverdense-inducedfunctor--a23906fffa019e30342a44c2.md) | 154 | `result-track:a23906fffa019e30342a44c25197c952a8d6410a1487002c9760eb12bae76f3c` |
| 13 | `theorem` | [OpenEmbedding.compatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/openembedding-compatiblepreserving--d5e1b0384b7f4155cb95b464.md) | 169 | `result-track:d5e1b0384b7f4155cb95b464dbc73818fad333b9cf3bb5aed50b66fa2b57666e` |
| 14 | `theorem` | [IsOpenMap.coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/isopenmap-coverpreserving--c93838fd88740a8c9eff9942.md) | 179 | `result-track:c93838fd88740a8c9eff99422b7d1011260e7146c141624e04b4698c4b332482` |
| 15 | `theorem` | [TopCat.Presheaf.isSheaf_of_openEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/topcat-presheaf-issheaf-of-openembedding--9f0406fa04bbaa62705b40a8.md) | 187 | `result-track:9f0406fa04bbaa62705b40a8040a9a8cb03887a1f80b8f16316be21dff79165a` |
| 16 | `def` | [isTerminalOfEmpty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/isterminalofempty--7d1447513460736553ee999f.md) | 205 | `declaration-track:7d1447513460736553ee999fb4319b772965cf4da22f481add113c005a5ecd93` |
| 17 | `def` | [isTerminalOfEqEmpty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/isterminalofeqempty--d6450dbb2a2c43d47116f13a.md) | 210 | `declaration-track:d6450dbb2a2c43d47116f13abf890d83977786c47f3e0f92fce4b9fa9453706d` |
| 18 | `def` | [restrictHomEquivHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/restricthomequivhom--9d2f740d4384cc46c0277c3a.md) | 219 | `declaration-track:9d2f740d4384cc46c0277c3a2ce28c81da140a020c96a8fcad651243ad0baacd` |
| 19 | `theorem` | [extend_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/extend-hom-app--2a7ba55b932f40436294898e.md) | 224 | `result-track:2a7ba55b932f40436294898ee62ebea48488f92c9f61aba99ba7a30899fb50b0` |
| 20 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/declarations/hom-ext--71cb2dea938598c500cf6904.md) | 230 | `result-track:71cb2dea938598c500cf69040d705487cac025b5428e5f2c5bae302ee06bce3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
