# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "118489b6d70ecc11a1232adfc18bc46d5e4494b1",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `118489b6d70ecc11a1232adfc18bc46d5e4494b1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean.json)

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
| 1 | `def` | [IsSymmetric](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric--02e12eaa55c58e3c0b31825c.md) | 59 | `declaration-track:02e12eaa55c58e3c0b31825cc6f627049927948a6a49ebd6af10f911a310f59a` |
| 2 | `theorem` | [isSymmetric_iff_sesqForm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-iff-sesqform--d995480c8392630cd2993437.md) | 66 | `result-track:d995480c8392630cd299343741b56dd292d5aaf70f298ec0755d27bba88ccc72` |
| 3 | `theorem` | [IsSymmetric.conj_inner_sym](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-conj-inner-sym--6e4a5156e89facbe0cb70c80.md) | 72 | `result-track:6e4a5156e89facbe0cb70c80a7ae8c36003c1293147d2a1941c6108c8f2eb6f0` |
| 4 | `theorem` | [IsSymmetric.apply_clm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-apply-clm--b40bfd878e2a88de1fe6880e.md) | 76 | `result-track:b40bfd878e2a88de1fe6880e87b9daf777fb416640e486f4032109d8d077bdc6` |
| 5 | `theorem` | [IsSymmetric.zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-zero--8b78a4d862bd22e6f6c3ac2a.md) | 81 | `result-track:8b78a4d862bd22e6f6c3ac2aeca90b11b57e865729266b00b6920a5cd110c2ad` |
| 6 | `lemma` | [IsSymmetric.id](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-id--22b712203b8d156d9a132b5b.md) | 84 | `result-track:22b712203b8d156d9a132b5b738653218abcc5b1082801393bdeddf2f4f8f7d7` |
| 7 | `lemma` | [IsSymmetric.one](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-one--c33e2c0529b1aee642274387.md) | 85 | `result-track:c33e2c0529b1aee642274387e8384c1e27b5fb0bbfaacb5ea43b0ee3cc89d861` |
| 8 | `theorem` | [IsSymmetric.add](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-add--0a642ab104587f8d911e6c21.md) | 88 | `result-track:0a642ab104587f8d911e6c21fee78bd4a387babf5872ff5db383cabe2252a901` |
| 9 | `theorem` | [isSymmetric_sum](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-sum--a6742956c2a30178da950c20.md) | 93 | `result-track:a6742956c2a30178da950c20dbc773db62992f674d7f1229d1f2d4476f21180b` |
| 10 | `theorem` | [IsSymmetric.sub](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-sub--f9ae78af16472d4ae14d3e69.md) | 98 | `result-track:f9ae78af16472d4ae14d3e69e225d3b68280c46339949dbd6b74f6fd3c77a522` |
| 11 | `theorem` | [IsSymmetric.smul](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-smul--674679da3098ddc696d7bd83.md) | 104 | `result-track:674679da3098ddc696d7bd83296a5ee5cfff830e2157966d1ad4008c6c494417` |
| 12 | `theorem` | [IsSymmetric.natCast](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-natcast--84ea33aed3ec1d916cfacd84.md) | 109 | `result-track:84ea33aed3ec1d916cfacd842af937e38ac06637351fc0f0fd08c0f71cc36566` |
| 13 | `theorem` | [IsSymmetric.intCast](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-intcast--f4a234588391306789f6c0e3.md) | 112 | `result-track:f4a234588391306789f6c0e343092ac23ebad617f713d6dbea58b233b0c6797e` |
| 14 | `lemma` | [IsSymmetric.mul_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-mul-of-commute--f1bca3fa4685a63044f4c253.md) | 116 | `result-track:f1bca3fa4685a63044f4c253e95ffdb647fa2cff279ce6bead06f7bab9f89fa4` |
| 15 | `lemma` | [IsSymmetric.pow](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-pow--832c342d3b82fa89aca0ae45.md) | 121 | `result-track:832c342d3b82fa89aca0ae4591f81a90929b61740843951dc3c31fed0e40d0ec` |
| 16 | `theorem` | [IsSymmetric.coe_reApplyInnerSelf_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-coe-reapplyinnerself-apply--2af24c12096fe63df496b261.md) | 128 | `result-track:2af24c12096fe63df496b261c7e4f2ab0abd1475c51b41a56e5f9d35c0fb38cb` |
| 17 | `theorem` | [IsSymmetric.restrict_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-restrict-invariant--06dbc229fa8226abd7c224a1.md) | 137 | `result-track:06dbc229fa8226abd7c224a1c0e05050f84d272194c6314e709989d24af23292` |
| 18 | `theorem` | [IsSymmetric.restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-restrictscalars--a984d4be49198ab54515e592.md) | 140 | `result-track:a984d4be49198ab54515e592633617293adef8294feeb2656f1ce1bc7557824f` |
| 19 | `theorem` | [IsSymmetric.im_inner_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-im-inner-apply-self--e4860812620a13a7a09fadac.md) | 147 | `result-track:e4860812620a13a7a09fadac4994e736e1faa731d6a669ca48b4174d5344ec0f` |
| 20 | `theorem` | [IsSymmetric.im_inner_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-im-inner-self-apply--ca0fca511e8626e400466c33.md) | 152 | `result-track:ca0fca511e8626e400466c33d093ee8496e1adde5522be2de2fb0379ec4527e9` |
| 21 | `theorem` | [IsSymmetric.coe_re_inner_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-coe-re-inner-apply-self--24b8007bbb5af6cd569b1e4e.md) | 157 | `result-track:24b8007bbb5af6cd569b1e4ed3329ea1774d504ac7be51b5e7377f8eb39decc7` |
| 22 | `theorem` | [IsSymmetric.coe_re_inner_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-coe-re-inner-self-apply--36e7a2a450905cf95945b4a7.md) | 162 | `result-track:36e7a2a450905cf95945b4a7229a451a63553f96033e874882c06752654ba6e1` |
| 23 | `structure` | [IsSymmetricProjection](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetricprojection--b0cf45fcd7b026621ef169ca.md) | 168 | `declaration-track:b0cf45fcd7b026621ef169ca51acef27bd076741eb6dccc51edf2c437280a5f0` |
| 24 | `theorem` | [isSymmetric_iff_inner_map_self_real](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-iff-inner-map-self-real--1f5f1a963cf933335f850cfe.md) | 180 | `result-track:1f5f1a963cf933335f850cfeb077b1416ff483c6914e53cd36fcf05b218291a6` |
| 25 | `theorem` | [IsSymmetric.inner_map_polarization](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-inner-map-polarization--4659e2fbc9d8e39ad585ff37.md) | 200 | `result-track:4659e2fbc9d8e39ad585ff37be3c1a20bd260e94d54d2da05493099f678ed858` |
| 26 | `theorem` | [isSymmetric_linearIsometryEquiv_conj_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-linearisometryequiv-conj-iff--9961fcbdf130928679e753e0.md) | 219 | `result-track:9961fcbdf130928679e753e03232c7cd86471497dd45c3c8b15d45543c43ba4b` |
| 27 | `theorem` | [InnerProductSpace.isSymmetric_rankOne_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/innerproductspace-issymmetric-rankone-self--546c08efc51597b58506b0b1.md) | 228 | `result-track:546c08efc51597b58506b0b14f26c7a9331f561627a037d6b846903fee2205c4` |
| 28 | `theorem` | [InnerProductSpace.isSymmetricProjection_rankOne_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/innerproductspace-issymmetricprojection-rankone-self--e26fbbf0696905ec2d9de670.md) | 232 | `result-track:e26fbbf0696905ec2d9de6709910860aa87570d850d1e0f774544682ef138158` |
| 29 | `theorem` | [LinearMap.IsSymmetric.toLinearMap_symm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/linearmap-issymmetric-tolinearmap-symm--c03801e9080d08e8a49d34e6.md) | 237 | `result-track:c03801e9080d08e8a49d34e6a6805a146349a25db23e3aa5d4574321e1245208` |
| 30 | `theorem` | [LinearEquiv.isSymmetric_symm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/linearequiv-issymmetric-symm-iff--532b4b25131f97c62f2fa70b.md) | 240 | `result-track:532b4b25131f97c62f2fa70b7809980a42afbc87167b405fe4921ecf8ee734f0` |
| 31 | `theorem` | [IsSymmetric.continuous](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-continuous--bc8a4165e376ac87bd3d66e8.md) | 256 | `result-track:bc8a4165e376ac87bd3d66e8fc5f9fd9431bc0c2b0059314a9960d87f79c4615` |
| 32 | `theorem` | [IsSymmetric.inner_map_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-inner-map-self-eq-zero--e93863d7fc893ba18e655696.md) | 273 | `result-track:e93863d7fc893ba18e655696d1173101ec465359e8250fc002c51f4cad6b29d0` |
| 33 | `theorem` | [ker_le_ker_of_range](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/ker-le-ker-of-range--17df505463fd072d2dfafb36.md) | 281 | `result-track:17df505463fd072d2dfafb369d0b8458c67c3104e35c5ee7db3764b5fde8764d` |
| 34 | `theorem` | [_root_.Submodule.isSymmetric_projection_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/root-submodule-issymmetric-projection-iff--ead88c1d84c454f5bbef5b97.md) | 291 | `result-track:ead88c1d84c454f5bbef5b97e2dd2c9c43c30755ae8f92a2e1d0c8e753d9fcf2` |
| 35 | `theorem` | [_root_.Submodule.isSymmetricProjection_projection_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/root-submodule-issymmetricprojection-projection-iff--da7f04468473b552f71dd8db.md) | 309 | `result-track:da7f04468473b552f71dd8db1fb565908ba29393ec4507ff57a4b7d9e4c1dc39` |
| 36 | `theorem` | [IsIdempotentElem.isSymmetric_iff_isOrtho_range_ker](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/isidempotentelem-issymmetric-iff-isortho-range-ker--c1c5eea179aacd8091f98fa5.md) | 328 | `result-track:c1c5eea179aacd8091f98fa5e2ee63940f53d8028534e98e274d0a029b9114e5` |
| 37 | `theorem` | [IsSymmetric.orthogonal_range](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-orthogonal-range--c6d8dcb792668977e19aca7f.md) | 332 | `result-track:c6d8dcb792668977e19aca7f8a0f3241bc586e508201fcbb35763c44a97db6d5` |
| 38 | `theorem` | [IsIdempotentElem.isSymmetric_iff_orthogonal_range](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/isidempotentelem-issymmetric-iff-orthogonal-range--43a2bcedfb2509019daaf8aa.md) | 340 | `result-track:43a2bcedfb2509019daaf8aa7599053f7ca6ac43110b654b76cb05798290b2c8` |
| 39 | `theorem` | [IsSymmetricProjection.ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetricprojection-ext-iff--5719897c775e80b8c6bf8729.md) | 347 | `result-track:5719897c775e80b8c6bf872981e03c1dadc60a61c9d19f6078871345650858de` |
| 40 | `theorem` | [IsSymmetricProjection.sub_of_range_le_range](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetricprojection-sub-of-range-le-range--b7450ba7979fad502e26b952.md) | 359 | `result-track:b7450ba7979fad502e26b9521cf55c25cc7aa7fefd6c1f4ee185b4330d7bafa5` |
| 41 | `theorem` | [IsSymmetric.isSymmetric_smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/declarations/issymmetric-issymmetric-smul-iff--e497377e7b621b69e4f87015.md) | 367 | `result-track:e497377e7b621b69e4f87015bd3cdd20f45267a068572be4e450fcce417cb4b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
