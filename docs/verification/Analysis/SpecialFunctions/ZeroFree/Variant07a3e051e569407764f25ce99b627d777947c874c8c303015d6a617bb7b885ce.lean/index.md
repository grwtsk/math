# Verification target: GRWTSK.Analysis.SpecialFunctions.ZeroFree.Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0f7bda568b05342598acbd68ddba122a04e5816",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0f7bda568b05342598acbd68ddba122a04e5816`.

Source path: `GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula.ZeroFree` — import line 11; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Hardy.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lm](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/lm--3f9c0d26e3c6679d63141841.md) | 32 | `declaration-track:3f9c0d26e3c6679d6314184150672dc5c76b676b1f9c9e24374aea4283453348` |
| 2 | `theorem` | [Lm_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/lm-one-sub--62cbb3244c205a1709beeceb.md) | 34 | `result-track:62cbb3244c205a1709beecebad167524d240ebf8f92e1205230945669f2a3668` |
| 3 | `theorem` | [logDeriv_Gammaℝ_offreal](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/logderiv-gamma-offreal--03f5e0a219185a35af9d8ce9.md) | 38 | `result-track:03f5e0a219185a35af9d8ce986b5ca4c7acdcf0f804152f1e02c081e4c80b6d9` |
| 4 | `theorem` | [Lm_eq](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/lm-eq--81a3c9bce49f78ad6fa062eb.md) | 74 | `result-track:81a3c9bce49f78ad6fa062eb2d1f24bcc0f0550ff33e28e4c7b78b494bfe5b72` |
| 5 | `theorem` | [L2_eq_digamma](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/l2-eq-digamma--c868c82bfe75bb8084794d2b.md) | 86 | `result-track:c868c82bfe75bb8084794d2b768359853f36188326e8999142450eeba04ca0e5` |
| 6 | `theorem` | [logDeriv_zeta_add_L2](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/logderiv-zeta-add-l2--de1beab928ab336e70bc8fae.md) | 93 | `result-track:de1beab928ab336e70bc8faea80c99f463915971c472377fa4cc2ab1ed9816fe` |
| 7 | `theorem` | [hardyW_eq_mul](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/hardyw-eq-mul--0ae510a746f52fb11cc64e9a.md) | 105 | `result-track:0ae510a746f52fb11cc64e9a27caaf33e7a7d96614161d46c0511c9f37ea84a1` |
| 8 | `theorem` | [norm_digamma_sub_log_le](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/norm-digamma-sub-log-le--1dc994279c34db054cdd0202.md) | 114 | `result-track:1dc994279c34db054cdd0202df0e00e9aafed70e65c5ae5594b3ae89a39ca084` |
| 9 | `theorem` | [re_digamma_ge](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/re-digamma-ge--01fbed44e2677f8cfc9ab08d.md) | 131 | `result-track:01fbed44e2677f8cfc9ab08d9959a16800f3601c234cb287f0726a8b7deb4a4b` |
| 10 | `theorem` | [digamma_add_nat_offreal](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/digamma-add-nat-offreal--45b473ed4c9a03612807932e.md) | 143 | `result-track:45b473ed4c9a03612807932e05fb6b558ac5a87e75ca4465f88234f396d8ea0f` |
| 11 | `theorem` | [re_digamma_half_one_sub_ge](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/re-digamma-half-one-sub-ge--60275c63e5bd1fb54086611f.md) | 158 | `result-track:60275c63e5bd1fb54086611fc1e9476f1ed2695b30fe315f8ddae0c73b306457` |
| 12 | `theorem` | [re_L2_ge](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/re-l2-ge--3fce90e275b9e9da6369a0bf.md) | 213 | `result-track:3fce90e275b9e9da6369a0bf4e2c356a7f66dbd3d765716fdca8f4e367081fce` |
| 13 | `theorem` | [abs_re_Lm_le](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/abs-re-lm-le--08880ccb1127aa473114122e.md) | 236 | `result-track:08880ccb1127aa473114122e04910ca0035622e6c65420f019818baa00db6ae6` |
| 14 | `theorem` | [finite_absWindow](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/finite-abswindow--9e6d1e70947aea54b5a94802.md) | 372 | `result-track:9e6d1e70947aea54b5a94802e3cf1e5d8a32e60ecd7c4a9725f9d566e5a79907` |
| 15 | `def` | [NT](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/nt--1eebf305cf9f43b44636f8cb.md) | 379 | `declaration-track:1eebf305cf9f43b44636f8cbe81ba0839e4168b74ba6423039ab9f0836505110` |
| 16 | `theorem` | [sum_mult_one_sub_re](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/sum-mult-one-sub-re--30b40739a172e721989962af.md) | 382 | `result-track:30b40739a172e721989962af62eebe278a10c8188e47972224a3a457f47e1512` |
| 17 | `theorem` | [two_mul_sum_mult_one_sub_re](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/two-mul-sum-mult-one-sub-re--8bf25e67a56a2e79081b2b05.md) | 397 | `result-track:8bf25e67a56a2e79081b2b05b3be2b4793e94026291538d91ff56ba00c306276` |
| 18 | `theorem` | [re_logDeriv_xi_ge](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/re-logderiv-xi-ge--11023b17430b8f25f8157bf8.md) | 405 | `result-track:11023b17430b8f25f8157bf8eccf536a72004474cba8353be4f7e0adc3a4c237` |
| 19 | `theorem` | [exists_NT_ge](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/exists-nt-ge--d73b2f01386ea753198ed9ae.md) | 467 | `result-track:d73b2f01386ea753198ed9ae45ddab4e8277a20bde78ba7a6e19b2db93bb6ce6` |
| 20 | `theorem` | [regionA](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/regiona--5e1135ab07ade6cf6880a442.md) | 500 | `result-track:5e1135ab07ade6cf6880a4422da38e7d1f6971e27343abc2327a0569cd21061c` |
| 21 | `theorem` | [regionB](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/regionb--14f1f40af3573a2dca0dc457.md) | 516 | `result-track:14f1f40af3573a2dca0dc4576d6b766034319aa1433a2e3c174219c1ecbff462` |
| 22 | `theorem` | [hardyW_ne_zero_of_one_le_re](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/hardyw-ne-zero-of-one-le-re--7385c0410c5bf436e4e3b278.md) | 532 | `result-track:7385c0410c5bf436e4e3b2789d1af8bf26908980ae380bbc4b5e58b068b99f82` |
| 23 | `theorem` | [wZerosInStrip_holds](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/declarations/wzerosinstrip-holds--9f6a82d7865f297954e5eab5.md) | 555 | `result-track:9f6a82d7865f297954e5eab518050e09a65aab08e698acad329e6cde644f3c58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
