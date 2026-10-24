# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PowerBasis.Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ce20ada3f3ed6c5d5b05e9dd080b01208d8a2ec",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ce20ada3f3ed6c5d5b05e9dd080b01208d8a2ec`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Minpoly.Field` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PowerBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/powerbasis--fa677a2bc70f35df597628ce.md) | 62 | `declaration-track:fa677a2bc70f35df597628ceef260095f2e244aa9d74c8b065384be9e6034511` |
| 2 | `theorem` | [coe_basis](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/coe-basis--1fbda229ada0ec7cbaadd514.md) | 76 | `result-track:1fbda229ada0ec7cbaadd5141127685c41b81c59ba2d33909e2cc41f6daf6ee7` |
| 3 | `theorem` | [finiteDimensional](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/finitedimensional--bc1856302fe91317eef9e485.md) | 81 | `result-track:bc1856302fe91317eef9e4853b2445eefab980d19ba1333a1bfc02e6b04f6e02` |
| 4 | `theorem` | [finrank](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/finrank--a61cb2b2d1d5c0badbdc3c23.md) | 85 | `result-track:a61cb2b2d1d5c0badbdc3c237b3b6f2ad7a1dc215a458086c0993785846fbbb1` |
| 5 | `theorem` | [mem_span_pow'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/mem-span-pow--f4ebb3ab411abffcf33e7051.md) | 89 | `result-track:f4ebb3ab411abffcf33e705193dc00ed76e1d857db9fd0d98ea68d2fabb83152` |
| 6 | `theorem` | [mem_span_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/mem-span-pow--ab0604b85e72ccb63e331e75.md) | 105 | `result-track:ab0604b85e72ccb63e331e75c679e89976d2e398dcd54a266f92e8c4040ca567` |
| 7 | `theorem` | [dim_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/dim-ne-zero--e0dea64241711e94e55585da.md) | 119 | `result-track:e0dea64241711e94e55585da5acc2de6d835901d09da077e0b66e42d5330d7df` |
| 8 | `theorem` | [dim_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/dim-pos--8eb19c658368653d8d790b40.md) | 123 | `result-track:8eb19c658368653d8d790b40ed5967e84e6bd8b0abb61093c80f1917f4b03233` |
| 9 | `theorem` | [exists_eq_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/exists-eq-aeval--933c7ed9e36ddb278822f607.md) | 127 | `result-track:933c7ed9e36ddb278822f60747aef12f940f85e4016a21dbba2342f07b222db9` |
| 10 | `theorem` | [exists_eq_aeval'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/exists-eq-aeval--7bcd51c85acf6fd2a5194926.md) | 132 | `result-track:7bcd51c85acf6fd2a5194926a3b298065f3c18ce60ce3b3b275174a0839e8f26` |
| 11 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/alghom-ext--8402314c5ac9d624982875cb.md) | 138 | `result-track:8402314c5ac9d624982875cb7f69e79c69ad1a0f3bb74643981cb951815421b6` |
| 12 | `def` | [minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/minpolygen--b23997ac22a76fab87e5a6fd.md) | 152 | `declaration-track:b23997ac22a76fab87e5a6fd1dfed507091b8c975f9ab7ba9373fd55a6428060` |
| 13 | `theorem` | [aeval_minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/aeval-minpolygen--2599f8f74d57aade3ebc42dd.md) | 156 | `result-track:2599f8f74d57aade3ebc42dd3868a59df073c88afa8ff371c9fa4ae3c08fb3a2` |
| 14 | `theorem` | [minpolyGen_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/minpolygen-monic--f027b60e85adb63f812c364a.md) | 164 | `result-track:f027b60e85adb63f812c364adceec5a23e5a85732e9f66993ba9ea08802ccfe6` |
| 15 | `theorem` | [dim_le_natDegree_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/dim-le-natdegree-of-root--bb5810d8c4e742942f89bea0.md) | 171 | `result-track:bb5810d8c4e742942f89bea0972423f88e0abd6aaf73680c16a1be3a53c90883` |
| 16 | `theorem` | [dim_le_degree_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/dim-le-degree-of-root--766baea35646d84e9c381e18.md) | 181 | `result-track:766baea35646d84e9c381e18ff35be80a3f99f82643c4d8740938f9ff99cb1d1` |
| 17 | `theorem` | [degree_minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/degree-minpolygen--9a783f1898f608bb03336eed.md) | 187 | `result-track:9a783f1898f608bb03336eed73645250b668e7516e7095148d2da5a05db8cba6` |
| 18 | `theorem` | [natDegree_minpolyGen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/natdegree-minpolygen--591336e6e12d6df2bfc5c127.md) | 194 | `result-track:591336e6e12d6df2bfc5c12727ead3ed649e4cf771a72456aedf22a9bff22f6a` |
| 19 | `theorem` | [minpolyGen_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/minpolygen-eq--7af515bd8a6c71d07afca79d.md) | 200 | `result-track:7af515bd8a6c71d07afca79d3b2ade311fbc0d728db1a24ed57c2dcadd4489aa` |
| 20 | `theorem` | [isIntegral_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/isintegral-gen--52e60c4d6178b640999d97a7.md) | 207 | `result-track:52e60c4d6178b640999d97a7fa1a1278a8970adbd04976c18e40269f916139da` |
| 21 | `theorem` | [degree_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/degree-minpoly--28e5d5f3d5e4e7f8ea6a16f0.md) | 212 | `result-track:28e5d5f3d5e4e7f8ea6a16f003206b3b3f0b21757d28fb54de992d312a39e75d` |
| 22 | `theorem` | [natDegree_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/natdegree-minpoly--78a3987e8ffc00842ea90395.md) | 217 | `result-track:78a3987e8ffc00842ea90395b62c9435243fac9e64337543537d754e8ae75e7f` |
| 23 | `theorem` | [leftMulMatrix](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/leftmulmatrix--8fb00a1b7514a3c1d870f6c5.md) | 221 | `result-track:8fb00a1b7514a3c1d870f6c5deeca37caa8a293da5469eb769c85c2fff6c7cdb` |
| 24 | `theorem` | [constr_pow_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/constr-pow-aeval--b018f3b575d93fca868302cd.md) | 247 | `result-track:b018f3b575d93fca868302cd26574df635c9aa0dbe32321042ab15a36f731098` |
| 25 | `theorem` | [constr_pow_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/constr-pow-gen--e6ece6754f7cf3418e36c5e3.md) | 267 | `result-track:e6ece6754f7cf3418e36c5e36bc93099bdaee1176157b7dc3a1a1db8e7f19103` |
| 26 | `theorem` | [constr_pow_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/constr-pow-algebramap--0a36a7b0b7165f69864d83aa.md) | 272 | `result-track:0a36a7b0b7165f69864d83aac81314a0670053eb90a982ff894471347fd0ff0f` |
| 27 | `theorem` | [constr_pow_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/constr-pow-mul--085d86f979c0d6efc44ab79d.md) | 277 | `result-track:085d86f979c0d6efc44ab79d461b0c4bfd7e071c0f4e4f9cd83ea7dc2f7951a2` |
| 28 | `def` | [lift](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/lift--ad57cb17962e35afa331a876.md) | 290 | `declaration-track:ad57cb17962e35afa331a876ef5441b93c28d605f632b2a43a23b14672ac40ff` |
| 29 | `theorem` | [lift_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/lift-gen--5d22e5250b1e7f73b110701b.md) | 300 | `result-track:5d22e5250b1e7f73b110701be3b94f6dd4b807345ef6d540a8f212b36a0db1d6` |
| 30 | `theorem` | [lift_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/lift-aeval--4f8a2e2601c4b3be5e9a2101.md) | 306 | `result-track:4f8a2e2601c4b3be5e9a2101e8212530248cc3fce90ac94a6f051deaee63f21f` |
| 31 | `def` | [liftEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/liftequiv--f555d1ea45475de3a5e8ca36.md) | 319 | `declaration-track:f555d1ea45475de3a5e8ca36cab123bb8c502a1d89b50454e9324d569f6955a9` |
| 32 | `def` | [liftEquiv'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/liftequiv--8d445d2b8f0be18f4719da64.md) | 330 | `declaration-track:8d445d2b8f0be18f4719da648e1dfc4c381db167cb924ca1723d74a2f3b7e0a6` |
| 33 | `def` | [AlgHom.fintype](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/alghom-fintype--0b9e27b78a351c0d03cdcfe8.md) | 340 | `declaration-track:0b9e27b78a351c0d03cdcfe8374d7cbe914d687993b8134f9f40b9d4355151d2` |
| 34 | `def` | [equivOfRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/equivofroot--ff68d587e70889da28bcff38.md) | 352 | `declaration-track:ff68d587e70889da28bcff388eb5f620ef0f906e862707dca81f42d43715927d` |
| 35 | `theorem` | [equivOfRoot_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/equivofroot-aeval--23dc00f26aa42c4bee17621f.md) | 367 | `result-track:23dc00f26aa42c4bee17621fe5641ba04429a7b0e2489e54fee78294bfa16f7f` |
| 36 | `theorem` | [equivOfRoot_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/equivofroot-gen--c3ab55b4779203bc467da301.md) | 374 | `result-track:c3ab55b4779203bc467da301b52372a5fcca279f43339e321a6d39b4a7362bbf` |
| 37 | `theorem` | [equivOfRoot_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/equivofroot-symm--9ce91b44b398a19f075e183d.md) | 381 | `result-track:9ce91b44b398a19f075e183d41b545b6a124c11a0748f823584382b73cd60f65` |
| 38 | `def` | [equivOfMinpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/equivofminpoly--201a80dae7b33fca35194f21.md) | 394 | `declaration-track:201a80dae7b33fca35194f215bd3f786040c755f7c49724adea3e010027827ec` |
| 39 | `theorem` | [equivOfMinpoly_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/equivofminpoly-aeval--f4e4ffddfca155ccbeea0534.md) | 400 | `result-track:f4e4ffddfca155ccbeea0534a19d77f06129c0ba5d822bdd19bffc8da9da9488` |
| 40 | `theorem` | [equivOfMinpoly_gen](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/equivofminpoly-gen--ddc17d68553fda1e5479308c.md) | 407 | `result-track:ddc17d68553fda1e5479308c7ebdcddd5df5e482e92bdbae15cc0bee87539049` |
| 41 | `theorem` | [equivOfMinpoly_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/equivofminpoly-symm--d545bd86781d77a08e75bdae.md) | 413 | `result-track:d545bd86781d77a08e75bdaef7e98dca0b62b35f98e1e87cc18a504740416323` |
| 42 | `theorem` | [linearIndependent_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/linearindependent-pow--c9f8c4746ee858773bc38a5f.md) | 427 | `result-track:c9f8c4746ee858773bc38a5ff30c3f3292edffd98f816c7d14fda204685db13a` |
| 43 | `theorem` | [IsIntegral.mem_span_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/isintegral-mem-span-pow--06a458575d41ecaf0d195e93.md) | 443 | `result-track:06a458575d41ecaf0d195e93f2599dad526d50ff0178041333e54ec00f17a952` |
| 44 | `def` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/map--8182eb2e5510cdfd9a9e7c91.md) | 462 | `declaration-track:8182eb2e5510cdfd9a9e7c91b6b39123cc587f4c059d88f60715b86749e68a52` |
| 45 | `theorem` | [minpolyGen_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/minpolygen-map--70a06d14169584586356ce65.md) | 472 | `result-track:70a06d14169584586356ce65ede3369169089cf40f0b4bd02116fb60c0560e20` |
| 46 | `theorem` | [equivOfRoot_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/equivofroot-map--839ab70e46771390091234fc.md) | 482 | `result-track:839ab70e46771390091234fca6da5d6a52f7424e51f64f71746058734a173679` |
| 47 | `theorem` | [equivOfMinpoly_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/equivofminpoly-map--9f8ab79a6f8001c31211d081.md) | 490 | `result-track:9f8ab79a6f8001c31211d081522dda07d3e2c2861f17326f633b9b3bd51961ec` |
| 48 | `theorem` | [adjoin_gen_eq_top](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/adjoin-gen-eq-top--2dedd18c3c7dc8ce848a8bb3.md) | 501 | `result-track:2dedd18c3c7dc8ce848a8bb394b875b46b72a952c41a6e7539914a05fe130c48` |
| 49 | `theorem` | [adjoin_eq_top_of_gen_mem_adjoin](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/declarations/adjoin-eq-top-of-gen-mem-adjoin--80405a9adee4050bafb2f32d.md) | 508 | `result-track:80405a9adee4050bafb2f32dc38f3925b9b49ef5ff19721e6875307c39d1fddf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
