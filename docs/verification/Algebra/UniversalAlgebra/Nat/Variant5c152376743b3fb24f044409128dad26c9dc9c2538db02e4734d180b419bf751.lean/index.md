# Verification target: GRWTSK.Algebra.UniversalAlgebra.Nat.Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85262af47be6286caa8fc7caf55dad1568d98415",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85262af47be6286caa8fc7caf55dad1568d98415`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/instance--3a6f52c4672c888ccf26bb63.md) | 41 | `declaration-track:3a6f52c4672c888ccf26bb63e907b22dc0e98aaaf78e9c2c22b59f91d7c3aed6` |
| 2 | `theorem` | [gcd_eq_nat_gcd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/gcd-eq-nat-gcd--004055236193f4743428d05b.md) | 51 | `result-track:004055236193f4743428d05b0b8535aaac3bbeee0029508d4c9b6a154784568d` |
| 3 | `theorem` | [lcm_eq_nat_lcm](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/lcm-eq-nat-lcm--3cdb753ebe2890a48d613fa4.md) | 54 | `result-track:3cdb753ebe2890a48d613fa41319f00025e1fee3c142cf8f0fc74ec1ee674cfa` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/instance--1f0d798dbd8dddc0c138f2a0.md) | 57 | `declaration-track:1f0d798dbd8dddc0c138f2a0c15c71ce309f11bd8238c6abdb7ac5509507c204` |
| 5 | `instance` | [strongNormalizationMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/strongnormalizationmonoid--f2e38eed545324c00541f628.md) | 67 | `declaration-track:f2e38eed545324c00541f628df673517a21545fdb9dd315d2b46cfe9482d89d3` |
| 6 | `theorem` | [normUnit_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/normunit-eq--c70098634e1a4cb5ad91ab55.md) | 80 | `result-track:c70098634e1a4cb5ad91ab55575909b2f538199ab45a58c2f985a33a5afa7ba4` |
| 7 | `theorem` | [normalize_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/normalize-of-nonneg--ce819578553d1bdf176ce9c6.md) | 82 | `result-track:ce819578553d1bdf176ce9c630767551e5c96f6846813d2ce85759096565ec39` |
| 8 | `theorem` | [normalize_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/normalize-of-nonpos--86a8d0c6ef4fff23dfc7cbf0.md) | 85 | `result-track:86a8d0c6ef4fff23dfc7cbf08eb50c59f17768679a6d71fb3697d4dc3d40df5a` |
| 9 | `theorem` | [normalize_coe_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/normalize-coe-nat--f50abe786ebacfadf282405a.md) | 91 | `result-track:f50abe786ebacfadf282405a6bd8248c62faf5e227d37eabe98f384790ef10a6` |
| 10 | `theorem` | [abs_eq_normalize](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/abs-eq-normalize--246871d6a6dd71140b5a5513.md) | 94 | `result-track:246871d6a6dd71140b5a55139b582e76d195f96dd18620431c7ea1c9b6ede876` |
| 11 | `theorem` | [nonneg_of_normalize_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/nonneg-of-normalize-eq-self--a16182a1abc5c272f7ea9f47.md) | 98 | `result-track:a16182a1abc5c272f7ea9f471e544fc9508540cd6fbf8ad0aac62e904d0d0537` |
| 12 | `theorem` | [nonneg_iff_normalize_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/nonneg-iff-normalize-eq-self--aef898fbfe4c12d74d989dff.md) | 104 | `result-track:aef898fbfe4c12d74d989dfffba1c127cc618c2f1ebc04f069cfe464d6237e35` |
| 13 | `theorem` | [eq_of_associated_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/eq-of-associated-of-nonneg--09d7b72f759bb1c6d0d5ed2c.md) | 107 | `result-track:09d7b72f759bb1c6d0d5ed2c2c65e1eed359b52def00881d22d9202d15662622` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/instance--3163666a1162446701feaed7.md) | 115 | `declaration-track:3163666a1162446701feaed7519dea475497724759f1f36df1392634ebe6fda3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/instance--5868ebe2fa9974dbb6ebc7bf.md) | 127 | `declaration-track:5868ebe2fa9974dbb6ebc7bf93c15324b889fc47f80ad94cd7be66fb584a9a3d` |
| 16 | `theorem` | [coe_gcd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/coe-gcd--1a10c97af772e4ca9caa4666.md) | 133 | `result-track:1a10c97af772e4ca9caa4666b74f3ccf62a44d2238dcb1357419f97fcc455fe5` |
| 17 | `theorem` | [coe_lcm](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/coe-lcm--3002cf7b88fd4fa02767baa6.md) | 136 | `result-track:3002cf7b88fd4fa02767baa6e5b231196d08c0d9abdf2955a72f7a0ced49432f` |
| 18 | `theorem` | [natAbs_gcd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/natabs-gcd--0c81dc8b1265441c605f62b0.md) | 139 | `result-track:0c81dc8b1265441c605f62b074b78109342002c877598d4b941d70274f764595` |
| 19 | `theorem` | [natAbs_lcm](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/natabs-lcm--91b0136af47fdd76ae315fab.md) | 142 | `result-track:91b0136af47fdd76ae315fabb21718384c836a8288457ad80f57ce14bb5a3644` |
| 20 | `lemma` | [gcd_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/gcd-nonneg--42456b831aab26f60600b21b.md) | 145 | `result-track:42456b831aab26f60600b21b559b1ca82b0161b32a612e27eaf136b34e723cc1` |
| 21 | `lemma` | [lcm_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/lcm-nonneg--321dabc28f34e1467b0b325e.md) | 146 | `result-track:321dabc28f34e1467b0b325e93d4b3d7765bba0baf4aa739b2d1609c13132ace` |
| 22 | `theorem` | [exists_unit_of_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/exists-unit-of-abs--85ba7df3c032424a875aece1.md) | 150 | `result-track:85ba7df3c032424a875aece1f5eb2f4775eed3ba172bfa6b648d1498e22455c0` |
| 23 | `theorem` | [gcd_eq_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/gcd-eq-natabs--d57c5e5333a8d48e9d8a6663.md) | 158 | `result-track:d57c5e5333a8d48e9d8a66637d20af866075cad127d0f06d93cae0de999a4ab9` |
| 24 | `def` | [associatesIntEquivNat](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/associatesintequivnat--a4adc1f9937a2cb91666587d.md) | 163 | `declaration-track:a4adc1f9937a2cb91666587d6bc87f1c76d27640a209c0e8f2559b2ffda935b7` |
| 25 | `theorem` | [Int.associated_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/int-associated-natabs--26a8a65e4e0cec97b661eb7c.md) | 171 | `result-track:26a8a65e4e0cec97b661eb7c1d97df43a681931f64c571fc4ad990645d203c35` |
| 26 | `theorem` | [Int.associated_iff_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/int-associated-iff-natabs--4e60e73a4f28179eb738e0ca.md) | 174 | `result-track:4e60e73a4f28179eb738e0cae15f36ab17d3212ca71ed5cd36372161eaccd061` |
| 27 | `theorem` | [Int.associated_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant5c152376743b3fb24f044409128dad26c9dc9c2538db02e4734d180b419bf751.lean/declarations/int-associated-iff--58f4e421e8f6e975655c94b8.md) | 179 | `result-track:58f4e421e8f6e975655c94b8ad72e74f50f9ed0b13cb2091e6b53fbe92d16118` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
