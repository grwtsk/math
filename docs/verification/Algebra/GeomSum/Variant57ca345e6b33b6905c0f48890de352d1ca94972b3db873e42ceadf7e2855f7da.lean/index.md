# Verification target: GRWTSK.Algebra.GeomSum.Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "471efde1ac4ff6e7ed2cf2f678feb9a33e24eac8",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/index.md) · [Full source](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `471efde1ac4ff6e7ed2cf2f678feb9a33e24eac8`.

Source path: `GRWTSK/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.NatPowAssoc` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [geom_sum_succ](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-succ--4b774dc13436cbc878ccdf6d.md) | 48 | `result-track:4b774dc13436cbc878ccdf6d0dae974f64ec65f3b12c18c0548276a5b8e454c7` |
| 2 | `theorem` | [geom_sum_succ'](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-succ--f5def0479e64f94c5e419e0c.md) | 52 | `result-track:f5def0479e64f94c5e419e0cba3f6c2c1eb7c2e47360d43f87ea00baa5e114f3` |
| 3 | `theorem` | [geom_sum_zero](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-zero--664e8196085511afa1a8c8f3.md) | 56 | `result-track:664e8196085511afa1a8c8f3103bd26a3a42c7968c714eb9e988f7cb895a57e7` |
| 4 | `theorem` | [geom_sum_one](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-one--2a062c4d667bd04f437d2c07.md) | 59 | `result-track:2a062c4d667bd04f437d2c07f331b5b200f01ed81a3dee9816ed1ffb26ed1e07` |
| 5 | `theorem` | [geom_sum_two](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-two--c28b5eb434375329faeb1596.md) | 62 | `result-track:c28b5eb434375329faeb1596999517d3639c7071786ddade5189fbe8d2e882d7` |
| 6 | `theorem` | [zero_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/zero-geom-sum--a634d79aabd0727495ef0bab.md) | 65 | `result-track:a634d79aabd0727495ef0bab6a06c14dfdce547c3322fdb2af7f5f1530782482` |
| 7 | `theorem` | [one_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/one-geom-sum--936e42fe44b835e4e71532c0.md) | 72 | `result-track:936e42fe44b835e4e71532c0355319b174f87c65f678113654a3e12419239d96` |
| 8 | `theorem` | [op_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/op-geom-sum--66128a96433c5b0fa439e6a2.md) | 74 | `result-track:66128a96433c5b0fa439e6a23c7c72e13a1749b591afb0e25b4e22ca613e5504` |
| 9 | `theorem` | [op_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/op-geom-sum--c8a7ed9619750a15f99fa707.md) | 78 | `result-track:c8a7ed9619750a15f99fa70768b617b108dcd902e6b4e69eefd1ae229e89cc3b` |
| 10 | `theorem` | [geom_sum₂_with_one](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-with-one--4adabdea3a65809ea1ee07b0.md) | 87 | `result-track:4adabdea3a65809ea1ee07b0f84ef951de2104a2c0ac066ae8236b5371e8287d` |
| 11 | `theorem` | [Commute.geom_sum₂_mul_add](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/commute-geom-sum-mul-add--00de190c02877e61b67db95c.md) | 92 | `result-track:00de190c02877e61b67db95cace70a885bcd14b0f69624684fc736b661da5d81` |
| 12 | `theorem` | [neg_one_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/neg-one-geom-sum--7adacd4e07b3333b16426ae4.md) | 117 | `result-track:7adacd4e07b3333b16426ae4449c804b31018ae8069d49fda971ef7b5262ce25` |
| 13 | `theorem` | [geom_sum₂_self](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-self--0ef877f90d84d927446a1f0b.md) | 127 | `result-track:0ef877f90d84d927446a1f0b043f61dff7efea9c80718ffc39b42646b4c9d3d9` |
| 14 | `theorem` | [geom_sum₂_mul_add](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-mul-add--4ed39eb77300deca2c20e18e.md) | 140 | `result-track:4ed39eb77300deca2c20e18ee1c232267db8ed43f1f24ef20074e6c593970795` |
| 15 | `theorem` | [geom_sum_mul_add](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-mul-add--4a342bc3ccd14620a6dd931d.md) | 144 | `result-track:4a342bc3ccd14620a6dd931d8f4b5d4fc49d24f097cda60968c818e564a8f2f3` |
| 16 | `theorem` | [Commute.geom_sum₂_mul](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/commute-geom-sum-mul--ed69be53a3431adee3402eb6.md) | 150 | `result-track:ed69be53a3431adee3402eb630e8f834920790f13bce40595a178a7e1dd68719` |
| 17 | `theorem` | [Commute.mul_neg_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/commute-mul-neg-geom-sum--efae6fe0529450bb56aa4dc3.md) | 156 | `result-track:efae6fe0529450bb56aa4dc3e528c179efab7bdb15e96c0e9e2362e3d3579947` |
| 18 | `theorem` | [Commute.mul_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/commute-mul-geom-sum--c3e16773079b56d63a17b442.md) | 162 | `result-track:c3e16773079b56d63a17b4426a4ef8872e95e9c899625354896bdbe889a89fae` |
| 19 | `theorem` | [geom_sum₂_mul](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-mul--dacc4dc9787fddf68321b1f6.md) | 166 | `result-track:dacc4dc9787fddf68321b1f6efd447b95f66b63ccfc35ff00cb0985526bf7d92` |
| 20 | `theorem` | [geom_sum₂_mul_of_ge](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-mul-of-ge--ae0405ea5660dd13f699fbf5.md) | 170 | `result-track:ae0405ea5660dd13f699fbf5fcd57aae62f4497e3101a9bb9e75c93676cd9002` |
| 21 | `theorem` | [geom_sum₂_mul_of_le](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-mul-of-le--df7d01b1ac7613da9bfb948d.md) | 176 | `result-track:df7d01b1ac7613da9bfb948deece25291b91558e9eeeb304ea43a7187db91382` |
| 22 | `theorem` | [Commute.sub_dvd_pow_sub_pow](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/commute-sub-dvd-pow-sub-pow--34e445cc1375c9065fc5d54e.md) | 186 | `result-track:34e445cc1375c9065fc5d54e1691a0c38ee5ad6988e4afb53738169bebdfa743` |
| 23 | `theorem` | [sub_dvd_pow_sub_pow](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/sub-dvd-pow-sub-pow--e315dbed761f315b96ffe68b.md) | 190 | `result-track:e315dbed761f315b96ffe68b9ba57f69a4cded5f3b0cb95b9e11b2e6b9914e0b` |
| 24 | `theorem` | [nat_sub_dvd_pow_sub_pow](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/nat-sub-dvd-pow-sub-pow--8120e7add738dcd075518877.md) | 193 | `result-track:8120e7add738dcd075518877ba9d3e41ae9f154a99dae28e274a1f469ab9bbac` |
| 25 | `theorem` | [one_sub_dvd_one_sub_pow](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/one-sub-dvd-one-sub-pow--4f2f89b123f422862e0d2386.md) | 200 | `result-track:4f2f89b123f422862e0d2386d94b17043458a195bb928218a8779a3e8aa7b398` |
| 26 | `theorem` | [sub_one_dvd_pow_sub_one](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/sub-one-dvd-pow-sub-one--831b328149397aedaec065db.md) | 205 | `result-track:831b328149397aedaec065db0dca3b67d58cba8a7ae39ffd26052ade65f67e05` |
| 27 | `lemma` | [pow_one_sub_dvd_pow_mul_sub_one](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/pow-one-sub-dvd-pow-mul-sub-one--8c0df0538e7f9f792e0bebc5.md) | 210 | `result-track:8c0df0538e7f9f792e0bebc556002c350a719d52ad259560fd31ac358c0aa1fa` |
| 28 | `lemma` | [nat_pow_one_sub_dvd_pow_mul_sub_one](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/nat-pow-one-sub-dvd-pow-mul-sub-one--5b90f2aa23a49bfd8349b7d4.md) | 215 | `result-track:5b90f2aa23a49bfd8349b7d45ac8952e7387eedacf7ae43319d2d9f067883522` |
| 29 | `theorem` | [Odd.add_dvd_pow_add_pow](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/odd-add-dvd-pow-add-pow--7180c98e705f4b9d64181f17.md) | 220 | `result-track:7180c98e705f4b9d64181f17d3d96cf6942ff180c3f11881b0756a84b89d767d` |
| 30 | `theorem` | [Odd.nat_add_dvd_pow_add_pow](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/odd-nat-add-dvd-pow-add-pow--937449fff8f14a940a3c42ba.md) | 226 | `result-track:937449fff8f14a940a3c42ba1464039c4c170ec03872b7d5a67e4772b4a6b576` |
| 31 | `theorem` | [geom_sum_mul](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-mul--695d7a994393df664e59ea64.md) | 229 | `result-track:695d7a994393df664e59ea6497fe26ba109ce3467dae503a360bf2a087bbb759` |
| 32 | `theorem` | [geom_sum_mul_of_one_le](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-mul-of-one-le--648fb46dd00600c2aac07b7b.md) | 234 | `result-track:648fb46dd00600c2aac07b7b82882f3353db87071ba715f4461aabd176c281d1` |
| 33 | `theorem` | [geom_sum_mul_of_le_one](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-mul-of-le-one--1a6b833e17541588883ca4e2.md) | 239 | `result-track:1a6b833e17541588883ca4e29f591e518ea5d87bc0ed314aaaf8c0679986fd18` |
| 34 | `theorem` | [mul_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/mul-geom-sum--05da8e93512e2d511ae5fe6a.md) | 244 | `result-track:05da8e93512e2d511ae5fe6a0b085d5b2eed063e35202b23a5014033bf51be99` |
| 35 | `theorem` | [geom_sum_mul_neg](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-mul-neg--704dc98c2f1eedbddd5b23ab.md) | 247 | `result-track:704dc98c2f1eedbddd5b23ab7ca38dad221b31e8ce44b0f034fbc72b90b16ac0` |
| 36 | `theorem` | [mul_neg_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/mul-neg-geom-sum--f43a016bd1c88b737e17c2bb.md) | 253 | `result-track:f43a016bd1c88b737e17c2bbac4a123c4a895da0a710b782edbfc2627f359827` |
| 37 | `theorem` | [Commute.geom_sum₂_comm](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/commute-geom-sum-comm--d00cc8a740232480cbb91165.md) | 256 | `result-track:d00cc8a740232480cbb9116545d1475c1bdeb5607c60110c0b2cc92b89928514` |
| 38 | `theorem` | [geom_sum₂_comm](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-comm--84242bdd4584a69a974abd01.md) | 265 | `result-track:84242bdd4584a69a974abd013455997204dfee68ebf3bf4d94384c6a95e54d24` |
| 39 | `theorem` | [Commute.geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/commute-geom-sum--474521597aa015b6f85d68e3.md) | 269 | `result-track:474521597aa015b6f85d68e3f08352822616c0ea3ed35e95903f118f7b45707c` |
| 40 | `theorem` | [geom₂_sum](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum--a16e27634504b99a55df7b92.md) | 274 | `result-track:a16e27634504b99a55df7b921f8c67f248da15e984180ffb0f6ccc1060f6877c` |
| 41 | `theorem` | [geom₂_sum_of_gt](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-of-gt--6bdfeef68e11063d200fb131.md) | 278 | `result-track:6bdfeef68e11063d200fb13184823bfddd857460d9e25af9bdbc3a4fc4baaaf6` |
| 42 | `theorem` | [geom₂_sum_of_lt](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-of-lt--487e9af7978d3131b5923de8.md) | 284 | `result-track:487e9af7978d3131b5923de8bdd2074b7df67efb85929f4aa880df59411de782` |
| 43 | `theorem` | [geom_sum_eq](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-eq--64e79fe8ad21ea651b5a461e.md) | 290 | `result-track:64e79fe8ad21ea651b5a461e23c04cac05676b7d2bdf46b3a069d69fb29c8ae5` |
| 44 | `lemma` | [geom_sum_of_one_lt](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-of-one-lt--8ee7d3064cfd83a089c7d540.md) | 295 | `result-track:8ee7d3064cfd83a089c7d5401b87062eb508eea115ac9460ff0c5023b604e6d4` |
| 45 | `lemma` | [geom_sum_of_lt_one](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-of-lt-one--b1b4a42d589f38ee290f1492.md) | 301 | `result-track:b1b4a42d589f38ee290f1492fc19071ba01c2e25e531387c9ee5c5c2c3e3891d` |
| 46 | `theorem` | [geom_sum_lt](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-lt--e72f0edc02d2937559e42862.md) | 307 | `result-track:e72f0edc02d2937559e4286271ee865a1292dac95046d656ae6a3d9cf401348d` |
| 47 | `theorem` | [Commute.mul_geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/commute-mul-geom-sum-ico--67ed557026440956fed0256e.md) | 316 | `result-track:67ed557026440956fed0256e413e5ad0b2ec7484f35a58bf96eb9607262a8bd6` |
| 48 | `theorem` | [Commute.geom_sum₂_succ_eq](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/commute-geom-sum-succ-eq--1ce3c34f06f59c5c70a2adb2.md) | 334 | `result-track:1ce3c34f06f59c5c70a2adb2c3bbd360cd39816d5f5b054eff13c53be0df257d` |
| 49 | `theorem` | [geom_sum₂_succ_eq](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-succ-eq--97bd87bbb2147a42247c6abd.md) | 344 | `result-track:97bd87bbb2147a42247c6abd30f15c21b6499a90323d6a0704ca178784bb00cf` |
| 50 | `theorem` | [mul_geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/mul-geom-sum-ico--c78f1c2c07004ad2c4301073.md) | 349 | `result-track:c78f1c2c07004ad2c43010737010f4ae063cb140be4278057f0995237cdf26b9` |
| 51 | `theorem` | [Commute.geom_sum₂_Ico_mul](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/commute-geom-sum-ico-mul--bc46bb623c060ba7767caaac.md) | 353 | `result-track:bc46bb623c060ba7767caaacba487fb9de288644a5e7d816738de0f03e9470e4` |
| 52 | `theorem` | [geom_sum_Ico_mul](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-ico-mul--b1809e994e7931a772dc30ea.md) | 366 | `result-track:b1809e994e7931a772dc30eae8c225d8a8b178f573e7158379480fe59b5a0419` |
| 53 | `theorem` | [geom_sum_Ico_mul_neg](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-ico-mul-neg--9b957dbceb20a24b1eb05387.md) | 370 | `result-track:9b957dbceb20a24b1eb05387f034377ae615d6e475d479dc333375ff5e09ae67` |
| 54 | `theorem` | [Commute.geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/commute-geom-sum-ico--677f518172d1e7c89ffab870.md) | 374 | `result-track:677f518172d1e7c89ffab870eff249bf84f0e66420f6161e1dffbfbc24b6cbc7` |
| 55 | `theorem` | [geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-ico--876020114fee3c1211bb2c30.md) | 380 | `result-track:876020114fee3c1211bb2c30ecca160e9a894acd5d805516404515c191038fb3` |
| 56 | `theorem` | [geom_sum_Ico](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-ico--40766679ab1fa75543531125.md) | 384 | `result-track:40766679ab1fa7554353112525f4dfb737a9bedcc7457d98cb5e31d7a9979e12` |
| 57 | `theorem` | [geom_sum_Ico'](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-ico--1a58db802fb9c201e07f76dc.md) | 388 | `result-track:1a58db802fb9c201e07f76dc8643b5b9931e35b554cbdc94920d869abe175ff5` |
| 58 | `theorem` | [geom_sum_Ico_le_of_lt_one](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-ico-le-of-lt-one--74f7800b322955e041df56f2.md) | 393 | `result-track:74f7800b322955e041df56f2a4bd3f157e7d63679ab8938a9d477da315442451` |
| 59 | `theorem` | [geom_sum_inv](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-inv--ee736f382a959aea1cfcae3c.md) | 405 | `result-track:ee736f382a959aea1cfcae3c78ec859f61948befc028887f992f0f727789f26b` |
| 60 | `theorem` | [RingHom.map_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/ringhom-map-geom-sum--e9b7d3724d08f54829961a37.md) | 423 | `result-track:e9b7d3724d08f54829961a3784d9718c35f4cb063f2e7a0289e538cf20d69d8d` |
| 61 | `theorem` | [RingHom.map_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/ringhom-map-geom-sum--3d4c89c3bf25b4de798b97b3.md) | 426 | `result-track:3d4c89c3bf25b4de798b97b35ee1d8f615338890d3a9d4fe91e5b3bc9bde4e34` |
| 62 | `theorem` | [Nat.pred_mul_geom_sum_le](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/nat-pred-mul-geom-sum-le--ad94bd9dcef455ddc98d1159.md) | 433 | `result-track:ad94bd9dcef455ddc98d1159c2e4a7c74b832445a570c20e3e72fddc1d26e08e` |
| 63 | `theorem` | [Nat.geom_sum_le](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/nat-geom-sum-le--5f17945d4bf49bde0233226a.md) | 446 | `result-track:5f17945d4bf49bde0233226a63120bcadd57b0aa9b3044ffb3733dbefd74e418` |
| 64 | `theorem` | [Nat.geom_sum_Ico_le](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/nat-geom-sum-ico-le--aee01c1713dc9baa7799ad91.md) | 455 | `result-track:aee01c1713dc9baa7799ad91747a80f0c1d0fd64b4f077ba8cb79e528f423883` |
| 65 | `theorem` | [geom_sum_pos](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-pos--ea03acc4747bd8eb8acb5c26.md) | 477 | `result-track:ea03acc4747bd8eb8acb5c2603f4b2e981e3906719d96e52f53dc3b1a96f5ff8` |
| 66 | `theorem` | [geom_sum_pos_and_lt_one](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-pos-and-lt-one--283f65fb81aadeccbe17ec9a.md) | 482 | `result-track:283f65fb81aadeccbe17ec9a77282edbaed8d300587ab9f62da5a7dff10e3f47` |
| 67 | `theorem` | [geom_sum_alternating_of_le_neg_one](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-alternating-of-le-neg-one--fba5ca404fab8c75ccc7d1ce.md) | 495 | `result-track:fba5ca404fab8c75ccc7d1ced6c79500301ed852cc5e62baaf5528bddf97a251` |
| 68 | `theorem` | [geom_sum_alternating_of_lt_neg_one](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-alternating-of-lt-neg-one--3e572fbdfd8e2ba3d5d15b9c.md) | 510 | `result-track:3e572fbdfd8e2ba3d5d15b9cfaa8601fdd344ee4e8422596506fb53aa84f5fc4` |
| 69 | `theorem` | [geom_sum_pos'](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-pos--8c155fd9ffa9625e0d527599.md) | 532 | `result-track:8c155fd9ffa9625e0d5275999822f110cdfa5f531cba0efc3517db3010173c18` |
| 70 | `theorem` | [Odd.geom_sum_pos](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/odd-geom-sum-pos--67db609cd6ff85f0cbb763df.md) | 542 | `result-track:67db609cd6ff85f0cbb763dfe19908a073cbf3ab11b7fd5aac3f8a54b1fa119a` |
| 71 | `theorem` | [geom_sum_pos_iff](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-pos-iff--e4bb79136ad456f31df44245.md) | 555 | `result-track:e4bb79136ad456f31df44245502feb7675197b058b22e286ae87b1301e5d8d9e` |
| 72 | `theorem` | [geom_sum_ne_zero](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-ne-zero--9fbdff6634e83976256fd034.md) | 565 | `result-track:9fbdff6634e83976256fd034a39b034da30eeed7da777be7213e4f5cd4cf4db7` |
| 73 | `theorem` | [geom_sum_eq_zero_iff_neg_one](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-eq-zero-iff-neg-one--285a3183ab95b1c8e63fc275.md) | 579 | `result-track:285a3183ab95b1c8e63fc275c2eeb3f5c88dcbbec21fed55be6f9eef2f21c0de` |
| 74 | `theorem` | [geom_sum_neg_iff](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/geom-sum-neg-iff--009913bcfcbc85d9964459a2.md) | 589 | `result-track:009913bcfcbc85d9964459a23d0afa1be3aa3107d39109b7fa58ed3742dd0dee` |
| 75 | `lemma` | [Nat.geomSum_eq](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/nat-geomsum-eq--7f47ec19c2d8778e071f6a2a.md) | 602 | `result-track:7f47ec19c2d8778e071f6a2a4af76649f616faf75eec411360967a117a32ca82` |
| 76 | `lemma` | [Nat.geomSum_lt](../../../../mathematics/Algebra/GeomSum/Variant57ca345e6b33b6905c0f48890de352d1ca94972b3db873e42ceadf7e2855f7da.lean/declarations/nat-geomsum-lt--dde8edc13d6ef4f3178553af.md) | 609 | `result-track:dde8edc13d6ef4f3178553af035e05a453b92fecc56feeb3f0c2d8913be2d23f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
