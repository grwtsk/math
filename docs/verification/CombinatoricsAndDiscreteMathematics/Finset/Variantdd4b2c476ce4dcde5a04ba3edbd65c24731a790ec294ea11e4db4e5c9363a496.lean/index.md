# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9aa56561e121caaaa684b69c546fe3c0709a2fb",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9aa56561e121caaaa684b69c546fe3c0709a2fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Multiset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm--908a73925973e8895342646c.md) | 46 | `declaration-track:908a73925973e8895342646caa4a5debfedcd6cae1861be072b5983dba3178f7` |
| 2 | `theorem` | [lcm_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm-def--674fbdfc3b8eb752f09aa43e.md) | 52 | `result-track:674fbdfc3b8eb752f09aa43ebac66b61d55d66dc17a5bec529f97f2d0fa2a82d` |
| 3 | `theorem` | [lcm_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm-empty--f61256f0a958e82c5b6f44e1.md) | 57 | `result-track:f61256f0a958e82c5b6f44e186b390d2aabc91cea95ae9ef195af6b5be022684` |
| 4 | `theorem` | [lcm_dvd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm-dvd-iff--32d45e9080556ff493a1bf53.md) | 62 | `result-track:32d45e9080556ff493a1bf5349e92c9c7ae09fb49d036584a268a54c555c6542` |
| 5 | `theorem` | [lcm_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm-dvd--963c1faefc7315268e20593b.md) | 68 | `result-track:963c1faefc7315268e20593b86cff5027a87b7791708a22922e38d207ec118ef` |
| 6 | `theorem` | [dvd_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/dvd-lcm--327785a8e799cb4184d7f8a0.md) | 72 | `result-track:327785a8e799cb4184d7f8a093c8a0e3f61a716dcf43614e0f4eec2118cc1d77` |
| 7 | `theorem` | [lcm_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm-insert--f8f47c94e9a44517955a6494.md) | 77 | `result-track:f8f47c94e9a44517955a6494ba32b642bfab1ac1162844a96bf11fbd79c8cf6a` |
| 8 | `theorem` | [lcm_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm-singleton--d1213dd0aef556bfeec9c941.md) | 86 | `result-track:d1213dd0aef556bfeec9c9418d85da68f7de37158204e1ee69ba781f28537188` |
| 9 | `theorem` | [normalize_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/normalize-lcm--e1ca5f4038bdfcdd42dc9111.md) | 92 | `result-track:e1ca5f4038bdfcdd42dc911117ad7392bec33efcd0952d5728a84e19509a6345` |
| 10 | `theorem` | [lcm_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm-union--3e988f75b7a6cf1f1be6a834.md) | 95 | `result-track:3e988f75b7a6cf1f1be6a834925412c189a559d5b6ada27bc6adb033b8b8d40d` |
| 11 | `theorem` | [lcm_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm-congr--773748095e02df522a1e38e7.md) | 100 | `result-track:773748095e02df522a1e38e72fd8467d268634e7e7a1a36c764acbe6db7e4b9a` |
| 12 | `theorem` | [lcm_mono_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm-mono-fun--b752f83ab0801e5ee430c4da.md) | 106 | `result-track:b752f83ab0801e5ee430c4dafc0d9d0a9b0fbb0785fe8c3fe95b8b40f81fea06` |
| 13 | `theorem` | [lcm_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm-mono--faa38498633c68d2d95e3052.md) | 110 | `result-track:faa38498633c68d2d95e3052344e5ed87af66b268fb7f86bdb37975f3158d6f9` |
| 14 | `theorem` | [lcm_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm-image--add8f3e5c3a83ec820ac53d3.md) | 114 | `result-track:add8f3e5c3a83ec820ac53d325143aef0650bc0c2da6baed63af3c3348663068` |
| 15 | `theorem` | [lcm_eq_lcm_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm-eq-lcm-image--4a0f74f86aef005574667b82.md) | 118 | `result-track:4a0f74f86aef005574667b821cf5615134ff98ffccd7800805a2093565b88ffa` |
| 16 | `theorem` | [lcm_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/lcm-eq-zero-iff--5d2dbaee6f70f02cec6ad8b6.md) | 122 | `result-track:5d2dbaee6f70f02cec6ad8b634d9910d5b7bcf69b705f634d137658baa47dcb0` |
| 17 | `def` | [gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd--7af378fc9c95c9232b8335f1.md) | 135 | `declaration-track:7af378fc9c95c9232b8335f1a86e94d7952b09e25a738f9c3c44594f7622ef12` |
| 18 | `theorem` | [gcd_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-def--af90f142e8fc59e005045a57.md) | 141 | `result-track:af90f142e8fc59e005045a5712729c1e0eb1d6f0a1ac7def1f8b6b947888a487` |
| 19 | `theorem` | [gcd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-empty--2dfc1be0c6ca4638ada213de.md) | 146 | `result-track:2dfc1be0c6ca4638ada213dedf214da351c6f4308f5a0be394e09f856e6f165c` |
| 20 | `theorem` | [dvd_gcd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/dvd-gcd-iff--5ddc83fd96a5e7a05433771d.md) | 150 | `result-track:5ddc83fd96a5e7a05433771d1f743c97085a58525cc22e4063a36ff1e09bbbee` |
| 21 | `theorem` | [gcd_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-dvd--425d6f2572f17fcf6054431d.md) | 156 | `result-track:425d6f2572f17fcf6054431d1ed152a0834a47484892f1c85a549ae4dbf7309a` |
| 22 | `theorem` | [dvd_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/dvd-gcd--403159a27d0772cc127ba5b2.md) | 160 | `result-track:403159a27d0772cc127ba5b261301c883e6f3e11f92ebf4442563b4b5d9d83f8` |
| 23 | `theorem` | [gcd_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-insert--f31a15b1cf01413f8d626cff.md) | 165 | `result-track:f31a15b1cf01413f8d626cff0f09ba052f63d773e627bddc64bd41f0d257df23` |
| 24 | `theorem` | [gcd_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-singleton--4a4a1f5ac58c2d3e03b8fd27.md) | 174 | `result-track:4a4a1f5ac58c2d3e03b8fd2734786ce37b207b03b966be2c9d7d11b9fd623ced` |
| 25 | `theorem` | [normalize_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/normalize-gcd--ee9a05154cdac62ce9a40d01.md) | 180 | `result-track:ee9a05154cdac62ce9a40d0136e395a11aef27605db0be9642820b2875add711` |
| 26 | `theorem` | [gcd_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-union--78a75bacb4291b4dd95308be.md) | 183 | `result-track:78a75bacb4291b4dd95308bea1924fb84c3ed5d016e0b6fdd3c7c4456cf7d90f` |
| 27 | `theorem` | [gcd_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-congr--ed9e1112208de2dfbea871b2.md) | 188 | `result-track:ed9e1112208de2dfbea871b2908caef3e57c738a8ca8969b2e4fc7768d6b555e` |
| 28 | `theorem` | [gcd_mono_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-mono-fun--a36ab8e13ed7ee45daac4af9.md) | 194 | `result-track:a36ab8e13ed7ee45daac4af94399f96fcdab80ef4271adc8cf2ac04bfeadde75` |
| 29 | `theorem` | [gcd_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-mono--03c559889b0495848b6df3e5.md) | 198 | `result-track:03c559889b0495848b6df3e5b2180497eca23cd1fd7db8372a14ab28b9d27331` |
| 30 | `theorem` | [gcd_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-image--c2b11ae5c19a7e6be55800d2.md) | 202 | `result-track:c2b11ae5c19a7e6be55800d2f095f68252cdb9226d7cff2783aec13ffcf1b30d` |
| 31 | `theorem` | [gcd_eq_gcd_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-eq-gcd-image--1b30c2689710bf168bba0946.md) | 206 | `result-track:1b30c2689710bf168bba0946d4a6ac79d15112c694386c51148c8cd9f8b9390a` |
| 32 | `theorem` | [gcd_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-eq-zero-iff--07bddc681153bb67faa816ba.md) | 210 | `result-track:07bddc681153bb67faa816ba5cb28a7d8a37b394dbf4163a5a3b83068f4b8a68` |
| 33 | `theorem` | [gcd_eq_gcd_filter_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-eq-gcd-filter-ne-zero--16c5741286ec9c86214766c0.md) | 226 | `result-track:16c5741286ec9c86214766c01edd3568c0ba27463802504ec200c9e07c0d1b54` |
| 34 | `theorem` | [gcd_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-mul-left--9be42ff14adb1bf8de1a404d.md) | 242 | `result-track:9be42ff14adb1bf8de1a404dba4b23926ca67f5367586ef88b752d0a177dc134` |
| 35 | `theorem` | [gcd_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-mul-right--013c57587a69e5a92053ae99.md) | 251 | `result-track:013c57587a69e5a92053ae994d8ed212d810a229b6334d1213d9e1839ea33735` |
| 36 | `theorem` | [extract_gcd'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/extract-gcd--0042cd4ffe369aea7874796a.md) | 260 | `result-track:0042cd4ffe369aea7874796a46059723e8908c7a4b570bc1cc9fea5bc4e7b53f` |
| 37 | `theorem` | [extract_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/extract-gcd--47c93c993faf8e9dad846e7e.md) | 268 | `result-track:47c93c993faf8e9dad846e7e5e0ff6a34341b1e048eac064b0bbc724ffeddc3e` |
| 38 | `theorem` | [gcd_eq_of_dvd_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/declarations/gcd-eq-of-dvd-sub--c1e242affb3c21278abf1657.md) | 292 | `result-track:c1e242affb3c21278abf1657542fc3c490643409f7ec157a8eff1bcc4faefb48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
