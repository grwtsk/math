# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ab0f078524c3e247ce79b91ed5fa91805339f2e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ab0f078524c3e247ce79b91ed5fa91805339f2e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Multiset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm--adec123539f3d3ab6c8f1e8c.md) | 54 | `declaration-track:adec123539f3d3ab6c8f1e8cc694f351e72406c5f3a9d65fe49283d02e357f37` |
| 2 | `theorem` | [lcm_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm-def--40c6b9fc34833d63e1e9494b.md) | 60 | `result-track:40c6b9fc34833d63e1e9494bdac82b9293d0618e75a0ea672b0a56f6c615710c` |
| 3 | `theorem` | [lcm_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm-empty--cda338aa03cfee1d51373eb1.md) | 65 | `result-track:cda338aa03cfee1d51373eb1922bf5c05ba823b3fe5e1cdfb0d5ff758b7f1de5` |
| 4 | `theorem` | [lcm_dvd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm-dvd-iff--d2ba744e690fcb78f315680c.md) | 70 | `result-track:d2ba744e690fcb78f315680c7db53d866f95e1816348ffc1c08c6030595020fa` |
| 5 | `theorem` | [lcm_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm-dvd--480713c2d73a498528ee7caf.md) | 76 | `result-track:480713c2d73a498528ee7caf55569e955ba17bbc28c84ef0f72346240ac9efe2` |
| 6 | `theorem` | [dvd_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/dvd-lcm--07dcd41bd3199cfe00d6c205.md) | 80 | `result-track:07dcd41bd3199cfe00d6c205b06c1d90ff317ef5d617460d5a369a770a421be9` |
| 7 | `theorem` | [lcm_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm-insert--1d016753949da78189505b55.md) | 85 | `result-track:1d016753949da78189505b552ac45f9b39a7c1a0d0ef4e2bc31abae002e1bc12` |
| 8 | `theorem` | [lcm_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm-singleton--71aee9154377edc7aa8a9929.md) | 94 | `result-track:71aee9154377edc7aa8a9929643e98e24e8abb78fc67f63b15dc6c6fa560a7a1` |
| 9 | `theorem` | [normalize_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/normalize-lcm--b6899b492b532ed55b121378.md) | 100 | `result-track:b6899b492b532ed55b12137833be94522e017ee79b79469f6819239e8a748600` |
| 10 | `theorem` | [lcm_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm-union--38514fa69282122a4be7864f.md) | 103 | `result-track:38514fa69282122a4be7864f19bc1b944cbb2661ff79231103246df644dedaf9` |
| 11 | `theorem` | [lcm_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm-congr--9f58dcbbc705dab802362a2b.md) | 108 | `result-track:9f58dcbbc705dab802362a2bdf1aa29ada3d465dc9e179f0fcbc3d2284369911` |
| 12 | `theorem` | [lcm_mono_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm-mono-fun--97e498c502930348f621d068.md) | 114 | `result-track:97e498c502930348f621d06864537725e4b0c27231321bd15aa7eb72e2e11a59` |
| 13 | `theorem` | [lcm_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm-mono--bff2de5523319af1badb839e.md) | 118 | `result-track:bff2de5523319af1badb839e971aef3d232edac4553a5519291382bb956396dd` |
| 14 | `theorem` | [lcm_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm-image--f7aa79676ac6cdcbd96bf3cd.md) | 122 | `result-track:f7aa79676ac6cdcbd96bf3cdb776e477753e6d11aed0ba5fdacb58ff288695a4` |
| 15 | `theorem` | [lcm_eq_lcm_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm-eq-lcm-image--9a3f88f63789c1ab824afd0c.md) | 126 | `result-track:9a3f88f63789c1ab824afd0c95afaa7d8fb0ec38824476d6fabfdaec0e2dac68` |
| 16 | `theorem` | [lcm_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/lcm-eq-zero-iff--1a42aeada4eb63396b0b6376.md) | 130 | `result-track:1a42aeada4eb63396b0b6376dc9dd9245b3315018b47455479c63afff0ad2940` |
| 17 | `def` | [gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd--20f2ab6bd1f592537a4f9ae5.md) | 143 | `declaration-track:20f2ab6bd1f592537a4f9ae5e8e35da88038a0918813ee0e7a9f65a6c33b9b82` |
| 18 | `theorem` | [gcd_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-def--9eb8475259de979f52bccac8.md) | 149 | `result-track:9eb8475259de979f52bccac80faa93f410382aa172f70519cbfb2d67102516fa` |
| 19 | `theorem` | [gcd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-empty--25210a392a016d201e9a7650.md) | 154 | `result-track:25210a392a016d201e9a76504c32bddfd398e57a3df323d09a42aa3c9b34be5b` |
| 20 | `theorem` | [dvd_gcd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/dvd-gcd-iff--43c69c8fd1ca4783b28b73e9.md) | 158 | `result-track:43c69c8fd1ca4783b28b73e95c018a8b40a36d8b05dd514a9346abb4c1c889f5` |
| 21 | `theorem` | [gcd_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-dvd--d2f9c35cec1fd723b1a13093.md) | 164 | `result-track:d2f9c35cec1fd723b1a13093cac65090f8374c68863d849f5eefcdf0b9296ab2` |
| 22 | `theorem` | [dvd_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/dvd-gcd--f30763e77ba3f42ccfe0401b.md) | 168 | `result-track:f30763e77ba3f42ccfe0401b49f50707cef6d4c024963443b41ff9bb05117334` |
| 23 | `theorem` | [gcd_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-insert--dc8f7b0fa71aa904d31b90a5.md) | 173 | `result-track:dc8f7b0fa71aa904d31b90a588b37003eb4e4dbd884b6e98f6ea0905bb8abe17` |
| 24 | `theorem` | [gcd_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-singleton--f01899aed0a3c7366667c6ac.md) | 182 | `result-track:f01899aed0a3c7366667c6acc1861f826cea35e2f765d9e9dcc82f60fed5aeac` |
| 25 | `theorem` | [normalize_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/normalize-gcd--d86063c3ca12767080913eb1.md) | 188 | `result-track:d86063c3ca12767080913eb10851c14eb7521703503e74bbf48cfc96be84bfd0` |
| 26 | `theorem` | [gcd_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-union--f0495bbc91c779400d9b61a1.md) | 191 | `result-track:f0495bbc91c779400d9b61a120c5047de8475725778662b40215546cbdc671a1` |
| 27 | `theorem` | [gcd_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-congr--73fdc4561aa83df1e682e096.md) | 196 | `result-track:73fdc4561aa83df1e682e09699f54fd6119cd0ada2dd7ae38dcfec646d86ac71` |
| 28 | `theorem` | [gcd_mono_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-mono-fun--fb6b7fc55d4a58e65e1de319.md) | 202 | `result-track:fb6b7fc55d4a58e65e1de3190e9bcf6142f7b50091344903c6aa1094789caf59` |
| 29 | `theorem` | [gcd_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-mono--a7748bcb55ada16921875135.md) | 206 | `result-track:a7748bcb55ada16921875135433e26293387bada015437efae8f41bf152f3211` |
| 30 | `theorem` | [gcd_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-image--d04546fcae514a2b3b46c45e.md) | 210 | `result-track:d04546fcae514a2b3b46c45e2fd348a6b0d45c9979e2fd52a99f8d2e1b9eb2ac` |
| 31 | `theorem` | [gcd_eq_gcd_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-eq-gcd-image--4711181ec7ec1130076c94a4.md) | 214 | `result-track:4711181ec7ec1130076c94a483811ff47a1ec3521efc7681d02702c4508b3ebb` |
| 32 | `theorem` | [gcd_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-eq-zero-iff--9ac55c0ca57fc271caeeb4a2.md) | 218 | `result-track:9ac55c0ca57fc271caeeb4a2795c3d968d8897de4c5f2e6cecc191fd25c5ee9e` |
| 33 | `theorem` | [gcd_eq_gcd_filter_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-eq-gcd-filter-ne-zero--504902984a6e0e32e1779d28.md) | 234 | `result-track:504902984a6e0e32e1779d285b2dabfb93e3fc68136e539635d25cfa5258c994` |
| 34 | `theorem` | [gcd_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-mul-left--7aedff3966d4e13be0595105.md) | 250 | `result-track:7aedff3966d4e13be0595105845fb1f4dd5e09c4b01ac09b1700b4fb8f0ebf9d` |
| 35 | `theorem` | [gcd_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-mul-right--925c668ed18f25d7bfb779c9.md) | 259 | `result-track:925c668ed18f25d7bfb779c9abb8578d5b602310e368be2f7d96dd05455067a1` |
| 36 | `theorem` | [extract_gcd'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/extract-gcd--7f961d49c7cd2cb4a939265e.md) | 268 | `result-track:7f961d49c7cd2cb4a939265ed485e5303f8b5c45e2b6b89f4883a1c2d20c4bda` |
| 37 | `theorem` | [extract_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/extract-gcd--d2beebc18763106c027256a0.md) | 276 | `result-track:d2beebc18763106c027256a098b45192e2d7761f65611e8937e24dae6339658a` |
| 38 | `theorem` | [gcd_eq_of_dvd_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdef187228dabbc0d59103fe7dfcd5c1a13f91a1c0623419936e32f2ef923ab08.lean/declarations/gcd-eq-of-dvd-sub--bf8aade1ecdb512d8d47cf20.md) | 300 | `result-track:bf8aade1ecdb512d8d47cf20ac015116c6840d108074c60725c167e901d6b877` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
