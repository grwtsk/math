# Verification target: GRWTSK.Algebra.Kleene.Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d3c281067cd5f23ac049a3c9e56e0bd4d2a4c13",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d3c281067cd5f23ac049a3c9e56e0bd4d2a4c13`.

Source path: `GRWTSK/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Attr` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IdemSemiring](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/idemsemiring--0e14eeedccfa9e7b48372469.md) | 60 | `declaration-track:0e14eeedccfa9e7b48372469e3a0ad241d73b1337ab9d32f8e487a182ba8a0db` |
| 2 | `class` | [IdemCommSemiring](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/idemcommsemiring--359dfa65085f69bd6b86031c.md) | 71 | `declaration-track:359dfa65085f69bd6b86031c80dead29be49b5cc25e65341b3437a8a9eb72e68` |
| 3 | `class` | [KStar](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar--246e117e581857b4aaaec0f7.md) | 74 | `declaration-track:246e117e581857b4aaaec0f76af4aa16a65e404727144c5797eb53aac8f39f9a` |
| 4 | `class` | [KleeneAlgebra](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kleenealgebra--6815973f70489aedf673b4c4.md) | 89 | `declaration-track:6815973f70489aedf673b4c4dbf093a0324f9eee8033a7f40a59e61d395fd22d` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/instance--cd685f216e4f49976db385b5.md) | 97 | `declaration-track:cd685f216e4f49976db385b55a6f7484fbed266773eb8167d8dd4dd4fe0f21e5` |
| 6 | `abbrev` | [IdemSemiring.ofSemiring](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/idemsemiring-ofsemiring--8c123b621235233a7b1aa7f3.md) | 102 | `declaration-track:8c123b621235233a7b1aa7f33565de293b40f28da88a9370f82a785e470001dd` |
| 7 | `theorem` | [add_eq_sup](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/add-eq-sup--96f26c4a8b23f3e3e6227c9e.md) | 123 | `result-track:96f26c4a8b23f3e3e6227c9e7454467aa955cca622363f1f7c1e9214c5f3515a` |
| 8 | `theorem` | [add_idem](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/add-idem--404a2e6e2472c39e865c23d0.md) | 128 | `result-track:404a2e6e2472c39e865c23d0544203560895469cd3cc4d89807f303573cbefb0` |
| 9 | `lemma` | [natCast_eq_one](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/natcast-eq-one--3518f2d2261f884dd4cf71f3.md) | 130 | `result-track:3518f2d2261f884dd4cf71f34fe609340be674e456119dea1457b5e964754c14` |
| 10 | `lemma` | [ofNat_eq_one](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/ofnat-eq-one--56225929b703905ec057b58d.md) | 136 | `result-track:56225929b703905ec057b58dfe2f2adef0c1825bdc0eb40a07b51e44ec6b8ce7` |
| 11 | `theorem` | [nsmul_eq_self](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/nsmul-eq-self--862da62570bc1df0697a3026.md) | 139 | `result-track:862da62570bc1df0697a3026945d0f42f7496e8f3fc5ebd82998c2928d0d7eba` |
| 12 | `theorem` | [add_eq_left_iff_le](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/add-eq-left-iff-le--e501a6a966d608a8b5d60121.md) | 144 | `result-track:e501a6a966d608a8b5d6012137087bd87be67d93a14ded22f9480077bc6b4609` |
| 13 | `theorem` | [add_eq_right_iff_le](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/add-eq-right-iff-le--39f060340a2ad3933a0669f3.md) | 146 | `result-track:39f060340a2ad3933a0669f32cf248bf4d9298e14905eb30bcf4d31d0b1016c7` |
| 14 | `theorem` | [add_le_iff](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/add-le-iff--fe06a1d9555f72bc114719be.md) | 152 | `result-track:fe06a1d9555f72bc114719bec534e16f2c57b54b2f8297d2517e253c4cf01ed8` |
| 15 | `theorem` | [add_le](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/add-le--ad0c122c6ed2667604336be6.md) | 154 | `result-track:ad0c122c6ed2667604336be6da8a618071759f4b4c6a6a28ecf4c81fcced8eb4` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/instance--81089d645be458d4df2b2981.md) | 158 | `declaration-track:81089d645be458d4df2b2981cdbf9a5c0751414aa1d6e775640a5cc9c2e754f0` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/instance--f0a25c6fd17156d7a95f79c9.md) | 165 | `declaration-track:f0a25c6fd17156d7a95f79c923f7483c57de44c1d61deb6d791165e920ed55b8` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/instance--68f69eae09696fcbae7ffd88.md) | 171 | `declaration-track:68f69eae09696fcbae7ffd88ae1b1ec311937d28904db424c8f2b3adac523142` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/instance--ca366ad556630b052e69e7f2.md) | 175 | `declaration-track:ca366ad556630b052e69e7f258c4595bb20670290578b3329fcc0e4cf6af2a43` |
| 20 | `theorem` | [one_le_kstar](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/one-le-kstar--7f80471ce118d23f363ba924.md) | 185 | `result-track:7f80471ce118d23f363ba92484c6fa158c82c6c249be14a9f1b2117d6e847cb0` |
| 21 | `theorem` | [mul_kstar_le_kstar](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/mul-kstar-le-kstar--f62c4ca078ac014ea53067e8.md) | 188 | `result-track:f62c4ca078ac014ea53067e8ac8487fb77d8411bf35ae59d2a28c77c4a9483e1` |
| 22 | `theorem` | [kstar_mul_le_kstar](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-mul-le-kstar--adaffc4ea16624a448d080ef.md) | 191 | `result-track:adaffc4ea16624a448d080ef3c735262810ad533ae298d80a7bd9c9d74965e25` |
| 23 | `theorem` | [mul_kstar_le_self](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/mul-kstar-le-self--c0801a72176e0b34281df0cb.md) | 194 | `result-track:c0801a72176e0b34281df0cb790ecd28a014f8c882ce88465fb591857090e039` |
| 24 | `theorem` | [kstar_mul_le_self](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-mul-le-self--8cc386a80b4665774158f79f.md) | 197 | `result-track:8cc386a80b4665774158f79f1565eac4296aa19ae90d314534af9f0073ed027d` |
| 25 | `theorem` | [mul_kstar_le](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/mul-kstar-le--7d43d292c736156343488415.md) | 200 | `result-track:7d43d292c7361563434884152766520b194c4a08082887d962897a9d2bd56bc7` |
| 26 | `theorem` | [kstar_mul_le](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-mul-le--b248b815d08a53380d0ff3dc.md) | 203 | `result-track:b248b815d08a53380d0ff3dcf78cb5772277c3d6a2b1e95a17337bfd65f593f0` |
| 27 | `theorem` | [kstar_le_of_mul_le_left](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-le-of-mul-le-left--e299ed1841d9e13296a15609.md) | 206 | `result-track:e299ed1841d9e13296a156098ba90033923f5e5ee70965c8c547d0fb21b2956a` |
| 28 | `theorem` | [kstar_le_of_mul_le_right](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-le-of-mul-le-right--7aa5dc16eb45fb518716ec1b.md) | 209 | `result-track:7aa5dc16eb45fb518716ec1b852efd740d1330d7ca20c3d23c9a32c62898cc55` |
| 29 | `theorem` | [le_kstar](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/le-kstar--e93468b9c53e36d950df46af.md) | 213 | `result-track:e93468b9c53e36d950df46af0367ec8d955a0c5103357cc4ec200e704ebf3e80` |
| 30 | `theorem` | [kstar_mono](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-mono--2d38d650c695b18342b5a4a3.md) | 217 | `result-track:2d38d650c695b18342b5a4a331a0f2e60bccc22142c369b780c9b6b7dbbffc3d` |
| 31 | `theorem` | [kstar_eq_one](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-eq-one--94f11ddd5560cc49ea64138a.md) | 222 | `result-track:94f11ddd5560cc49ea64138a5dcb1d29ae6dc5674ff826dc4a8472912b317e26` |
| 32 | `lemma` | [kstar_zero](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-zero--dba5ebd7d40e759a0805d70f.md) | 226 | `result-track:dba5ebd7d40e759a0805d70fc6b275572bef5a2ba6e8ce00816d05506376537e` |
| 33 | `theorem` | [kstar_one](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-one--12e76a9c625cdc58bf18caaa.md) | 229 | `result-track:12e76a9c625cdc58bf18caaa44acaf47fc8adc6f01178858018dff31df9214c5` |
| 34 | `theorem` | [kstar_mul_kstar](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-mul-kstar--a0878232876745f34b812511.md) | 233 | `result-track:a0878232876745f34b8125115f69a635c63d6f9afbd521ff498738085770eb0a` |
| 35 | `theorem` | [kstar_eq_self](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-eq-self--a562c30353b5d0491929e4fe.md) | 237 | `result-track:a562c30353b5d0491929e4fe19902e1815707c926bd9052052803a642ee1b7b6` |
| 36 | `theorem` | [kstar_idem](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-idem--cbce26e7ea98bd819576815d.md) | 242 | `result-track:cbce26e7ea98bd819576815d0dc0e51a76a33275ce1fac6256774ff62f5bdaae` |
| 37 | `theorem` | [pow_le_kstar](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/pow-le-kstar--28b5f93125a75d179df73200.md) | 246 | `result-track:28b5f93125a75d179df73200a2b8dd95259e7325e76cbd08396e05d7d498b1f7` |
| 38 | `instance` | [instIdemSemiring](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/instidemsemiring--d98ae4fb38a308e6b4dfd008.md) | 256 | `declaration-track:d98ae4fb38a308e6b4dfd008b8681f2275a75ad25d3d7061c76d0893100fdbc9` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/instance--c7507775dd576292b8359859.md) | 260 | `declaration-track:c7507775dd576292b835985968834de8490a5465f64822505d5879d68a4b0f8d` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/instance--ceda0d4dbf755b03ccbd6cef.md) | 265 | `declaration-track:ceda0d4dbf755b03ccbd6cefc274c89bd14effbae6bb00a20b9432f087a996e9` |
| 41 | `theorem` | [kstar_def](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-def--2bcd4c048d83e108f0f75ef6.md) | 274 | `result-track:2bcd4c048d83e108f0f75ef67146d55c1bd600fe09e946b96e14283c37781a06` |
| 42 | `theorem` | [fst_kstar](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/fst-kstar--48d0e7e6a3f14a3bd74e06c9.md) | 278 | `result-track:48d0e7e6a3f14a3bd74e06c915560e14fd7190096b454dc8b2bddb4d7ee388f1` |
| 43 | `theorem` | [snd_kstar](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/snd-kstar--819d3290ab54fe12ee5c27ee.md) | 282 | `result-track:819d3290ab54fe12ee5c27ee3050facfdc07d18c7fbf4747e358b3e56fa2b996` |
| 44 | `instance` | [instIdemSemiring](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/instidemsemiring--350f6f43d0b3d22605eeb246.md) | 289 | `declaration-track:350f6f43d0b3d22605eeb2467f5e4ea8155dcd64bbc4d78b6741611b166bf6e4` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/instance--846195c6348038d355177017.md) | 293 | `declaration-track:846195c6348038d3551770178638b939e2d492c6c7c30a692e56107ca8b4443e` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/instance--b23aae8c662f04c862cdf6cd.md) | 298 | `declaration-track:b23aae8c662f04c862cdf6cd8d1bb799df609b58be4a2d2dbafe578a2471c232` |
| 47 | `theorem` | [kstar_def](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-def--6f049a3f8e8b677f1160b73c.md) | 307 | `result-track:6f049a3f8e8b677f1160b73cc9727df097649b275a43b9bf8d9be97a573a530d` |
| 48 | `theorem` | [kstar_apply](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kstar-apply--366c7b9faf3d3690ba9dbab2.md) | 311 | `result-track:366c7b9faf3d3690ba9dbab266714639168896c57140f822a495de1fac7eb554` |
| 49 | `abbrev` | [idemSemiring](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/idemsemiring--bb532beff33587731375e7e7.md) | 320 | `declaration-track:bb532beff33587731375e7e77fe8fd59e504824542f528d967f2065d74966294` |
| 50 | `abbrev` | [idemCommSemiring](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/idemcommsemiring--cafb7a656191d7b78de7defc.md) | 334 | `declaration-track:cafb7a656191d7b78de7defc7fe947f9c80072802bfbe837d60eb2cd5dee99eb` |
| 51 | `abbrev` | [kleeneAlgebra](../../../../mathematics/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/declarations/kleenealgebra--02f2065e87ce97de5a3aea01.md) | 345 | `declaration-track:02f2065e87ce97de5a3aea01b9d9197844582d3591d54e34d8a6fbfbfd44d246` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
