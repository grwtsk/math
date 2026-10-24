# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Lemmas.Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d53c4d78ea29dc9c8775c83584303a3f7f9742d",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d53c4d78ea29dc9c8775c83584303a3f7f9742d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Eval.Degree` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Prime.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_comp_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-comp-le--b6c2f5c3af079fbfb011a782.md) | 44 | `result-track:b6c2f5c3af079fbfb011a7824404617a9c11915d5d7d0635a467289b833bc13f` |
| 2 | `theorem` | [natDegree_comp_eq_of_mul_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-comp-eq-of-mul-ne-zero--4a08b78b2bfb20cdbffc3629.md) | 70 | `result-track:4a08b78b2bfb20cdbffc36292fe79ddc53abdeb109a5005d4ccc8722eeb2ec0c` |
| 3 | `theorem` | [degree_pos_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/degree-pos-of-root--e4af40f4c51d489b6c069f53.md) | 77 | `result-track:e4af40f4c51d489b6c069f538f39ec1fe062aeea33ec9e08d6811af00d1430b0` |
| 4 | `theorem` | [natDegree_le_iff_coeff_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-le-iff-coeff-eq-zero--029775f9df805c419e4f860f.md) | 84 | `result-track:029775f9df805c419e4f860f2f9c121781aa4b0fb67f7a92655120891d821135` |
| 5 | `theorem` | [natDegree_add_le_iff_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-add-le-iff-left--0494d92540b2580d6a99f9bc.md) | 87 | `result-track:0494d92540b2580d6a99f9bc915b9d5acb08601ab035f60b2f6d7dc10b0efca5` |
| 6 | `theorem` | [natDegree_add_le_iff_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-add-le-iff-right--bf2899abcac74b95463f4174.md) | 94 | `result-track:bf2899abcac74b95463f41748bb7cc0b24edb7a7eaf19dce3c5bdba26bf96370` |
| 7 | `theorem` | [natDegree_C_mul_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-c-mul-le--e2ebe00d82a55914430db153.md) | 101 | `result-track:e2ebe00d82a55914430db1531d3b1bb9d75dde4025742402b58e9e60aa3dae39` |
| 8 | `theorem` | [natDegree_mul_C_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-mul-c-le--7d46592942d4ce9c91946036.md) | 104 | `result-track:7d46592942d4ce9c9194603600b4b445130aa01c105db48ce20d467144c8fc48` |
| 9 | `theorem` | [eq_natDegree_of_le_mem_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/eq-natdegree-of-le-mem-support--ee21221cede2c969c362a283.md) | 107 | `result-track:ee21221cede2c969c362a283b8cc24df468c74fb03b6254ca3d73fe89957cc41` |
| 10 | `theorem` | [natDegree_C_mul_eq_of_mul_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-c-mul-eq-of-mul-eq-one--d49e52834fac3c742531f189.md) | 111 | `result-track:d49e52834fac3c742531f1894eb8999e65e128898e144a67f565dfb2f998f7df` |
| 11 | `theorem` | [natDegree_mul_C_eq_of_mul_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-mul-c-eq-of-mul-eq-one--d55c6578a9d552d23e12661a.md) | 119 | `result-track:d55c6578a9d552d23e12661a378bb4a1f0617c85928318a6f91ceb63ca7258ee` |
| 12 | `theorem` | [natDegree_mul_C_eq_of_mul_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-mul-c-eq-of-mul-ne-zero--d80faadb51a4e5bef45bf399.md) | 130 | `result-track:d80faadb51a4e5bef45bf39936015404bfe97cd178969db6167a144f5884b954` |
| 13 | `theorem` | [natDegree_C_mul_of_mul_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-c-mul-of-mul-ne-zero--b75e05f3762fa949a8bbe124.md) | 139 | `result-track:b75e05f3762fa949a8bbe12442e3f95f07efac7c3d9068266d44bb9a4874eae7` |
| 14 | `lemma` | [degree_C_mul_of_mul_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/degree-c-mul-of-mul-ne-zero--4df5c01f0b3fe8a17463ad91.md) | 148 | `result-track:4df5c01f0b3fe8a17463ad91032c9ff2751084c073151954a8cf78f2ba26fa4e` |
| 15 | `theorem` | [natDegree_add_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-add-coeff-mul--326522a7b27bd2aba8b19238.md) | 151 | `result-track:326522a7b27bd2aba8b1923800be5437f1920251d0d1ffdc8a02a9caccd1601a` |
| 16 | `theorem` | [natDegree_lt_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-lt-coeff-mul--67e24b051205213b238e7b00.md) | 155 | `result-track:67e24b051205213b238e7b004abc80cd2df3274f1481cb3be79dc79aff34651e` |
| 17 | `theorem` | [coeff_mul_of_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/coeff-mul-of-natdegree-le--9b51ee16740c04b5b4b5cdde.md) | 159 | `result-track:9b51ee16740c04b5b4b5cdde58eca8ce65f32f947579e762a8a3e8a3d8e04132` |
| 18 | `theorem` | [coeff_pow_of_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/coeff-pow-of-natdegree-le--5fa1f7a286f3e57415532775.md) | 167 | `result-track:5fa1f7a286f3e57415532775e8dc0158dae7e81686d9b41ca37df739bf198d20` |
| 19 | `theorem` | [coeff_pow_eq_ite_of_natDegree_le_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/coeff-pow-eq-ite-of-natdegree-le-of-le--a4c9829fa66a629476ee2267.md) | 175 | `result-track:a4c9829fa66a629476ee2267d780506b5c79bf358ff8be4416421053027ba80c` |
| 20 | `theorem` | [coeff_add_eq_left_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/coeff-add-eq-left-of-lt--4f41e45f685e3da2e0216640.md) | 183 | `result-track:4f41e45f685e3da2e02166407fa32302653a38eea328898b15e3ecc83ecdd1e6` |
| 21 | `theorem` | [coeff_add_eq_right_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/coeff-add-eq-right-of-lt--f732fd67087b7294116a4040.md) | 187 | `result-track:f732fd67087b7294116a40407e2977d53ecef1464955e129b1c00f6db7ca9f03` |
| 22 | `theorem` | [degree_sum_eq_of_disjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/degree-sum-eq-of-disjoint--5ca7c822a41563b7a8da5d5e.md) | 193 | `result-track:5ca7c822a41563b7a8da5d5efc1a3ceabb014ac2dc2d468d0fdb92f86a567f7a` |
| 23 | `theorem` | [natDegree_sum_eq_of_disjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-sum-eq-of-disjoint--c384e34cea4fae31c1c05c24.md) | 218 | `result-track:c384e34cea4fae31c1c05c24196aa799b379cf1c8350920a3f8aced5d1e19159` |
| 24 | `theorem` | [natDegree_pos_of_eval₂_root](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-pos-of-eval-root--78dd3959418923a0ab47da57.md) | 252 | `result-track:78dd3959418923a0ab47da57bf3b02b064409cd00aa202c7287b543fe3591ba9` |
| 25 | `theorem` | [degree_pos_of_eval₂_root](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/degree-pos-of-eval-root--2c401eea47446ee13b0ab943.md) | 260 | `result-track:2c401eea47446ee13b0ab9432f414af520a9df3ab957a9f19903636fbe70b55d` |
| 26 | `theorem` | [coe_lt_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/coe-lt-degree--f4dfa2e62a839470940c8fd1.md) | 265 | `result-track:f4dfa2e62a839470940c8fd1238975849c2145afe2cf3468ffae33361bf3169a` |
| 27 | `theorem` | [degree_map_eq_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/degree-map-eq-iff--4564868ec83643c08ae4ca8f.md) | 271 | `result-track:4564868ec83643c08ae4ca8f8e3291f79ad3aab32ff66f0e6fbbed8d810813d8` |
| 28 | `theorem` | [natDegree_map_eq_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-map-eq-iff--0cd0da075dd70e01f65f4879.md) | 283 | `result-track:0cd0da075dd70e01f65f487937162a7f50981dbf867f84ab6d3914ebe95fef48` |
| 29 | `theorem` | [natDegree_pos_of_nextCoeff_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-pos-of-nextcoeff-ne-zero--f4f0b6a6fd1a8a8d31aa83a1.md) | 290 | `result-track:f4f0b6a6fd1a8a8d31aa83a1395625fd349df072173b47b13479ab4b40bdb796` |
| 30 | `theorem` | [natDegree_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-sub--753637a32579d81555281e7d.md) | 304 | `result-track:753637a32579d81555281e7da58394f4775e3f445783ce0212231a4ee5d1cf70` |
| 31 | `theorem` | [natDegree_sub_le_iff_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-sub-le-iff-left--0ec71ec31f312a6d9e5e46c3.md) | 306 | `result-track:0ec71ec31f312a6d9e5e46c379672a1c4708b90c272ff312fc02462bb81aea00` |
| 32 | `theorem` | [natDegree_sub_le_iff_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-sub-le-iff-right--bf088d5037d7ce8053db6a6d.md) | 311 | `result-track:bf088d5037d7ce8053db6a6d855b8feb1da3e185cdaa18b41741818decd04fb8` |
| 33 | `theorem` | [coeff_sub_eq_left_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/coeff-sub-eq-left-of-lt--fb9f171713d4fb4b12f0e752.md) | 314 | `result-track:fb9f171713d4fb4b12f0e75269ce0c660f02f7d4f75d74ca1adc47a18056f7e7` |
| 34 | `theorem` | [coeff_sub_eq_neg_right_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/coeff-sub-eq-neg-right-of-lt--2857aded266f18f22aa984dc.md) | 318 | `result-track:2857aded266f18f22aa984dc2cfd9acf98c266df004d374784d356a4a1cb2cb5` |
| 35 | `lemma` | [nextCoeff_C_mul_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/nextcoeff-c-mul-x-add-c--0be6dc42132bfabada7c2c72.md) | 328 | `result-track:0be6dc42132bfabada7c2c7206c35c34fc5f5705cbabf05610a0a911a0901f77` |
| 36 | `lemma` | [natDegree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-eq-one--3e651f422e72b70ad9cc9635.md) | 331 | `result-track:3e651f422e72b70ad9cc9635603e22e6e6c21acb7b125547cb519b42c6ddbf40` |
| 37 | `theorem` | [degree_mul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/degree-mul-c--5177031f2d90690e4ca700a2.md) | 347 | `result-track:5177031f2d90690e4ca700a2a047dcc9bdb9a87efec41f0e10ed6cba9559aea6` |
| 38 | `theorem` | [degree_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/degree-c-mul--72ab071c194803d118b65a8b.md) | 350 | `result-track:72ab071c194803d118b65a8b8d8895a6fc832855212a84ad2c4a7dbb7abc5ab3` |
| 39 | `theorem` | [natDegree_mul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-mul-c--dd2dc8fc8a57ebc1cbf057c8.md) | 353 | `result-track:dd2dc8fc8a57ebc1cbf057c8d4120b7c64092429bf1edd5400cdb9a00d5802f9` |
| 40 | `theorem` | [natDegree_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-c-mul--1d486c09f796535b01594464.md) | 356 | `result-track:1d486c09f796535b01594464f740285438288b03af6b4108c21ad9dc1927bdab` |
| 41 | `theorem` | [natDegree_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-comp--1e32b79ea86bccf81050027e.md) | 359 | `result-track:1e32b79ea86bccf81050027e3176d2c14a7ad0b858ea994af79d86a69be38e15` |
| 42 | `theorem` | [natDegree_iterate_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-iterate-comp--afc32a524aeb7a443126c356.md) | 369 | `result-track:afc32a524aeb7a443126c356d6069da1f27a4a7b1cecff9304571d744df38025` |
| 43 | `theorem` | [leadingCoeff_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/leadingcoeff-comp--d5723506e8daecb9e1070b64.md) | 375 | `result-track:d5723506e8daecb9e1070b64ccc319af2b12dd45eacd797d3fa3403cec085459` |
| 44 | `lemma` | [comp_neg_X_leadingCoeff_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/comp-neg-x-leadingcoeff-eq--8850831b412da5c6a697f1ad.md) | 381 | `result-track:8850831b412da5c6a697f1ad0a8f2a9d13982edd32e6d9195102c98197bbf5eb` |
| 45 | `lemma` | [comp_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/comp-eq-zero-iff--7468893adf48768fe0bb9468.md) | 389 | `result-track:7468893adf48768fe0bb9468548a3d74ddae671b76c87abb41cdb8819fafc442` |
| 46 | `theorem` | [irreducible_mul_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/irreducible-mul-leadingcoeff-inv--0db14ca37a633e68af88f347.md) | 406 | `result-track:0db14ca37a633e68af88f34729c46f26f947f6240ebadb2ebec1c2faa9a1e22f` |
| 47 | `lemma` | [dvd_mul_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/dvd-mul-leadingcoeff-inv--cd792735c80050241ba6f468.md) | 413 | `result-track:cd792735c80050241ba6f4682df92141fb8a0c611465d33888f44a8b63f1e596` |
| 48 | `theorem` | [monic_mul_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/monic-mul-leadingcoeff-inv--735bdc9f48526be2f41b6ae8.md) | 417 | `result-track:735bdc9f48526be2f41b6ae89d9d8553305314bfbff32ce520a2bc71c913bbcf` |
| 49 | `lemma` | [degree_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/degree-leadingcoeff-inv--4c929e5568f8be80e587d4e1.md) | 422 | `result-track:4c929e5568f8be80e587d4e178a185a6ad8c17665ba4683df6df0635f85095a3` |
| 50 | `theorem` | [degree_mul_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/degree-mul-leadingcoeff-inv--cd68822bd7c94d472abc0dcf.md) | 426 | `result-track:cd68822bd7c94d472abc0dcff7c5c428622669324c1a453a2636a8a9978886df` |
| 51 | `theorem` | [natDegree_mul_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-mul-leadingcoeff-inv--3a44fa9c92c4e9c7c9a38979.md) | 431 | `result-track:3a44fa9c92c4e9c7c9a38979a977a7e84a8b033f5b4c289b8a77fea992eaef91` |
| 52 | `theorem` | [degree_mul_leadingCoeff_self_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/degree-mul-leadingcoeff-self-inv--a11cf4eafbd6c16b32a6abc6.md) | 435 | `result-track:a11cf4eafbd6c16b32a6abc6aa71ede09b370c3f9da8b5705998cf3274ce633c` |
| 53 | `theorem` | [natDegree_mul_leadingCoeff_self_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/natdegree-mul-leadingcoeff-self-inv--21f2c0372d4e8d41e8a34fc1.md) | 441 | `result-track:21f2c0372d4e8d41e8a34fc11983cd39b9ca4f8fbb0af3cc28ab32f60cfdccf7` |
| 54 | `lemma` | [degree_add_degree_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variantfad135d2a721023552b852d8a61e0c7aca465029fca37832958cb128990373d8.lean/declarations/degree-add-degree-leadingcoeff-inv--ee67acf13b049f090e816ace.md) | 446 | `result-track:ee67acf13b049f090e816ace57fad329154abc84b4d60da2126256e36f826ccb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
