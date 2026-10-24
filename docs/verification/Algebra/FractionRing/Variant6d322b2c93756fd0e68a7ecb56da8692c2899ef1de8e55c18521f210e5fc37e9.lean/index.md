# Verification target: GRWTSK.Algebra.FractionRing.Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da8548cfb98cae39dfa08ba78e6cb9696f997e2b",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/index.md) · [Full source](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da8548cfb98cae39dfa08ba78e6cb9696f997e2b`.

Source path: `GRWTSK/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsFractionRing](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/isfractionring--3024493fbec2d4cd98616b75.md) | 51 | `declaration-track:3024493fbec2d4cd98616b751c3cf5fff154900b917f0f6337029e43b70ccbb6` |
| 2 | `instance` | [Rat.isFractionRing](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/rat-isfractionring--f469de7436bbfafbd3231b6b.md) | 56 | `declaration-track:f469de7436bbfafbd3231b6b3f74e51e415d12a3d9a95e6adefccd7a99bab051` |
| 3 | `theorem` | [to_map_eq_zero_iff](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/to-map-eq-zero-iff--8bc6399bd74d5dd8af890b4f.md) | 87 | `result-track:8bc6399bd74d5dd8af890b4f378dda48e853fa1917693a261c94f1a286982b6a` |
| 4 | `theorem` | [injective](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/injective--83aecdff4698cc2c3c2c01cd.md) | 93 | `result-track:83aecdff4698cc2c3c2c01cd3ccb5e2cab26fddb6d1f68de6d089a7bf6f7cff7` |
| 5 | `theorem` | [coe_inj](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/coe-inj--42703357cd22a4485be97de9.md) | 101 | `result-track:42703357cd22a4485be97de9a86247f3ecfaeb16899cefe4247654986a8864bb` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/instance--241b1607484f883219e768f0.md) | 105 | `declaration-track:241b1607484f883219e768f021133ecc8dae6932eb428d290db3aac12cca0fc7` |
| 7 | `theorem` | [to_map_ne_zero_of_mem_nonZeroDivisors](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/to-map-ne-zero-of-mem-nonzerodivisors--94674e78ec5d2cf91fe951ff.md) | 108 | `result-track:94674e78ec5d2cf91fe951ff3e93b01b236a2fe29551a6ad380486a113aedd92` |
| 8 | `theorem` | [isDomain](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/isdomain--7e65f402a5646721bfa558f3.md) | 117 | `result-track:7e65f402a5646721bfa558f3d312c17a90e8f769b5e5d50575ef56f5a84ef359` |
| 9 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/mul-inv-cancel--eae8eb607b34ac962cb3788b.md) | 131 | `result-track:eae8eb607b34ac962cb3788b2726b2ad2133863630a6a49bca393dfd1f15fa35` |
| 10 | `def` | [toField](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/tofield--a406cc939d1a2558b51c3952.md) | 146 | `declaration-track:a406cc939d1a2558b51c39526250b0b5f4b0e6b1f55821ef2d0bf6efad76099b` |
| 11 | `theorem` | [mk'_mk_eq_div](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/mk-mk-eq-div--b799a37285adc7d9d006c3eb.md) | 161 | `result-track:b799a37285adc7d9d006c3eb3041b676c81e4f74d977537d6abc5f03fcd35907` |
| 12 | `theorem` | [mk'_eq_div](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/mk-eq-div--3b8988a8d23e6e5b4be10419.md) | 169 | `result-track:3b8988a8d23e6e5b4be104191c277257e680bc52cde78d3f32bd470c94b72de8` |
| 13 | `theorem` | [div_surjective](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/div-surjective--f1dacdffce6daf062e3afe52.md) | 173 | `result-track:f1dacdffce6daf062e3afe52982c3eabf41ff3cc537d9061085b3d381c94bd54` |
| 14 | `theorem` | [isUnit_map_of_injective](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/isunit-map-of-injective--94cb58f99ecf5be6f2b0533e.md) | 179 | `result-track:94cb58f99ecf5be6f2b0533ef0cba9d92cf684815624dbde63832488e6ade8d5` |
| 15 | `theorem` | [mk'_eq_zero_iff_eq_zero](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/mk-eq-zero-iff-eq-zero--73850bbf7542a78289b9ac74.md) | 186 | `result-track:73850bbf7542a78289b9ac7471a8d1307a57f197433106dda8eb09405dfe7ed2` |
| 16 | `theorem` | [mk'_eq_one_iff_eq](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/mk-eq-one-iff-eq--134c35c487f795c692c3a2f5.md) | 193 | `result-track:134c35c487f795c692c3a2f55c63e2e787daec29728ac6caf816e4058904e25c` |
| 17 | `def` | [lift](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/lift--8f69e335d9899196bb7cb952.md) | 208 | `declaration-track:8f69e335d9899196bb7cb95246709468903e987875dbc51d7b5a313b0c8dfeea` |
| 18 | `theorem` | [lift_algebraMap](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/lift-algebramap--ca9910b0e1c1ed5e5a1ca0af.md) | 217 | `result-track:ca9910b0e1c1ed5e5a1ca0afce00a4c8c416b2c11309d551902acba9cb150d40` |
| 19 | `theorem` | [lift_mk'](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/lift-mk--59f23bfb5c1f032bb1f1ae44.md) | 225 | `result-track:59f23bfb5c1f032bb1f1ae44b0818b3b0787f6f37540c3f7a48683eb5de6448c` |
| 20 | `def` | [map](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/map--d5219f976af353fa7e470b5b.md) | 233 | `declaration-track:d5219f976af353fa7e470b5bf5d3fb6e6e89bb8d5ac1075f82039525042b73d5` |
| 21 | `def` | [fieldEquivOfRingEquiv](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/fieldequivofringequiv--d80cb61d0434efe7e4c3b10d.md) | 244 | `declaration-track:d80cb61d0434efe7e4c3b10d165e0a5451853953a0c5df318e4089a3ea81469f` |
| 22 | `theorem` | [isFractionRing_iff_of_base_ringEquiv](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/isfractionring-iff-of-base-ringequiv--e2cc14445e1bb13b9465ec3d.md) | 255 | `result-track:e2cc14445e1bb13b9465ec3de2b134f0fa470d0df002d5e42f6ba29477183cfd` |
| 23 | `theorem` | [nontrivial](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/nontrivial--a331babc8f5458eb17aff77a.md) | 274 | `result-track:a331babc8f5458eb17aff77a5a1c715d40954662e2a9604c6ceaf91569d62e21` |
| 24 | `def` | [FractionRing](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/fractionring--659e45be184417ab59db6ec4.md) | 296 | `declaration-track:659e45be184417ab59db6ec4201dc363bb9da627a55359dd0d858429294c8834` |
| 25 | `instance` | [unique](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/unique--d365caf0310480bd6eddc4f1.md) | 302 | `declaration-track:d365caf0310480bd6eddc4f13d5eb4ea3b3fc1abedf31a4bc2647511f29066c0` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/instance--6d58c34401eecb2a12514297.md) | 306 | `declaration-track:6d58c34401eecb2a12514297f23b01d752c2c0b26bfef47791d485ae4c34d9fa` |
| 27 | `instance` | [field](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/field--d8208cecf641cadc50fd28ae.md) | 312 | `declaration-track:d8208cecf641cadc50fd28ae9aba36060d7d245dfe9c3e3fbdcf0de6aebee2e5` |
| 28 | `theorem` | [mk_eq_div](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/mk-eq-div--d88181faffb9cbd6ad90405e.md) | 315 | `result-track:d88181faffb9cbd6ad90405e9bd6b28e857625c0d367d7da9aa00b31acb02d83` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/instance--dc5440ccdaf47011f23b17f6.md) | 321 | `declaration-track:dc5440ccdaf47011f23b17f60fe2f05f72ad41f3e0a23217c0c11e386909dc01` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/instance--8e5eaca4ad9c88c8bd2b1bbd.md) | 326 | `declaration-track:8e5eaca4ad9c88c8bd2b1bbd87eadbc0a5ea14d531ca8b1b0825f21406ad6d69` |
| 31 | `def` | [algEquiv](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/algequiv--1d4105abd2fb4f0bcd66c0df.md) | 334 | `declaration-track:1d4105abd2fb4f0bcd66c0dfd243806ff01694e391869681b5abf18cbcb39268` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean/declarations/instance--c8cb814270a7b64c4ec1f461.md) | 339 | `declaration-track:c8cb814270a7b64c4ec1f4613502b370b8911312b5899bf078946a7d10e64196` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
