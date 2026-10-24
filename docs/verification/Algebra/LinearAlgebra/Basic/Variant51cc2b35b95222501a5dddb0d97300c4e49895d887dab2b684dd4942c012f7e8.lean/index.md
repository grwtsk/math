# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "569d7ff3f597eabbb059c57a3f7fe5072f7ddf1f",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `569d7ff3f597eabbb059c57a3f7fe5072f7ddf1f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Closed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Rigid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Subcategory` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Coevaluation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ModuleCat.isFG](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/modulecat-isfg--1c931ac3210b411c533b5cc4.md) | 53 | `declaration-track:1c931ac3210b411c533b5cc46c361d89b096e0a6d6e29c47430fa2ba1389c025` |
| 2 | `lemma` | [ModuleCat.isFG_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/modulecat-isfg-iff--298ddd22c136c4558c2b903e.md) | 57 | `result-track:298ddd22c136c4558c2b903e539adf9310bc2abbca256c1ff51fa04fe2ee4afd` |
| 3 | `abbrev` | [FGModuleCat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/fgmodulecat--4ac0d59e5960c40fd4471d4a.md) | 61 | `declaration-track:4ac0d59e5960c40fd4471d4a7d419bccef93099a98df78e4df62f430300834ce` |
| 4 | `def` | [FGModuleCat.carrier](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/fgmodulecat-carrier--8aa50ab2fc9c4e4720b5136c.md) | 66 | `declaration-track:8aa50ab2fc9c4e4720b5136c593a3ef20832641e8cbee6210a052363c9c5dc81` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/instance--ab6e71cab8e9076fcff35db7.md) | 68 | `declaration-track:ab6e71cab8e9076fcff35db785285a7af18f52bf1cc0fa8059aaae39e398736a` |
| 6 | `lemma` | [FGModuleCat.obj_carrier](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/fgmodulecat-obj-carrier--b2a85b166d66d2650fdff753.md) | 73 | `result-track:b2a85b166d66d2650fdff7536ccd2de0b7ef7fe36a2215f404d67c4e55686b09` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/instance--32a8b542608bec2958fc907c.md) | 75 | `declaration-track:32a8b542608bec2958fc907c6818446cfa569de8987405ca806eacb743bcb88b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/instance--1b092c935fb73d0236ff5fbf.md) | 79 | `declaration-track:1b092c935fb73d0236ff5fbff39b08eed0084741ddd476429511144a1fa98f0c` |
| 9 | `lemma` | [hom_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/hom-comp--b2cb266c6cb5e7e7ead7b79b.md) | 91 | `result-track:b2cb266c6cb5e7e7ead7b79bd5b1e2c080e73c02679721bd80639aff7c83f04c` |
| 10 | `lemma` | [hom_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/hom-id--53ab3aec606779b4cb5b2656.md) | 94 | `result-track:53ab3aec606779b4cb5b2656dbe3a16b3db62af46ab934be549cef24333a510f` |
| 11 | `instance` | [finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/finite--b2b0e6d7197d95e615de33ed.md) | 96 | `declaration-track:b2b0e6d7197d95e615de33ed7fe9af963a7e6fa565096abafcff9655934db0db` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/instance--d52615d525cbba30adae3f29.md) | 99 | `declaration-track:d52615d525cbba30adae3f29339520696aa7f4b4eb2360ecfc1bce91c96f0266` |
| 13 | `abbrev` | [of](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/of--13b7d59abc589d24ec3f1d0d.md) | 103 | `declaration-track:13b7d59abc589d24ec3f1d0dc26edd48e8f85c06f1dfe7ec3a01b2ab3ad22fb1` |
| 14 | `lemma` | [of_carrier](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/of-carrier--a0396bb5c5795c492802f4f8.md) | 107 | `result-track:a0396bb5c5795c492802f4f82198ae993f4ccbd3c9b4fdeec87ee309fcc0fb67` |
| 15 | `abbrev` | [ofHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/ofhom--dc77c3e55cea0c9b1125850d.md) | 112 | `declaration-track:dc77c3e55cea0c9b1125850db54a73034bfef9d6238a372a0b0a73107bc53967` |
| 16 | `lemma` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/hom-ext--bd1bd6ee0d73b8bd4790ab02.md) | 118 | `result-track:bd1bd6ee0d73b8bd4790ab02285201d69168da919c400907076d6d3055701861` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/instance--427652ad8ddfc56005f94d3c.md) | 121 | `declaration-track:427652ad8ddfc56005f94d3c2430738ad285df326e015a9b5151ca72026504e3` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/instance--6712b5b79c993264723af5bc.md) | 124 | `declaration-track:6712b5b79c993264723af5bc211a307c007f775a5dd53e1b3aa9c26d733627ec` |
| 19 | `def` | [isoToLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/isotolinearequiv--68df8917074a98966a4c7bad.md) | 131 | `declaration-track:68df8917074a98966a4c7bad882e283ee7ad347f1568123ba87248e5f01207bb` |
| 20 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.ModuleCatIsFG.Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21.LinearEquiv.toFGModuleCatIso](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/root-grwtsk-algebra-linearalgebra-modulecatisfg-variant438aa0af8e34626da--a41e948ad09702ec4f70ed42.md) | 136 | `declaration-track:a41e948ad09702ec4f70ed4203efbb4e124581e2f38ed814974ee7388825d16f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/instance--93500f1ba92cd978917e6d3d.md) | 151 | `declaration-track:93500f1ba92cd978917e6d3d66021fb4b02ac1066b59258cd7d96da56685b3d0` |
| 22 | `lemma` | [tensorUnit_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/tensorunit-obj--ac1bc37ae9f4e1bba50784da.md) | 158 | `result-track:ac1bc37ae9f4e1bba50784da164b1188a3ed4efac80310b41e963da2357b0074` |
| 23 | `lemma` | [tensorObj_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/tensorobj-obj--134cdfdba0ac6439cad14aef.md) | 159 | `result-track:134cdfdba0ac6439cad14aef5992937acc6495ac930441cba6bd14cc365dffbc` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/instance--f2174de44b5fba010ecea0ea.md) | 161 | `declaration-track:f2174de44b5fba010ecea0eaf6aa03c6792faac5e4a4856ea2714fee38de6a8d` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/instance--b500e7afa8cc0d82aa350dc8.md) | 162 | `declaration-track:b500e7afa8cc0d82aa350dc8fd7eea3cec7b1771fefe924ed1b462553bde8b49` |
| 26 | `theorem` | [Iso.conj_eq_conj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/iso-conj-eq-conj--75eb1df585adc4bd88b7becf.md) | 164 | `result-track:75eb1df585adc4bd88b7becf219313a95dc92c0a1b6d2f72bd0abc64ac14c2fc` |
| 27 | `theorem` | [Iso.conj_hom_eq_conj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/iso-conj-hom-eq-conj--ec9c5b6b36feeaae8c0472bc.md) | 168 | `result-track:ec9c5b6b36feeaae8c0472bc9572779c368741843ef5b78bff8e4e5676748036` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/instance--a5adc1c617da8970a2780102.md) | 178 | `declaration-track:a5adc1c617da8970a2780102005df3ff3ccbbe17dc59a772b4d9e1e80e92950a` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/instance--0acfd0a88b3fe14cf55c421b.md) | 181 | `declaration-track:0acfd0a88b3fe14cf55c421b6b36a2074be349e628d4c307084728adce18004a` |
| 30 | `theorem` | [ihom_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/ihom-obj--f971f0756a7904308e5bfd6b.md) | 188 | `result-track:f971f0756a7904308e5bfd6bb5113b8ebbc22f6468185fd07aff3d1735a6b5d2` |
| 31 | `def` | [FGModuleCatDual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/fgmodulecatdual--f20678d2474d55d422a08854.md) | 192 | `declaration-track:f20678d2474d55d422a0885441cec3bbec3fdec42ab05c79b3501e803210c71b` |
| 32 | `lemma` | [FGModuleCatDual_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/fgmodulecatdual-obj--1bdce0d0f93d469aa4ebfcd7.md) | 195 | `result-track:1bdce0d0f93d469aa4ebfcd7ce728ec525ddfac54a0bb41f830cba92cee5c63d` |
| 33 | `lemma` | [FGModuleCatDual_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/fgmodulecatdual-coe--88953bd77a274ba7a5da7c8f.md) | 197 | `result-track:88953bd77a274ba7a5da7c8fde13e965625a80eb9ed3ece88e3fcb022dbac0b9` |
| 34 | `def` | [FGModuleCatCoevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/fgmodulecatcoevaluation--d1295250affc2c54daa7369a.md) | 202 | `declaration-track:d1295250affc2c54daa7369a7ed2abdf9f6e07eef56e12cca0bbe1a1ce72657b` |
| 35 | `theorem` | [FGModuleCatCoevaluation_apply_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/fgmodulecatcoevaluation-apply-one--f27d49a3a9a1c0b78f19bec3.md) | 205 | `result-track:f27d49a3a9a1c0b78f19bec3b3d96d64e44b7b96e6077ea3b7c875a36046f508` |
| 36 | `def` | [FGModuleCatEvaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/fgmodulecatevaluation--3d742a1139b4bcf6e15831e8.md) | 212 | `declaration-track:3d742a1139b4bcf6e15831e88322680fd4715d6360b3269a972ceb2a35b71d5c` |
| 37 | `theorem` | [FGModuleCatEvaluation_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/fgmodulecatevaluation-apply--4913f4a696a11a086355077a.md) | 215 | `result-track:4913f4a696a11a086355077ade07a383685ec483c7b6e36455b10a374a737766` |
| 38 | `theorem` | [FGModuleCatEvaluation_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/fgmodulecatevaluation-apply--da5cb76397f484a6582ae85b.md) | 222 | `result-track:da5cb76397f484a6582ae85be84820ea38100bbb2f40bf0a8a5ff67e2e248216` |
| 39 | `theorem` | [coevaluation_evaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/coevaluation-evaluation--c49990fcd78f4c3a5c4bc08d.md) | 228 | `result-track:c49990fcd78f4c3a5c4bc08d749f58aef1dbf142560fde5953ed7c19cc66caae` |
| 40 | `theorem` | [evaluation_coevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/evaluation-coevaluation--9c8d2ee9961849ceb22bedfc.md) | 235 | `result-track:9c8d2ee9961849ceb22bedfc098c7859ebddc0d5ec22cd10faa436a1dc03c4b0` |
| 41 | `instance` | [exactPairing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/exactpairing--da9b6fcc1ea54f42b4324cbb.md) | 242 | `declaration-track:da9b6fcc1ea54f42b4324cbb93c347428f03199e2e8fbde85955662918ed6633` |
| 42 | `instance` | [rightDual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/rightdual--2860faf97317cc445adbf8e3.md) | 248 | `declaration-track:2860faf97317cc445adbf8e38127e755789a6e0146c97d751d5d55359fb1eead` |
| 43 | `instance` | [rightRigidCategory](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/rightrigidcategory--95bd60b2d3b84c81776516e9.md) | 251 | `declaration-track:95bd60b2d3b84c81776516e94c2644f4c0818437ec563f9b05a51f12c0f6eb4a` |
| 44 | `theorem` | [LinearMap.comp_id_fgModuleCat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/linearmap-comp-id-fgmodulecat--78754f16515bf81962bbd5b1.md) | 261 | `result-track:78754f16515bf81962bbd5b10d67f336390c6aa9c86b4aa10aaf63d34449452e` |
| 45 | `theorem` | [LinearMap.id_fgModuleCat_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8.lean/declarations/linearmap-id-fgmodulecat-comp--162e7601bc9007afd1db192f.md) | 266 | `result-track:162e7601bc9007afd1db192f525a3b408982820a86528995d9d4de44ead46140` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
