# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Holder.Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a87d70e2d6d7d68bac8c43752279702aa3abccf",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a87d70e2d6d7d68bac8c43752279702aa3abccf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [holder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/holder--686e803d0500b69bf157e1df.md) | 53 | `declaration-track:686e803d0500b69bf157e1dfe59dffcca19a1d5eb26e43b93c1adb492b2bbe4e` |
| 2 | `lemma` | [coeFn_holder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/coefn-holder--e4f1a4704ad2514367a18c80.md) | 59 | `result-track:e4f1a4704ad2514367a18c80e9c52ae86b535bd30d12d4df33a01a732a6b84f8` |
| 3 | `lemma` | [nnnorm_holder_apply_apply_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/nnnorm-holder-apply-apply-le--47cca00fc25e83ab7d0533a6.md) | 64 | `result-track:47cca00fc25e83ab7d0533a60e280336fd23d4a9156b4a2a2eb038f3cb27a3fc` |
| 4 | `lemma` | [norm_holder_apply_apply_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/norm-holder-apply-apply-le--b37debfa82827df3f092163d.md) | 71 | `result-track:b37debfa82827df3f092163d768d712685296217b5911c86b61a392818445559` |
| 5 | `lemma` | [holder_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/holder-add-left--bd642a3efaf7f92a64152da0.md) | 75 | `result-track:bd642a3efaf7f92a64152da09beccd0215904f4552febfa4a34e2b5e0274e390` |
| 6 | `lemma` | [holder_add_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/holder-add-right--524a09564e43c184ec867dce.md) | 82 | `result-track:524a09564e43c184ec867dce9bd51fb0ccf07975ecae617f6ddc29bcfed479d8` |
| 7 | `lemma` | [holder_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/holder-smul-left--ea534b71621d2f354f5afbae.md) | 89 | `result-track:ea534b71621d2f354f5afbaed52f455934217deb29fae62c095f97bbfcd41b1f` |
| 8 | `lemma` | [holder_smul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/holder-smul-right--52e11f77cd71cdee03a3b789.md) | 96 | `result-track:52e11f77cd71cdee03a3b789b10ac6804845fa6b992b59535417f8182252e69c` |
| 9 | `def` | [holderₗ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/holder--64c560f3f4964f4ef3b95a29.md) | 106 | `declaration-track:64c560f3f4964f4ef3b95a29cc182a2df763d5d0bb0085c03471e679b4f5e0fb` |
| 10 | `def` | [holderL](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/holderl--35fad4b75e90b0d96c26701e.md) | 115 | `declaration-track:35fad4b75e90b0d96c26701e6747d0a1b18ca851a8efcaab883186070f7fa9fe` |
| 11 | `lemma` | [norm_holderL_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/norm-holderl-le--74680bcdf87810533031b77c.md) | 118 | `result-track:74680bcdf87810533031b77c2c30caf9a25042faac3521a10a87b7008e8edfb5` |
| 12 | `def` | [lpPairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/lppairing--564fbb59acb37216c77a7a7b.md) | 132 | `declaration-track:564fbb59acb37216c77a7a7b98eb2cbd98d8eea74899c4e0e4eafeeea3f449fd` |
| 13 | `lemma` | [lpPairing_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/lppairing-eq-integral--586abd9b3596e2f553e9f741.md) | 135 | `result-track:586abd9b3596e2f553e9f741cc21b6178b0137592353a5427411b218811266f8` |
| 14 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/instance--056331c6a8d8999ac5344892.md) | 167 | `declaration-track:056331c6a8d8999ac534489286fef98e1fc06b1cffcc503bef071fb1b33a933a` |
| 15 | `lemma` | [smul_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/smul-def--d7adecd3549d6a262e075ca3.md) | 170 | `result-track:d7adecd3549d6a262e075ca394b7492d76d26552aabaa195102e14e3a4febea1` |
| 16 | `lemma` | [coeFn_lpSMul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/coefn-lpsmul--5138d47140b50aedfe526ba5.md) | 174 | `result-track:5138d47140b50aedfe526ba55cecd4c526af2b36e4cb7b811ce2fc4674118367` |
| 17 | `lemma` | [norm_smul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/norm-smul-le--de238f542dab3ccba785ce19.md) | 179 | `result-track:de238f542dab3ccba785ce19d5295550b58abb67ec4497e789a427e95b37fd55` |
| 18 | `lemma` | [smul_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/smul-add--927b096c725ed5baeb9a5602.md) | 193 | `result-track:927b096c725ed5baeb9a56028c0c22e770caff902f286c4a78a5d6c2a8d66d41` |
| 19 | `lemma` | [add_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/add-smul--41676e6537c0e9549ab84aa5.md) | 200 | `result-track:41676e6537c0e9549ab84aa5a5e2ddb2f04cffc7e4fa47c1d68d3b5684a62473` |
| 20 | `lemma` | [smul_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/smul-zero--cfb6c9872a848a3fe49626ac.md) | 209 | `result-track:cfb6c9872a848a3fe49626ac0f56e99097af14797c7466675b4e1c88e8ae15eb` |
| 21 | `lemma` | [zero_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/zero-smul--0f44f62b2afbc04ba6cb92b4.md) | 219 | `result-track:0f44f62b2afbc04ba6cb92b4b4582dc80fe2d8e59c46363963a335f321e3767c` |
| 22 | `lemma` | [smul_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/smul-neg--bccd9efd21ff6ad7bda883d0.md) | 228 | `result-track:bccd9efd21ff6ad7bda883d0ec8cc995f42d7d4deb6095b10d95eea2ce5c63b6` |
| 23 | `lemma` | [neg_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/neg-smul--4c22ebcfbea2a10c5d2fca8a.md) | 233 | `result-track:4c22ebcfbea2a10c5d2fca8adcb597f5330b79bafe81278113242ca4da2fde37` |
| 24 | `lemma` | [neg_smul_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/neg-smul-neg--b433812cd02b8d8997c4edcc.md) | 237 | `result-track:b433812cd02b8d8997c4edcc6db33068284492904e829db1e911c4ace845ebc1` |
| 25 | `lemma` | [smul_assoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/smul-assoc--5e224f7282dcb240024d49f9.md) | 243 | `result-track:5e224f7282dcb240024d49f942d2c864d22f58df094ea8ef16bc35d49337a412` |
| 26 | `lemma` | [smul_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant42de9fa8f9127c75e19ed956c236fac68dbb84cd31d9676b602dedfa92389327.lean/declarations/smul-comm--6ebf03feee6864e4901273bb.md) | 251 | `result-track:6ebf03feee6864e4901273bb55f3e24ce05de4c79242b9d3c5c6eaf6c559d4d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
