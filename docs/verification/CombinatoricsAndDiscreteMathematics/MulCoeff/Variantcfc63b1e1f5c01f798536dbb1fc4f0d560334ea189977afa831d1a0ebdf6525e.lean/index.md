# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MulCoeff.Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cd1b5e4cbcaf3d21227cac1440eeac231bc661c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cd1b5e4cbcaf3d21227cac1440eeac231bc661c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Truncated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Supported` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/macro-rules--9089976c80b761909a1b0c3b.md) | 33 | `declaration-track:9089976c80b761909a1b0c3ba59fdfe9fb9ba043417716b0ce322f88d9835c42` |
| 2 | `def` | [wittPolyProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/wittpolyprod--96c4ab5e9dc915c215e7447e.md) | 56 | `declaration-track:96c4ab5e9dc915c215e7447e9ec771bddfa589bb628c09c5d72c71d1c9a070e9` |
| 3 | `theorem` | [wittPolyProd_vars](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/wittpolyprod-vars--f01405c3c5af196c0f96b8da.md) | 61 | `result-track:f01405c3c5af196c0f96b8da8e87257204cff65187d4e81eceffba7c8f5d3ee6` |
| 4 | `def` | [wittPolyProdRemainder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/wittpolyprodremainder--4dc0194b0962849e1224284f.md) | 70 | `declaration-track:4dc0194b0962849e1224284fb88243f8e749ff4c66a5b7d52477b39b048552f4` |
| 5 | `theorem` | [wittPolyProdRemainder_vars](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/wittpolyprodremainder-vars--eae2d28335d02b075e55ab48.md) | 74 | `result-track:eae2d28335d02b075e55ab485c5dc69ff0493bb642bf9b7ff3c6d43697749db9` |
| 6 | `def` | [remainder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/remainder--116e422a8607b1b5ecf651a6.md) | 97 | `declaration-track:116e422a8607b1b5ecf651a6d43c6207cf700434c2a1ccce661943174fe4c5d3` |
| 7 | `theorem` | [remainder_vars](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/remainder-vars--f296cc22ed2e3d8ee8bbcc1d.md) | 104 | `result-track:f296cc22ed2e3d8ee8bbcc1ddd5ae2b44287bb8797e47ad53aa9fd80b69427e6` |
| 8 | `def` | [polyOfInterest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/polyofinterest--bd64981f2db971e460ecf92a.md) | 119 | `declaration-track:bd64981f2db971e460ecf92aef866a2fe99585813216fadd3c6177b98ee48c93` |
| 9 | `theorem` | [mul_polyOfInterest_aux1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/mul-polyofinterest-aux1--1f3de64f8779e6fcb31a64e1.md) | 125 | `result-track:1f3de64f8779e6fcb31a64e1c5a96b8825236b0eda5466abe06a6cec239132c4` |
| 10 | `theorem` | [mul_polyOfInterest_aux2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/mul-polyofinterest-aux2--0ea1be315a69c60cc8bbd976.md) | 143 | `result-track:0ea1be315a69c60cc8bbd976175f06b58b4768535c0ba322a213d5ee145aba5c` |
| 11 | `theorem` | [mul_polyOfInterest_aux3](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/mul-polyofinterest-aux3--f947e64bb225daba0b9a4da9.md) | 150 | `result-track:f947e64bb225daba0b9a4da99ede17ceb5673fb8ae50ee58c7d1d796b202dfaa` |
| 12 | `theorem` | [mul_polyOfInterest_aux4](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/mul-polyofinterest-aux4--68f9f23d28c17050f0a071e4.md) | 184 | `result-track:68f9f23d28c17050f0a071e46602f6968566f9cae49b6e5d6373864d8bf9bdc0` |
| 13 | `theorem` | [mul_polyOfInterest_aux5](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/mul-polyofinterest-aux5--35f99b034a98bca75ede6eb8.md) | 194 | `result-track:35f99b034a98bca75ede6eb881992354fb261504817988d0f37113a112b7fb09` |
| 14 | `theorem` | [mul_polyOfInterest_vars](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/mul-polyofinterest-vars--3e8812e5cb4292ff2f4eb0ea.md) | 201 | `result-track:3e8812e5cb4292ff2f4eb0ea1525f47c5662e64d63f5e7794a488bc3091df048` |
| 15 | `theorem` | [polyOfInterest_vars_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/polyofinterest-vars-eq--6011d505c3b795dc0d3ac331.md) | 210 | `result-track:6011d505c3b795dc0d3ac331097589a9deb05f51fc2769c99500bd7308da23c8` |
| 16 | `theorem` | [polyOfInterest_vars](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/polyofinterest-vars--88853523c97ce8e7705ad5b5.md) | 220 | `result-track:88853523c97ce8e7705ad5b57d328ec20574cdd6c9819882c61fde8c4e33a42f` |
| 17 | `theorem` | [peval_polyOfInterest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/peval-polyofinterest--cd913e25537e0bac0731a506.md) | 224 | `result-track:cd913e25537e0bac0731a5069f24d142f9fc661f7b0e3342c89fa6d12ab6a0b8` |
| 18 | `theorem` | [peval_polyOfInterest'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/peval-polyofinterest--ff794b8d94df806ecbceca1c.md) | 243 | `result-track:ff794b8d94df806ecbceca1c2692aab48abdfde0cd9b9d242699d9da1d3010a7` |
| 19 | `theorem` | [nth_mul_coeff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/nth-mul-coeff--33a828ac3ea7e8c2230aa3d6.md) | 263 | `result-track:33a828ac3ea7e8c2230aa3d657062adcab9c69afd5ba5cd86706e833521b0acc` |
| 20 | `theorem` | [nth_mul_coeff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/nth-mul-coeff--421c1a6eb07f181fb3bb46ed.md) | 291 | `result-track:421c1a6eb07f181fb3bb46ed397e74b66a431f599e43ff44cea4d9140cce2726` |
| 21 | `def` | [nthRemainder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/nthremainder--5018613652a6ba683caf66ba.md) | 308 | `declaration-track:5018613652a6ba683caf66ba46a56c04056c8d092f620871f9e1daee45553ea7` |
| 22 | `theorem` | [nthRemainder_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/declarations/nthremainder-spec--45ceb12df4614c8543b4c95b.md) | 312 | `result-track:45ceb12df4614c8543b4c95ba13140561f6136296fc1f96ddc60373520cebbdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
