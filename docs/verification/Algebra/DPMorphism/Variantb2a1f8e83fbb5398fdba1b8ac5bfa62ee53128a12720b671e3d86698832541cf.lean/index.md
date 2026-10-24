# Verification target: GRWTSK.Algebra.DPMorphism.Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c305451763008762c05b3d87f2ba83826645785e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/index.md) · [Full source](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c305451763008762c05b3d87f2ba83826645785e`.

Source path: `GRWTSK/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DividedPowers.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsDPMorphism](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/isdpmorphism--2b70896f5551e85ccb456c14.md) | 58 | `declaration-track:2b70896f5551e85ccb456c14835f4080ae2a8b70e3c77074804fb4ce7cb6525c` |
| 2 | `lemma` | [isDPMorphism_def](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/isdpmorphism-def--19d90ab626b3c1205a5f8942.md) | 66 | `result-track:19d90ab626b3c1205a5f894263aaef4355fcc67d474a60d0e69bdaaefee1a2d0` |
| 3 | `lemma` | [isDPMorphism_iff](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/isdpmorphism-iff--f020676d88ee9a9f2089722b.md) | 70 | `result-track:f020676d88ee9a9f2089722bea89009f5acb155a0f39b885ff807dc800335649` |
| 4 | `theorem` | [map_dpow](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/map-dpow--e721e3ddcc2e805996901153.md) | 83 | `result-track:e721e3ddcc2e805996901153af14571d6b0b8a2367cc20313ac47aeea219dae8` |
| 5 | `theorem` | [comp](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/comp--49da9a6832fc1968330a78b3.md) | 86 | `result-track:49da9a6832fc1968330a78b3b671f9d9c075fb63b58ac131222b9e426526c774` |
| 6 | `structure` | [DPMorphism](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/dpmorphism--276949cfa2c1687d25e8e23c.md) | 97 | `declaration-track:276949cfa2c1687d25e8e23cef5987e102f02a31fd4727f154246e0ec5ca6ffe` |
| 7 | `instance` | [instFunLike](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/instfunlike--72e8a8a69c849339b205b353.md) | 107 | `declaration-track:72e8a8a69c849339b205b35381a1640b9791d409453a7c1c88ebae1cdb4bf553` |
| 8 | `instance` | [coe_ringHom](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/coe-ringhom--9d34752342bc8349267457c7.md) | 113 | `declaration-track:9d34752342bc8349267457c7df870a3382e96d6eeb1057fff520f6d12989fe3d` |
| 9 | `theorem` | [coe_toRingHom](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/coe-toringhom--9d449b22c6c00af052e6f55c.md) | 115 | `result-track:9d449b22c6c00af052e6f55c81c7e5be5fcdcdf777e998ab8924e0dbd35a3090` |
| 10 | `lemma` | [toRingHom_apply](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/toringhom-apply--a80b0915f1f9e6af6f8712db.md) | 117 | `result-track:a80b0915f1f9e6af6f8712db33629f426f5ddfe44567cbaa9e5fa96e37e00822` |
| 11 | `lemma` | [isDPMorphism](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/isdpmorphism--50ddbe5f8937ed3288810cd5.md) | 121 | `result-track:50ddbe5f8937ed3288810cd5459f1db6d3a48f5a8793160f4e625a313fd0182a` |
| 12 | `def` | [mk'](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/mk--fa9770ae37a9fde0c8f92894.md) | 126 | `declaration-track:fa9770ae37a9fde0c8f928948dfd580b97c777b6442433a2f447a053dc8133b1` |
| 13 | `def` | [_root_.DividedPowers.ideal_from_ringHom](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/root-dividedpowers-ideal-from-ringhom--1bb085f288fa958016d5aaaf.md) | 134 | `declaration-track:1bb085f288fa958016d5aaafd1bf164d283fe6206611ebc09c38d140d20c8958` |
| 14 | `def` | [fromGens](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/fromgens--53ca15cc68dbfda97d9855d4.md) | 158 | `declaration-track:53ca15cc68dbfda97d9855d4f1587bcdf57f347714bcceb8fea9a43c77638c98` |
| 15 | `def` | [id](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/id--400e4b90c3f106260ca47163.md) | 170 | `declaration-track:400e4b90c3f106260ca4716351cbdaf1f24396b0aa2635578d98defc1a5908fe` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/instance--0f0a9792e491fc619c106860.md) | 175 | `declaration-track:0f0a9792e491fc619c106860acb2379a8d2100c18d08770683487361a4db7256` |
| 17 | `theorem` | [fromGens_coe](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/fromgens-coe--af126724035c3c87410e059b.md) | 177 | `result-track:af126724035c3c87410e059b09f7642c72e91c3338f31a12cc720d06ac0b1353` |
| 18 | `theorem` | [on_span](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/on-span--e95df2c6b663c1b9d918b7aa.md) | 190 | `result-track:e95df2c6b663c1b9d918b7aa527cb887e0fdf1511132e94589ec9d30482ec96a` |
| 19 | `theorem` | [of_comp](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/of-comp--18c02677fbfeeb3b52ffcd8a.md) | 199 | `result-track:18c02677fbfeeb3b52ffcd8ad04eb391d54dbfeeecd278e7f2cf1f3467b7cc7c` |
| 20 | `def` | [comp](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/comp--40e8676007ea20122666604b.md) | 216 | `declaration-track:40e8676007ea20122666604b044b9ff05f9bc98f3a127691b3f25e915c92f525` |
| 21 | `lemma` | [comp_toRingHom](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/comp-toringhom--867220046608f02bbf5e2430.md) | 220 | `result-track:867220046608f02bbf5e243063a5fe33bd4c271c52f9ac78b49806c9e9657a98` |
| 22 | `theorem` | [dpow_comp_from_gens](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/dpow-comp-from-gens--74828c3d9efb4f029b24bd36.md) | 230 | `result-track:74828c3d9efb4f029b24bd36953a0b28d9a9c4526925a55d67f7ddacf1ad568e` |
| 23 | `theorem` | [dpow_eq_from_gens](../../../../mathematics/Algebra/DPMorphism/Variantb2a1f8e83fbb5398fdba1b8ac5bfa62ee53128a12720b671e3d86698832541cf.lean/declarations/dpow-eq-from-gens--b6435a7e25d56eefaf232d4e.md) | 238 | `result-track:b6435a7e25d56eefaf232d4e8ba2488e656a8a6df46e01072ba991148618152d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
