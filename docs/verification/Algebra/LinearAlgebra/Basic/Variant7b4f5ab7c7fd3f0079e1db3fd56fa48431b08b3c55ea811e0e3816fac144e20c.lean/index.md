# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b984b68f3221443e5303f8b0f8c3636508883f06",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b984b68f3221443e5303f8b0f8c3636508883f06`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.RingQuot` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Isometry` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/rel--456d3c529c294c7a736abdea.md) | 58 | `declaration-track:456d3c529c294c7a736abdeaffa538d1f6df336ca9936694abab53ca9af38ae2` |
| 2 | `def` | [CliffordAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/cliffordalgebra--a3fc0b2905d4578446f8b182.md) | 65 | `declaration-track:a3fc0b2905d4578446f8b182909ca0298b1b3ceedb87313d3a5e26b391c71a47` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/instinhabited--0f0608c5432c6f454f7f037b.md) | 73 | `declaration-track:0f0608c5432c6f454f7f037b9793a4bbad9ae087bc39438fd1ef47917a2b70db` |
| 4 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/instring--72f22dce8765785f8e89934a.md) | 74 | `declaration-track:72f22dce8765785f8e89934a93571be0ea0c65d791a409c581529153513c46c7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/instance--14906ce34c26be4e385ad159.md) | 76 | `declaration-track:14906ce34c26be4e385ad1593dac99a0e4bbe035a48c8d2fbadc06932d819cea` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/example--dfdad38172cb3b85042b36d5.md) | 84 | `declaration-track:dfdad38172cb3b85042b36d54664a5eb31aba02729d1143e9ea882f5cafc2823` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/example--1ff06896bb4d8d4e6c17debe.md) | 86 | `declaration-track:1ff06896bb4d8d4e6c17debe73618a45d8de3f0421df337111857900d3fa336a` |
| 8 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/instalgebra--5bc6646b93b5541e3450d41a.md) | 89 | `declaration-track:5bc6646b93b5541e3450d41aae6dc6e921a346eb6cc828c1a5171c041c861fa4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/instance--9e16e4f0bc783f8752fbc11e.md) | 91 | `declaration-track:9e16e4f0bc783f8752fbc11edbfe09f472196b0ab5049874c04d920386251e58` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/instance--9bb71c9987abce57a6cf3b91.md) | 97 | `declaration-track:9bb71c9987abce57a6cf3b917fe3b31c87df454c40e36617b7905a9e8e47bf1b` |
| 11 | `def` | [ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/anonymous--7b07524af969818f2aa41356.md) | 105 | `declaration-track:7b07524af969818f2aa41356e9521f642da0ee2aab31d833c1aaf9d7083035ea` |
| 12 | `theorem` | [ι_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/sq-scalar--482223201ca84483817969d6.md) | 110 | `result-track:482223201ca84483817969d660a4dc4aafe2aaa7a13a7420585a0db2a7918d61` |
| 13 | `theorem` | [comp_ι_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/comp-sq-scalar--f64232b33d9dd81820045d7f.md) | 120 | `result-track:f64232b33d9dd81820045d7ff3bf9da49678c155a27b1f859a4333c464517b40` |
| 14 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/lift--b82cb453fde4f3dd7dbdf791.md) | 130 | `declaration-track:b82cb453fde4f3dd7dbdf79131f5aa349076a1c7fb0566785b40b4fd0f585d42` |
| 15 | `theorem` | [ι_comp_lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/comp-lift--19880a5f74298bdc78382f3c.md) | 150 | `result-track:19880a5f74298bdc78382f3c64fb0795e58d43ee5d2cde8020a6c3207438bcc0` |
| 16 | `theorem` | [lift_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/lift-apply--d019388ade2d07ff99f2695a.md) | 155 | `result-track:d019388ade2d07ff99f2695a00d3e87a51f2388ba44327585ce78e15430b57cc` |
| 17 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/lift-unique--ada037dc588d71f2c72e6827.md) | 160 | `result-track:ada037dc588d71f2c72e68270c85c6405f6401e2e5d13557fb6a807fda337e65` |
| 18 | `theorem` | [lift_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/lift-comp--1913f83366a8ba275e91bd7a.md) | 166 | `result-track:1913f83366a8ba275e91bd7a30f20f82520e367ce9465465d1aa477c10bb8afe` |
| 19 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/hom-ext--d9b6c01b97ca1b30dec311e7.md) | 172 | `result-track:d9b6c01b97ca1b30dec311e7c8285673fd07dc846cc7040d3bfa1e7a40cb74bb` |
| 20 | `theorem` | [induction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/induction--258e0ae2540a2cee58561dcb.md) | 186 | `result-track:258e0ae2540a2cee58561dcb4750c45f46cd02fc83a4232a3913d73e660b0f7b` |
| 21 | `theorem` | [mul_add_swap_eq_polar_of_forall_mul_self_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/mul-add-swap-eq-polar-of-forall-mul-self-eq--41c451f24c4670be211156bd.md) | 210 | `result-track:41c451f24c4670be211156bded84177c739703984c55f389a3a6442249cf64d1` |
| 22 | `theorem` | [forall_mul_self_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/forall-mul-self-eq-iff--af08ee93a41838a17b64c264.md) | 225 | `result-track:af08ee93a41838a17b64c264b29bd1ef7fa599942ee5339450e4d739321d7b03` |
| 23 | `theorem` | [ι_mul_ι_add_swap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/mul-add-swap--87af1acd7fa0f7cd5492ba87.md) | 237 | `result-track:87af1acd7fa0f7cd5492ba877379515ec51c65ce16f761d5837b1a9c17b94d31` |
| 24 | `theorem` | [ι_mul_ι_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/mul-comm--3efa923efda942d21a52e8ad.md) | 241 | `result-track:3efa923efda942d21a52e8ad867c13f16f4a1c36a3ca1051e9a81f2556300952` |
| 25 | `theorem` | [ι_mul_ι_add_swap_of_isOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/mul-add-swap-of-isortho--221dbe82bcf9c9cffabab7fe.md) | 247 | `result-track:221dbe82bcf9c9cffabab7fe59c0d8d90e08972534d7cdf3269e1531f2c97347` |
| 26 | `theorem` | [ι_mul_ι_comm_of_isOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/mul-comm-of-isortho--2eb408489a82acf854a1f07f.md) | 252 | `result-track:2eb408489a82acf854a1f07f0acba8b53a702c1dd829c659702de52c41547faf` |
| 27 | `theorem` | [mul_ι_mul_ι_of_isOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/mul-mul-of-isortho--7ea7fc43762466a58f1e34a6.md) | 256 | `result-track:7ea7fc43762466a58f1e34a67d4845e3ac344fa5efe645952b13e8cac04cfe4c` |
| 28 | `theorem` | [ι_mul_ι_mul_of_isOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/mul-mul-of-isortho--c480b4885adff34ebc897868.md) | 260 | `result-track:c480b4885adff34ebc8978684566cd10025f367c19911503bb502c246ac6b3a0` |
| 29 | `theorem` | [ι_mul_ι_mul_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/mul-mul--03d4df4d01fee6ad0b79e3fd.md) | 267 | `result-track:03d4df4d01fee6ad0b79e3fd8bd48890618d567c326463faf3f7211935a3b598` |
| 30 | `theorem` | [ι_range_map_lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/range-map-lift--f99ad1fa54a796c49a8c5b27.md) | 273 | `result-track:f99ad1fa54a796c49a8c5b27bcd2d1c92f6f19d371c801d894e0404269266018` |
| 31 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/map--50a39d4f645fc70587e32b40.md) | 287 | `declaration-track:50a39d4f645fc70587e32b401e8527542de75d9923932cfdf2968521144e451c` |
| 32 | `theorem` | [map_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/map-comp--bd1029675f3606fa4a41e787.md) | 293 | `result-track:bd1029675f3606fa4a41e787429ba48982ef014b6e4f4e2bcc0047e071a05400` |
| 33 | `theorem` | [map_apply_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/map-apply--2e050eb0ab31f94594418677.md) | 298 | `result-track:2e050eb0ab31f94594418677f4ec3a0e8aebdcc5bc6c9c3ea29f5a18bedc0472` |
| 34 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/map-id--cfc2dbe164bb61bd3c5e87ca.md) | 303 | `result-track:cfc2dbe164bb61bd3c5e87cac1c3f0bb81c3b9bcbe62a8914cc2d2b6b99161b5` |
| 35 | `theorem` | [map_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/map-comp-map--71f981c8e9dbfd2d1ffcfd76.md) | 307 | `result-track:71f981c8e9dbfd2d1ffcfd76a49cefa374c7b1b992fe98f9015cfc148ffe9847` |
| 36 | `theorem` | [ι_range_map_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/range-map-map--afde12170a5a1683d4c9771b.md) | 314 | `result-track:afde12170a5a1683d4c9771b36dfa9da328bca33edb413dcb04b5c3611ae67d5` |
| 37 | `lemma` | [leftInverse_map_of_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/leftinverse-map-of-leftinverse--baac484ecc72dde92a888944.md) | 322 | `result-track:baac484ecc72dde92a888944b81fafc4c9e511ae80486fa28fafc3d368b9c84c` |
| 38 | `lemma` | [map_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/map-surjective--49238b66797d21310c5d60fb.md) | 330 | `result-track:49238b66797d21310c5d60fb635dd13ceabfa3c34a44373603ffb81e5d888604` |
| 39 | `def` | [equivOfIsometry](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/equivofisometry--62b23827187d7b5c47b1b662.md) | 341 | `declaration-track:62b23827187d7b5c47b1b662033ee7fe67a4161bea045791d3563dd14a966762` |
| 40 | `theorem` | [equivOfIsometry_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/equivofisometry-symm--8da3a52b5199863c3d3445cf.md) | 353 | `result-track:8da3a52b5199863c3d3445cfefbc5eb1e86f7ecac3f0152c470ebda15e189563` |
| 41 | `theorem` | [equivOfIsometry_trans](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/equivofisometry-trans--962efd40fa9063312abc9267.md) | 358 | `result-track:962efd40fa9063312abc92679617c1409a52feeda643c77faf134b7c8246eb11` |
| 42 | `theorem` | [equivOfIsometry_refl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/equivofisometry-refl--7c1d342644e064fb7ef30759.md) | 364 | `result-track:7c1d342644e064fb7ef307598544bc48e2c65bbe4d92e47fb923e036b8b5c9de` |
| 43 | `def` | [toClifford](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/toclifford--870a54e4bed51513346b5487.md) | 379 | `declaration-track:870a54e4bed51513346b5487c7c252620795080eeec23c5c4bdd7131093c044e` |
| 44 | `theorem` | [toClifford_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7b4f5ab7c7fd3f0079e1db3fd56fa48431b08b3c55ea811e0e3816fac144e20c.lean/declarations/toclifford--48b208e6358e8ff2dd3931a9.md) | 383 | `result-track:48b208e6358e8ff2dd3931a92ae2f9dfe0945db4e66a5cea4dee99d222e5c7b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
