# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Fin.Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb2df05f7cdd1950ab4f1fbed04d870766a398be",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb2df05f7cdd1950ab4f1fbed04d870766a398be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Option` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fintype` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Equiv.Perm.decomposeFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/equiv-perm-decomposefin--d78c0c91182784dbaa8d6a04.md) | 30 | `declaration-track:d78c0c91182784dbaa8d6a047ffd991f964613370126cd53395a291cbabeaefd` |
| 2 | `theorem` | [Equiv.Perm.decomposeFin_symm_of_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/equiv-perm-decomposefin-symm-of-refl--a6a29842af4c8c9c434fedbd.md) | 35 | `result-track:a6a29842af4c8c9c434fedbd77009baf98a32ea893183b667aec368f1e1197f2` |
| 3 | `theorem` | [Equiv.Perm.decomposeFin_symm_of_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/equiv-perm-decomposefin-symm-of-one--e80f0b544faa833ad607af41.md) | 40 | `result-track:e80f0b544faa833ad607af41d1a148999d92f2e8fa41d6b95185bbcddc7b3e80` |
| 4 | `theorem` | [Equiv.Perm.decomposeFin_symm_apply_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/equiv-perm-decomposefin-symm-apply-zero--6211770ea1dc1bd1dec437dc.md) | 45 | `result-track:6211770ea1dc1bd1dec437dc55a298820be6b122f4d023a0e89b74d049c46031` |
| 5 | `theorem` | [Equiv.Perm.decomposeFin_symm_apply_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/equiv-perm-decomposefin-symm-apply-succ--8c3f70602fc82a73c5c3b192.md) | 49 | `result-track:8c3f70602fc82a73c5c3b192836707459a4fed51dccd4c494d889d809f9cd22b` |
| 6 | `theorem` | [Equiv.Perm.decomposeFin_symm_apply_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/equiv-perm-decomposefin-symm-apply-one--44c55b07e34d8daaceda9c6f.md) | 59 | `result-track:44c55b07e34d8daaceda9c6fc44743b0f4d50c3b5233bb8be0310763eecfb343` |
| 7 | `theorem` | [Equiv.Perm.decomposeFin.symm_sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/equiv-perm-decomposefin-symm-sign--d5c990c04ce33d4b15888c89.md) | 64 | `result-track:d5c990c04ce33d4b15888c8967fb05d8f88c692dc7fda977fb357daea84ba5b1` |
| 8 | `theorem` | [Finset.univ_perm_fin_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/finset-univ-perm-fin-succ--a4b7298c26f80edc606ab2af.md) | 70 | `result-track:a4b7298c26f80edc606ab2af38837b36779eba610066add32d9426fcb76c9517` |
| 9 | `theorem` | [finRotate_succ_eq_decomposeFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/finrotate-succ-eq-decomposefin--1e83acd17937f7bf339ff2f5.md) | 86 | `result-track:1e83acd17937f7bf339ff2f5637c19add1c0e159282e00a0f0938377dfe15a8c` |
| 10 | `theorem` | [sign_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/sign-finrotate--9b3ecd758eefd7830b709fa8.md) | 100 | `result-track:9b3ecd758eefd7830b709fa87c950f848d02da8ae6a7d30674875bb2af2c83a8` |
| 11 | `theorem` | [support_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/support-finrotate--7dad6e269c12b1151e3e1a85.md) | 108 | `result-track:7dad6e269c12b1151e3e1a85b6d2ce3c4729e1d9d07609faa0ff5f622fbd9a2a` |
| 12 | `theorem` | [support_finRotate_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/support-finrotate-of-le--e1ec9a9a0d9a24af65e77dd0.md) | 112 | `result-track:e1ec9a9a0d9a24af65e77dd0dab678eb42c9527e83b07dbf96f1e6b64009e7b5` |
| 13 | `theorem` | [isCycle_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/iscycle-finrotate--6a2297141a968eb989b8170e.md) | 116 | `result-track:6a2297141a968eb989b8170e5a28c96e3c9cc76f596d6298c7d58cbe9e53906e` |
| 14 | `theorem` | [isCycle_finRotate_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/iscycle-finrotate-of-le--415c4d5ca616211d1b05e55f.md) | 126 | `result-track:415c4d5ca616211d1b05e55fa4b390d4fca5b40d1919879821da2217c8af3518` |
| 15 | `theorem` | [cycleType_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cycletype-finrotate--af9bd346f38cbadd79f7ff04.md) | 132 | `result-track:af9bd346f38cbadd79f7ff0499fb9b16c5da4bebe21667ee415de0478ca3a6e4` |
| 16 | `theorem` | [cycleType_finRotate_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cycletype-finrotate-of-le--a7717a12eddf9251dfc466c5.md) | 135 | `result-track:a7717a12eddf9251dfc466c5ad9df2f352d540b1542fd5c9f918cf480b793d7d` |
| 17 | `def` | [cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cyclerange--0acd2c8d34dd5f02ec945449.md) | 142 | `declaration-track:0acd2c8d34dd5f02ec945449e36d7ba389d3a3283cb206d871550788f31448f0` |
| 18 | `theorem` | [cycleRange_of_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cyclerange-of-gt--ac883fe1cf2d8153d5f3c783.md) | 150 | `result-track:ac883fe1cf2d8153d5f3c783da8c83f405ae0d683066db852786296896326de7` |
| 19 | `theorem` | [cycleRange_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cyclerange-of-le--39a72e5031d9e9a1dcd722f9.md) | 156 | `result-track:39a72e5031d9e9a1dcd722f97978fd035b08460f37735dc3531ec2862a303d69` |
| 20 | `theorem` | [coe_cycleRange_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/coe-cyclerange-of-le--72c18dfb84b0198c063a62fc.md) | 172 | `result-track:72c18dfb84b0198c063a62fc2455bdad00965897fc32e94db6056b1d6ffcde7f` |
| 21 | `theorem` | [cycleRange_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cyclerange-of-lt--cd1a8165dfb6ea7f9225699c.md) | 185 | `result-track:cd1a8165dfb6ea7f9225699c8ae22af6ae26404681ad560a0dcba67d914f69cc` |
| 22 | `theorem` | [coe_cycleRange_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/coe-cyclerange-of-lt--ce17173329ddcc5c1ce20c16.md) | 188 | `result-track:ce17173329ddcc5c1ce20c16c8d57d77d5259747ef4d60e94d3d6848833edead` |
| 23 | `theorem` | [cycleRange_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cyclerange-of-eq--930b533a508e8f2e80a2a12d.md) | 191 | `result-track:930b533a508e8f2e80a2a12df8d26a3b9774c127564b746e197abc69467c07fb` |
| 24 | `theorem` | [cycleRange_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cyclerange-self--c1bd8fc8c6212f32146317cd.md) | 195 | `result-track:c1bd8fc8c6212f32146317cdfb6114aa12888f85e25aec70be0b927ba26111c5` |
| 25 | `theorem` | [cycleRange_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cyclerange-apply--fbe1c041b2dd761f0e859209.md) | 198 | `result-track:fbe1c041b2dd761f0e85920955409d463c4017330cf0cc4c9207f460dcf7fa37` |
| 26 | `theorem` | [cycleRange_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cyclerange-zero--d53d23ccadf04fcfee5a9e68.md) | 206 | `result-track:d53d23ccadf04fcfee5a9e687ae60478b3434a1885ae130cab99807a0a62983c` |
| 27 | `theorem` | [cycleRange_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cyclerange-last--885f5e1d215921a794902e48.md) | 213 | `result-track:885f5e1d215921a794902e480dcb12d2d63901fc3da0d428923c35259ca4097f` |
| 28 | `theorem` | [cycleRange_mk_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cyclerange-mk-zero--d4f64ff1c6019b40c8711deb.md) | 218 | `result-track:d4f64ff1c6019b40c8711deb082a4051a95bc0325f2ae0e0c518098326ec01d5` |
| 29 | `theorem` | [sign_cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/sign-cyclerange--e05a10e601c53925746a6a53.md) | 226 | `result-track:e05a10e601c53925746a6a53a2346a5e2d7cf7d392209a1b2435dc5972dfaae1` |
| 30 | `theorem` | [succAbove_cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/succabove-cyclerange--a4418450f84c26b85931d418.md) | 230 | `result-track:a4418450f84c26b85931d41829d8996220d887f2280bc9763554a6b9bfd7ae97` |
| 31 | `theorem` | [cycleRange_succAbove](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cyclerange-succabove--9f7869fe61768e38689a7003.md) | 252 | `result-track:9f7869fe61768e38689a700386f3bfae94279ec7bcb2b193f00f00b97026be9b` |
| 32 | `theorem` | [cycleRange_symm_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cyclerange-symm-zero--5344a587aeaabbce1ed6ef9d.md) | 259 | `result-track:5344a587aeaabbce1ed6ef9dc6fd0cda2a6bb3ffa4027f163c8394f288dfe6bc` |
| 33 | `theorem` | [cycleRange_symm_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cyclerange-symm-succ--5f936e648d10c6c553e9a21a.md) | 263 | `result-track:5f936e648d10c6c553e9a21ade8ae313c03465ba69419310063d9322c46148ea` |
| 34 | `theorem` | [isCycle_cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/iscycle-cyclerange--ce88dd1c0854f0c33387faee.md) | 267 | `result-track:ce88dd1c0854f0c33387faee1f3b761c20fb2abfd1ff73de019c62f0490610ad` |
| 35 | `theorem` | [cycleType_cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/cycletype-cyclerange--f923eb978074edb4c45a90c4.md) | 275 | `result-track:f923eb978074edb4c45a90c40e860172386b9b5e2204b5338eb515dc94b6ad00` |
| 36 | `theorem` | [isThreeCycle_cycleRange_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/isthreecycle-cyclerange-two--4decf29e408ba19c57d9bc37.md) | 283 | `result-track:4decf29e408ba19c57d9bc3775ced49a074aae6d5ee6e84ffac907b3666679da` |
| 37 | `theorem` | [Equiv.Perm.sign_eq_prod_prod_Iio](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/equiv-perm-sign-eq-prod-prod-iio--93fe558c1855ce2a0ceb82d2.md) | 294 | `result-track:93fe558c1855ce2a0ceb82d2eeab8a13803f1503283480bfe229d39eca5f95bb` |
| 38 | `theorem` | [Equiv.Perm.sign_eq_prod_prod_Ioi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/equiv-perm-sign-eq-prod-prod-ioi--60061199fceb15b6d7c2210f.md) | 305 | `result-track:60061199fceb15b6d7c2210fe19ce0d0d146d5fba425e4999ff2bee36adb60c9` |
| 39 | `theorem` | [Equiv.Perm.prod_Iio_comp_eq_sign_mul_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/equiv-perm-prod-iio-comp-eq-sign-mul-prod--b8ceaba80eae01ace2883db3.md) | 310 | `result-track:b8ceaba80eae01ace2883db3abe3935bac2bf6d338de75a52ec6f08bb0ea39c8` |
| 40 | `theorem` | [Equiv.Perm.prod_Ioi_comp_eq_sign_mul_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/declarations/equiv-perm-prod-ioi-comp-eq-sign-mul-prod--4ecfe6e658082794413f6ba0.md) | 333 | `result-track:4ecfe6e658082794413f6ba06ece5397d8eefe6355ff9a95c12120ee8226b190` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
