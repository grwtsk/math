# Verification target: GRWTSK.NumberTheory.Regulator.Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9bb0bf75c7ebac0a28dcafeb131e939b7c87bd1",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9bb0bf75c7ebac0a28dcafeb131e939b7c87bd1`.

Source path: `GRWTSK/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.ZLattice.Covolume` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Misc` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Units.DirichletTheorem` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivFinRank](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/equivfinrank--f9b7153803f22a1a45244e74.md) | 55 | `declaration-track:f9b7153803f22a1a45244e74ec855642b97143cbdbe2bba62ac23a67531f5fa8` |
| 2 | `abbrev` | [IsMaxRank](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/ismaxrank--92104696dad4e63854073c47.md) | 69 | `declaration-track:92104696dad4e63854073c4718e94c41ac589419e95190a35e820eb002217ca9` |
| 3 | `def` | [basisOfIsMaxRank](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/basisofismaxrank--e85ed9b356829a82e728e917.md) | 76 | `declaration-track:e85ed9b356829a82e728e917716c598667a0b1d03bf1b2fd83594020ebd81ca4` |
| 4 | `theorem` | [basisOfIsMaxRank_apply](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/basisofismaxrank-apply--e028f5a0f5a6fb7521f495d7.md) | 81 | `result-track:e028f5a0f5a6fb7521f495d744dadd4c5ef266c4d4e7678fc80a79a64fef4604` |
| 5 | `def` | [regOfFamily](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regoffamily--ad833391f4822ba2cbde7189.md) | 90 | `declaration-track:ad833391f4822ba2cbde71898c3524102432e06fa5bae65d8a243acd59034354` |
| 6 | `theorem` | [regOfFamily_eq_zero](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regoffamily-eq-zero--89b4a1cf4ad71c855ea24305.md) | 95 | `result-track:89b4a1cf4ad71c855ea24305689996fe23b2ca67cde408c1cd06628252fc401a` |
| 7 | `theorem` | [regOfFamily_of_isMaxRank](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regoffamily-of-ismaxrank--8598393300d7971507465770.md) | 100 | `result-track:8598393300d79715074657701a6216d62ed7ccfdcad20b855d3cdd05beea477d` |
| 8 | `theorem` | [regOfFamily_pos](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regoffamily-pos--93eabbdb3d6564d04f264707.md) | 104 | `result-track:93eabbdb3d6564d04f264707991e6a3bada39d5cd464bf9cbd1bbd2e0da28378` |
| 9 | `theorem` | [regOfFamily_ne_zero](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regoffamily-ne-zero--eb9553b296ee1db76affac85.md) | 110 | `result-track:eb9553b296ee1db76affac85c45f9d2b569ae70d137c54f790df3c8450d0ba82` |
| 10 | `theorem` | [regOfFamily_ne_zero_iff](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regoffamily-ne-zero-iff--17294161e9c1e006b79ffff6.md) | 113 | `result-track:17294161e9c1e006b79ffff6f07ee21345040917784d01a39a0939caca9aa3c4` |
| 11 | `theorem` | [regOfFamily_eq_det'](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regoffamily-eq-det--c0a95231af624c3889937b94.md) | 118 | `result-track:c0a95231af624c3889937b9426813b57d0274aec8031032ff0a91dadccff7f59` |
| 12 | `theorem` | [abs_det_eq_abs_det](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/abs-det-eq-abs-det--7d55ecf511259e5e69d1837f.md) | 135 | `result-track:7d55ecf511259e5e69d1837f5d4a851df9041ee9d2ddad77ff2693105349045e` |
| 13 | `theorem` | [regOfFamily_eq_det](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regoffamily-eq-det--e57f21ceab36bdae94d87b3c.md) | 172 | `result-track:e57f21ceab36bdae94d87b3ce80b8cefde46a5f2492e9388041d060da4cfd058` |
| 14 | `theorem` | [finrank_mul_regOfFamily_eq_det](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/finrank-mul-regoffamily-eq-det--cedd1292209cc4d9b6d89e3f.md) | 184 | `result-track:cedd1292209cc4d9b6d89e3f9aec39a37d94db345e467c0c14de8f8a74ea2dd5` |
| 15 | `def` | [regulator](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regulator--f606236e8f9ecf554bc931a1.md) | 212 | `declaration-track:f606236e8f9ecf554bc931a13e52d51df6da1861bcf150e2a2fcfd78da482cf4` |
| 16 | `theorem` | [isMaxRank_fundSystem](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/ismaxrank-fundsystem--14b899e3dab7d76fa8e728c6.md) | 214 | `result-track:14b899e3dab7d76fa8e728c6a15aa8e7b07b2e6a3d312ce616a7f244ed98db3e` |
| 17 | `theorem` | [basisOfIsMaxRank_fundSystem](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/basisofismaxrank-fundsystem--a4ff0eeb24510c5f380a0382.md) | 221 | `result-track:a4ff0eeb24510c5f380a0382970719f108d6e974c81f659e78d9ff964f4aeca3` |
| 18 | `theorem` | [regulator_eq_regOfFamily_fundSystem](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regulator-eq-regoffamily-fundsystem--9f4a06ad25f7d7d360f7f666.md) | 226 | `result-track:9f4a06ad25f7d7d360f7f666227817c7d6c6caba3094e25ea79823471042ef92` |
| 19 | `theorem` | [regulator_pos](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regulator-pos--37781d0ccc196eef072c4651.md) | 232 | `result-track:37781d0ccc196eef072c465164fe1841ab05c3f8d309c5be7341d4848e6ac394` |
| 20 | `theorem` | [regulator_ne_zero](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regulator-ne-zero--0340938343633a235c238bb2.md) | 235 | `result-track:0340938343633a235c238bb262b85a3259eee395b2d5dc48f6b2e78fe4de0530` |
| 21 | `theorem` | [regulator_eq_det'](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regulator-eq-det--9ef6140e7d7a621fdb89e74d.md) | 239 | `result-track:9ef6140e7d7a621fdb89e74dfb20b5f85981c15adf31366c2bac3c603ee3b8ba` |
| 22 | `theorem` | [regulator_eq_det](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/regulator-eq-det--22ae917437eb7af178ca5c2e.md) | 249 | `result-track:22ae917437eb7af178ca5c2e0fd6592661cd6829c3f659d874cf816885c34a8c` |
| 23 | `theorem` | [finrank_mul_regulator_eq_det](../../../../mathematics/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/declarations/finrank-mul-regulator-eq-det--a629b2d8784234350001ffb1.md) | 260 | `result-track:a629b2d8784234350001ffb15f70e5ab2b02e8fe2dfb6de3afd6801db15cc8ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
