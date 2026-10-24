# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Circle.Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bab2ff105264b016bce208fa40cde944fa592aae",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bab2ff105264b016bce208fa40cde944fa592aae`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Circle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [injective_arg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/injective-arg--2ff04fa07ed9057a6fd330da.md) | 34 | `result-track:2ff04fa07ed9057a6fd330da9531c049239a00ee482575f1283d6fb86217d3bc` |
| 2 | `theorem` | [arg_eq_arg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/arg-eq-arg--e8bb2de47833105c16f458b7.md) | 39 | `result-track:e8bb2de47833105c16f458b7ac5a08ddd0712d2bb54eb0b873f31d8a15cc9fe8` |
| 3 | `theorem` | [arg_expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/arg-expmapcircle--f06437ab435c19f1fe8c59c0.md) | 45 | `result-track:f06437ab435c19f1fe8c59c033385d0147c60939d5d95b9ed49f20861a0a32f4` |
| 4 | `theorem` | [expMapCircle_arg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/expmapcircle-arg--4c1e20672e9b8140462128bb.md) | 50 | `result-track:4c1e20672e9b8140462128bb3fbf711615bf9f2a6316279488621a59ffaf29a7` |
| 5 | `def` | [argLocalEquiv](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/arglocalequiv--f35334c57395ef33fd833671.md) | 59 | `declaration-track:f35334c57395ef33fd833671821a21ec036ca93910aa7d1db643ae9e09a3f359` |
| 6 | `def` | [argEquiv](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/argequiv--35f8d6125b375904458d4f60.md) | 72 | `declaration-track:35f8d6125b375904458d4f601256c6df13f1f0e751cd1470afb48549e8b3f562` |
| 7 | `theorem` | [leftInverse_expMapCircle_arg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/leftinverse-expmapcircle-arg--b9fbfbcca97ba158dd3fe03f.md) | 81 | `result-track:b9fbfbcca97ba158dd3fe03fa183b6e68668d4509d0a0289ece888db5b81ded0` |
| 8 | `theorem` | [invOn_arg_expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/invon-arg-expmapcircle--6cc20f0136e2bd2b62cfd33c.md) | 85 | `result-track:6cc20f0136e2bd2b62cfd33c08afe838e925e29d731bc9449c6f48622771eb8d` |
| 9 | `theorem` | [surjOn_expMapCircle_neg_pi_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/surjon-expmapcircle-neg-pi-pi--237ef1cfc5d85f12ee07ccf3.md) | 89 | `result-track:237ef1cfc5d85f12ee07ccf3fb4d1d5c9bb149679c2a240a1156f981da2d74c1` |
| 10 | `theorem` | [expMapCircle_eq_expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/expmapcircle-eq-expmapcircle--d0313a546a84722597311401.md) | 93 | `result-track:d0313a546a847225973114019fd170a497d87831112568e18d55bc2515364173` |
| 11 | `theorem` | [periodic_expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/periodic-expmapcircle--11eab477cfa7e1d0649e846c.md) | 101 | `result-track:11eab477cfa7e1d0649e846c65077763ef1694a50efacff3658070891332df4e` |
| 12 | `theorem` | [expMapCircle_two_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/expmapcircle-two-pi--082157acddb38e19ccbb65d5.md) | 106 | `result-track:082157acddb38e19ccbb65d564aa21282f5e78acfb5d9a3adb80c077ec89f325` |
| 13 | `theorem` | [expMapCircle_sub_two_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/expmapcircle-sub-two-pi--5e00322ddd1ed50b7eacd082.md) | 110 | `result-track:5e00322ddd1ed50b7eacd08223e4c631953b985e2266452cbfb1408bdd421f83` |
| 14 | `theorem` | [expMapCircle_add_two_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/expmapcircle-add-two-pi--307c549be7020de710515e3f.md) | 114 | `result-track:307c549be7020de710515e3f7c15b2998d5be0485f55e8881ea6a96f57951704` |
| 15 | `def` | [Real.Angle.expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/real-angle-expmapcircle--aef94a8a609ed070a3e76475.md) | 119 | `declaration-track:aef94a8a609ed070a3e76475e9535a9fa45916ec88ffbfb7d45a494d9ef5b820` |
| 16 | `theorem` | [Real.Angle.expMapCircle_coe](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/real-angle-expmapcircle-coe--806493177a70967b331b2b40.md) | 124 | `result-track:806493177a70967b331b2b40d7cd8d832052c7a666e6b1903ba6aa25b414a453` |
| 17 | `theorem` | [Real.Angle.coe_expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/real-angle-coe-expmapcircle--25f5e01b5b9b707f7b9f3507.md) | 128 | `result-track:25f5e01b5b9b707f7b9f3507a535299250f00fb065e55cd207b92a48c34e2a94` |
| 18 | `theorem` | [Real.Angle.expMapCircle_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/real-angle-expmapcircle-zero--ae265f6e9b224a9a40df9ef2.md) | 135 | `result-track:ae265f6e9b224a9a40df9ef2e58940ef21d5dd952b2c681d72d3ace855f3fb75` |
| 19 | `theorem` | [Real.Angle.expMapCircle_neg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/real-angle-expmapcircle-neg--763f521af719583c560f8591.md) | 140 | `result-track:763f521af719583c560f859126720d4e8723c58d7fa19402661a5113b84b6fab` |
| 20 | `theorem` | [Real.Angle.expMapCircle_add](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/real-angle-expmapcircle-add--42bdee945a105bcc02c36149.md) | 147 | `result-track:42bdee945a105bcc02c361499bc9c45245aee2972dcb1acffdeb87ccbf110083` |
| 21 | `theorem` | [Real.Angle.arg_expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/declarations/real-angle-arg-expmapcircle--e2106bbd02ee311a07077b84.md) | 155 | `result-track:e2106bbd02ee311a07077b841d0e14c3decbe2b660032e02856b263af4c70dd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
