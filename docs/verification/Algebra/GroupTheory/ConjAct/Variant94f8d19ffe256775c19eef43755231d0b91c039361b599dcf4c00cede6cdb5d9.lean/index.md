# Verification target: GRWTSK.Algebra.GroupTheory.ConjAct.Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e22c0ea6088f83f7dcd1f83ebb70b6b5fa1b4753",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e22c0ea6088f83f7dcd1f83ebb70b6b5fa1b4753`.

Source path: `GRWTSK/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.ZPowers.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/conjact--2512fa97b57ff94921c5cdcb.md) | 48 | `declaration-track:2512fa97b57ff94921c5cdcb781fccbae871ea3a84221a9c11b94a249497baa3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/instance--647d46e738904bf1aeb913fd.md) | 57 | `declaration-track:647d46e738904bf1aeb913fd7ec2e4b7d1ce4222ca2604030627087ba7aa2ed0` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/instance--d14ca128324e9058eaf32706.md) | 59 | `declaration-track:d14ca128324e9058eaf3270639b6e35acd22e1540227b06261879579f14daf53` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/instance--2b557bd659c3de8e14871bf4.md) | 61 | `declaration-track:2b557bd659c3de8e14871bf44532724e226a7e411d75f3125b21d11a46f800aa` |
| 5 | `theorem` | [card](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/card--e0ca2477fb8fdffb4f0d739b.md) | 64 | `result-track:e0ca2477fb8fdffb4f0d739bffe77360f43939419bd3d37e9ba7dc59d571dd28` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/instance--b42589d313f6567d70dbb83d.md) | 71 | `declaration-track:b42589d313f6567d70dbb83dffa27303547347edaa9a51fdfaf642c8a5e54a31` |
| 7 | `def` | [ofConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/ofconjact--969755adf19c4b94671c7c19.md) | 75 | `declaration-track:969755adf19c4b94671c7c1946bf3d26ccc95aad5336dd5123a3ca72ef3c2497` |
| 8 | `def` | [toConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/toconjact--b2987615d868d8d469a5e155.md) | 83 | `declaration-track:b2987615d868d8d469a5e15573d26b2f70dee1bfa9de426224f607b65a51cfdf` |
| 9 | `def` | [rec](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/rec--1db25e197bfbd67a6e1c8bf1.md) | 88 | `declaration-track:1db25e197bfbd67a6e1c8bf137a9f6418cb5bf41a7d2c7f195de618cdb3069cd` |
| 10 | `theorem` | [«forall»](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/forall--d58815d44c2c75fe2ab6d800.md) | 92 | `result-track:d58815d44c2c75fe2ab6d800c8020cb6bfef197892aab7b0648f41e8148f1087` |
| 11 | `theorem` | [of_mul_symm_eq](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/of-mul-symm-eq--93824b55a2f0903cc3f4db50.md) | 96 | `result-track:93824b55a2f0903cc3f4db5072f8b31db231e17fa7a78123f5da3dab48039ca6` |
| 12 | `theorem` | [to_mul_symm_eq](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/to-mul-symm-eq--a0e47a85334202e6a610e041.md) | 100 | `result-track:a0e47a85334202e6a610e0412e12bfaf0bbaf31f60c0cf7a58c70e85529b5d00` |
| 13 | `theorem` | [toConjAct_ofConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/toconjact-ofconjact--9c7b3ef9bf2ff61a3d2a2760.md) | 104 | `result-track:9c7b3ef9bf2ff61a3d2a276077b27def0cd1eb0c9cf69fb605975c0efd8a5832` |
| 14 | `theorem` | [ofConjAct_toConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/ofconjact-toconjact--a5987d7258fd519744c3397c.md) | 108 | `result-track:a5987d7258fd519744c3397c33f3ec637ac81c7e7345383af503c42b800e95ac` |
| 15 | `theorem` | [ofConjAct_one](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/ofconjact-one--c5a2087566cc26b46f3cea26.md) | 112 | `result-track:c5a2087566cc26b46f3cea26fe182c242b98783fd2fe16c46c55639eb66eb107` |
| 16 | `theorem` | [toConjAct_one](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/toconjact-one--0746ccece3bbee05526df200.md) | 116 | `result-track:0746ccece3bbee05526df200a5fc90c30cc6a9c192c07758de3e6b73d3f2bf90` |
| 17 | `theorem` | [ofConjAct_inv](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/ofconjact-inv--a88c56150bbe7a9372c0a429.md) | 120 | `result-track:a88c56150bbe7a9372c0a429c302686890b9ea1ac61690c8030f7b5c9bfe43d3` |
| 18 | `theorem` | [toConjAct_inv](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/toconjact-inv--efba3fafb88dcbd13d73368a.md) | 124 | `result-track:efba3fafb88dcbd13d73368af3bea9752c58e47b9ce0bf9456225b14dcc5812c` |
| 19 | `theorem` | [ofConjAct_mul](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/ofconjact-mul--cccf74783140fadf6103d258.md) | 128 | `result-track:cccf74783140fadf6103d258ac2008f0a2394cba8e5c3149225474634876bf2a` |
| 20 | `theorem` | [toConjAct_mul](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/toconjact-mul--50ae8b76b203784e747e4d44.md) | 132 | `result-track:50ae8b76b203784e747e4d44d0f8df9d0bae1514e3ee6e4e97cf03ec4cc9adce` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/instance--7e75fd6b4e65f68500171e36.md) | 135 | `declaration-track:7e75fd6b4e65f68500171e36c1f811dc6e6c4315bb4eede0db07a13a14911c88` |
| 22 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/smul-def--136bf3f2bbb116be77d4d950.md) | 137 | `result-track:136bf3f2bbb116be77d4d950fd43cbfcc9e288ef6373f9956c7de0731d60a83e` |
| 23 | `theorem` | [toConjAct_smul](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/toconjact-smul--319f23965a00d1865d788644.md) | 140 | `result-track:319f23965a00d1865d78864465d73e3dc6e1915fedc7afbfdff5eeca6db0239d` |
| 24 | `instance` | [unitsScalar](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/unitsscalar--bffc974230e1cd8b4f10f22c.md) | 151 | `declaration-track:bffc974230e1cd8b4f10f22ce6d5cd63417621a2875c104f17f8c64b76cc0837` |
| 25 | `theorem` | [units_smul_def](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/units-smul-def--550bc9af6a36af309e734196.md) | 153 | `result-track:550bc9af6a36af309e73419675ec245aaa2da139efd00f86510d9b6a4809153c` |
| 26 | `instance` | [unitsMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/unitsmuldistribmulaction--acb8ea41ee8c09bf05daea25.md) | 156 | `declaration-track:acb8ea41ee8c09bf05daea257470cbaa2d5c711518c12553b19d64c2552f8bf3` |
| 27 | `instance` | [unitsSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/unitssmulcommclass--7d1bc9b9667ab52e1895e645.md) | 163 | `declaration-track:7d1bc9b9667ab52e1895e645ed96fdc5b1599a89b5198199e6d65026f2c33c24` |
| 28 | `instance` | [unitsSMulCommClass'](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/unitssmulcommclass--afe042111efd36c717df2e83.md) | 167 | `declaration-track:afe042111efd36c717df2e83ed50b96a6f28a5cc1e02e5c23e6142d8900899c7` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/instance--d8d60873d906385267e63104.md) | 180 | `declaration-track:d8d60873d906385267e63104f0ef4f5a1ee6b7ddddbe14ed196619ddce25d7fc` |
| 30 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/smulcommclass--f42cd49b96dc03aaf8c21f0e.md) | 186 | `declaration-track:f42cd49b96dc03aaf8c21f0e103cb66457ff97dbed94fc91a35980171527ec08` |
| 31 | `instance` | [smulCommClass'](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/smulcommclass--d616d75a3c77a63312aa0ef4.md) | 190 | `declaration-track:d616d75a3c77a63312aa0ef4685db90ceb0c05842d14e328186297467d8c0319` |
| 32 | `theorem` | [smul_eq_mulAut_conj](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/smul-eq-mulaut-conj--a8d052074d384f6e4994aff4.md) | 195 | `result-track:a8d052074d384f6e4994aff42ed1ed56ef90cf3c2a6530890dc7c1a7f523168d` |
| 33 | `theorem` | [fixedPoints_eq_center](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/fixedpoints-eq-center--e475b5670483e84076b87070.md) | 199 | `result-track:e475b5670483e84076b87070ed555cac64985482710c5264ad6e4635c17613ac` |
| 34 | `theorem` | [mem_orbit_conjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/mem-orbit-conjact--b80ccca586950a096a1973cd.md) | 204 | `result-track:b80ccca586950a096a1973cdc406266a43cdb6124bcb0165e34f896d0ee4f021` |
| 35 | `theorem` | [orbitRel_conjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/orbitrel-conjact--b05deebeb01c59fc8f7b1355.md) | 207 | `result-track:b05deebeb01c59fc8f7b1355a5daf58505ad61b8cdc003eb8535c919be76e3ad` |
| 36 | `theorem` | [orbit_eq_carrier_conjClasses](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/orbit-eq-carrier-conjclasses--91ae20bf787fec374f08a8ae.md) | 210 | `result-track:91ae20bf787fec374f08a8aee95d6c6ec8030c9d7b2f5f0aeb8c078ce1b9127e` |
| 37 | `theorem` | [stabilizer_eq_centralizer](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/stabilizer-eq-centralizer--e17906566156d65be99079f9.md) | 215 | `result-track:e17906566156d65be99079f9d1972152cb9d69f45b6a0231534271c011cb3c04` |
| 38 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variant7c37882dc10920cee9ad851d9b4b889b733316f2e18ab181f83bdb1011a48143.Subgroup.centralizer_eq_comap_stabilizer](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/root-grwtsk-algebra-grouptheory-conjact-variant7c37882dc10920cee9ad851d9--cb390ff1773cf34f16b10999.md) | 220 | `result-track:cb390ff1773cf34f16b1099921766e176d381c8c8f6400f05395754bc2ece174` |
| 39 | `instance` | [Subgroup.conjAction](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/subgroup-conjaction--9a3c7978fb30bf93d756cad1.md) | 232 | `declaration-track:9a3c7978fb30bf93d756cad1e5da8ffd02870ca0b1a858eea0bb892e9077de16` |
| 40 | `theorem` | [Subgroup.val_conj_smul](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/subgroup-val-conj-smul--15a357da6613017c8400c72a.md) | 235 | `result-track:15a357da6613017c8400c72a8ea97b0ef7a14b4af64eeb8b489dd607e3be4101` |
| 41 | `instance` | [Subgroup.conjMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/subgroup-conjmuldistribmulaction--7a3d648f89089ad0e9f52170.md) | 239 | `declaration-track:7a3d648f89089ad0e9f52170a057fa60369dd9e5ac5e69d7a7deb427288399bc` |
| 42 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variant7c37882dc10920cee9ad851d9b4b889b733316f2e18ab181f83bdb1011a48143.MulAut.conjNormal](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/root-grwtsk-algebra-grouptheory-conjact-variant7c37882dc10920cee9ad851d9--e4242c360a59808fe7552690.md) | 244 | `declaration-track:e4242c360a59808fe7552690b97a3d5c6e78a63c7fb42b8c6eedf13ef4edd029` |
| 43 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variant7c37882dc10920cee9ad851d9b4b889b733316f2e18ab181f83bdb1011a48143.MulAut.conjNormal_apply](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/root-grwtsk-algebra-grouptheory-conjact-variant7c37882dc10920cee9ad851d9--c3fc63a25a8e8f0fb194649e.md) | 248 | `result-track:c3fc63a25a8e8f0fb194649eee827d50581fa2607586ea138043282736b99c42` |
| 44 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variant7c37882dc10920cee9ad851d9b4b889b733316f2e18ab181f83bdb1011a48143.MulAut.conjNormal_symm_apply](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/root-grwtsk-algebra-grouptheory-conjact-variant7c37882dc10920cee9ad851d9--87bf65a6ffc0877449809186.md) | 253 | `result-track:87bf65a6ffc0877449809186e7c3613c7004cebbd2affd1aa240c3caabc3f75e` |
| 45 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variant7c37882dc10920cee9ad851d9b4b889b733316f2e18ab181f83bdb1011a48143.MulAut.conjNormal_inv_apply](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/root-grwtsk-algebra-grouptheory-conjact-variant7c37882dc10920cee9ad851d9--fea21762bd06879add8e555f.md) | 259 | `result-track:fea21762bd06879add8e555f3b6edd7a6765b95549629288c9ca2f861356c80e` |
| 46 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variant7c37882dc10920cee9ad851d9b4b889b733316f2e18ab181f83bdb1011a48143.MulAut.conjNormal_val](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/root-grwtsk-algebra-grouptheory-conjact-variant7c37882dc10920cee9ad851d9--9ceeb0b127a859113e8519ec.md) | 263 | `result-track:9ceeb0b127a859113e8519ec0f60079950c4cf9ff559a63cee4062333081cb60` |
| 47 | `instance` | [normal_of_characteristic_of_normal](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/normal-of-characteristic-of-normal--a37cc99d7e67b3ab819efa65.md) | 267 | `declaration-track:a37cc99d7e67b3ab819efa6566b9fb1ac29c05cfabd3049e5a6df8ed0541013a` |
| 48 | `def` | [unitsCentralizerEquiv](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/declarations/unitscentralizerequiv--6e439be286369e3f54616dd6.md) | 283 | `declaration-track:6e439be286369e3f54616dd6042581508839098b51577a186330d488d34bcf1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
