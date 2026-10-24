# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Length.Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7992768374885c73071dd8f313c7a0b6398fb11",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7992768374885c73071dd8f313c7a0b6398fb11`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean.json)

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
| 1 | `theorem` | [exists_word_with_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/exists-word-with-prod--0e0ad88b7d2318e0c45b7138.md) | 76 | `result-track:0e0ad88b7d2318e0c45b71380a026dbefd532d265ead07e8c113cf77f0ca9aa0` |
| 2 | `def` | [length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length--02958cd28886600fb99e64b4.md) | 83 | `declaration-track:02958cd28886600fb99e64b43509ae1b4066d239bdd90341e7520f16b65ca148` |
| 3 | `def` | [IsReduced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isreduced--ed1f414fab8978a9272fb5a6.md) | 89 | `declaration-track:ed1f414fab8978a9272fb5a629668ff1f319ed33657b9c9fb4334b47dd8f2d16` |
| 4 | `theorem` | [IsReduced.eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isreduced-eq--817685d6c226270695a70b18.md) | 91 | `result-track:817685d6c226270695a70b1890b956f92cb1810bbd4ff5d6fd6f5f953316daab` |
| 5 | `theorem` | [exists_isReduced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/exists-isreduced--b694c776c82b182aee7b3e6c.md) | 93 | `result-track:b694c776c82b182aee7b3e6ceeb7e4dcba4085e3fa71e0522a14ca87e19a050d` |
| 6 | `theorem` | [length_wordProd_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-wordprod-le--2af28cbd3d7dd72598e9b788.md) | 101 | `result-track:2af28cbd3d7dd72598e9b788dc17b2485af91f28895340610ca8cc1a77b1bf3a` |
| 7 | `theorem` | [length_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-one--cb972d0226cbbf679bfc2233.md) | 105 | `result-track:cb972d0226cbbf679bfc2233a2aa79ecffd1bdfa96ee763a244d8f22f4c47fa6` |
| 8 | `theorem` | [length_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-eq-zero-iff--7979a647102294fce7c1f24b.md) | 108 | `result-track:7979a647102294fce7c1f24bf52e01cc28f8d05aab1260d06accdee956bed585` |
| 9 | `theorem` | [length_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-inv--ebe0c405adc79052cf6c1c35.md) | 118 | `result-track:ebe0c405adc79052cf6c1c358cacdd306c192ecedf82d27df88d812cd6cf5016` |
| 10 | `theorem` | [length_mul_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-mul-le--0ab180ea98a1491c06d7dea1.md) | 127 | `result-track:0ab180ea98a1491c06d7dea13b5ee5def1b6d2ce16f0e0edacfdf4ff8769cf07` |
| 11 | `theorem` | [length_le_length_mul_add_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-le-length-mul-add-left--49c0731a68fce8ee43dba249.md) | 133 | `result-track:49c0731a68fce8ee43dba249e20ac2ec2459e0f91c38949b7d95539be9fe7445` |
| 12 | `theorem` | [length_le_length_mul_add_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-le-length-mul-add-right--91f34c54df3d8049eb0e7adf.md) | 136 | `result-track:91f34c54df3d8049eb0e7adf5e6313db72b26621bc2ca7051278bbcbcbe61b08` |
| 13 | `theorem` | [length_mul_ge_length_sub_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-mul-ge-length-sub-length--69b64435fc5864e2a7197ff4.md) | 140 | `result-track:69b64435fc5864e2a7197ff48b6fec292622dc9a4b77974adddef552475ad430` |
| 14 | `theorem` | [length_mul_ge_length_sub_length'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-mul-ge-length-sub-length--1a81adf3fabb4ffbfccff5da.md) | 144 | `result-track:1a81adf3fabb4ffbfccff5da4d716285fd30040816297691d7f6fee061256cd4` |
| 15 | `theorem` | [length_mul_ge_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-mul-ge-max--07784444543ec8644941befc.md) | 149 | `result-track:07784444543ec8644941befcc73ef2f02ad6a6b4c036987b7419473081d9fb5a` |
| 16 | `def` | [lengthParity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/lengthparity--176d6cd9ce0b42f27a9207fb.md) | 154 | `declaration-track:176d6cd9ce0b42f27a9207fb0bf07556b4ddcb103f38d2a72f7e54d749e9ebc9` |
| 17 | `theorem` | [lengthParity_simple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/lengthparity-simple--4ac36c13b5478642c97a6a83.md) | 158 | `result-track:4ac36c13b5478642c97a6a83400e7fb4e7793582b03dc70f964f7588026f4575` |
| 18 | `theorem` | [lengthParity_comp_simple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/lengthparity-comp-simple--dbc5c43c035f966efd1dce85.md) | 161 | `result-track:dbc5c43c035f966efd1dce85c26bd62a05a4b7df7a480c4031859f4ac2faf161` |
| 19 | `theorem` | [lengthParity_eq_ofAdd_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/lengthparity-eq-ofadd-length--597ef9e569f089ebe5dbefca.md) | 164 | `result-track:597ef9e569f089ebe5dbefcab5ef4b33e7ee9f644c0956f4621d2d4b5a932eb7` |
| 20 | `theorem` | [length_mul_mod_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-mul-mod-two--bf58f1117269b94b9b7b64e7.md) | 170 | `result-track:bf58f1117269b94b9b7b64e77015ffbda8fd711bf27d5ee3bc98aff25d2be3c0` |
| 21 | `theorem` | [length_simple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-simple--2787117ec7dd30609c419b6c.md) | 175 | `result-track:2787117ec7dd30609c419b6cf34d5b2ff951de6824b0f62d0a377c212d0e1bbd` |
| 22 | `theorem` | [length_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-eq-one-iff--a0fd69e4f50f5acb9559373d.md) | 185 | `result-track:a0fd69e4f50f5acb9559373d81666c17107c95d462a6a6b9492866fa8272bb4c` |
| 23 | `theorem` | [length_mul_simple_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-mul-simple-ne--cc98270a93d69804202bc7a8.md) | 194 | `result-track:cc98270a93d69804202bc7a8c0bfc369b15f79ee7c66842e66159b4462f57a4f` |
| 24 | `theorem` | [length_simple_mul_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-simple-mul-ne--04cfb2fb3e1ac6022b832b29.md) | 200 | `result-track:04cfb2fb3e1ac6022b832b29a79e877f192dc8d7c3c5089536e794e5a0c5d071` |
| 25 | `theorem` | [length_mul_simple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-mul-simple--752e4636d77b95e64bef4af4.md) | 204 | `result-track:752e4636d77b95e64bef4af42a7b9b2b2c81c5379d047652d7f6cef175a777f9` |
| 26 | `theorem` | [length_simple_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/length-simple-mul--84b62356c884735b6d11ff92.md) | 211 | `result-track:84b62356c884735b6d11ff9229db98c6cbfb88a0f531393f77e5750bf989acba` |
| 27 | `theorem` | [isReduced_reverse_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isreduced-reverse-iff--03071ba50e778c816cb6f8b4.md) | 218 | `result-track:03071ba50e778c816cb6f8b4e689a2a2f97f1aa0702714868b05baa3fa9bf57c` |
| 28 | `theorem` | [IsReduced.reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isreduced-reverse--55ffa7be62e6c3753f7bdeab.md) | 221 | `result-track:55ffa7be62e6c3753f7bdeab6f2346c6e4a53919d38bbfc4ee6c34c13ec508da` |
| 29 | `theorem` | [isReduced_take_and_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isreduced-take-and-drop--bf5f989c7e4eb2105cb9a9ca.md) | 226 | `result-track:bf5f989c7e4eb2105cb9a9ca7b63d70c5e2605a07951eff50058b12dadad58ce` |
| 30 | `theorem` | [IsReduced.take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isreduced-take--7a1df03459c24ecd75c39b08.md) | 239 | `result-track:7a1df03459c24ecd75c39b08bdf90e924e06e0e884a6504647152045d5f8ca47` |
| 31 | `theorem` | [IsReduced.drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isreduced-drop--9ff5036c679a2c7709055ae4.md) | 243 | `result-track:9ff5036c679a2c7709055ae401fb1263f44a79256d3020ffda00f4c85effd7af` |
| 32 | `theorem` | [not_isReduced_alternatingWord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/not-isreduced-alternatingword--1b5deedbb606e9b85132d864.md) | 247 | `result-track:1b5deedbb606e9b85132d8642fb940c8603d6583b0910c9f290b6a16bae253fe` |
| 33 | `def` | [IsLeftDescent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isleftdescent--798b86b2e4d3c9e72b3c8bcd.md) | 274 | `declaration-track:798b86b2e4d3c9e72b3c8bcdbbe781eff9a855062a68a12ad04220c86fc0430f` |
| 34 | `def` | [IsRightDescent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isrightdescent--afa4a4077ecacbed06e4630c.md) | 277 | `declaration-track:afa4a4077ecacbed06e4630cd477259ac76283b49b481c5cf1b9e9ccb806990f` |
| 35 | `theorem` | [not_isLeftDescent_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/not-isleftdescent-one--89f9f4209c62686fa96d0f67.md) | 279 | `result-track:89f9f4209c62686fa96d0f67742d2071bb20f994c2c240b1449775b16735b56b` |
| 36 | `theorem` | [not_isRightDescent_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/not-isrightdescent-one--1e968fbd02f3164c2e7dba57.md) | 281 | `result-track:1e968fbd02f3164c2e7dba570824801e48e118e50536dae4b2e1f7fd1d62518b` |
| 37 | `theorem` | [isLeftDescent_inv_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isleftdescent-inv-iff--df02bc979d2e3eee8235f81a.md) | 283 | `result-track:df02bc979d2e3eee8235f81a4410f978217a39d7c1238ab7a610726baa5dc843` |
| 38 | `theorem` | [isRightDescent_inv_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isrightdescent-inv-iff--d99119911e9e0c3d1d5c5dbd.md) | 289 | `result-track:d99119911e9e0c3d1d5c5dbd96062fdd9838d4dd07453791a4b1e4e37f982199` |
| 39 | `theorem` | [exists_leftDescent_of_ne_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/exists-leftdescent-of-ne-one--8366fea1bcb65b01e8060109.md) | 293 | `result-track:8366fea1bcb65b01e8060109f2800872ecab7f0cc3dfed0cb66d477554b18cc8` |
| 40 | `theorem` | [exists_rightDescent_of_ne_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/exists-rightdescent-of-ne-one--962df901f42e28daf10e9052.md) | 303 | `result-track:962df901f42e28daf10e90520c330deac3089696a2057e154eda78d665f6f534` |
| 41 | `theorem` | [isLeftDescent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isleftdescent-iff--bbfed33c4f003bbd1c5dee92.md) | 308 | `result-track:bbfed33c4f003bbd1c5dee928303ad93e511defa4c22b180dba896fefc3ac99a` |
| 42 | `theorem` | [not_isLeftDescent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/not-isleftdescent-iff--c35de6a6773de30683f67604.md) | 316 | `result-track:c35de6a6773de30683f67604b25896690d21da036d531660533191bba1dc2e90` |
| 43 | `theorem` | [isRightDescent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isrightdescent-iff--4f8db56343489894e5e5dab3.md) | 324 | `result-track:4f8db56343489894e5e5dab3261c4eb0923d2f1997a478203c0de84cf5e6855a` |
| 44 | `theorem` | [not_isRightDescent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/not-isrightdescent-iff--1550af3d45decfb6c443202e.md) | 332 | `result-track:1550af3d45decfb6c443202e24e844b34aae74950676966cecf1fc52d399511f` |
| 45 | `theorem` | [isLeftDescent_iff_not_isLeftDescent_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isleftdescent-iff-not-isleftdescent-mul--5dd4cff36af85717c6d1594f.md) | 340 | `result-track:5dd4cff36af85717c6d1594f8c2b876f1ae6d9a53975572f467d287b759dd867` |
| 46 | `theorem` | [isRightDescent_iff_not_isRightDescent_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant8b3f786b8d73754a9fa4a627b28df35209cb5a3c319e84f4da6533064f9e4aba.lean/declarations/isrightdescent-iff-not-isrightdescent-mul--437a44824636f3b6dc365d1c.md) | 345 | `result-track:437a44824636f3b6dc365d1c96805b3f2cc57b78013405dd0b3620f047e617a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
