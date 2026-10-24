# Verification target: GRWTSK.Algebra.Basic.Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1bef7eb6c7263eca25d62ccdaddf6499ef9c87c",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1bef7eb6c7263eca25d62ccdaddf6499ef9c87c`.

Source path: `GRWTSK/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FieldSimp` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [omega](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/omega--3b64678b45e9962507370c00.md) | 63 | `declaration-track:3b64678b45e9962507370c0065ff233dade92ba1790ee6398df633e1b539f457` |
| 2 | `theorem` | [re_omega](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/re-omega--e45dc588f9c69f12f5e0dfc2.md) | 70 | `result-track:e45dc588f9c69f12f5e0dfc2efbc1952c22fd6b970013360da7adbe02a7fc0f2` |
| 3 | `theorem` | [im_omega](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/im-omega--10c7277a82b53d3ba2043b6c.md) | 74 | `result-track:10c7277a82b53d3ba2043b6c115f40b11cfed79f57b49bab124998ed6e154243` |
| 4 | `theorem` | [omega_mul_omega_eq_mk](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/omega-mul-omega-eq-mk--802c14c3b2878412e4a8c367.md) | 84 | `result-track:802c14c3b2878412e4a8c3672951c7adabe4032bc98083e501e36df93e2f041d` |
| 5 | `theorem` | [omega_mul_omega_eq_add](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/omega-mul-omega-eq-add--362c852d84c142c555a2486d.md) | 87 | `result-track:362c852d84c142c555a2486d3958f5a145ab383345f44524c22a5896950227d7` |
| 6 | `theorem` | [omega_pow_two_eq_add](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/omega-pow-two-eq-add--d3fb9a9188e7a02bfd722405.md) | 91 | `result-track:d3fb9a9188e7a02bfd72240598f4150d18cad7891bd47fedad568f20dd6f5779` |
| 7 | `theorem` | [omega_mul_omega_eq_algebraMap](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/omega-mul-omega-eq-algebramap--c24c2b2fe3e24b833726c050.md) | 95 | `result-track:c24c2b2fe3e24b833726c050a075016b8855e547d351ce4659352e70373f2bef` |
| 8 | `theorem` | [basis_apply_one](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/basis-apply-one--6d67f0ac9a7666b89ff8f8a1.md) | 100 | `result-track:6d67f0ac9a7666b89ff8f8a1fd1cb25d44f104b5078d3878b12d1e082b42fe25` |
| 9 | `theorem` | [omega_mul_mk](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/omega-mul-mk--47dad0d752f3ad569cda99dd.md) | 104 | `result-track:47dad0d752f3ad569cda99dd3b73fd9b1a713dee71f7977b711ba901787c619a` |
| 10 | `theorem` | [omega_mul_algebraMap_mul_mk](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/omega-mul-algebramap-mul-mk--48c643a678cf0ad438721699.md) | 108 | `result-track:48c643a678cf0ad438721699a48e499b6c1bfbd302370ec8214b20f7e21a4925` |
| 11 | `theorem` | [mk_eq_add_smul_omega](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/mk-eq-add-smul-omega--039f498f1c33e9e311c8cf7f.md) | 112 | `result-track:039f498f1c33e9e311c8cf7fe6a54e16ad72809b674c3c71789ed81c91bbabd6` |
| 12 | `theorem` | [re_smul_add_im_smul](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/re-smul-add-im-smul--01ef14027e24711c84957dc9.md) | 117 | `result-track:01ef14027e24711c84957dc92f50d51af4c5fd988cd240fbe9ba804aec1140fb` |
| 13 | `theorem` | [algHom_ext](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/alghom-ext--15c282769328981510b0a39b.md) | 123 | `result-track:15c282769328981510b0a39bac6da484bf40782807f026a5becbfef4a05c139d` |
| 14 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/lift--f182960194a091e5314b9dfc.md) | 134 | `declaration-track:f182960194a091e5314b9dfc03771580ac8885d41612dce0391768f6641d32e2` |
| 15 | `theorem` | [adjoin_omega_eq_top](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/adjoin-omega-eq-top--5f384eba6a43a6e8dacd714e.md) | 179 | `result-track:5f384eba6a43a6e8dacd714ecb0519a21bda48dcae911768ab81b991326f4680` |
| 16 | `theorem` | [range_lift](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/range-lift--625635aaccdc134e8b621d6b.md) | 185 | `result-track:625635aaccdc134e8b621d6b93997890718777d771b0be86574075eb139f8f90` |
| 17 | `theorem` | [lift_surjective_iff](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/lift-surjective-iff--df89102ebbc64e918fe7c963.md) | 191 | `result-track:df89102ebbc64e918fe7c963943ae9fa8d758208880abf7c3d8a5afcfe2b8e6f` |
| 18 | `theorem` | [lift_injective_iff](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/lift-injective-iff--b36b7ba2d1999744ed78b3a3.md) | 202 | `result-track:b36b7ba2d1999744ed78b3a3091ddab24d99bddb1e8440123bbe0fcfed440961` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/instance--93968d5006c2a4c43ecfe9a9.md) | 216 | `declaration-track:93968d5006c2a4c43ecfe9a944bfc6190091d32dde7364650513e8d7f45e8864` |
| 20 | `theorem` | [star_mk](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/star-mk--79c594d0c09e4ce1615cba1d.md) | 220 | `result-track:79c594d0c09e4ce1615cba1d9a720213be821eb69c3e72d3544ed99a7e4c4e5b` |
| 21 | `theorem` | [re_star](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/re-star--64d61233544c9dc0fcaf33d8.md) | 225 | `result-track:64d61233544c9dc0fcaf33d8943b250b51f9a5af32b055904e25f7818c5e6b10` |
| 22 | `theorem` | [im_star](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/im-star--4bc7f68648cc8eed2c76ee57.md) | 230 | `result-track:4bc7f68648cc8eed2c76ee57ae3998144926e804b5a9c429386171ebb893cbbb` |
| 23 | `theorem` | [mul_star](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/mul-star--ff3767c3a0ad641792704a56.md) | 234 | `result-track:ff3767c3a0ad641792704a566bb34229ece2863bf694569ca194a2ad71106c86` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/instance--703d48513028d1a29c9f5fbc.md) | 240 | `declaration-track:703d48513028d1a29c9f5fbc11d8138233dad69dcf5d1142b66a3c743a36e04c` |
| 25 | `theorem` | [sub_star](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/sub-star--6a92c6b8cf4d1ac18008d286.md) | 248 | `result-track:6a92c6b8cf4d1ac18008d2868a4628d7018d32a4f23b2a6a077900a929237954` |
| 26 | `def` | [norm](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/norm--7b41d2bd5b41a070014470ed.md) | 259 | `declaration-track:7b41d2bd5b41a070014470edc516cbefde59a1630b0add5674268105642e1766` |
| 27 | `theorem` | [norm_def](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/norm-def--8ac01aa7001aecb5ff4f2fbd.md) | 264 | `result-track:8ac01aa7001aecb5ff4f2fbd62c06d4475044d545896295616179941ca1a8dce` |
| 28 | `theorem` | [norm_zero](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/norm-zero--2c834fa8af39b1eac5b3a0ed.md) | 269 | `result-track:2c834fa8af39b1eac5b3a0edb3417832c8c895dc5fc370b8c8fe9c6146efb564` |
| 29 | `theorem` | [norm_one](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/norm-one--a6d43b9f0bd2c5e25852c46a.md) | 272 | `result-track:a6d43b9f0bd2c5e25852c46ac8788f6051f23f4999058085ab1803a97ea1cea9` |
| 30 | `theorem` | [norm_algebraMap](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/norm-algebramap--99be911845c51e4bcebf0090.md) | 275 | `result-track:99be911845c51e4bcebf00906fdffae00a214aff6bfa30f0cb992d70a0cfadcd` |
| 31 | `theorem` | [norm_natCast](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/norm-natcast--505165a8c9634470b3ad9f64.md) | 279 | `result-track:505165a8c9634470b3ad9f646d4a964dcb973ff1cb87a3e481c1689d6683269e` |
| 32 | `theorem` | [norm_intCast](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/norm-intcast--7d5cfe4e133ac077c526a5c8.md) | 283 | `result-track:7d5cfe4e133ac077c526a5c8c81fa6db7870350933febe90d53fd3fd972d76a2` |
| 33 | `theorem` | [algebraMap_norm_eq_mul_star](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/algebramap-norm-eq-mul-star--af9338e9f6b8d88050a80e1e.md) | 286 | `result-track:af9338e9f6b8d88050a80e1eb0486d723720d389cb24e059f35e433fb7daebb9` |
| 34 | `theorem` | [norm_neg](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/norm-neg--bc9f73a320d80fe3c844a919.md) | 291 | `result-track:bc9f73a320d80fe3c844a9198c13089ef6ba97060b12d3f2aeba7c715f70605f` |
| 35 | `theorem` | [norm_star](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/norm-star--25986a262ffe22ff2759eed0.md) | 295 | `result-track:25986a262ffe22ff2759eed00267e8fcaa36a402fe792c7895f2fd38477a839c` |
| 36 | `theorem` | [isUnit_iff_norm_isUnit](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/isunit-iff-norm-isunit--abc021535219f32316940f9d.md) | 300 | `result-track:abc021535219f32316940f9ded9e203290969518d743820ef575a135a279aa7f` |
| 37 | `theorem` | [norm_eq_one_iff_mem_unitary](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/norm-eq-one-iff-mem-unitary--a3ec62e8a5f822de634df84c.md) | 313 | `result-track:a3ec62e8a5f822de634df84c46fc44cc67fc495d418011ae15c4a9ca64e6e787` |
| 38 | `theorem` | [mker_norm_eq_unitary](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/mker-norm-eq-unitary--6023ca4acfb62c96244c4063.md) | 322 | `result-track:6023ca4acfb62c96244c4063f18a8e5eee5b3aed0751e8a92fab81576812a7d8` |
| 39 | `theorem` | [algebraMap_mem_nonZeroDivisors_iff](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/algebramap-mem-nonzerodivisors-iff--0cd32742cc1fea9f11dd804f.md) | 328 | `result-track:0cd32742cc1fea9f11dd804f5ca4aeb231f9f5000eef9513c357b87bbff4e12d` |
| 40 | `theorem` | [star_mem_nonZeroDivisors](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/star-mem-nonzerodivisors--4c41ae47af5d5dd6e6c5ff58.md) | 341 | `result-track:4c41ae47af5d5dd6e6c5ff589f541a1e8b650704ef67b6cba48faf27b247cee5` |
| 41 | `theorem` | [star_mem_nonZeroDivisors_iff](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/star-mem-nonzerodivisors-iff--6aa38f8fe0a147ba3641de79.md) | 351 | `result-track:6aa38f8fe0a147ba3641de7962e6bb31f496d31632bbf697e6ff1d8ffddb8dc0` |
| 42 | `theorem` | [norm_mem_nonZeroDivisors_iff](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/norm-mem-nonzerodivisors-iff--fe326450d56e17461ad153c0.md) | 357 | `result-track:fe326450d56e17461ad153c0ca6b3c2ecc8e086b81cd0a86306ee4638c19ecdb` |
| 43 | `def` | [trace](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/trace--094ec094dd0110990d399d49.md) | 382 | `declaration-track:094ec094dd0110990d399d49f8a28fb9e1dcc486e4052320dd26e41c7dd40022` |
| 44 | `theorem` | [trace_def](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/trace-def--3c060ee29501b595c9fae05f.md) | 389 | `result-track:3c060ee29501b595c9fae05faa59772809fd5f019fc613745ad73e4bbde6c492` |
| 45 | `theorem` | [trace_algebraMap](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/trace-algebramap--dde64b6444b3093b0449bc19.md) | 392 | `result-track:dde64b6444b3093b0449bc198f09b6e936e8cd1b1542eddddc88338936ec7f16` |
| 46 | `theorem` | [trace_natCast](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/trace-natcast--1d16ca4309fcf099b5c73c7a.md) | 397 | `result-track:1d16ca4309fcf099b5c73c7a6f99d0b405de6a981e19eaeecbbc27ade1c6b1f5` |
| 47 | `theorem` | [trace_intCast](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/trace-intcast--973ed6a0df8791295b7ab61b.md) | 401 | `result-track:973ed6a0df8791295b7ab61b01dd2bc5022ff91dca07f4b4ea56879ce1c7b439` |
| 48 | `theorem` | [trace_omega](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/trace-omega--b1cd8993cd4eea2732e8da0e.md) | 405 | `result-track:b1cd8993cd4eea2732e8da0e0becc4587abbef27f1b6670aca91ece22a4c373c` |
| 49 | `theorem` | [trace_one](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/trace-one--f2c0081279df79230d95ea32.md) | 409 | `result-track:f2c0081279df79230d95ea320e1a423ee5765b96f7c0a1c8d096cfa1402b0145` |
| 50 | `theorem` | [trace_star](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/trace-star--fc599bf80b301b5eeb3f9540.md) | 413 | `result-track:fc599bf80b301b5eeb3f95404b9f4897ed27c6ad05094dece8c6514cbfdfedf2` |
| 51 | `theorem` | [algebraMap_trace_eq_add_star](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/algebramap-trace-eq-add-star--565f3a2fa3ad63b742825b87.md) | 417 | `result-track:565f3a2fa3ad63b742825b874fd8f8c504b76d08d816063fac50e57c3ce1c5eb` |
| 52 | `theorem` | [star_eq](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/star-eq--e79a6dfed117a4b72da59d7a.md) | 422 | `result-track:e79a6dfed117a4b72da59d7ab20d1b534eeaed27499e6ae6694b82cd7d529828` |
| 53 | `theorem` | [sq_sub_trace_smul_add_norm_eq_zero](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/sq-sub-trace-smul-add-norm-eq-zero--fd9ae4c83778032c039f6403.md) | 427 | `result-track:fd9ae4c83778032c039f6403d8a1d1dbae17c08868b9ed8c3061e2c25e451531` |
| 54 | `theorem` | [sq_eq_trace_smul_sub_norm](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/sq-eq-trace-smul-sub-norm--01e35884a549d8d7d1ab18f3.md) | 431 | `result-track:01e35884a549d8d7d1ab18f398f1bbcf969737e53fa9a98b0ee81f5df85b3a80` |
| 55 | `theorem` | [changeGenerator_relation](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/changegenerator-relation--3ee1d87521efa2289f7be40f.md) | 445 | `result-track:3ee1d87521efa2289f7be40f4ca3ee5ae40eec4c89a41a879d0f7cd073f179f7` |
| 56 | `def` | [changeGenerator](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/changegenerator--1b6f97c1ee67472a1a611e7f.md) | 455 | `declaration-track:1b6f97c1ee67472a1a611e7f474cf3099ea1f7f5634b80a59f2f3c0e0d6734d5` |
| 57 | `theorem` | [changeGenerator_omega](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/changegenerator-omega--340c239ce373b5db8db6ec64.md) | 461 | `result-track:340c239ce373b5db8db6ec649455cc762473c34f8f78f79ab14413fe9bad18d9` |
| 58 | `theorem` | [changeGenerator_injective](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/changegenerator-injective--1a195304dac589e39292f9fa.md) | 466 | `result-track:1a195304dac589e39292f9fab514c2d22e14a527919806b729a06f791f9b2c45` |
| 59 | `def` | [changeGeneratorEquiv](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/changegeneratorequiv--2f654bbe7c6db1506779fc8a.md) | 476 | `declaration-track:2f654bbe7c6db1506779fc8aa895c31ffd21b624117ebc6052e9dd6cdc0934f3` |
| 60 | `lemma` | [norm_eq_zero_iff_eq_zero](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/norm-eq-zero-iff-eq-zero--820cde9ef8e33fbd443987b4.md) | 498 | `result-track:820cde9ef8e33fbd443987b44cd96226994dcd2fff06293c36e20b52f5221293` |
| 61 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/instance--fcc50b212664c79d4010028d.md) | 513 | `declaration-track:fcc50b212664c79d4010028d78843670514ae4dc69a2af4b0fa99c235b5faaf2` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/instance--0448f5c2212db5ad87792c7c.md) | 514 | `declaration-track:0448f5c2212db5ad87792c7ccd9110272b6a45487878de02b697200f25038470` |
| 63 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/instance--04ee853f0b496e082f46e5a4.md) | 516 | `declaration-track:04ee853f0b496e082f46e5a4606d326403cd79b29c6b6663dbb9ef03771ab276` |
| 64 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/instance--2b071cbd0631b25bb721f81c.md) | 517 | `declaration-track:2b071cbd0631b25bb721f81cd6e8b315370415eb1bf926d32a418c7f37987e4d` |
| 65 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/instance--70e55f6c0345181a5d1fbbf7.md) | 521 | `declaration-track:70e55f6c0345181a5d1fbbf72ba47c16f02f0a7834a763923b9734d4379cbad9` |
| 66 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/instance--c92adf6f4ea1ea5f0e7f73fc.md) | 537 | `declaration-track:c92adf6f4ea1ea5f0e7f73fce59e83d1b6149a9e820626f2a22bc231218c35da` |
| 67 | `example` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/example--5fc250a3a7c62f2888aca93f.md) | 541 | `declaration-track:5fc250a3a7c62f2888aca93fd93d399e0a3a2078bd557d78cfb652d3e8e6b230` |
| 68 | `example` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/declarations/example--cc47755ceee2a64958d66e8e.md) | 545 | `declaration-track:cc47755ceee2a64958d66e8e9c30e89a5b0b5000b436cd6b530c14286422a39b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
