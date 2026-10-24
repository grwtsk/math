# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da04b4098844c4ad93dd1a829c7bcb7e11fad924",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da04b4098844c4ad93dd1a829c7bcb7e11fad924`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorAlgebra.ToTensorPower` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [induction_lon](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/induction-lon--0dc8a271590619c7770f9bff.md) | 58 | `result-track:0dc8a271590619c7770f9bff50ec79593442b8c3d11c9ca7c8763b2a9fb27ad2` |
| 2 | `def` | [algEquivQuotAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/algequivquotalgequiv--efd9fdb7f9f309ee892dedf0.md) | 80 | `declaration-track:efd9fdb7f9f309ee892dedf0bb5c5a35d4f4c7ab4edec9e94e809666eb5631fc` |
| 3 | `def` | [equivQuotEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/equivquotequiv--d6ad7a58baae6e58c81f3da5.md) | 102 | `declaration-track:d6ad7a58baae6e58c81f3da59ea42b55c00746e53d0a8efeaf12373b84293ff4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/instance--aede3e96196a3dd4017ed30a.md) | 122 | `declaration-track:aede3e96196a3dd4017ed30a62bd01d63e8155b5f3f3132a8ebcb39f78c07943` |
| 5 | `abbrev` | [FreeTensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/freetensoralgebra--57f2a078653aaf4fdf5acb23.md) | 126 | `declaration-track:57f2a078653aaf4fdf5acb239f3d18c5decaa0bbbe64dec85c9a422c913bd23d` |
| 6 | `abbrev` | [PowerAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/poweralgebra--87f48d22f0889ee17cc55608.md) | 130 | `declaration-track:87f48d22f0889ee17cc556082f8f3210a8714935c2654226765d8ae455bfd285` |
| 7 | `def` | [powerAlgebraEquivFreeTensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/poweralgebraequivfreetensoralgebra--d18d0328f056cdfc3614cb7d.md) | 134 | `declaration-track:d18d0328f056cdfc3614cb7d18653de1e516ba8fb0a890d409ce5e8b277e0713` |
| 8 | `inductive` | [rel](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/rel--d65f6bbfb4027530547ddafd.md) | 143 | `declaration-track:d65f6bbfb4027530547ddafd652cae4042878caf6aceff49f8d827a1c831c33c` |
| 9 | `def` | [rel'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/rel--bb967c3fe369eef4432c856c.md) | 154 | `declaration-track:bb967c3fe369eef4432c856c7c6a7cea5ac5f6ddbf7426311a4b640c27f442cf` |
| 10 | `theorem` | [rel_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/rel-id--eed4ff0aa55dbeca591fb252.md) | 156 | `result-track:eed4ff0aa55dbeca591fb2529f434cafe2ef70826d8e181cf38fc8fe58d5507b` |
| 11 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.Rel.Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.LinearAlgebra.FreeProduct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/root-grwtsk-algebra-linearalgebra-rel-variant362a1f5d2ca629d88fe0cf74b52--55c064e734e02021e07b6ba7.md) | 161 | `declaration-track:55c064e734e02021e07b6ba7bceb605b97b654981b93d1b64f9bc4aa0f25b609` |
| 12 | `def` | [asPowers](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/aspowers--65c1c1cd4ed8740be3d6b5ed.md) | 165 | `declaration-track:65c1c1cd4ed8740be3d6b5ed2c45098def1bffb80ea1d1fb3ae4b33afbf9766e` |
| 13 | `def` | [asPowersEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/aspowersequiv--92e37003528e5e13dd3f2341.md) | 173 | `declaration-track:92e37003528e5e13dd3f2341c0308af73c22d091e17acb5e0f4258b848c53424` |
| 14 | `instance` | [instSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/instsemiring--c9d524f871542005fe6ee1f5.md) | 185 | `declaration-track:c9d524f871542005fe6ee1f50b126957d870caf0297056254ff5083959ea4097` |
| 15 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/instalgebra--4483c05df73e98ed9755c01e.md) | 186 | `declaration-track:4483c05df73e98ed9755c01e55f2e514bd21a91c2d9f27b58666d9b74e9fc52d` |
| 16 | `abbrev` | [mkAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/mkalghom--6727d3e70be885d1c968a396.md) | 190 | `declaration-track:6727d3e70be885d1c968a396853bff04734b50d5c24117457962ba11f2503f70` |
| 17 | `abbrev` | [ι'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/anonymous--456b27d2fbf1fd55a2ff734a.md) | 194 | `declaration-track:456b27d2fbf1fd55a2ff734a50d21136080331561d21913e372e5a4344240f21` |
| 18 | `theorem` | [ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/apply--b6907dd8b23d7bd16a2c993e.md) | 197 | `result-track:b6907dd8b23d7bd16a2c993e147082df0881318ba3f7982c626a99b6eed32ec1` |
| 19 | `theorem` | [identify_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/identify-one--5011d857ba977250b1c0cfec.md) | 202 | `result-track:5011d857ba977250b1c0cfec9659cd732bba6c3209bdc615ffc08a7508f7c90f` |
| 20 | `theorem` | [mul_injections](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/mul-injections--9373a4607e8469f8e33ceb18.md) | 208 | `result-track:9373a4607e8469f8e33ceb187e7798f9a8e7800437251902ed12258b69b2283c` |
| 21 | `abbrev` | [lof](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/lof--190cae6d72ab9a2dc35504c1.md) | 216 | `declaration-track:190cae6d72ab9a2dc35504c17f3abeaaf47fa9aca61f34e72bf0315444f793a7` |
| 22 | `theorem` | [lof_map_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/lof-map-one--bfde2f40476713202999f008.md) | 220 | `result-track:bfde2f40476713202999f00803e58a2d5919c287cb13e3bfdead29e4ba7eb159` |
| 23 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/lift--7e12f567b0597c7aad95ccd8.md) | 235 | `declaration-track:7e12f567b0597c7aad95ccd815d3b5e9561445630c15a2347ca114397f5e72e2` |
| 24 | `theorem` | [lift_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/lift-comp--db218d70076c27a6f9956b86.md) | 256 | `result-track:db218d70076c27a6f9956b86b0746928f50befdfb0b7dd4488411f785442af45` |
| 25 | `theorem` | [lift_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/lift-algebramap--7a2baf37b987e253b6523d6f.md) | 260 | `result-track:7a2baf37b987e253b6523d6f7b390bb0018bb4858e70b46f239685ddf3cc8edf` |
| 26 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/declarations/lift-unique--a90e29265ea01e76cac8b247.md) | 263 | `result-track:a90e29265ea01e76cac8b247d05f3955d01c65ee42d034e40add162edf533ee6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
