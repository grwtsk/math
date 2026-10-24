# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BoundaryRieszLaplace.Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4627b51cad9e5e3548397b71f4bdcc95a69add45",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4627b51cad9e5e3548397b71f4bdcc95a69add45`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.BoundaryRieszKernel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryProfileLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundaryprofilelaplace--3f7cfbba8f3b4327cc6d0ed1.md) | 34 | `declaration-track:3f7cfbba8f3b4327cc6d0ed11660633b8294e1b1ac58284cf4dc42aa75e008bc` |
| 2 | `def` | [boundaryExtensionLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundaryextensionlaplace--4ca948b6e021381219c6f842.md) | 38 | `declaration-track:4ca948b6e021381219c6f842c832f50cf2199c79cd9d97e17bd6c774d1ea0e6d` |
| 3 | `theorem` | [boundary_profile_laplace_integrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-profile-laplace-integrand--4afcdf9d53a58558b3801f44.md) | 42 | `result-track:4afcdf9d53a58558b3801f44991a90ff0a156c5fdb3e8db54e6049f28f401f6e` |
| 4 | `theorem` | [boundary_profile_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-profile-laplace-integrable--0346859dee88961afa45d547.md) | 52 | `result-track:0346859dee88961afa45d54758d17bf77a4c25f0953cd035dcb0400033c6267d` |
| 5 | `theorem` | [boundary_profile_laplace_closed_form](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-profile-laplace-closed-form--7035bb92d6811fa58fc520f2.md) | 63 | `result-track:7035bb92d6811fa58fc520f24ffac468fc60dd1ace9bada6a0c9026267f02da8` |
| 6 | `theorem` | [boundary_profile_laplace_half_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-profile-laplace-half-zero--bf8b10d453eb6af480c6af23.md) | 80 | `result-track:bf8b10d453eb6af480c6af237eccaa5f68d9ec1f7629802655c78436152bd76a` |
| 7 | `def` | [rieszMonomialPacket](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/rieszmonomialpacket--312de7a19937aa77d154a15f.md) | 85 | `declaration-track:312de7a19937aa77d154a15f2b4ddba0345cce626a21115b0b0865c69dd19c79` |
| 8 | `theorem` | [riesz_monomial_packet_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/riesz-monomial-packet-integrable--81e481b843e6863757fac843.md) | 92 | `result-track:81e481b843e6863757fac843c17d7a1882d004d10eeefbfa4daeaabb6663d91f` |
| 9 | `theorem` | [riesz_monomial_packet_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/riesz-monomial-packet-integral--f90f85f16749a8e9913d78bf.md) | 99 | `result-track:f90f85f16749a8e9913d78bf0a709a68c32add9eedc0ef31efea95b131f6f0f1` |
| 10 | `theorem` | [boundary_extension_laplace_integrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-extension-laplace-integrand--ff40358ed64f5efdd3c1c2f9.md) | 136 | `result-track:ff40358ed64f5efdd3c1c2f94f99d2815505a9bb5a42b0c8f178c1aaba5b9bf1` |
| 11 | `theorem` | [boundary_extension_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-extension-laplace-integrable--ded87ec753651007ad8dde99.md) | 150 | `result-track:ded87ec753651007ad8dde99b48f699b9f6c6c5cac755eece28b117136c5ed7f` |
| 12 | `theorem` | [boundary_riesz_transform_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-riesz-transform-eq-integral--578227d0c0429e50feefbd4f.md) | 162 | `result-track:578227d0c0429e50feefbd4f14aabf8a49997b9c803e7ef222087f96eb7f4e37` |
| 13 | `theorem` | [boundary_extension_laplace_half_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-extension-laplace-half-zero--320cc9509fbc5549e8a85e2c.md) | 177 | `result-track:320cc9509fbc5549e8a85e2ca669f638102bdf684a9c1049e77174caf0f8139d` |
| 14 | `theorem` | [boundary_riesz_base_laplace_integrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-riesz-base-laplace-integrand--38e6f1138522063c4cd9cc5f.md) | 183 | `result-track:38e6f1138522063c4cd9cc5f5da518720742ae21792e44979dbc07e72b768200` |
| 15 | `theorem` | [boundary_riesz_base_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-riesz-base-laplace-integrable--5778001567f8506c4677e936.md) | 195 | `result-track:5778001567f8506c4677e9364342b4225cdfd751024b5ca59e4b2afccd98de71` |
| 16 | `theorem` | [boundary_riesz_base_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-riesz-base-laplace-integral--dc42b597e557f21f4e64ff43.md) | 204 | `result-track:dc42b597e557f21f4e64ff43659bc966f910f7a6fdfc99affa333bb52059fcf4` |
| 17 | `theorem` | [boundary_extension_laplace_eq_pole_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-extension-laplace-eq-pole-factor--c6c63a876c41d995623b5fdc.md) | 222 | `result-track:c6c63a876c41d995623b5fdc37f49ee044afd5513255db8e2624e316754b1bee` |
| 18 | `theorem` | [boundary_riesz_transform_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-riesz-transform-tendsto--6dbf95ba154c715a50eae919.md) | 231 | `result-track:6dbf95ba154c715a50eae9194d8cc15026cb316774cc3b90bf7648d68e463c3a` |
| 19 | `theorem` | [boundary_extension_laplace_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-extension-laplace-tendsto--69d37b334392ed42f3d08b33.md) | 273 | `result-track:69d37b334392ed42f3d08b33cac0542dd8bdce9a7bbcde2d14d32c5844618cab` |
| 20 | `def` | [profilePoleFactor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/profilepolefactor--885a397fb1617377e3a93151.md) | 281 | `declaration-track:885a397fb1617377e3a93151c081df236509ff539b6ec98edc3a7fc495c3a279` |
| 21 | `theorem` | [profile_laplace_eventually_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/profile-laplace-eventually-factor--da1dcc4c5ff41b6b2063048f.md) | 285 | `result-track:da1dcc4c5ff41b6b2063048f6b7a65aa891ff76de441d7d164b60fb8919acf0c` |
| 22 | `theorem` | [boundary_profile_laplace_first_derivative_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-profile-laplace-first-derivative-zero--b8d4417145886099c33c04ec.md) | 297 | `result-track:b8d4417145886099c33c04ec4fa347b68d791a72ad375b0719afef4fd35a75e6` |
| 23 | `theorem` | [boundary_profile_laplace_second_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-profile-laplace-second-derivative--5f2384a4b2835d8f6b0d7fc0.md) | 309 | `result-track:5f2384a4b2835d8f6b0d7fc09f81fddc8cea1fb2063d7a1e93e1aecac90c5204` |
| 24 | `theorem` | [boundary_profile_laplace_second_derivative_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-profile-laplace-second-derivative-ne-zero--d1f8af8e0369853d8c62394f.md) | 326 | `result-track:d1f8af8e0369853d8c62394fb0d554eab7778454294a0a943b2f74aefa0bb0c0` |
| 25 | `theorem` | [boundary_profile_laplace_moment_consistency](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/declarations/boundary-profile-laplace-moment-consistency--45ae2fbab6c6fdc1836ac2ab.md) | 332 | `result-track:45ae2fbab6c6fdc1836ac2ab0daafb1f6074a834ca4ed465215633832639da58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
