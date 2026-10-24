# Verification target: GRWTSK.Algebra.Inverse.Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c569d09c515c6fffe096a79d566088e712e5a0a8",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c569d09c515c6fffe096a79d566088e712e5a0a8`.

Source path: `GRWTSK/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.NoZeroDivisors` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inv.aux](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/inv-aux--5197b7c60b035a026a8dc262.md) | 70 | `declaration-track:5197b7c60b035a026a8dc262b41a1a51ee8701f87dd022758fb33a90064e59e5` |
| 2 | `theorem` | [coeff_inv_aux](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/coeff-inv-aux--9748f690192f8ad42c088498.md) | 79 | `result-track:9748f690192f8ad42c0884987d2bc838908cd366285028f591793f9b83fad8c9` |
| 3 | `def` | [invOfUnit](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/invofunit--f84f78093c70735e8860b519.md) | 91 | `declaration-track:f84f78093c70735e8860b519248f4b6746f97dbb475af172a13ce303470e1268` |
| 4 | `theorem` | [coeff_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/coeff-invofunit--88a050b4b97c6563ecc35af5.md) | 94 | `result-track:88a050b4b97c6563ecc35af5f46197fad2bbabd285eac9f2d7a6337d0931b3b5` |
| 5 | `theorem` | [constantCoeff_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/constantcoeff-invofunit--50bcf37944884cc8be6c1af5.md) | 104 | `result-track:50bcf37944884cc8be6c1af504f0f1315970c25e17aa1e5bfc613f72a16ef1f0` |
| 6 | `theorem` | [mul_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/mul-invofunit--9ab0904a86eda3713fa90a34.md) | 110 | `result-track:9ab0904a86eda3713fa90a342244fc8a392b8e5df3773e24f2f6619c7d98393a` |
| 7 | `theorem` | [invOfUnit_mul](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/invofunit-mul--867bebaf91dfb5148a8006c0.md) | 144 | `result-track:867bebaf91dfb5148a8006c03417e3b4a2aa89d684fd4b2df371fdf17173b448` |
| 8 | `theorem` | [isUnit_iff_constantCoeff](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/isunit-iff-constantcoeff--98c992fd642092f0e12a9dfd.md) | 151 | `result-track:98c992fd642092f0e12a9dfdbe124130dc5ac9526795932b8933f395e1788c7e` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/instance--645aa302e0272ee2b32b3f4c.md) | 165 | `declaration-track:645aa302e0272ee2b32b3f4caa43349ccde52bdacb00c35e1943fd5fa037cc7b` |
| 10 | `theorem` | [map.isLocalHom](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/map-islocalhom--326273b788a0e0643b83db4e.md) | 185 | `result-track:326273b788a0e0643b83db4e544cc12a6b167ea11828e8eb49d6e767cd74f1c3` |
| 11 | `def` | [inv](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/inv--8ffd60240f76650169396508.md) | 204 | `declaration-track:8ffd60240f7665016939650867e7f6e548fab286cdfc1087ff0834e0d2d5d444` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/instance--2c865ca581dea5821e8231f4.md) | 207 | `declaration-track:2c865ca581dea5821e8231f4785ed4a15e785fd15c969ea46ab5219b1663f428` |
| 13 | `theorem` | [coeff_inv](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/coeff-inv--97843a88d851cbf2974f0cbd.md) | 210 | `result-track:97843a88d851cbf2974f0cbda0cdf4b53f2cb6e3d994b8277e4ad5e0dddfa3de` |
| 14 | `theorem` | [constantCoeff_inv](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/constantcoeff-inv--e56034eea18092e61fbfa48b.md) | 219 | `result-track:e56034eea18092e61fbfa48b2113467dd8b3fecb9b79b3fdba7b35d1d060ff89` |
| 15 | `theorem` | [inv_eq_zero](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/inv-eq-zero--f364081597fa2b7fc0dd3dcb.md) | 224 | `result-track:f364081597fa2b7fc0dd3dcb7054f9420d162b22b68b2185c46caeb967892cb0` |
| 16 | `theorem` | [zero_inv](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/zero-inv--004ee5ce3463cf7833c08fe7.md) | 233 | `result-track:004ee5ce3463cf7833c08fe78f81e141a0cbd20e981f3f6c160ca175578af9fa` |
| 17 | `theorem` | [invOfUnit_eq](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/invofunit-eq--d44479d927930503f843f694.md) | 237 | `result-track:d44479d927930503f843f6948552e5adfb29e6e1635e9d29cd761d01f68209c3` |
| 18 | `theorem` | [invOfUnit_eq'](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/invofunit-eq--132f3fc011b82c5a9d796ed1.md) | 242 | `result-track:132f3fc011b82c5a9d796ed14e02a50605095e0f4e3e20436e06776e4ae9828c` |
| 19 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/mul-inv-cancel--06d7a156d4e8da42491f6645.md) | 250 | `result-track:06d7a156d4e8da42491f66455c51dfa8f2858d83e3623eb2f6380ba7d8170e26` |
| 20 | `theorem` | [inv_mul_cancel](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/inv-mul-cancel--3f45f5be83bfd8fd196f8dc6.md) | 254 | `result-track:3f45f5be83bfd8fd196f8dc6133f627faedd28309cce038c5cfd84b730da76f3` |
| 21 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/eq-mul-inv-iff-mul-eq--d46de418d4167e3144a6a8f3.md) | 257 | `result-track:d46de418d4167e3144a6a8f3265f51f880a27f820d78f2bae465ce720d2f0d10` |
| 22 | `theorem` | [eq_inv_iff_mul_eq_one](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/eq-inv-iff-mul-eq-one--43c1863089469bd5fcbbe47e.md) | 262 | `result-track:43c1863089469bd5fcbbe47efa3a8c24bfe502aef20105a3c812a98830bc084a` |
| 23 | `theorem` | [inv_eq_iff_mul_eq_one](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/inv-eq-iff-mul-eq-one--d266765239ab240bc3229377.md) | 265 | `result-track:d266765239ab240bc3229377102ee2beabf50aa2c20a1a020fc4368c3ae6c8c6` |
| 24 | `theorem` | [mul_inv_rev](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/mul-inv-rev--622965418c5acf494e584c03.md) | 269 | `result-track:622965418c5acf494e584c034553c655214d7a135207b5c2214d3c80a1271dae` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/instance--58733cdf3971db928506091e.md) | 281 | `declaration-track:58733cdf3971db928506091e54815e845b39f46dc3f870f0140d3caedb2bd8c2` |
| 26 | `theorem` | [C_inv](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/c-inv--cd86b9e2af63f0b8533bb9ad.md) | 289 | `result-track:cd86b9e2af63f0b8533bb9ad1bc241c76fe4908704a21b3703f36595ce0a753d` |
| 27 | `theorem` | [X_inv](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/x-inv--f3ca356173736a0186c3e1c5.md) | 296 | `result-track:f3ca356173736a0186c3e1c59b1c51beb5c76c1c8fb1db5b3ebb22ff826a510c` |
| 28 | `theorem` | [smul_inv](../../../../mathematics/Algebra/Inverse/Variant692d4332f9bcbd4816da01efaa85a240e0e6e1f980ffea5516517e56fe92f44c.lean/declarations/smul-inv--02fb5f82996869938e01c516.md) | 300 | `result-track:02fb5f82996869938e01c5160c5c97d970e2922dbfad214799a56e2dba6c10c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
