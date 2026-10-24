# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Norms.Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bacc3dc794637292679c0c4fe4e9f2ed74c05b70",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bacc3dc794637292679c0c4fe4e9f2ed74c05b70`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [taperProfile_smoothstep](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/taperprofile-smoothstep--7c75571ad8243b875eacae9e.md) | 16 | `result-track:7c75571ad8243b875eacae9e05ad5b54630da95e86bdf324c93304fd9eaf4dc3` |
| 2 | `lemma` | [deriv_nonneg_of_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/deriv-nonneg-of-monotone--692c48fbcbf359485326274f.md) | 28 | `result-track:692c48fbcbf359485326274f621bc5178f26bba81f456735003698362e3af12e` |
| 3 | `lemma` | [rho_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/rho-differentiable--e5d1c20dc9faf642fe9bac9a.md) | 43 | `result-track:e5d1c20dc9faf642fe9bac9aa4b3c8fe6fadcd9b7438159b3e0a43dfff9a8f52` |
| 4 | `lemma` | [deriv_phi_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/deriv-phi-pos--1691d48e122d6500888dc384.md) | 47 | `result-track:1691d48e122d6500888dc384c4e4544fa314164f89fd704a24b5255d64f7224c` |
| 5 | `lemma` | [integral_abs_deriv_eq_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/integral-abs-deriv-eq-two--dcb9eb035ad3659b6e4441dd.md) | 65 | `result-track:dcb9eb035ad3659b6e4441dde8704fdf88aab0c53d523e5667fb4460f619424b` |
| 6 | `theorem` | [integral_abs_deriv_phi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/integral-abs-deriv-phi--07960125ba3a2a2f2dcf6301.md) | 128 | `result-track:07960125ba3a2a2f2dcf63016394965ff9c04ae48ad6ca034c50a96265def25e` |
| 7 | `theorem` | [integral_abs_deriv_phi_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/integral-abs-deriv-phi-sq--b56ed2d2795b1dc4d116518e.md) | 140 | `result-track:b56ed2d2795b1dc4d116518ecde757b0f0a637b3bf6f115758ebc356c41742e8` |
| 8 | `lemma` | [derivRho_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/derivrho-zero-left--e85c09f316d17111f96934db.md) | 168 | `result-track:e85c09f316d17111f96934db3daacbf28a70fd9dfccab92e0d5eae4531f6efd4` |
| 9 | `lemma` | [derivRho_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/derivrho-zero-right--ed877ad237f1517e6837bd29.md) | 176 | `result-track:ed877ad237f1517e6837bd297b0c7b304c627b9d0b7e9d539d46da1ee79020c2` |
| 10 | `lemma` | [derivRho2_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/derivrho2-zero-left--d1c4eec2db55ec6bf33deec0.md) | 183 | `result-track:d1c4eec2db55ec6bf33deec003858e534116a2e991db0883839b74f880f59752` |
| 11 | `lemma` | [derivRho2_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/derivrho2-zero-right--9c070bf4f8043fb755f2bd6a.md) | 191 | `result-track:9c070bf4f8043fb755f2bd6af7b5437408576988c79c61abbe3b2e5b55239c11` |
| 12 | `lemma` | [derivRho_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/derivrho-continuous--726ba97a8bd0b1dbc8f16e3d.md) | 199 | `result-track:726ba97a8bd0b1dbc8f16e3de554343b3070b1926b5b2deada1d7e76ae7e497d` |
| 13 | `lemma` | [bddAbove_abs_derivRho](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/bddabove-abs-derivrho--6129b9f52cdba406efac5bb1.md) | 202 | `result-track:6129b9f52cdba406efac5bb1f5c362988b8ac839494e0cda63888c7ea8c84e31` |
| 14 | `lemma` | [abs_derivRho_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/abs-derivrho-le--30c58799c67117db84cdf803.md) | 216 | `result-track:30c58799c67117db84cdf8036cc428d7f33dccac592cba782639ee2fe11ab231` |
| 15 | `lemma` | [supDeriv_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/supderiv-nonneg--595a95b34f6eab7edad143bc.md) | 219 | `result-track:595a95b34f6eab7edad143bcdd1e8b7ccd6224b62dca3cd5791e664036588f4b` |
| 16 | `lemma` | [l1Deriv2_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/l1deriv2-nonneg--354dbedd88338778af9a30a1.md) | 222 | `result-track:354dbedd88338778af9a30a18f5299f21447c403a8f0c057e9f0696eb24f2331` |
| 17 | `lemma` | [deriv_phi_odd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/deriv-phi-odd--cdc7bf2e1e33f57768b15f5e.md) | 225 | `result-track:cdc7bf2e1e33f57768b15f5ee3039bdb5654c2b29620d5287a4f47a54ec47901` |
| 18 | `theorem` | [abs_deriv_phi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/abs-deriv-phi-le--a7c7e12c7c8358d1c2961f2c.md) | 234 | `result-track:a7c7e12c7c8358d1c2961f2c86f6fe107c3c66b6aa2321df66b57f915ab157ab` |
| 19 | `lemma` | [deriv2_phi_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/deriv2-phi-pos--a616ae3afbd3a09e8af3e01d.md) | 258 | `result-track:a616ae3afbd3a09e8af3e01d04573e63ca39d91b2a0a1daa3f1f7e4c5ec03d6f` |
| 20 | `lemma` | [integral_abs_eq_two_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/integral-abs-eq-two-mul--3630dbbd1581847d7cd4b143.md) | 279 | `result-track:3630dbbd1581847d7cd4b14325085c597dff173c18b65c0f4cf80f890c4777a3` |
| 21 | `lemma` | [deriv_phi_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/deriv-phi-contdiff--5bd0399192c22be1b6a48736.md) | 310 | `result-track:5bd0399192c22be1b6a487366e9ac436610de51e803ee65e5482c22b1129bade` |
| 22 | `lemma` | [deriv2_phi_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/deriv2-phi-even--4acf802a38575ef488d2e582.md) | 314 | `result-track:4acf802a38575ef488d2e582e9538fe6274fc5bbb30ed596192ea1536a2976fa` |
| 23 | `lemma` | [deriv2_phi_zero_out](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/deriv2-phi-zero-out--b64a418679b1f1752282c6e2.md) | 327 | `result-track:b64a418679b1f1752282c6e2bc07e316cc5b541bd43893c26f122d598e9efbd6` |
| 24 | `theorem` | [integral_abs_deriv2_phi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/integral-abs-deriv2-phi--684b58bd259cd768136b4a84.md) | 341 | `result-track:684b58bd259cd768136b4a84fae46ecf84cf262253d76478e611f04598349592` |
| 25 | `theorem` | [integral_abs_deriv2_phi_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/integral-abs-deriv2-phi-sq-le--af87839c927f5dcd96cd74fd.md) | 388 | `result-track:af87839c927f5dcd96cd74fd468695fbb86322aae71ef502f6ac53f6e6df55d5` |
| 26 | `theorem` | [four_le_cRho](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/four-le-crho--f15772e76be58cead8ccfc83.md) | 478 | `result-track:f15772e76be58cead8ccfc832bd5e341fa062d1cefc9c0df526ffdd0afc670bb` |
| 27 | `theorem` | [two_mul_l1Deriv2_le_cRho](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/two-mul-l1deriv2-le-crho--ab21cea0efeee5ffaa1cefb2.md) | 496 | `result-track:ab21cea0efeee5ffaa1cefb27f052f5597a0da78cb2b111859c22038088becf4` |
| 28 | `theorem` | [C1_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/c1-eq--ece3091579873a4022c0e58d.md) | 502 | `result-track:ece3091579873a4022c0e58d6b2714acc9750ab1824ea709236db0a7f0d768e6` |
| 29 | `theorem` | [C1_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/c1-le--366367fe22efa31a8f72ec83.md) | 506 | `result-track:366367fe22efa31a8f72ec83a170bcd81a3cf9b6ab8d6709cdd60a2a30afd02c` |
| 30 | `lemma` | [L_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/l-pos--09ed62db553ecd7ff2c51655.md) | 519 | `result-track:09ed62db553ecd7ff2c516553be548606321f886d3bb4558b22d285875d00e96` |
| 31 | `lemma` | [integrable_phi_pow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/integrable-phi-pow--ad3ad7df203edf5bbda7c938.md) | 521 | `result-track:ad3ad7df203edf5bbda7c938f99cd65405948bfe520cc7f7fc1c5b7beb054543` |
| 32 | `theorem` | [bConst_le_aConst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/bconst-le-aconst--018889d1a00c47da0a8629da.md) | 527 | `result-track:018889d1a00c47da0a8629da5ec0a0db67caad7589fb4d4330fb0683a06a724b` |
| 33 | `theorem` | [aConst_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/aconst-le-one--07edeca94c7a2e359b1027b6.md) | 541 | `result-track:07edeca94c7a2e359b1027b6f3888bfd4ef37f1effde7b44c26533efcb18363f` |
| 34 | `theorem` | [one_sub_le_bConst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/one-sub-le-bconst--d1bc28ef153e98d8d8d56183.md) | 578 | `result-track:d1bc28ef153e98d8d8d561835f78f9f1625964b9649f3646ee9ff630701045b9` |
| 35 | `theorem` | [bConst_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/declarations/bconst-nonneg--d06617a7ab6456e7301fae9e.md) | 610 | `result-track:d06617a7ab6456e7301fae9e3c08d9c482ffc716bca49b1ae022f44da92f5684` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
