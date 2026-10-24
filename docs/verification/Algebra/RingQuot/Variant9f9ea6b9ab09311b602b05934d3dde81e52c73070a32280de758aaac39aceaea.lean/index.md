# Verification target: GRWTSK.Algebra.RingQuot.Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f4b3eab78e482a95e7dd03469b199ec730067d9",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f4b3eab78e482a95e7dd03469b199ec730067d9`.

Source path: `GRWTSK/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instance--a7a7228ed91cb7248d6da14e.md) | 42 | `declaration-track:a7a7228ed91cb7248d6da14ef3235faf5119d0b765e403a332fba6251940adce` |
| 2 | `theorem` | [coe_algebraMap](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/coe-algebramap--ec03af6cdd3a89a49af62788.md) | 49 | `result-track:ec03af6cdd3a89a49af627880a145be805250e796966d7cefce49cef6dc2e22f` |
| 3 | `inductive` | [Rel](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/rel--d3ccf5f9b56481a6cca3ac9c.md) | 61 | `declaration-track:d3ccf5f9b56481a6cca3ac9c0d2ef67533793bc287d4e7a907ffef8f0d833b70` |
| 4 | `theorem` | [Rel.add_right](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/rel-add-right--e5345c02fb1863caf68147d6.md) | 67 | `result-track:e5345c02fb1863caf68147d6efe38468bc6b0cc1db06652bf6220bc3377ab0cd` |
| 5 | `theorem` | [Rel.neg](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/rel-neg--c1bba63e439c15d9543c2645.md) | 71 | `result-track:c1bba63e439c15d9543c26459560d6ad0e6521e7866accb33e88ed88adb8624f` |
| 6 | `theorem` | [Rel.sub_left](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/rel-sub-left--684c145dab79a6ff53dddcc6.md) | 74 | `result-track:684c145dab79a6ff53dddcc6f16e94c373bf983feaf1c326db54a96f313c4525` |
| 7 | `theorem` | [Rel.sub_right](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/rel-sub-right--5fb8958878aeaf16e3f41f60.md) | 77 | `result-track:5fb8958878aeaf16e3f41f60e43e27452d9592af61840c2c8e06c6d3f9511c1c` |
| 8 | `theorem` | [Rel.smul](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/rel-smul--72adb565c68d4c1db4c4eadc.md) | 80 | `result-track:72adb565c68d4c1db4c4eadc437ada871ec38316621e13c948b4ab0f666051f7` |
| 9 | `def` | [ringCon](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/ringcon--3f91d9da90fb961fa001ee25.md) | 84 | `declaration-track:3f91d9da90fb961fa001ee25c862e3f829bdb1d169b25553be2fb72f0ea65cc5` |
| 10 | `theorem` | [eqvGen_rel_eq](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/eqvgen-rel-eq--d4f170bbc86fdde946a56aae.md) | 120 | `result-track:d4f170bbc86fdde946a56aae2a99110a4b297e4f8ceb388ed7e14ee83ffd216d` |
| 11 | `structure` | [RingQuot](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/ringquot--ea4a576ac92da3b162ea7f2f.md) | 145 | `declaration-track:ea4a576ac92da3b162ea7f2f56aec813c869f7999bb4b248333ffc290df054c3` |
| 12 | `def` | [natCast](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/natcast--9f709558db8e147a5485d936.md) | 153 | `declaration-track:9f709558db8e147a5485d936ef15ade8a2f7ff6183b47ad2744a38c9b81db1eb` |
| 13 | `def` | [smul](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/smul--da154bea6ff2d04c3fb515bf.md) | 189 | `declaration-track:da154bea6ff2d04c3fb515bf3c934788bfe55629327de16407c01ae782e6b858` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instance--ce530b9b4dcc411e69dbe0d5.md) | 192 | `declaration-track:ce530b9b4dcc411e69dbe0d5d91d87eaa4d6656027cfc448ae49f2729451d1ab` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instance--3734ccaae4aeed82328011c5.md) | 195 | `declaration-track:3734ccaae4aeed82328011c50fee8029194579738b82b3a9cca53007d1c663ad` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instance--b0f18135f8e2ac061c33290f.md) | 198 | `declaration-track:b0f18135f8e2ac061c33290f8629227525b7fd2eed75a949fbd8610e64a7bc9b` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instance--7cdd2ed936c3c17ca0ecd170.md) | 201 | `declaration-track:7cdd2ed936c3c17ca0ecd1707d67d2f8465c97a98c0592b196e2c5d7ecde076d` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instance--6613096f3e716828b9e37547.md) | 204 | `declaration-track:6613096f3e716828b9e375472d30c1900436cf3474bd3f63dffdd41b2d5fab63` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instance--309d94489ee8ee25a7fca7a8.md) | 207 | `declaration-track:309d94489ee8ee25a7fca7a8ddb3016c7df3f032648adcf015c46a35d542d024` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instance--2abbefdd60e55cabf15e9b51.md) | 210 | `declaration-track:2abbefdd60e55cabf15e9b519fa855f02051d55cf05c31ad5d83505790a333e9` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instance--d87d931dbed5cb8a5ade59d6.md) | 213 | `declaration-track:d87d931dbed5cb8a5ade59d6e9c0dd3c88373693fba3c7d52581b6434f0761f8` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instance--692bec844a50a9b0e2a97988.md) | 216 | `declaration-track:692bec844a50a9b0e2a97988ecce915399a3b05067fa9410d6422c646a6d9227` |
| 23 | `theorem` | [zero_quot](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/zero-quot--d46e7e67fba404e7b6bf5bc2.md) | 219 | `result-track:d46e7e67fba404e7b6bf5bc21598141cf569e3387339a06f4052fe076ca134f8` |
| 24 | `theorem` | [one_quot](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/one-quot--04d9aa487078a0f4c5c5fe0e.md) | 222 | `result-track:04d9aa487078a0f4c5c5fe0e388b2f635cb4b92749a7c16719d704aa54ab6a97` |
| 25 | `theorem` | [add_quot](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/add-quot--a1ae6b58414c2d17d0d79816.md) | 225 | `result-track:a1ae6b58414c2d17d0d798160b7ed79f7bf1b7075c7f3d8c90b0e17b55a5c5e9` |
| 26 | `theorem` | [mul_quot](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/mul-quot--8c900c1e0854c56ddce185ac.md) | 230 | `result-track:8c900c1e0854c56ddce185acb06d46ae69045985a540bf6ed3605774d898b1a5` |
| 27 | `theorem` | [pow_quot](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/pow-quot--753bd4ccf8a1720083b313c2.md) | 235 | `result-track:753bd4ccf8a1720083b313c2dc9bac79912ca90327fd2bc5439231b70ae26628` |
| 28 | `theorem` | [neg_quot](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/neg-quot--4fb79dc3ecf978f5c8822719.md) | 239 | `result-track:4fb79dc3ecf978f5c8822719e373c5844d0445b1ac69cb554e81c34e17ccfac8` |
| 29 | `theorem` | [sub_quot](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/sub-quot--3da7ea0329d6cf7fba1ddea7.md) | 245 | `result-track:3da7ea0329d6cf7fba1ddea711416ff692ff091e488f792236577aee0cb7db24` |
| 30 | `theorem` | [smul_quot](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/smul-quot--b98d5aa44dbd7eb7d7cee883.md) | 251 | `result-track:b98d5aa44dbd7eb7d7cee8835596e88ce7d9db7f120825a608f82f704854fc5a` |
| 31 | `instance` | [instIsScalarTower](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instisscalartower--c302c48768e59fbbaf130252.md) | 257 | `declaration-track:c302c48768e59fbbaf130252d9cbf009e0f617295452ffe19f249a8ea704e627` |
| 32 | `instance` | [instSMulCommClass](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instsmulcommclass--0cb4fb335ae675bf00f95328.md) | 261 | `declaration-track:0cb4fb335ae675bf00f95328a211e020a9b447d32406117f315e8282d0d58ef6` |
| 33 | `instance` | [instAddCommMonoid](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instaddcommmonoid--0b1ac0f5a061340a00ba93d1.md) | 265 | `declaration-track:0b1ac0f5a061340a00ba93d13f1f6fba79e0d9088e9f7f5487106852f9ca067b` |
| 34 | `instance` | [instMonoidWithZero](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instmonoidwithzero--773a66af4470b0a841fc99d7.md) | 289 | `declaration-track:773a66af4470b0a841fc99d7d9121b6171a7c751029f854f9f6fe2b2849df699` |
| 35 | `instance` | [instSemiring](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instsemiring--d01293960f7136ac7d09ca1f.md) | 313 | `declaration-track:d01293960f7136ac7d09ca1feca4f716ef0b701f41ad7432dff6e16fe209062f` |
| 36 | `def` | [intCast](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/intcast--8eb4e8624e4124f4f082960e.md) | 335 | `declaration-track:8eb4e8624e4124f4f082960efa867936e0b0bc5d8a2b89475a20bd866b0fe2f7` |
| 37 | `instance` | [instRing](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instring--7bce08d32b84289bd8faed6b.md) | 338 | `declaration-track:7bce08d32b84289bd8faed6b7bea901799247fe6975fb827ad2bfe26a80a741a` |
| 38 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instcommsemiring--166fc123ef2c1f2e2035d96c.md) | 365 | `declaration-track:166fc123ef2c1f2e2035d96c01adb06730f89b66982c11e0988a2ce343ccfdfa` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instance--974e6c63fce5d8f7936dac21.md) | 372 | `declaration-track:974e6c63fce5d8f7936dac21a3e43983b9bf925995ed172c0a4d565c55869d67` |
| 40 | `instance` | [instInhabited](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instinhabited--4896523ec219c8807618947d.md) | 375 | `declaration-track:4896523ec219c8807618947df854aebfdd7c0245158e1d8213f02d81d874e9af` |
| 41 | `instance` | [instAlgebra](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/instalgebra--b205fa7bd13477c1c3df861f.md) | 378 | `declaration-track:b205fa7bd13477c1c3df861fd1256eb57717296844c48a7693b923b1a1cb8dee` |
| 42 | `theorem` | [mkRingHom_rel](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/mkringhom-rel--0a8172e12c08bb14da433086.md) | 402 | `result-track:0a8172e12c08bb14da4330867384a2ca011658e0351a02fae9917f559a61913b` |
| 43 | `theorem` | [mkRingHom_surjective](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/mkringhom-surjective--c708c5ad3bc3c3f0af89c851.md) | 405 | `result-track:c708c5ad3bc3c3f0af89c85134765e2469815b95a5c22baab7d5ba497f0547c9` |
| 44 | `theorem` | [ringQuot_ext](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/ringquot-ext--7dda9f914e855be4b55dd59d.md) | 411 | `result-track:7dda9f914e855be4b55dd59d0179717846c88c5790cb349679be2c8a235cd149` |
| 45 | `theorem` | [lift_mkRingHom_apply](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/lift-mkringhom-apply--2e4cb54d98ab5ca044df1e0e.md) | 457 | `result-track:2e4cb54d98ab5ca044df1e0ebd496b68749b4ef82d0db2b16829db0e827d5ffa` |
| 46 | `theorem` | [lift_unique](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/lift-unique--992171dff03a9d9de06b04ca.md) | 463 | `result-track:992171dff03a9d9de06b04ca1f4d69052d0eacc056659eb28356ab4e8511e63f` |
| 47 | `theorem` | [eq_lift_comp_mkRingHom](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/eq-lift-comp-mkringhom--3d5da2039965d09ffd477485.md) | 468 | `result-track:3d5da2039965d09ffd47748522723c136e62622ebfec389abd0683919726bced` |
| 48 | `def` | [ringQuotToIdealQuotient](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/ringquottoidealquotient--6a4c92670386710735453227.md) | 485 | `declaration-track:6a4c92670386710735453227eaa39d7546486de92e0412bff43058d6da23eb42` |
| 49 | `theorem` | [ringQuotToIdealQuotient_apply](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/ringquottoidealquotient-apply--f2ea41f3ab8b10253a9c8de6.md) | 491 | `result-track:f2ea41f3ab8b10253a9c8de6f0506419da90c8ec0219a5f3e241db634a3fbc97` |
| 50 | `def` | [idealQuotientToRingQuot](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/idealquotienttoringquot--d4a31c74aad4cecedb84e16d.md) | 497 | `declaration-track:d4a31c74aad4cecedb84e16d6c8ab1dd54646453d016f2ef62ec411e77cf1137` |
| 51 | `theorem` | [idealQuotientToRingQuot_apply](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/idealquotienttoringquot-apply--60ca11e4f6fe50e90da6d8a3.md) | 512 | `result-track:60ca11e4f6fe50e90da6d8a3e356bfbaeb8d13b887d3987e50ae13a357a2e940` |
| 52 | `def` | [ringQuotEquivIdealQuotient](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/ringquotequividealquotient--a06f037d51ddbcdf711df0d8.md) | 519 | `declaration-track:a06f037d51ddbcdf711df0d8acdf5093da6dfac0298eff374caa83675c1349e9` |
| 53 | `theorem` | [mkAlgHom_coe](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/mkalghom-coe--2405719ec3e96ffb1c4fcdd9.md) | 547 | `result-track:2405719ec3e96ffb1c4fcdd9bf17d5194b2c9b81933272a16ad8f5f20e9d45e3` |
| 54 | `theorem` | [mkAlgHom_rel](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/mkalghom-rel--033c264502c3f94562ebc994.md) | 551 | `result-track:033c264502c3f94562ebc9942b6e684a9847be06d76a0691179078d08ee892f8` |
| 55 | `theorem` | [mkAlgHom_surjective](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/mkalghom-surjective--bbaf434d8004adb563464156.md) | 555 | `result-track:bbaf434d8004adb563464156d2bfbfa29db7f87f39fa3dc46dcf1ea578a43c3d` |
| 56 | `theorem` | [ringQuot_ext'](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/ringquot-ext--cd0916b4c6a47d8b4f0378e0.md) | 564 | `result-track:cd0916b4c6a47d8b4f0378e0a401e0e2c3ef100a1c49c58db19a2074f21ec6d8` |
| 57 | `theorem` | [liftAlgHom_mkAlgHom_apply](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/liftalghom-mkalghom-apply--4f2674108da36be1331c6898.md) | 612 | `result-track:4f2674108da36be1331c68989fba62af240de833cc93cbe939e8b88d18b43891` |
| 58 | `theorem` | [liftAlgHom_unique](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/liftalghom-unique--695eb11630c6bdb80a0c8716.md) | 618 | `result-track:695eb11630c6bdb80a0c8716441942a1b5e21a6f7cdaaff4a06d562112ef00b7` |
| 59 | `theorem` | [eq_liftAlgHom_comp_mkAlgHom](../../../../mathematics/Algebra/RingQuot/Variant9f9ea6b9ab09311b602b05934d3dde81e52c73070a32280de758aaac39aceaea.lean/declarations/eq-liftalghom-comp-mkalghom--2fb9ea3777e166dd9692ea43.md) | 623 | `result-track:2fb9ea3777e166dd9692ea4397f23e2e3946f89bd5d1c3376ed1523249f30578` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
