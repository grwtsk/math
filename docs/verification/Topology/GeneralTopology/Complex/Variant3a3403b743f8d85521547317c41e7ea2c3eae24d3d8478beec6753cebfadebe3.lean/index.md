# Verification target: GRWTSK.Topology.GeneralTopology.Complex.Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a7a116435cdeee70bdb4bb8afde1bbcd684ce67",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a7a116435cdeee70bdb4bb8afde1bbcd684ce67`.

Source path: `GRWTSK/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.QuadraticDiscriminant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cos_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/cos-eq-zero-iff--a6474c05b385e91f214a4ccd.md) | 37 | `result-track:a6474c05b385e91f214a4ccde1e7ae187c07cab767e80af54bcefe195f497e70` |
| 2 | `theorem` | [cos_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/cos-ne-zero-iff--8b56e698568dc98788d5641e.md) | 47 | `result-track:8b56e698568dc98788d5641e724d083e6bf4a12c18f4715c562542df7722a8aa` |
| 3 | `theorem` | [sin_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/sin-eq-zero-iff--5d4c7f1e7d52e317fa63bf67.md) | 50 | `result-track:5d4c7f1e7d52e317fa63bf673e7b968595084c05e45f36774a26c6dec6b6960a` |
| 4 | `theorem` | [sin_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/sin-ne-zero-iff--d893d1249b90ec43cb3aa233.md) | 62 | `result-track:d893d1249b90ec43cb3aa233a836777cc2b7dae67734ae972cba2751e2c024fd` |
| 5 | `theorem` | [tan_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/tan-eq-zero-iff--7e99be4560d31683c2e17dda.md) | 70 | `result-track:7e99be4560d31683c2e17ddae8c74c12831657617702cd062647cedd5b7ea9b9` |
| 6 | `theorem` | [tan_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/tan-ne-zero-iff--5583faa42a917ac4f149e31f.md) | 75 | `result-track:5583faa42a917ac4f149e31fac1afa148897cb8a33ae61d67513f26309ba5bdb` |
| 7 | `theorem` | [tan_int_mul_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/tan-int-mul-pi-div-two--c948f8b9820fa9f6aefa8545.md) | 78 | `result-track:c948f8b9820fa9f6aefa85459b019446250686dcfb84a5651ea24cdbd28979c1` |
| 8 | `theorem` | [tan_eq_zero_iff'](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/tan-eq-zero-iff--ddaa4fce47e4c4a34916b6c2.md) | 85 | `result-track:ddaa4fce47e4c4a34916b6c2f4eb57afe2fc6f9e3c285d98c8d590a8b99310a2` |
| 9 | `theorem` | [cos_eq_cos_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/cos-eq-cos-iff--9450610c0da5160fc981557c.md) | 88 | `result-track:9450610c0da5160fc981557cf527ce8c07ff98c5f984d02b870151feef086ff6` |
| 10 | `theorem` | [sin_eq_sin_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/sin-eq-sin-iff--f5511b0d7b14dda61e71949f.md) | 101 | `result-track:f5511b0d7b14dda61e71949f2d7169b350aca17c7c9e6d711dc4e93d0ced54e9` |
| 11 | `theorem` | [cos_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/cos-eq-one-iff--d8a51c274cbf5aae9b69f1fd.md) | 106 | `result-track:d8a51c274cbf5aae9b69f1fdbbac7f81315b6c5bb404fc14eded50c793d5663e` |
| 12 | `theorem` | [cos_eq_neg_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/cos-eq-neg-one-iff--479991bd5665f49172e797f7.md) | 110 | `result-track:479991bd5665f49172e797f7f973093f1b0bd3eb3bdde67833b29b3a7ac9304a` |
| 13 | `theorem` | [sin_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/sin-eq-one-iff--68ef932e772db7bc1c38cb51.md) | 114 | `result-track:68ef932e772db7bc1c38cb51a017ea242ae56a044723170fc4cbf44c4b711bc1` |
| 14 | `theorem` | [sin_eq_neg_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/sin-eq-neg-one-iff--f21d74b7f0b6b088c6b02977.md) | 118 | `result-track:f21d74b7f0b6b088c6b029778e4d80fe17d3393ae75ec4d9ce730c9adbc709e3` |
| 15 | `theorem` | [tan_add](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/tan-add--0ebeac5c744844fd8fb8275b.md) | 122 | `result-track:0ebeac5c744844fd8fb8275b525b1ad0c38c376fe22a933b00491849199b29b4` |
| 16 | `theorem` | [tan_add'](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/tan-add--17e2fb1db3174a7b2abbd9c5.md) | 138 | `result-track:17e2fb1db3174a7b2abbd9c55c59b5770681717f258472af17b48469d3ecf3d1` |
| 17 | `theorem` | [tan_two_mul](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/tan-two-mul--c9a2d22494fbba1743173519.md) | 143 | `result-track:c9a2d22494fbba1743173519de062d1cc70c496ad2cfa0df2672d901e6499bac` |
| 18 | `theorem` | [tan_add_mul_I](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/tan-add-mul-i--89a7c319377c4f04fcbe7514.md) | 149 | `result-track:89a7c319377c4f04fcbe751496aa8d8f73813549dda46f565cad023c84ce4c7b` |
| 19 | `theorem` | [tan_eq](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/tan-eq--1af9b448824c072a300c1d49.md) | 156 | `result-track:1af9b448824c072a300c1d49f65a4dd3a2f9411395ca3704bb62e8a1ffeeac86` |
| 20 | `theorem` | [continuousOn_tan](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/continuouson-tan--6074ae69db81ffcf9345bc2a.md) | 167 | `result-track:6074ae69db81ffcf9345bc2ac2fc06bb0c6dc3155a66f8a6b4602b86fd77114a` |
| 21 | `theorem` | [continuous_tan](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/continuous-tan--4d9a90ba67c578983f83cb0e.md) | 171 | `result-track:4d9a90ba67c578983f83cb0eb05b57e18246848e4be49b4fd8f797e56592a141` |
| 22 | `theorem` | [cos_eq_iff_quadratic](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/cos-eq-iff-quadratic--e60405cf79879f22da43f892.md) | 174 | `result-track:e60405cf79879f22da43f892f4b37556e014f85e87c2327d962724d5944a42dc` |
| 23 | `theorem` | [cos_surjective](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/cos-surjective--fb198ad348b827f783dd2f39.md) | 181 | `result-track:fb198ad348b827f783dd2f397fc4d1cf85d2196ed0f60070adf0269d39860343` |
| 24 | `theorem` | [range_cos](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/range-cos--0c568bbf1f4ed67d58b5a87b.md) | 196 | `result-track:0c568bbf1f4ed67d58b5a87bc61590edb5fbff8d8171b3d429b84240ca9f402f` |
| 25 | `theorem` | [sin_surjective](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/sin-surjective--eda4983bb67da24c3c7d8f1f.md) | 199 | `result-track:eda4983bb67da24c3c7d8f1f5a42bd150553a2929e376aae8418f0202cd0ea9b` |
| 26 | `theorem` | [range_sin](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/range-sin--a09c181b9d6ae2d4655ab643.md) | 205 | `result-track:a09c181b9d6ae2d4655ab6438848c647e5866e5388d1de78fd741c30d6f6b6c7` |
| 27 | `theorem` | [cos_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/cos-eq-zero-iff--3944876f11c1bb7928d93f44.md) | 214 | `result-track:3944876f11c1bb7928d93f44bc40695cc6098f41a94a57a232cccc4dd81d2cc5` |
| 28 | `theorem` | [cos_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/cos-ne-zero-iff--1d5fd102d6626d81bcce749d.md) | 217 | `result-track:1d5fd102d6626d81bcce749d7274c4fb6ee8d1574b5ce71012e2fe752f2b01c5` |
| 29 | `theorem` | [cos_eq_cos_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/cos-eq-cos-iff--1a39d8cc19cf439022adcfba.md) | 220 | `result-track:1a39d8cc19cf439022adcfba6ad214836ee49d2bd5453a4ca1ecdc7389cdd3f8` |
| 30 | `theorem` | [sin_eq_sin_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/sin-eq-sin-iff--9f7c91d8964551235ed5e83f.md) | 223 | `result-track:9f7c91d8964551235ed5e83f3c5d0c6a2f8df45045d4bd71f483db68f9f1b777` |
| 31 | `theorem` | [cos_eq_neg_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/cos-eq-neg-one-iff--359e00782f8ad58bb625ec74.md) | 227 | `result-track:359e00782f8ad58bb625ec74bc239003cd6f898bf3629250a39dd1c553add7ed` |
| 32 | `theorem` | [sin_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/sin-eq-one-iff--e3dfe13c4fa96d88a410dd32.md) | 230 | `result-track:e3dfe13c4fa96d88a410dd32b44a8a54026c16cf3e39a9e07a1c315ca3ffffeb` |
| 33 | `theorem` | [sin_eq_neg_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/sin-eq-neg-one-iff--e8475f9184f5e7443a42675c.md) | 233 | `result-track:e8475f9184f5e7443a42675c5231cea8c2c0593c9abfb30a733c53ad301fcc16` |
| 34 | `theorem` | [tan_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/tan-eq-zero-iff--c4c65778a651bb97780fc4b6.md) | 236 | `result-track:c4c65778a651bb97780fc4b68f33c5828cd2d0556aa0e3f7f59891d39e9a0eac` |
| 35 | `theorem` | [tan_eq_zero_iff'](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/tan-eq-zero-iff--d028cb663e437a2573498848.md) | 239 | `result-track:d028cb663e437a2573498848930983fee72f9304502cc90540e886197dc7fe5a` |
| 36 | `theorem` | [tan_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3a3403b743f8d85521547317c41e7ea2c3eae24d3d8478beec6753cebfadebe3.lean/declarations/tan-ne-zero-iff--95ab8abe48e0320dbd32e76e.md) | 243 | `result-track:95ab8abe48e0320dbd32e76e1bf79aaeed171f526072223f48d573c6b67e65da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
