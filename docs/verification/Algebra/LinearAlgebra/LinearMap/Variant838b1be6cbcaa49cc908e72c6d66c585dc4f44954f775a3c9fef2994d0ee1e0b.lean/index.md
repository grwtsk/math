# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearMap.Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80093ed83208d821b86a27e5fbb970667f353ffa",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80093ed83208d821b86a27e5fbb970667f353ffa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.End` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/subtype--cd4c54caec04f8f56e3e4d29.md) | 45 | `declaration-track:cd4c54caec04f8f56e3e4d2925f774ed5885b6f2b62220dc5453d86ee231074c` |
| 2 | `lemma` | [subtype_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/subtype-apply--27fd076e2286fe54b1c457ae.md) | 52 | `result-track:27fd076e2286fe54b1c457ae11453402cdddc1db918f2db7cc24be76374e47fd` |
| 3 | `lemma` | [subtype_injective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/subtype-injective--5cba63518820863649f8b798.md) | 55 | `result-track:5cba63518820863649f8b79875c34754cd86e1382d419860876f0c95f498e7a9` |
| 4 | `theorem` | [coe_subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/coe-subtype--688109ffbf0d3e847ae8a7d8.md) | 60 | `result-track:688109ffbf0d3e847ae8a7d8376f369cbaf1f468a8338e65d59c14b7c2a0c2d4` |
| 5 | `def` | [subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/subtype--049412a8abe2589d21d7432d.md) | 82 | `declaration-track:049412a8abe2589d21d7432d80243768344d950ce7e0ea1b8f1af54c94c0c0cf` |
| 6 | `theorem` | [subtype_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/subtype-apply--22ced0eba9ef06058e7ccc98.md) | 89 | `result-track:22ced0eba9ef06058e7ccc985c26ef7662c3808b647d3b65302e2c7443c7584e` |
| 7 | `lemma` | [subtype_injective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/subtype-injective--a914e34a91bf0c3ec6691264.md) | 92 | `result-track:a914e34a91bf0c3ec66912640d1365ded4c4b17b360ba48089090f215149c0bd` |
| 8 | `theorem` | [coe_subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/coe-subtype--f25fd74617950f4e77377ba4.md) | 97 | `result-track:f25fd74617950f4e77377ba4287c6b4eb65c2a4f0a1ecadb310956341adede7d` |
| 9 | `theorem` | [injective_subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/injective-subtype--0f7b48a350404ab9227e5ea3.md) | 100 | `result-track:0f7b48a350404ab9227e5ea3cd523711c8d049a76a2c2559ea1f7638045bde28` |
| 10 | `theorem` | [coe_sum](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/coe-sum--ae30f79238f024ed6c2a6b11.md) | 104 | `result-track:ae30f79238f024ed6c2a6b11b9b56ab2aedb18b7c8030a6eadc77d858df2e188` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/instance--8984fa4cd0299db633778f3a.md) | 112 | `declaration-track:8984fa4cd0299db633778f3acaae4c48f9972be3d9f973f304c502d1e0574ec6` |
| 12 | `def` | [domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/domrestrict--c4eb326e7a2910c0b06ac73a.md) | 142 | `declaration-track:c4eb326e7a2910c0b06ac73a482f326598de45a8ed869720f94404c79ca38a56` |
| 13 | `theorem` | [domRestrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/domrestrict-apply--79cd6966cafe6841e3cc023e.md) | 146 | `result-track:79cd6966cafe6841e3cc023e35275ffaf28b54a0fbc0dbd94ff4b6b62cd35b86` |
| 14 | `def` | [codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/codrestrict--03743def5fc80591e781c6f0.md) | 154 | `declaration-track:03743def5fc80591e781c6f0d7dedb79e216df4e49a33beb300219b679e7ecd1` |
| 15 | `theorem` | [codRestrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/codrestrict-apply--d0540c25abef6bdab7dbeedc.md) | 160 | `result-track:d0540c25abef6bdab7dbeedc8c581dd73f20b9ebfad31075fd997ae97b8a9de7` |
| 16 | `theorem` | [comp_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/comp-codrestrict--76220a1806f39292e8873a6e.md) | 165 | `result-track:76220a1806f39292e8873a6e3f5d61ddbbb7fc86b724ad45dde2d73133c1574f` |
| 17 | `theorem` | [subtype_comp_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/subtype-comp-codrestrict--dc228176f1b84391f0f9fc81.md) | 170 | `result-track:dc228176f1b84391f0f9fc81e804cfd1f4955296d28e14179d93bdd9652f7238` |
| 18 | `def` | [codLift](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/codlift--68b39cc54ae33fb650ec0986.md) | 181 | `declaration-track:68b39cc54ae33fb650ec098646043a87d97fb8756dc4e3657af453c7cd69b065` |
| 19 | `theorem` | [codLift_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/codlift-apply--0bfa580ff0f95e3baa6749cb.md) | 187 | `result-track:0bfa580ff0f95e3baa6749cb3f26fe707fe317290ab578d7a00acec5e82293bf` |
| 20 | `theorem` | [comp_codLift](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/comp-codlift--e5113f54608ccdb9e9557b5d.md) | 192 | `result-track:e5113f54608ccdb9e9557b5d6ec0be1b84c7436fb5fa86a6d83734ac65ee9a62` |
| 21 | `def` | [restrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/restrict--e6960b8f5e21eeed254b00d3.md) | 200 | `declaration-track:e6960b8f5e21eeed254b00d335ee0982a24c654656c0fd8876652162a034e759` |
| 22 | `theorem` | [restrict_coe_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/restrict-coe-apply--9232464274179fe0b19e23fa.md) | 205 | `result-track:9232464274179fe0b19e23fabeda926039477ff5583d48b7e00b3e7250384984` |
| 23 | `theorem` | [restrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/restrict-apply--3a466227f0375bd251c37981.md) | 209 | `result-track:3a466227f0375bd251c379813a37ba707581df9b907e1efa912768c551702c65` |
| 24 | `lemma` | [restrict_sub](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/restrict-sub--5f7ccc5a4fa228bf45bfdd8b.md) | 213 | `result-track:5f7ccc5a4fa228bf45bfdd8b34feca2953691ce23f38023830789fda8258cbee` |
| 25 | `lemma` | [restrict_comp](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/restrict-comp--d4bf5fac29a177b428cac96d.md) | 221 | `result-track:d4bf5fac29a177b428cac96d499ffe078f1ee1594c6f919e69fcb719e3c26d6b` |
| 26 | `lemma` | [restrict_smul_one](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/restrict-smul-one--df9f836397489bbdbd1d1b67.md) | 230 | `result-track:df9f836397489bbdbd1d1b67e8b3ba6aada65ef382b2160b95ad898f5ece3769` |
| 27 | `lemma` | [restrict_commute](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/restrict-commute--fdf1679a848a053d26187823.md) | 236 | `result-track:fdf1679a848a053d26187823dc66ff1586e1b78784cac693d3691b2cb955c6cb` |
| 28 | `theorem` | [subtype_comp_restrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/subtype-comp-restrict--e22a0fdc89899935861a3bc3.md) | 242 | `result-track:e22a0fdc89899935861a3bc32735da73145c4ad35da2c2bc771199aa8381d971` |
| 29 | `theorem` | [restrict_eq_codRestrict_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/restrict-eq-codrestrict-domrestrict--4190648896d87786f67a12ad.md) | 246 | `result-track:4190648896d87786f67a12adf1c4a8777cbe6473826c85fad6f956ab8d7d927a` |
| 30 | `theorem` | [restrict_eq_domRestrict_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/restrict-eq-domrestrict-codrestrict--a733fa75b824a1fd21e60991.md) | 251 | `result-track:a733fa75b824a1fd21e60991be240a0880f38941f61933c2b9ff047d240e5bb7` |
| 31 | `theorem` | [sum_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/sum-apply--500875d122b33004e3994c7a.md) | 256 | `result-track:500875d122b33004e3994c7a6c8edf2d703c7213923a238fffd4249aa6eb7255` |
| 32 | `theorem` | [coeFn_sum](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/coefn-sum--ba2c9db1fc9ec2dc0230a149.md) | 261 | `result-track:ba2c9db1fc9ec2dc0230a1491a9318dced12d2df9c5ef7f7f2fd23228b3cf662` |
| 33 | `theorem` | [_root_.Module.End.submodule_pow_eq_zero_of_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/root-module-end-submodule-pow-eq-zero-of-pow-eq-zero--2eb1b4411457e5910e2088b1.md) | 269 | `result-track:2eb1b4411457e5910e2088b105382c6b0760acd81e51d416f7d072244232ee44` |
| 34 | `theorem` | [_root_.Module.End.pow_apply_mem_of_forall_mem](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/root-module-end-pow-apply-mem-of-forall-mem--4e5b755681c4b78d7c3e44ce.md) | 281 | `result-track:4e5b755681c4b78d7c3e44ced397b87919dc586e24f9d79335b6fbd11859aed5` |
| 35 | `theorem` | [_root_.Module.End.pow_restrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/root-module-end-pow-restrict--265c2ba03bc4e2cc133e9cb8.md) | 288 | `result-track:265c2ba03bc4e2cc133e9cb8cc81ba6c8cd0cbdee0f35a3e5164b2f2bab88f95` |
| 36 | `def` | [domRestrict'](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/domrestrict--c4ba18ced44593a0d7aedb58.md) | 306 | `declaration-track:c4ba18ced44593a0d7aedb589ef735447dbefbbc756386216b84faeb74297fc7` |
| 37 | `theorem` | [domRestrict'_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/domrestrict-apply--e1a87991802ec5b0bcaa4ff7.md) | 312 | `result-track:e1a87991802ec5b0bcaa4ff723db410fff1de49b239151491f331ae62df35155` |
| 38 | `def` | [inclusion](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/inclusion--06b10a9e1ccf5f5e1d76bd6f.md) | 330 | `declaration-track:06b10a9e1ccf5f5e1d76bd6fb63d10b33065ec37c7b1b7a18fcbe63df0771d22` |
| 39 | `theorem` | [coe_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/coe-inclusion--f12b68d4f57af29c17db3587.md) | 334 | `result-track:f12b68d4f57af29c17db358700e96ef8b33d3a3218fa4231a808c3a358399c98` |
| 40 | `theorem` | [inclusion_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/inclusion-apply--b40c4eb25a430400c46b0f3b.md) | 337 | `result-track:b40c4eb25a430400c46b0f3b9bd906e6fe25d0d3ee4c03d6c6a278f110cb5609` |
| 41 | `theorem` | [inclusion_injective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/inclusion-injective--fd416160831a09f34b63a528.md) | 340 | `result-track:fd416160831a09f34b63a528509c2617b640ce295536af8ceecef008f01f6dbc` |
| 42 | `theorem` | [subtype_comp_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.lean/declarations/subtype-comp-inclusion--7d2df2132458a5220b6c5675.md) | 345 | `result-track:7d2df2132458a5220b6c5675ea9941cf3d3e5b2130c9695f4973caa7d4cfa780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
