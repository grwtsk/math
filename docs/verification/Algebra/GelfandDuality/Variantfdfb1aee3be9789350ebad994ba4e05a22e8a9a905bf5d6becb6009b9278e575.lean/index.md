# Verification target: GRWTSK.Algebra.GelfandDuality.Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3b392572575c4fbb58bf5068d7c034a8fc156a4",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/index.md) · [Full source](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3b392572575c4fbb58bf5068d7c034a8fc156a4`.

Source path: `GRWTSK/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal.toCharacterSpace](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/ideal-tocharacterspace--9f134f4a1e2873331d2a9b40.md) | 85 | `declaration-track:9f134f4a1e2873331d2a9b4051f5d70ba841120e841ab8edf323b4f8faf1c1eb` |
| 2 | `theorem` | [Ideal.toCharacterSpace_apply_eq_zero_of_mem](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/ideal-tocharacterspace-apply-eq-zero-of-mem--23dbf13b9b1a017c6368aeb6.md) | 91 | `result-track:23dbf13b9b1a017c6368aeb6be7c5a77b0ec209475bcc406c4f79cc159311e80` |
| 3 | `theorem` | [WeakDual.CharacterSpace.exists_apply_eq_zero](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/weakdual-characterspace-exists-apply-eq-zero--f9df72dea2118087c036ce3d.md) | 101 | `result-track:f9df72dea2118087c036ce3dc725041b8f76765c3e1b376bf8a9fc652f98e02c` |
| 4 | `theorem` | [WeakDual.CharacterSpace.mem_spectrum_iff_exists](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/weakdual-characterspace-mem-spectrum-iff-exists--f469e6253278ef0e8864ca0a.md) | 109 | `result-track:f469e6253278ef0e8864ca0ab19bcc971b6c69b676270d75806da8ef38ca2d8e` |
| 5 | `theorem` | [spectrum.gelfandTransform_eq](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/spectrum-gelfandtransform-eq--ce0df1f759d249ee8fd5f92d.md) | 119 | `result-track:ce0df1f759d249ee8fd5f92d7c05a919bd3e6288077b4652543a17b464c8259c` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/instance--57b6a0cdf564ef47e539c48c.md) | 125 | `declaration-track:57b6a0cdf564ef47e539c48c928a9aafe22def20ec9c21c6943bfd394e250b4d` |
| 7 | `theorem` | [gelfandTransform_map_star](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/gelfandtransform-map-star--1980498eefb43d8df57327a7.md) | 137 | `result-track:1980498eefb43d8df57327a781f6f5dd20ab646884c3a30ecce86e01649aaf56` |
| 8 | `theorem` | [gelfandTransform_isometry](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/gelfandtransform-isometry--aaaf77686cf22088483539de.md) | 144 | `result-track:aaaf77686cf22088483539de1a1cdd0596f961e8f778dba0780931fb96ae7ea8` |
| 9 | `theorem` | [gelfandTransform_bijective](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/gelfandtransform-bijective--3ffe16babf90c71b8cef7e80.md) | 160 | `result-track:3ffe16babf90c71b8cef7e8049f915cdd8160564f2c515108ff609f5003beec6` |
| 10 | `def` | [gelfandStarTransform](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/gelfandstartransform--8cfd9effb0c753a375607583.md) | 193 | `declaration-track:8cfd9effb0c753a37560758385efb70bb0aea275cab1d95e56f3aae4c3664aaf` |
| 11 | `lemma` | [norm_add_eq_max](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/norm-add-eq-max--519fa4f7cbc6a98f82a6b48d.md) | 207 | `result-track:519fa4f7cbc6a98f82a6b48d775661b75b553c1781169f9441076a34a810c0c0` |
| 12 | `lemma` | [nnnorm_add_eq_max](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/nnnorm-add-eq-max--b24cd254629d1b1b00288208.md) | 213 | `result-track:b24cd254629d1b1b002882083e8726c340df4e1824bd8b210b17fcb6eca6f9ff` |
| 13 | `lemma` | [norm_sub_eq_max](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/norm-sub-eq-max--5e8f7e5d69305350e6925506.md) | 216 | `result-track:5e8f7e5d69305350e6925506a1510155f6fdaa8dcd606449902314cb0ebac4ba` |
| 14 | `lemma` | [nnnorm_sub_eq_max](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/nnnorm-sub-eq-max--463dcd672447a55c8c2622b2.md) | 219 | `result-track:463dcd672447a55c8c2622b2129f0451baf1fc42be079a57539cce16135b1e75` |
| 15 | `lemma` | [nnnorm_sum_eq_sup](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/nnnorm-sum-eq-sup--154fb612a35b485d18c97b89.md) | 223 | `result-track:154fb612a35b485d18c97b89996f8ba2b9ce027cc98595201ec148d7ad37d59c` |
| 16 | `lemma` | [norm_add_eq_max](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/norm-add-eq-max--33fa2e2dc122fc414a449a90.md) | 242 | `result-track:33fa2e2dc122fc414a449a90ee838db7eca74fdd23abc57cd1266b212e73cba6` |
| 17 | `lemma` | [nnnorm_add_eq_max](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/nnnorm-add-eq-max--bef9828478e0aa48ae02e332.md) | 254 | `result-track:bef9828478e0aa48ae02e33296c591a021de6ce024766d7770460ca9ae7ea1db` |
| 18 | `lemma` | [norm_sub_eq_max](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/norm-sub-eq-max--437149b45e609b2384a3df61.md) | 259 | `result-track:437149b45e609b2384a3df61b0dcecc7d63536a5a0a897e07b6ebc44e32aa37d` |
| 19 | `lemma` | [nnnorm_sub_eq_max](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/nnnorm-sub-eq-max--d6452769918fdff4f851c339.md) | 265 | `result-track:d6452769918fdff4f851c33927a6a3a43736145ba3c8605c82cbc86f8930098b` |
| 20 | `lemma` | [norm_add_eq_max](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/norm-add-eq-max--ed8d6bf9fb0af9dadf9a2bff.md) | 275 | `result-track:ed8d6bf9fb0af9dadf9a2bffb3cecc72a4d9bde40a4dabc5f303ddde49cbc316` |
| 21 | `lemma` | [nnnorm_add_eq_max](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/nnnorm-add-eq-max--807793e989f055a1e8a6fda6.md) | 279 | `result-track:807793e989f055a1e8a6fda644f3dfaa54aa096a30df23e4b335b2c333d6fa91` |
| 22 | `lemma` | [norm_sub_eq_max](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/norm-sub-eq-max--6e23e068753044f46241b873.md) | 283 | `result-track:6e23e068753044f46241b873f184795f77ae84d5aa7c2fc7eed175fddf7bbbde` |
| 23 | `lemma` | [nnnorm_sub_eq_max](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/nnnorm-sub-eq-max--7ffbe4234b42f1ec2f91e4a8.md) | 287 | `result-track:7ffbe4234b42f1ec2f91e4a813f4607433c93d3c952fa8c4f728d1f3da248b5f` |
| 24 | `lemma` | [nnnorm_sum_eq_sup](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/nnnorm-sum-eq-sup--62c6b3e94bd0fb1d102efde7.md) | 292 | `result-track:62c6b3e94bd0fb1d102efde70f7bc67660c6c62a685834496582039f7bac8f25` |
| 25 | `def` | [compContinuousMap](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/compcontinuousmap--17f47396e11523a00a548750.md) | 323 | `declaration-track:17f47396e11523a00a548750a09723f59b255f108a1f86b17c9912ff387ab9de` |
| 26 | `theorem` | [compContinuousMap_id](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/compcontinuousmap-id--0f2a6e425d588faf7b37defa.md) | 333 | `result-track:0f2a6e425d588faf7b37defa54d67188ea79f543062bfcebc518c14355860182` |
| 27 | `theorem` | [compContinuousMap_comp](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/compcontinuousmap-comp--8e51fb41ff4cb603559f6d9d.md) | 339 | `result-track:8e51fb41ff4cb603559f6d9d760c30f243c06fd7c45fec0b7c27c82f64cd6e1b` |
| 28 | `theorem` | [gelfandStarTransform_naturality](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/gelfandstartransform-naturality--ce0b7a5b571f67f2cf62f037.md) | 373 | `result-track:ce0b7a5b571f67f2cf62f037f7b9243dc359124ef90ba8354081cfb0cc8920ff` |
| 29 | `lemma` | [WeakDual.CharacterSpace.homeoEval_naturality](../../../../mathematics/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/declarations/weakdual-characterspace-homeoeval-naturality--fdf036b20d0bbb2989d934fa.md) | 402 | `result-track:fdf036b20d0bbb2989d934fa16aa0e0d0ba845c49f487ea5c5b7c7059a9431bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
