# Verification target: GRWTSK.Analysis.SpecialFunctions.Expr.Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf961c73085cd288d6c5efc32e854e4510fee259",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf961c73085cd288d6c5efc32e854e4510fee259`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Functions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sin](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/sin--b3905b27c93f597f8db75409.md) | 52 | `declaration-track:b3905b27c93f597f8db75409707cc42d27717d60554a786c7c47ca41e3c2354c` |
| 2 | `def` | [cos](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/cos--bceb8b68d44b0b01939912fa.md) | 66 | `declaration-track:bceb8b68d44b0b01939912fa014151dabf35fa23949c93456f06bc0f65e893a1` |
| 3 | `def` | [exp](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/exp--d98ccc052374c295f897438e.md) | 77 | `declaration-track:d98ccc052374c295f897438e32b8d904a8b1d99ff7efbda2d70d38afbeb458c1` |
| 4 | `def` | [sinh](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/sinh--8c91ce8c19fe91d0b9579ab6.md) | 88 | `declaration-track:8c91ce8c19fe91d0b9579ab62b6c272a88d3fb76448708d6337c15b7f026e125` |
| 5 | `def` | [cosh](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/cosh--e67c1c56072840e392c973f4.md) | 99 | `declaration-track:e67c1c56072840e392c973f4d1fcb71ee0a19740cf94646f3acf54fd19a5d0ba` |
| 6 | `def` | [tanh](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/tanh--eaea042fe48efab1a9d36bea.md) | 110 | `declaration-track:eaea042fe48efab1a9d36beaa0687fbe3ec18d10df914a25234c316fa81500c2` |
| 7 | `def` | [atan](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/atan--996a60e9ec771250db43cb75.md) | 121 | `declaration-track:996a60e9ec771250db43cb75b7d09ef6b4f4171bc7b2ce4fba1f58f5958604d2` |
| 8 | `def` | [atanh](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/atanh--fe6a1f9a0a57c70e49603b38.md) | 132 | `declaration-track:fe6a1f9a0a57c70e49603b387d4a246c2bcfe6d1abce613b78d0b619f4487593` |
| 9 | `def` | [asinh](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/asinh--df845ddecef9da5e5ba066f4.md) | 143 | `declaration-track:df845ddecef9da5e5ba066f497bfb750bf8275d1e468948e565c7c0a130571cc` |
| 10 | `def` | [sinc](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/sinc--e66f27cfda1fe8423b2728d0.md) | 154 | `declaration-track:e66f27cfda1fe8423b2728d0ae65094dd31b6c37eb0a309b7c392587ec1ea367` |
| 11 | `def` | [erf](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/erf--933bc7ee34cefe27f51d96fc.md) | 165 | `declaration-track:933bc7ee34cefe27f51d96fc0b96aeb0c2293699734a347adf539d2cab07356e` |
| 12 | `def` | [log?](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/log--6a422290a7f2c679d07cbbbc.md) | 177 | `declaration-track:6a422290a7f2c679d07cbbbc93254287afad2c37ca1a7e985c1e659552cb5e8b` |
| 13 | `def` | [sqrt?](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/sqrt--4e39858a8207ba4f0d0303d3.md) | 189 | `declaration-track:4e39858a8207ba4f0d0303d358595e5823cf9c50c43daa9ec20ae3e0bebeae94` |
| 14 | `def` | [atan?](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/atan--a4548941304099170b1a8c08.md) | 198 | `declaration-track:a4548941304099170b1a8c0881d67b5634aa2ce05728786dd85d0cf8438f48e5` |
| 15 | `def` | [erf?](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/erf--c6b64c45ef0431b25ae9fce4.md) | 207 | `declaration-track:c6b64c45ef0431b25ae9fce4bdaf4213f0f142f563683f1219956fe422c64343` |
| 16 | `def` | [atanhSafe](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/atanhsafe--e65c3b5dd36e8516f72b2449.md) | 215 | `declaration-track:e65c3b5dd36e8516f72b2449d177b522f98639994a51170999af7e1b9aee4770` |
| 17 | `theorem` | [abs_le_interval_radius](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/abs-le-interval-radius--ad3d563a7b9625084bb5ac12.md) | 219 | `result-track:ad3d563a7b9625084bb5ac12248bd610363b14b162f4119cc8f7cf7b1899ed24` |
| 18 | `theorem` | [abs_lt_one_of_atanhSafe](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/abs-lt-one-of-atanhsafe--2684677745a89a9f7cd8c1ca.md) | 236 | `result-track:2684677745a89a9f7cd8c1caf22a5217edc9c0750431e905444cc800d747afc8` |
| 19 | `def` | [atanh?](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/atanh--0e37ecc9d2f9e760dcedee5d.md) | 259 | `declaration-track:0e37ecc9d2f9e760dcedee5d3f3ed0b2a97a255374eaeaada54a8e02fbfe6bb2` |
| 20 | `def` | [fromExpr](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/fromexpr--769f5fd7f25d10d2352b7603.md) | 271 | `declaration-track:769f5fd7f25d10d2352b7603cc429e5eb6e44163f4070ea8b69342b9fda226d0` |
| 21 | `def` | [fromExpr?](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/fromexpr--5d712ae05acaa53999f8943c.md) | 312 | `declaration-track:5d712ae05acaa53999f8943c2e9bd6108655456b200567d66b347fbe70d068c8` |
| 22 | `theorem` | [fromExpr?_center](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/fromexpr-center--3b5bddadf448092523e17841.md) | 382 | `result-track:3b5bddadf448092523e178419ffe3ccd5fadcaade1f5e9210ee3b2f9fd6777cc` |
| 23 | `theorem` | [add_evalSet_correct](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/add-evalset-correct--fe58b53fb0851e085b2e67a2.md) | 557 | `result-track:fe58b53fb0851e085b2e67a2f505068570f0cf6738c2cf77f2a8480ff78c2968` |
| 24 | `theorem` | [neg_evalSet_correct](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/neg-evalset-correct--e8080141d473b51da28b245f.md) | 593 | `result-track:e8080141d473b51da28b245fb7fec29ac2820180ae80cabef7bb66bd29f76e1d` |
| 25 | `theorem` | [sin_evalSet_correct](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/sin-evalset-correct--27371a6f8c696b51baacf06a.md) | 608 | `result-track:27371a6f8c696b51baacf06a6c14edc84314b67c2394496f04ca4a6aa0d6b3a8` |
| 26 | `theorem` | [cos_evalSet_correct](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/cos-evalset-correct--ac8d66f81069bc2c901cbb9b.md) | 626 | `result-track:ac8d66f81069bc2c901cbb9b75a62667a8ed50b86db5ea50a86b12213537887d` |
| 27 | `theorem` | [exp_evalSet_correct](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/exp-evalset-correct--99bb7b04485582a4424992bc.md) | 643 | `result-track:99bb7b04485582a4424992bcaf8f95fe1256da79c1d32a6011c0c03f003ed4cf` |
| 28 | `theorem` | [sinh_evalSet_correct](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/sinh-evalset-correct--6b68a5ffb968aa7edba07360.md) | 660 | `result-track:6b68a5ffb968aa7edba0736027587366854c96a053731b749b3382ffe8bd7e88` |
| 29 | `theorem` | [cosh_evalSet_correct](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/cosh-evalset-correct--a0d49308f65b342583a03e6b.md) | 677 | `result-track:a0d49308f65b342583a03e6b89120e231d13c2300dd3755ab1cbb480c0e983dc` |
| 30 | `theorem` | [asinh_evalSet_correct](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/asinh-evalset-correct--82298f5c4523dc836b49e9b9.md) | 694 | `result-track:82298f5c4523dc836b49e9b97410239a513fa4792c84eb1f90afb66f3f6aafad` |
| 31 | `theorem` | [sinc_evalSet_correct](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/sinc-evalset-correct--c680eef219e5de93d1ffc653.md) | 711 | `result-track:c680eef219e5de93d1ffc653ed77a033cac209ffc93efa06e5a54737e1ba46fa` |
| 32 | `theorem` | [tanh_mem_Icc](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/tanh-mem-icc--7a0e96dbcb8cb76112afc04d.md) | 728 | `result-track:7a0e96dbcb8cb76112afc04ddb0d2ac9b9689f558353a338fe5a8d502ff6abda` |
| 33 | `theorem` | [bound_contains_neg_one_one](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/bound-contains-neg-one-one--f44f2afa3be8f285b3f9b764.md) | 740 | `result-track:f44f2afa3be8f285b3f9b764e1b38d25fe060d8ab4afbda02c708ed9f729cb4f` |
| 34 | `theorem` | [tanh_evalSet_correct](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/tanh-evalset-correct--2381d9f2390cc59f4c900da5.md) | 760 | `result-track:2381d9f2390cc59f4c900da54f902aafa437cb7b388dcbad9971e39a4571bbd1` |
| 35 | `theorem` | [atanh_evalSet_correct'](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/atanh-evalset-correct--846b51d306630806c8d02e68.md) | 803 | `result-track:846b51d306630806c8d02e68ef26a0a357c88b20e70b235e13cabea40b564c84` |
| 36 | `theorem` | [fromExpr?_domain](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/fromexpr-domain--9c8e31fad31a738fd66adbd6.md) | 837 | `result-track:9c8e31fad31a738fd66adbd6186183542399a37af23a55d2f46baa861a7283c2` |
| 37 | `theorem` | [fromExpr_evalSet_correct](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/fromexpr-evalset-correct--9369552b442f31ba0a0924b7.md) | 991 | `result-track:9369552b442f31ba0a0924b7cb51201132e4d912971d7bce5347da55600bae85` |
| 38 | `theorem` | [fromExpr_correct](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/fromexpr-correct--f9262066babe55c0b7a90e18.md) | 1264 | `result-track:f9262066babe55c0b7a90e1848e479eff42f2b3952f3c7c419457e3881d269de` |
| 39 | `def` | [expIntervalRefined](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/expintervalrefined--1acae2ca4ec6d750f7600501.md) | 1278 | `declaration-track:1acae2ca4ec6d750f760050157263d0f2694c117d13bb999ca949d9a7c7a4912` |
| 40 | `theorem` | [mem_expIntervalRefined](../../../../../mathematics/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/declarations/mem-expintervalrefined--6c6a0e1b86965c71f3f362e7.md) | 1286 | `result-track:6c6a0e1b86965c71f3f362e7b7659bbe38beee405dd11b1cf9fcd348d1cecf3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
