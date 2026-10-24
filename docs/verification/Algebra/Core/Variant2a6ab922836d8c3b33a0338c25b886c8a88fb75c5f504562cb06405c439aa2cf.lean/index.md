# Verification target: GRWTSK.Algebra.Core.Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffed805cd836b2ba102cfcd4e8d79a6078a3425d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/index.md) · [Full source](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffed805cd836b2ba102cfcd4e8d79a6078a3425d`.

Source path: `GRWTSK/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Tree.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Core` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Util.SynthesizeUsing` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/initialize--6504a7fbb17218e33133ad97.md) | 41 | `declaration-track:6504a7fbb17218e33133ad97b8b71b17b72aa99ff020900745cb2b89c9494472` |
| 2 | `theorem` | [mul_subst](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/mul-subst--8a7adcdb56239fc900adaf0b.md) | 47 | `result-track:8a7adcdb56239fc900adaf0bd560786dd6a418dbd523bf074f35e3d1d43f11a6` |
| 3 | `theorem` | [div_subst](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/div-subst--f738618155db933af2fa17b9.md) | 52 | `result-track:f738618155db933af2fa17b9ef54edfa31bea9cd950930c97a265fba813c020d` |
| 4 | `theorem` | [cancel_factors_eq_div](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/cancel-factors-eq-div--c301191ffb979c8a245ea7e9.md) | 56 | `result-track:c301191ffb979c8a245ea7e98a75e285b0589539eb98f72dcfc15d9f89413fa2` |
| 5 | `theorem` | [add_subst](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/add-subst--14fe263ea6d66886c3ae0bc0.md) | 60 | `result-track:14fe263ea6d66886c3ae0bc096342c0ad721372d4d18f7ac2c82ddd191716939` |
| 6 | `theorem` | [sub_subst](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/sub-subst--62a604062a82acf83034da45.md) | 63 | `result-track:62a604062a82acf83034da452f32384a6bdda9aed3be1934f9d0caaad99a3f17` |
| 7 | `theorem` | [neg_subst](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/neg-subst--981d96e987eedf5838eb478a.md) | 66 | `result-track:981d96e987eedf5838eb478a6a99c28b79ac7f3e9063ea3f42ab1454339577c6` |
| 8 | `theorem` | [pow_subst](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/pow-subst--5ca5ce20a71db679d9cb566a.md) | 68 | `result-track:5ca5ce20a71db679d9cb566a57d14cf6cdc6e71e658fafd476df6129b687e213` |
| 9 | `theorem` | [inv_subst](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/inv-subst--1bed4366ccd262960356ced6.md) | 72 | `result-track:1bed4366ccd262960356ced61a7988600f771ddb4f3d2370c6e99904ca84c86d` |
| 10 | `theorem` | [cancel_factors_lt](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/cancel-factors-lt--157f6e988805ad7d43910411.md) | 75 | `result-track:157f6e988805ad7d439104114d0810609882b1477521990ce76800b492bf212b` |
| 11 | `theorem` | [cancel_factors_le](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/cancel-factors-le--b73a1b32e85895074b7f3f79.md) | 83 | `result-track:b73a1b32e85895074b7f3f790f09ecf6a2cf581f03dbad7ff1505a41c0d95190` |
| 12 | `theorem` | [cancel_factors_eq](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/cancel-factors-eq--d5297ca8f892e65ef5ed5f6b.md) | 91 | `result-track:d5297ca8f892e65ef5ed5f6be6686485561cd61f7cdd280e08dc85e33a06901d` |
| 13 | `theorem` | [cancel_factors_ne](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/cancel-factors-ne--a6f336f4b5ed8f38d57a2291.md) | 106 | `result-track:a6f336f4b5ed8f38d57a22918e54716bfca635e3e03a0507b7c34a5f358bc0bd` |
| 14 | `def` | [findCancelFactor](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/findcancelfactor--158484432554deeeb8afb3dd.md) | 119 | `declaration-track:158484432554deeeb8afb3ddcfba53dabf0c62aed2a88208b01e293d49725efa` |
| 15 | `def` | [synthesizeUsingNormNum](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/synthesizeusingnormnum--083726e5bf4eb8ae5ecd35de.md) | 153 | `declaration-track:083726e5bf4eb8ae5ecd35ded198b53b6c422444b278813bd7f072dbddab0b8b` |
| 16 | `structure` | [CancelResult](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/cancelresult--89fb666d23bd363ba51e4524.md) | 161 | `declaration-track:89fb666d23bd363ba51e45246df28da4a7be880ab2808081ac4baff17a1b22cf` |
| 17 | `def` | [mkProdPrf](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/mkprodprf--1a1c9e687bef7aa09e53181f.md) | 175 | `declaration-track:1a1c9e687bef7aa09e53181f7b34531be9aef61c87e3fb7d23719c07c2c381fd` |
| 18 | `def` | [deriveThms](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/derivethms--105963c77315dc0c4ce35926.md) | 226 | `declaration-track:105963c77315dc0c4ce35926bea56508263aae6edb9966dfce8a869290aebffe` |
| 19 | `theorem` | [derive_trans](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/derive-trans--3e9a2658608073318ad1ab7a.md) | 230 | `result-track:3e9a2658608073318ad1ab7a8a8cbef9e790bb4d0c343c7f3877290b41e5c8da` |
| 20 | `theorem` | [derive_trans₂](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/derive-trans--dc52104ae4246ec82e5e3b49.md) | 233 | `result-track:dc52104ae4246ec82e5e3b4918b9ba2bad56aab329b0b1cb8f0bc8d06525edcc` |
| 21 | `def` | [derive](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/derive--53dab1b98acde63199743765.md) | 240 | `declaration-track:53dab1b98acde63199743765e86522a581d2e4df76b9549f9df73bd909030fbb` |
| 22 | `def` | [findCompLemma](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/findcomplemma--d99c0cbd2b527743617f68e3.md) | 269 | `declaration-track:d99c0cbd2b527743617f68e3a724d987d170862bfd669f7912f9a69bb0b5c485` |
| 23 | `def` | [cancelDenominatorsInType](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/canceldenominatorsintype--179848432ab655fc892080e7.md) | 288 | `declaration-track:179848432ab655fc892080e7976a25de5cc10679a923aedbc3e662d3b5f18eda` |
| 24 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/syntax--16d6394a07c4d883dd4c050f.md) | 337 | `declaration-track:16d6394a07c4d883dd4c050ff66dc8e78e1560e20eb3638690f8f24e13b059b3` |
| 25 | `def` | [cancelDenominatorsAt](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/canceldenominatorsat--46139953657b4df5d3408a50.md) | 341 | `declaration-track:46139953657b4df5d3408a50b6d8bb4e0a7dd86b552e4db8569661413e05a18d` |
| 26 | `def` | [cancelDenominatorsTarget](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/canceldenominatorstarget--35aed9ecf6b681da53ae1946.md) | 348 | `declaration-track:35aed9ecf6b681da53ae1946cff98bb6c15e7d277ab61f24e2c3559c8da7fae9` |
| 27 | `def` | [cancelDenominators](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/canceldenominators--0105be08557ac3fe26e5d08a.md) | 352 | `declaration-track:0105be08557ac3fe26e5d08a80c956b23071ac94e79adce28b9bc3eb13159110` |
| 28 | `elab` | [(anonymous)](../../../../mathematics/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/declarations/elab--aef7382579ddfa6d734c5e61.md) | 356 | `declaration-track:aef7382579ddfa6d734c5e619025a06b29abb29b30e06961874fcf6934eb9a9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
