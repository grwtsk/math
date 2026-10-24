# Verification target: GRWTSK.Algebra.Basic.Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98a4886617f85178009de177e63ea4abb663c888",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98a4886617f85178009de177e63ea4abb663c888`.

Source path: `GRWTSK/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [omega](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/omega--ebec7e6d51394d8b79fe55eb.md) | 55 | `declaration-track:ebec7e6d51394d8b79fe55ebb190929817275f67f0d2a122188c3b06a58ea8ed` |
| 2 | `theorem` | [re_omega](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/re-omega--d4e6b8c2c3844ab13bdfc991.md) | 62 | `result-track:d4e6b8c2c3844ab13bdfc991f1779faee1d3d08a1f85e860bc2b06df73d293b1` |
| 3 | `theorem` | [im_omega](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/im-omega--8cca3157265dc00aea635808.md) | 66 | `result-track:8cca3157265dc00aea635808aacb861fd7d603d3698c464fe95b1fe6cd9d2d28` |
| 4 | `theorem` | [omega_mul_omega_eq_mk](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/omega-mul-omega-eq-mk--e6caea38d92c01a0823aff12.md) | 76 | `result-track:e6caea38d92c01a0823aff12243f2f84f4becdb30adf62cbb30f9999d6abacc5` |
| 5 | `theorem` | [omega_mul_omega_eq_add](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/omega-mul-omega-eq-add--4987beb7ae50f491d920442a.md) | 79 | `result-track:4987beb7ae50f491d920442a272a005c508dd9194ff84f0389f4d7913dd503f8` |
| 6 | `theorem` | [omega_pow_two_eq_add](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/omega-pow-two-eq-add--a638eeaae153444ddf27547d.md) | 83 | `result-track:a638eeaae153444ddf27547dac72ea0f49ea8e4147eee5d88016324524568a26` |
| 7 | `theorem` | [omega_mul_omega_eq_algebraMap](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/omega-mul-omega-eq-algebramap--ddf1129ff9fe4ae909511e1a.md) | 87 | `result-track:ddf1129ff9fe4ae909511e1a49d40fb4572bbc012d6f80bd6e74b214cd32e73a` |
| 8 | `theorem` | [basis_apply_one](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/basis-apply-one--d73e8ed7b11d07353a8a4573.md) | 92 | `result-track:d73e8ed7b11d07353a8a4573c844fd8e320f9f543706fcef96f704014067eafc` |
| 9 | `theorem` | [omega_mul_mk](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/omega-mul-mk--c63afa5838a2d70320937c25.md) | 96 | `result-track:c63afa5838a2d70320937c252faf4a80626097fca67b1e16c94748f55c02c8c6` |
| 10 | `theorem` | [omega_mul_algebraMap_mul_mk](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/omega-mul-algebramap-mul-mk--1e922fd76aba033bd19774d3.md) | 100 | `result-track:1e922fd76aba033bd19774d3108fe15e98fbbb4cf0c1fb2fb5c3ce65a1bf2428` |
| 11 | `theorem` | [mk_eq_add_smul_omega](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/mk-eq-add-smul-omega--72b0fbe9fd9ee6233a9a5ee8.md) | 104 | `result-track:72b0fbe9fd9ee6233a9a5ee83a0a8746bd872b9d55b2fcaf4936fb51e2ac2962` |
| 12 | `theorem` | [re_smul_add_im_smul](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/re-smul-add-im-smul--1b1d648304b588d7193910df.md) | 109 | `result-track:1b1d648304b588d7193910df1549e5ffd5ed3f4ccbdbf69aac8188ca77204342` |
| 13 | `theorem` | [algHom_ext](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/alghom-ext--00b9578a451d24fc18e02d38.md) | 115 | `result-track:00b9578a451d24fc18e02d3885e187265ee14532cbb045bff41c5b2fa0732997` |
| 14 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/lift--e45541fa2c1b4b9052e06b6a.md) | 126 | `declaration-track:e45541fa2c1b4b9052e06b6a7fd87a30d16772b1bbe7280910c8641c7d465e3a` |
| 15 | `theorem` | [adjoin_omega_eq_top](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/adjoin-omega-eq-top--ccb11ca191cc766e62be2a9a.md) | 171 | `result-track:ccb11ca191cc766e62be2a9a8c5df8dc9240db0011b1e46796d42cab01f77e47` |
| 16 | `theorem` | [range_lift](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/range-lift--4aaf4ceb5e51c540d4574217.md) | 177 | `result-track:4aaf4ceb5e51c540d4574217e457cda89d8fa36b8252461c76fdcd58623dfe84` |
| 17 | `theorem` | [lift_surjective_iff](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/lift-surjective-iff--7b3d452443a435e6033269d5.md) | 183 | `result-track:7b3d452443a435e6033269d578e4b871abae47af6cdca3c011f09204428bed1e` |
| 18 | `theorem` | [lift_injective_iff](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/lift-injective-iff--3b2e43aa3da604691ea7741c.md) | 194 | `result-track:3b2e43aa3da604691ea7741cc18bf1b76e44d025c128bce3af54762b9a8f4f86` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/instance--e5341e3975edb0119bb11d83.md) | 208 | `declaration-track:e5341e3975edb0119bb11d8396b1583ec259e9f6f686fadb573a4db72b1c933b` |
| 20 | `theorem` | [star_mk](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/star-mk--1e8961653a1ae980c55fb5eb.md) | 212 | `result-track:1e8961653a1ae980c55fb5eb13064d4d97c4d3d0f9f63f85d0f87b3dd90f4040` |
| 21 | `theorem` | [re_star](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/re-star--0f02492bf27518b1ce3a597c.md) | 217 | `result-track:0f02492bf27518b1ce3a597c0bfea66564209ed9bbd7fc3c8133a5c6cfb20901` |
| 22 | `theorem` | [im_star](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/im-star--8fd9f6f2748d3e3eb2b4c0a1.md) | 222 | `result-track:8fd9f6f2748d3e3eb2b4c0a1cf0e25f3332a48abf6a53185361dcdca0fbd1025` |
| 23 | `theorem` | [mul_star](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/mul-star--33be59b6a287502992f07866.md) | 226 | `result-track:33be59b6a287502992f07866bf21849c993b10991176609952f20666e7aed485` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/instance--3b625464ef8486ac37002188.md) | 232 | `declaration-track:3b625464ef8486ac370021881756b3261c2e991dfabef9889551bda4fdd3afc8` |
| 25 | `theorem` | [sub_star](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/sub-star--bf69c65fb197ea289ed48e21.md) | 240 | `result-track:bf69c65fb197ea289ed48e210bf203f337c978d997a2fbb1010ce2b5c909520a` |
| 26 | `def` | [norm](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/norm--dc59c764144ff9aa440fb93c.md) | 251 | `declaration-track:dc59c764144ff9aa440fb93c45bab7b1d0a6353042cff596f5156e5970202df7` |
| 27 | `theorem` | [norm_def](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/norm-def--da830a3c506bdec9ee488502.md) | 256 | `result-track:da830a3c506bdec9ee488502b58b197e320cb5567df4cfd6866e05edd8fbb9ec` |
| 28 | `theorem` | [norm_zero](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/norm-zero--00665f09a432484911ee50e0.md) | 261 | `result-track:00665f09a432484911ee50e0ffdb3e2cfa664965352aa1f93c17961330902a85` |
| 29 | `theorem` | [norm_one](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/norm-one--1fe0e1ddfb053a79fd409c94.md) | 264 | `result-track:1fe0e1ddfb053a79fd409c94f225716c68c4e31172c5f06a3e21364fdff86851` |
| 30 | `theorem` | [norm_algebraMap](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/norm-algebramap--be9a785b74ebc9d966142136.md) | 267 | `result-track:be9a785b74ebc9d966142136bd94d239cd91912255b594444af439fd78ce0383` |
| 31 | `theorem` | [norm_natCast](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/norm-natcast--ecf23795906a070b4bd71286.md) | 271 | `result-track:ecf23795906a070b4bd7128676fea748b8a2f2a39362a3291f6c0071296ca061` |
| 32 | `theorem` | [norm_intCast](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/norm-intcast--cb8fe1c74970f2ff83be4d10.md) | 275 | `result-track:cb8fe1c74970f2ff83be4d10823f6dd1f4618d3e4ece1e0a2e938c5798a71958` |
| 33 | `theorem` | [algebraMap_norm_eq_mul_star](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/algebramap-norm-eq-mul-star--8d6b853be4d8a7247b612438.md) | 278 | `result-track:8d6b853be4d8a7247b612438f030c8a8b670ffbaeefb91eff35a2c98e9e9b558` |
| 34 | `theorem` | [norm_neg](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/norm-neg--a0d69771a074f9fcd9450b27.md) | 283 | `result-track:a0d69771a074f9fcd9450b27e23b6eb8460c70c9e34742bb62a6f6e08744296e` |
| 35 | `theorem` | [norm_star](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/norm-star--869d93408aed7d411a2fa4d5.md) | 287 | `result-track:869d93408aed7d411a2fa4d507d516e24c7d1c831e7292de5fa5f0df44f4be11` |
| 36 | `theorem` | [isUnit_iff_norm_isUnit](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/isunit-iff-norm-isunit--54d9ff34d7e5f927f0d62a09.md) | 292 | `result-track:54d9ff34d7e5f927f0d62a097ccddb0d66d05fb654f3719dd1cf92e27a58a576` |
| 37 | `theorem` | [norm_eq_one_iff_mem_unitary](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/norm-eq-one-iff-mem-unitary--d8df92c30a592e1f673b730d.md) | 305 | `result-track:d8df92c30a592e1f673b730dc199654f5b86c5ee9dff126fc8bb6ebbf4f7d843` |
| 38 | `theorem` | [mker_norm_eq_unitary](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/mker-norm-eq-unitary--564acd8b373ce7212d084acb.md) | 314 | `result-track:564acd8b373ce7212d084acbb291636c390808442601b448fe7ace0a4305f917` |
| 39 | `theorem` | [algebraMap_mem_nonZeroDivisors_iff](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/algebramap-mem-nonzerodivisors-iff--69b396ee0163581bce90bee0.md) | 320 | `result-track:69b396ee0163581bce90bee0fc9ef93bdf188adf1a7c3dd287b470a8714b3197` |
| 40 | `theorem` | [star_mem_nonZeroDivisors](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/star-mem-nonzerodivisors--63898807bcbea55b0de30aaa.md) | 333 | `result-track:63898807bcbea55b0de30aaa8d7a3300d20960ab9b95e0b9a79e3331ee03de3f` |
| 41 | `theorem` | [star_mem_nonZeroDivisors_iff](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/star-mem-nonzerodivisors-iff--2f341a2703e14ef33ebbc6d8.md) | 343 | `result-track:2f341a2703e14ef33ebbc6d82a1128f02e1890cc5506c2ade37b422c34c3d64e` |
| 42 | `theorem` | [norm_mem_nonZeroDivisors_iff](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/norm-mem-nonzerodivisors-iff--603570fa3a52ee0d98b4b162.md) | 349 | `result-track:603570fa3a52ee0d98b4b16209e99273e8dc16572f745c54b16e8c7099eb442f` |
| 43 | `def` | [trace](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/trace--e5bbc715ff7d9c563a0bdd01.md) | 374 | `declaration-track:e5bbc715ff7d9c563a0bdd01d72d2f607447d40ba9768711f95b6ad39c4eeac8` |
| 44 | `theorem` | [trace_def](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/trace-def--93f09a00be79355ef9126cd9.md) | 381 | `result-track:93f09a00be79355ef9126cd92a076fc3313d459b517d537d2028981b16820566` |
| 45 | `theorem` | [trace_algebraMap](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/trace-algebramap--ad3af28dd69fb293ba41b59f.md) | 384 | `result-track:ad3af28dd69fb293ba41b59fb5712e292da57a24b590ba986c348370792c78b0` |
| 46 | `theorem` | [trace_natCast](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/trace-natcast--922f079e09a9bb0a7e9f0d99.md) | 389 | `result-track:922f079e09a9bb0a7e9f0d99212746172c58507599f4b8baaed19274a83ac441` |
| 47 | `theorem` | [trace_intCast](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/trace-intcast--0845097d9cefc3f05f107594.md) | 393 | `result-track:0845097d9cefc3f05f1075949318711c29d0ce44b1bfd515341d0d7ad0b60539` |
| 48 | `theorem` | [trace_omega](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/trace-omega--d8740664a409a62916ae8afd.md) | 397 | `result-track:d8740664a409a62916ae8afd6968568ae4558fad26f1db5133db9318c0dc413b` |
| 49 | `theorem` | [trace_one](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/trace-one--b72121af53156d827965b83c.md) | 401 | `result-track:b72121af53156d827965b83c6f6296d53be26298580e99c6338b82b17b5e7241` |
| 50 | `theorem` | [trace_star](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/trace-star--bf0570d26204723c34e0db83.md) | 405 | `result-track:bf0570d26204723c34e0db8359292dd8d9c155d70914190973783207a7b1f2a6` |
| 51 | `theorem` | [algebraMap_trace_eq_add_star](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/algebramap-trace-eq-add-star--a869bbbce2ab6e3bb131675e.md) | 409 | `result-track:a869bbbce2ab6e3bb131675e2147ad48f1a843fc16156b66b370bcfa1a4c8916` |
| 52 | `theorem` | [star_eq](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/star-eq--7fc689f043b951aa3c9a74fb.md) | 414 | `result-track:7fc689f043b951aa3c9a74fbb2d5a99333d9d3f225fbd6d7b26765bfeb388029` |
| 53 | `theorem` | [sq_sub_trace_smul_add_norm_eq_zero](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/sq-sub-trace-smul-add-norm-eq-zero--572a6382a80b511393b56294.md) | 419 | `result-track:572a6382a80b511393b562946f00eb042364e8dc2fab9db34d8910bc245bde9e` |
| 54 | `theorem` | [sq_eq_trace_smul_sub_norm](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/sq-eq-trace-smul-sub-norm--34e80e0d8bc1f9671a923711.md) | 423 | `result-track:34e80e0d8bc1f9671a923711531b4c87984437c4ab56b496df799fb530ea370d` |
| 55 | `theorem` | [changeGenerator_relation](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/changegenerator-relation--36f121568af74ae4dfaeb76c.md) | 437 | `result-track:36f121568af74ae4dfaeb76c7f0f571789c0a3df92fe6ee9d56c6b321da88497` |
| 56 | `def` | [changeGenerator](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/changegenerator--7143b0252273012436ab8626.md) | 447 | `declaration-track:7143b0252273012436ab86269c624838a2db638e049ef570105a238dedba8ac7` |
| 57 | `theorem` | [changeGenerator_omega](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/changegenerator-omega--62af522a60a1871839de7d93.md) | 453 | `result-track:62af522a60a1871839de7d93c536dad48a5030145e6516b62f7c56bb7c1dee37` |
| 58 | `theorem` | [changeGenerator_injective](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/changegenerator-injective--fe93ef692f51cfad795858a8.md) | 458 | `result-track:fe93ef692f51cfad795858a8d1550356ae4ed237df0651db2c45cd7a2eeb4a02` |
| 59 | `def` | [changeGeneratorEquiv](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/changegeneratorequiv--9a825349af988f4cd80c6bd0.md) | 468 | `declaration-track:9a825349af988f4cd80c6bd099ac39c034bc62acc530242de35ed870e89d9de8` |
| 60 | `lemma` | [norm_eq_zero_iff_eq_zero](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/norm-eq-zero-iff-eq-zero--b08d48fbfb9d975978ee4e09.md) | 490 | `result-track:b08d48fbfb9d975978ee4e0944b8d2ace351b0e017faaaf04aedfec5935de048` |
| 61 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/instance--946e51c3e605170a8bed178c.md) | 505 | `declaration-track:946e51c3e605170a8bed178cf1613eaf7e1305f036e46f6f4e1d89eebc42c840` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/instance--f83f2791aa4e5956193df7e3.md) | 506 | `declaration-track:f83f2791aa4e5956193df7e3140e3e550714c01a5088d084f732b38fc58d0c40` |
| 63 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/instance--6209ff481d158c64891c3643.md) | 508 | `declaration-track:6209ff481d158c64891c36439d323eb2a672c509d0d398fa40eda3c45b754ea3` |
| 64 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/instance--ad5dae8340893f85472ac2b5.md) | 509 | `declaration-track:ad5dae8340893f85472ac2b511895b6a9210690167d6289c49c84b9ff7794771` |
| 65 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/instance--e26bb86c30150af5d7ad91ed.md) | 513 | `declaration-track:e26bb86c30150af5d7ad91ed0a590e8e6c83f71e87a84960c40f882b414d92ef` |
| 66 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/instance--8b0e2b7491dea4786e5d4c93.md) | 529 | `declaration-track:8b0e2b7491dea4786e5d4c939c8186224b6c59ed3aaa1da930aa135f10ea8c30` |
| 67 | `example` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/example--6f112c60f16637dd34d9f92b.md) | 533 | `declaration-track:6f112c60f16637dd34d9f92bbfe55ada4bd65db3aaab3a291e61286a0e228581` |
| 68 | `example` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/declarations/example--82d9505453b29f2d636108d4.md) | 537 | `declaration-track:82d9505453b29f2d636108d46dc663092886b5af125ffe36cc62b265fe42678a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
