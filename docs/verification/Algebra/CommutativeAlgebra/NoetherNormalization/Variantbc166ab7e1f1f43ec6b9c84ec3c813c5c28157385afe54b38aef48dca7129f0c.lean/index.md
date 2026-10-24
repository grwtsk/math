# Verification target: GRWTSK.Algebra.CommutativeAlgebra.NoetherNormalization.Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9536f369edcc6f742ff16b677c090d3ee1ca63c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9536f369edcc6f742ff16b677c090d3ee1ca63c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Monad` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Indexes` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IsIntegralClosure.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lt_up](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/lt-up--301c54e934f9cdd5860b5f06.md) | 72 | `result-track:301c54e934f9cdd5860b5f063acac0e40c7b57075662c1a775db0e61cf67bbb7` |
| 2 | `abbrev` | [T1](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/t1--61f9c899c4ddfd820e437e70.md) | 83 | `declaration-track:61f9c899c4ddfd820e437e705f4836fd95e25307054a7ecb425cded598ef562a` |
| 3 | `lemma` | [t1_comp_t1_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/t1-comp-t1-neg--1c914fe250dfcc3bcb4c3c68.md) | 87 | `result-track:1c914fe250dfcc3bcb4c3c68e0040d0fc150c40daa94b15c352c8075f6782ce8` |
| 4 | `abbrev` | [T](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/t--a80ebeb0b5706292db07c199.md) | 93 | `declaration-track:a80ebeb0b5706292db07c1994cb4757c58407827a90aecd08e727faf3e590a26` |
| 5 | `lemma` | [sum_r_mul_neq](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/sum-r-mul-neq--2655d1eaa77bd972ad4556ac.md) | 96 | `result-track:2655d1eaa77bd972ad4556ac863db0125530f20953bc556bcab72e8aad455299` |
| 6 | `lemma` | [degreeOf_zero_t](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/degreeof-zero-t--42c9c17c75b043f3ea2a3791.md) | 105 | `result-track:42c9c17c75b043f3ea2a3791c0c957105fc1508d7436a2aa0d9a4fe9ba0ea0dd` |
| 7 | `lemma` | [degreeOf_t_neq_of_neq](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/degreeof-t-neq-of-neq--49e26285a2b6034867a47d18.md) | 122 | `result-track:49e26285a2b6034867a47d18cc720306f06537798c442ef9af416d13394f3802` |
| 8 | `lemma` | [leadingCoeff_finSuccEquiv_t](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/leadingcoeff-finsuccequiv-t--99b1f05adf2f09a213290e93.md) | 129 | `result-track:99b1f05adf2f09a213290e93bf6250ef5bca66630b1f23748c50fb50731bb083` |
| 9 | `lemma` | [T_leadingcoeff_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/t-leadingcoeff-isunit--083147643543cdcf64a9236a.md) | 148 | `result-track:083147643543cdcf64a9236a0805c029bb595051caf585393dccbc7d526c8ca7` |
| 10 | `abbrev` | [hom1](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/hom1--5919d2999afa6fdf12951f7c.md) | 183 | `declaration-track:5919d2999afa6fdf12951f7c795935d5d0fa9cc5dfcd8ec89f535a515dcbf665` |
| 11 | `lemma` | [hom1_isIntegral](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/hom1-isintegral--c0040ca21bc21f71dd32db84.md) | 189 | `result-track:c0040ca21bc21f71dd32db844de2d2b9d0be20846ba92974be88140d0caa4489` |
| 12 | `abbrev` | [eqv1](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/eqv1--57ff9e7b0dc9539f1cf13e36.md) | 196 | `declaration-track:57ff9e7b0dc9539f1cf13e366b5cc149f93491411ad2123816664da822758e29` |
| 13 | `abbrev` | [eqv2](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/eqv2--ec828e048678260b38e7b9a1.md) | 212 | `declaration-track:ec828e048678260b38e7b9a1e95c30c9e78aac295f3c5b1ccf2a55667f145668` |
| 14 | `def` | [hom2](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/hom2--3eb4cfe63f3c9fbeb21e7a8c.md) | 225 | `declaration-track:3eb4cfe63f3c9fbeb21e7a8c0d302016c8a09a688e1239aa8dc0fbfde92ba36c` |
| 15 | `lemma` | [hom2_isIntegral](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/hom2-isintegral--9e66bccd831dc974c64971cd.md) | 229 | `result-track:9e66bccd831dc974c64971cd11e35dfb0c2f92ed43b27717eb465057a776976a` |
| 16 | `theorem` | [exists_integral_inj_algHom_of_quotient](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/exists-integral-inj-alghom-of-quotient--cfef8edf43893a8463ae8636.md) | 242 | `result-track:cfef8edf43893a8463ae8636c591329028d9e2e80c7b2c11a05ecf22f5cf89ec` |
| 17 | `theorem` | [exists_integral_inj_algHom_of_fg](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/exists-integral-inj-alghom-of-fg--2be2c585bd255bfa592d8a77.md) | 281 | `result-track:2be2c585bd255bfa592d8a77832426d482c6d1b98c1b5c636c863a563390d668` |
| 18 | `theorem` | [exists_finite_inj_algHom_of_fg](../../../../../mathematics/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/declarations/exists-finite-inj-alghom-of-fg--09a6bfe1ecaac68109a10f30.md) | 294 | `result-track:09a6bfe1ecaac68109a10f30238166918329e87d33b6797539c93fd51d89b860` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
