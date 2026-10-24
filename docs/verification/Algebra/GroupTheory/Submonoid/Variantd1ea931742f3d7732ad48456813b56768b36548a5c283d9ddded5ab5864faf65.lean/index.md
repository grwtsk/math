# Verification target: GRWTSK.Algebra.GroupTheory.Submonoid.Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ed115176b334e3f03a238e4d3bd6594faf748c0",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ed115176b334e3f03a238e4d3bd6594faf748c0`.

Source path: `GRWTSK/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Submonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Deprecated.Group` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/isaddsubmonoid--ff682c355c81e9695388e96f.md) | 51 | `declaration-track:ff682c355c81e9695388e96fadbb68619bff2418312680b074780d3651477c69` |
| 2 | `structure` | [IsSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/issubmonoid--82720b1e98e88c8ad5357f6f.md) | 62 | `declaration-track:82720b1e98e88c8ad5357f6fa39c1bbb8408bf165d65b7073797e8798207d97e` |
| 3 | `theorem` | [Additive.isAddSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/additive-isaddsubmonoid--3c95eb38c1da141aa13298ba.md) | 69 | `result-track:3c95eb38c1da141aa13298ba201067174922754f3eb957f04451a92ac714dcb7` |
| 4 | `theorem` | [Additive.isAddSubmonoid_iff](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/additive-isaddsubmonoid-iff--0b901c6b552b0017a55b090b.md) | 74 | `result-track:0b901c6b552b0017a55b090b698c1a7fad39f072cb88a425f7a5c15c0165be0f` |
| 5 | `theorem` | [Multiplicative.isSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/multiplicative-issubmonoid--dc7928cbf9ab4e5597efd804.md) | 79 | `result-track:dc7928cbf9ab4e5597efd804c6102b3840c7d094352265e244619edb463c32b9` |
| 6 | `theorem` | [Multiplicative.isSubmonoid_iff](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/multiplicative-issubmonoid-iff--e144913232b4cc28180e448c.md) | 84 | `result-track:e144913232b4cc28180e448c842b5b49dde4316252d64a471cd5f118170195a3` |
| 7 | `theorem` | [IsSubmonoid.inter](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/issubmonoid-inter--89ade5e490d25759be2c74b7.md) | 92 | `result-track:89ade5e490d25759be2c74b7165d00d1e82e1474fc9f3f5a32592abf4d56605b` |
| 8 | `theorem` | [IsSubmonoid.iInter](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/issubmonoid-iinter--0f063bb3dfc14ff78502f7e8.md) | 103 | `result-track:0f063bb3dfc14ff78502f7e8447b7baf8000099729fe212a444a3cc21822bc8a` |
| 9 | `theorem` | [isSubmonoid_iUnion_of_directed](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/issubmonoid-iunion-of-directed--41d90b18c3efe94bb4c88f71.md) | 116 | `result-track:41d90b18c3efe94bb4c88f71ea63bb5b6a821e36400279a60806a9213be6eb8c` |
| 10 | `def` | [powers](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/powers--59cf0f9774605f4036110f02.md) | 135 | `declaration-track:59cf0f9774605f4036110f02105df5671d3e53ceb8d6b060c01522aea12bca0e` |
| 11 | `theorem` | [powers.one_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/powers-one-mem--764464b7b888e1b286a78493.md) | 142 | `result-track:764464b7b888e1b286a78493964d1f28ff14b736fbe3e015933a76a354eb4c88` |
| 12 | `theorem` | [powers.self_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/powers-self-mem--b820655d22759a38687a4aea.md) | 150 | `result-track:b820655d22759a38687a4aea09c93b949dc0021b3ade2f699b2cc2d5d76ce2f5` |
| 13 | `theorem` | [powers.mul_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/powers-mul-mem--eada722547fd24d252ff38d4.md) | 159 | `result-track:eada722547fd24d252ff38d45c27906d59d5462337309cafc2c1cdff8b7b0c96` |
| 14 | `theorem` | [powers.isSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/powers-issubmonoid--8b67f1ab8bb8e6b2531cc2dd.md) | 168 | `result-track:8b67f1ab8bb8e6b2531cc2dd480d7d31be1c1b8c5c8e11f9b13d26419bf19fe5` |
| 15 | `theorem` | [Univ.isSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/univ-issubmonoid--82872f88667ea35ccd3f6bef.md) | 176 | `result-track:82872f88667ea35ccd3f6beff4df867ddc5b663df72720e3ac782cbe3bbd8f1c` |
| 16 | `theorem` | [IsSubmonoid.preimage](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/issubmonoid-preimage--51094de621d3a145a61ae694.md) | 184 | `result-track:51094de621d3a145a61ae694d432019bdcf7e5198232f21805f56bfb49b8d858` |
| 17 | `theorem` | [IsSubmonoid.image](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/issubmonoid-image--8dbb6ace986c7f3b666d73bd.md) | 196 | `result-track:8dbb6ace986c7f3b666d73bd7427644f1d69b8aab1edcf23bd9dcde092fb2952` |
| 18 | `theorem` | [Range.isSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/range-issubmonoid--b1f64592b0a79af0be78fa38.md) | 206 | `result-track:b1f64592b0a79af0be78fa380b7a39b2f7de44254ca1df11c912c4855cee0e87` |
| 19 | `theorem` | [IsSubmonoid.pow_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/issubmonoid-pow-mem--d5809ba97dedbbacd10818af.md) | 216 | `result-track:d5809ba97dedbbacd10818aff93dffb8e5d3216b3552cfd66b96a99100045151` |
| 20 | `theorem` | [IsSubmonoid.power_subset](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/issubmonoid-power-subset--4bf4f0928b15738bc886f05a.md) | 229 | `result-track:4bf4f0928b15738bc886f05a4c07ea23ae73ea868fc0ccf3b40df9d4abafd1ee` |
| 21 | `theorem` | [list_prod_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/list-prod-mem--6703332f9aece3382345d88e.md) | 241 | `result-track:6703332f9aece3382345d88e82a64a64c4368706792c38efaffc34c275e93c06` |
| 22 | `theorem` | [multiset_prod_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/multiset-prod-mem--a9dd7740bedae97af9a579e0.md) | 255 | `result-track:a9dd7740bedae97af9a579e01a0a0fab4546d75c1b3d7894f2d8b0e8b76b9135` |
| 23 | `theorem` | [finset_prod_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/finset-prod-mem--e0683294a5509a54e6a08334.md) | 268 | `result-track:e0683294a5509a54e6a08334576ed29f4e8693a274ea3138b6ba33f59e0c080b` |
| 24 | `inductive` | [InClosure](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/inclosure--f894b546bce31a69b684d489.md) | 280 | `declaration-track:f894b546bce31a69b684d489bc2adae1870d4534ba46f79c9d5fd39ad64fabc6` |
| 25 | `inductive` | [InClosure](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/inclosure--d068672ea15c9920a4071daf.md) | 293 | `declaration-track:d068672ea15c9920a4071daf0aaf2bcc8aabfd188a62b3359a694b24ae5ca567` |
| 26 | `def` | [Closure](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/closure--1786fd93c99882d00f31111b.md) | 302 | `declaration-track:1786fd93c99882d00f31111bb47e867b9b797db2925abd86f7e53ad935afd3bd` |
| 27 | `theorem` | [closure.isSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/closure-issubmonoid--299f6f059bcb4b9578633d16.md) | 308 | `result-track:299f6f059bcb4b9578633d16cc0bae1957bc8150c9e7afd28ec033e47cc37fa8` |
| 28 | `theorem` | [subset_closure](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/subset-closure--173de314f76b36f6eea0fce3.md) | 317 | `result-track:173de314f76b36f6eea0fce347e551f963cd5abd423b0b886afe5411a5721ed6` |
| 29 | `theorem` | [closure_subset](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/closure-subset--0b790603dc7376efcbc74ee7.md) | 325 | `result-track:0b790603dc7376efcbc74ee7622ddc7687b208f2912f34b4cda1db2ddacb90fc` |
| 30 | `theorem` | [closure_mono](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/closure-mono--06e896d264d721c77c4756a1.md) | 335 | `result-track:06e896d264d721c77c4756a1ba920b0bdb2dd9d16993df3070c534ec7bf4e8a9` |
| 31 | `theorem` | [closure_singleton](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/closure-singleton--ee6628e62e4b159f6d692acf.md) | 345 | `result-track:ee6628e62e4b159f6d692acf7232fafc45e202e46a6f034f0f1cbada62082fe7` |
| 32 | `theorem` | [image_closure](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/image-closure--073fa6569aa028f2fd101697.md) | 358 | `result-track:073fa6569aa028f2fd101697d9143b9855a29e4a7c9a9ca0cf2021d015b18bd3` |
| 33 | `theorem` | [exists_list_of_mem_closure](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/exists-list-of-mem-closure--2d6048a618de454861f4f4cc.md) | 379 | `result-track:2d6048a618de454861f4f4cc897ec353345cd624f4e9b3eb43495283638ff0e4` |
| 34 | `theorem` | [mem_closure_union_iff](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/mem-closure-union-iff--d44b3f91f02671b4891815f7.md) | 400 | `result-track:d44b3f91f02671b4891815f7d1f3cdc3ab1d34fc14180f81e6a3098c304403c2` |
| 35 | `def` | [Submonoid.of](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/submonoid-of--b000734966253d758c05cdd0.md) | 429 | `declaration-track:b000734966253d758c05cdd02556ccc33f71b920d29cd4e2aaef4d03000ce479` |
| 36 | `theorem` | [Submonoid.isSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/declarations/submonoid-issubmonoid--3b4b3727566fb6b9f2156d89.md) | 435 | `result-track:3b4b3727566fb6b9f2156d8949abe5995f326bf81a1679ffae4aee219c6dd575` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
