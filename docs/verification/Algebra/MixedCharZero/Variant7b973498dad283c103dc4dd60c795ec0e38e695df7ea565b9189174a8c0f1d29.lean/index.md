# Verification target: GRWTSK.Algebra.MixedCharZero.Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f72dde770905fb1753b8e06580b9b79cedb41e5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/index.md) · [Full source](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f72dde770905fb1753b8e06580b9b79cedb41e5`.

Source path: `GRWTSK/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.LocalRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/mixedcharzero--742513b59698e20be74a49e5.md) | 83 | `declaration-track:742513b59698e20be74a49e590e4bde6aecee2dea2146018f1f263a57e3095ba` |
| 2 | `theorem` | [reduce_to_p_prime](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/reduce-to-p-prime--cd6f9a3bd5b590c815c0232b.md) | 94 | `result-track:cd6f9a3bd5b590c815c0232bd00c1a842321ab4ac6a7fc6fe564f5ae60c3a9b5` |
| 3 | `theorem` | [reduce_to_maximal_ideal](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/reduce-to-maximal-ideal--7075299444b9d6c7f28d862e.md) | 121 | `result-track:7075299444b9d6c7f28d862e2f7407d0eeb9995b53a855afe9bd2b9bca74c939` |
| 4 | `theorem` | [of_algebraRat](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/of-algebrarat--10ec442e1f15eff13a243405.md) | 170 | `result-track:10ec442e1f15eff13a2434059473b9f04836cc89f7bc2c540e1e0facdb210113` |
| 5 | `theorem` | [PNat.isUnit_natCast](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/pnat-isunit-natcast--b1948ee9c94b9ffac88d6ce2.md) | 187 | `result-track:b1948ee9c94b9ffac88d6ce2666720ed3f0b63dc6db85e649d6c478b06f47fa6` |
| 6 | `def` | [pnatCast](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/pnatcast--4d0503ff7072340fdf83d6d6.md) | 202 | `declaration-track:4d0503ff7072340fdf83d6d607e004b9a3d0beb1092abbb90fbf343133437ae4` |
| 7 | `instance` | [coePNatUnits](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/coepnatunits--77e914242061e0d02154d1bb.md) | 206 | `declaration-track:77e914242061e0d02154d1bb8e54c56465664ad49dcfe5e310f3e3c6a2ea0951` |
| 8 | `theorem` | [pnatCast_one](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/pnatcast-one--4dc352dcd55b6e9938fc9cb3.md) | 213 | `result-track:4dc352dcd55b6e9938fc9cb3a40a4f97ee1504cec5b5807457bea6f96d5df75e` |
| 9 | `theorem` | [pnatCast_eq_natCast](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/pnatcast-eq-natcast--0d5e9e64ad7b6e2b7b84c1b2.md) | 223 | `result-track:0d5e9e64ad7b6e2b7b84c1b2c43c8dd27758324b8a59739729ba0be3f8b4d790` |
| 10 | `def` | [algebraRat](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/algebrarat--4544faec1574c0b3d2dbc47e.md) | 230 | `declaration-track:4544faec1574c0b3d2dbc47e0f162db739ae91c0cb350a46e9821929bbe19226` |
| 11 | `theorem` | [of_not_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/of-not-mixedcharzero--73911d224ce35f44502bd3ff.md) | 259 | `result-track:73911d224ce35f44502bd3fff31e5eb5135483f967510f82b10a1d64e7a26606` |
| 12 | `theorem` | [to_not_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/to-not-mixedcharzero--2647129a188a179a3b5189ed.md) | 274 | `result-track:2647129a188a179a3b5189ed84f4b24113a95c68c9d47bead8929aeb67e3cf0b` |
| 13 | `theorem` | [iff_not_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/iff-not-mixedcharzero--b7412795b2092d39316a25b4.md) | 287 | `result-track:b7412795b2092d39316a25b4430b6880650c01c7448b148d74a3279f1dcb0a51` |
| 14 | `theorem` | [nonempty_algebraRat_iff](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/nonempty-algebrarat-iff--828997cf42b7ae332e352a24.md) | 293 | `result-track:828997cf42b7ae332e352a24595383e10153ca0a6d76f8f3fc29ba774262b319` |
| 15 | `theorem` | [isEmpty_algebraRat_iff_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/isempty-algebrarat-iff-mixedcharzero--2f98031ddf2c51139a724134.md) | 310 | `result-track:2f98031ddf2c51139a72413434870100f08899d0c5dcfd18908eb501ed18adf8` |
| 16 | `theorem` | [split_equalCharZero_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/split-equalcharzero-mixedcharzero--f2e20940c5fe4df764e9db46.md) | 334 | `result-track:f2e20940c5fe4df764e9db46310dd569d520c73096cf89811be8d603ad58acf0` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/example--9eaa0c04091e950bcdbbd4a3.md) | 345 | `declaration-track:9eaa0c04091e950bcdbbd4a390e1e67b503fb34e9a4d90e264c912701fd6c6cc` |
| 18 | `theorem` | [split_by_characteristic](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/split-by-characteristic--ed3dbdfe886385781ffed628.md) | 354 | `result-track:ed3dbdfe886385781ffed6280c2c7b181e4044f50348110f71c860ef6d77bb25` |
| 19 | `theorem` | [split_by_characteristic_domain](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/split-by-characteristic-domain--6c1b6633fe74c9aa6e973844.md) | 371 | `result-track:6c1b6633fe74c9aa6e9738444e524f992f1e19db08a1ee5a2a7fde90115fbb09` |
| 20 | `theorem` | [split_by_characteristic_localRing](../../../../mathematics/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/declarations/split-by-characteristic-localring--e31a408b76d9a0276ca75b3a.md) | 385 | `result-track:e31a408b76d9a0276ca75b3a0a422675f29ec874ba69dd9978b1ee9984695bf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
