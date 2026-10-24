# Verification target: GRWTSK.Algebra.Core.Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4b62d3e2909b97860ec9565c73a4a240756f829",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4b62d3e2909b97860ec9565c73a4a240756f829`.

Source path: `GRWTSK/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Tree.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Core` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Util.SynthesizeUsing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/initialize--13e2fbf43adf685f30c56cb9.md) | 33 | `declaration-track:13e2fbf43adf685f30c56cb9aba9221a0eb60133230aee3c91b8834d55af1fd4` |
| 2 | `theorem` | [mul_subst](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/mul-subst--6e973dc023d59e3c4e30fd86.md) | 39 | `result-track:6e973dc023d59e3c4e30fd860d9f0d15e218d082f01cad0918566008cdc57256` |
| 3 | `theorem` | [div_subst](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/div-subst--59703bb467cf1513a08706c0.md) | 44 | `result-track:59703bb467cf1513a08706c08f6218a49eb9516934780e7aa54cf61d6cd44153` |
| 4 | `theorem` | [cancel_factors_eq_div](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/cancel-factors-eq-div--52bd8930257e7545c40157f8.md) | 48 | `result-track:52bd8930257e7545c40157f8efee3f39647c9826fbd755963c6ae4c223a4fef8` |
| 5 | `theorem` | [add_subst](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/add-subst--1530632b5f490ba3eb0a4fc5.md) | 52 | `result-track:1530632b5f490ba3eb0a4fc50af5c10d401c666c589c16f413ce7bb03d78ac75` |
| 6 | `theorem` | [sub_subst](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/sub-subst--44c7bc0b17d840dc31d94300.md) | 55 | `result-track:44c7bc0b17d840dc31d94300188ab7a6c9acd33988ef862d41bc8c8bdf382965` |
| 7 | `theorem` | [neg_subst](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/neg-subst--78a9ef6afbeea73d085cdc0a.md) | 58 | `result-track:78a9ef6afbeea73d085cdc0a256291c718c861498a4a934dd26cc36fa13a518a` |
| 8 | `theorem` | [pow_subst](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/pow-subst--5942fc8190f239ad93fcf2a3.md) | 60 | `result-track:5942fc8190f239ad93fcf2a35dbe1841e2e455f6c2c0fc1ced2ecd84f9968c6b` |
| 9 | `theorem` | [inv_subst](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/inv-subst--a76852affaeb16f61221488c.md) | 64 | `result-track:a76852affaeb16f61221488cf76edba8fa883c053c2259cfa5853131f46dd3a4` |
| 10 | `theorem` | [cancel_factors_lt](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/cancel-factors-lt--e1cb55ae3a37b031c23af4e3.md) | 67 | `result-track:e1cb55ae3a37b031c23af4e3a7524552e526134e57957d183245707fb2e65e9c` |
| 11 | `theorem` | [cancel_factors_le](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/cancel-factors-le--7755c864a39eea5141238957.md) | 75 | `result-track:7755c864a39eea514123895743dfd4d30ec38c74adc59087839c2027f41860ef` |
| 12 | `theorem` | [cancel_factors_eq](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/cancel-factors-eq--40659fc9a0a04aa3142c7185.md) | 83 | `result-track:40659fc9a0a04aa3142c7185f8a8e32f5afa626a51164ea6f1d66a2161cd3081` |
| 13 | `theorem` | [cancel_factors_ne](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/cancel-factors-ne--ff2b4c00f3e6372c478da0e0.md) | 98 | `result-track:ff2b4c00f3e6372c478da0e0b43e382d7d4c6236c1bd28c3084f678d2e63250f` |
| 14 | `def` | [findCancelFactor](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/findcancelfactor--9ad5798e82c13a6a3beffad8.md) | 111 | `declaration-track:9ad5798e82c13a6a3beffad81be9c3276390152470328f938e765ca30d6a4e5c` |
| 15 | `def` | [synthesizeUsingNormNum](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/synthesizeusingnormnum--f8978adde7f214ef2d14d149.md) | 145 | `declaration-track:f8978adde7f214ef2d14d149a6ddda4b03b48025069189aaac9d400eca315aa7` |
| 16 | `structure` | [CancelResult](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/cancelresult--cfe0a47129a176bc3e799cf8.md) | 153 | `declaration-track:cfe0a47129a176bc3e799cf879462932f937005b076e433499e41d09ff9bc047` |
| 17 | `def` | [mkProdPrf](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/mkprodprf--9e8cbe554ded4c6c97a69504.md) | 167 | `declaration-track:9e8cbe554ded4c6c97a695040b891cae1b26e5a6afe87f55a42f76b78629fe23` |
| 18 | `def` | [deriveThms](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/derivethms--007c36dbc9f1075316e46506.md) | 218 | `declaration-track:007c36dbc9f1075316e4650669a25d7cf875b5989656bd263999fc80a045e620` |
| 19 | `theorem` | [derive_trans](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/derive-trans--cae14821b3fb1d9be2a49cdb.md) | 222 | `result-track:cae14821b3fb1d9be2a49cdb603bd03748270ba5cae522044ac0fda4302905ad` |
| 20 | `theorem` | [derive_trans₂](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/derive-trans--277451601d8f5da959f42227.md) | 225 | `result-track:277451601d8f5da959f422274c2c23333fe491a92b0b0279e13588de2b67d416` |
| 21 | `def` | [derive](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/derive--acc5808784669e91cb1e5291.md) | 232 | `declaration-track:acc5808784669e91cb1e52916d05b849973d073a5d3baeec79f598cac4548931` |
| 22 | `def` | [findCompLemma](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/findcomplemma--7c6313da24209e7f8876176d.md) | 261 | `declaration-track:7c6313da24209e7f8876176dcc15c47fd06fbdf32bda1d9474d9399c952f6422` |
| 23 | `def` | [cancelDenominatorsInType](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/canceldenominatorsintype--48ee981cb32ba1275178ea49.md) | 280 | `declaration-track:48ee981cb32ba1275178ea4915fd25e8e99f737455c3acfaab7c0bca64727d8f` |
| 24 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/syntax--a0c71e068c1798aa48692057.md) | 329 | `declaration-track:a0c71e068c1798aa48692057d0898cd899996da69c2a36b600bfec31ad3ca878` |
| 25 | `def` | [cancelDenominatorsAt](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/canceldenominatorsat--0a6df0ddc797743e44e2db15.md) | 333 | `declaration-track:0a6df0ddc797743e44e2db152898d606fda0f5d9a36f7b95bafa637f292dfb29` |
| 26 | `def` | [cancelDenominatorsTarget](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/canceldenominatorstarget--7f0bc470c69abd58001fac28.md) | 340 | `declaration-track:7f0bc470c69abd58001fac286bad41de42af559cbe9badde4ce5529eafbfdd9b` |
| 27 | `def` | [cancelDenominators](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/canceldenominators--be5b221d2958a78c7b2a5e64.md) | 344 | `declaration-track:be5b221d2958a78c7b2a5e64ba41f6a50d13fa36866fd93bc89873de04323605` |
| 28 | `elab` | [(anonymous)](../../../../mathematics/Algebra/Core/Variant888d95d7a81f5087899f8c1fe4396618a8b3aaaf2dec6123ba5b23d8ced07cf6.lean/declarations/elab--bd34245dfaa3184ae75681bc.md) | 348 | `declaration-track:bd34245dfaa3184ae75681bcb9be1fef6ca566454be8fef73125cde854de6832` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
