# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.FixedPointApproximants.Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d1e937f10243ae8371797767abedc90fdcf7a36",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d1e937f10243ae8371797767abedc90fdcf7a36`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Arithmetic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_injective_limitation_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/not-injective-limitation-set--2f6b66d2ae6a80ac9d33162a.md) | 48 | `result-track:2f6b66d2ae6a80ac9d33162a59faa8b0993203dcb051dfe30c4b0d38d05c1db6` |
| 2 | `def` | [lfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/lfpapprox--1af524404a28a3e7a77dda72.md) | 71 | `declaration-track:1af524404a28a3e7a77dda722161f6d594ec4ca7fc0d021f5eb81cef371f0fee` |
| 3 | `theorem` | [lfpApprox_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/lfpapprox-monotone--4116e27ce96b06cde2ef1f19.md) | 76 | `result-track:4116e27ce96b06cde2ef1f198dd6fe3193f9e52f533b3c31af2b8113cb3680b7` |
| 4 | `theorem` | [le_lfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/le-lfpapprox--bf035d5b7e0b61676ccfc8d0.md) | 87 | `result-track:bf035d5b7e0b61676ccfc8d0dd4eb8d946802fc44e7a8ecc3bd005bc778cf07e` |
| 5 | `theorem` | [lfpApprox_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/lfpapprox-add-one--c85fe65da46cec9ecfe750fb.md) | 92 | `result-track:c85fe65da46cec9ecfe750fbce2bf0d3575ac4787834771d4f405f19596604d0` |
| 6 | `theorem` | [lfpApprox_mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/lfpapprox-mono-left--77b6fa78307c85267db4e19f.md) | 114 | `result-track:77b6fa78307c85267db4e19fbc666c93b3666b24dea612ce8677c99e55153c22` |
| 7 | `theorem` | [lfpApprox_mono_mid](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/lfpapprox-mono-mid--0f04e5f63baa1349af808e11.md) | 131 | `result-track:0f04e5f63baa1349af808e11704ad9456bc7af553cf6645e8e035066a6d8eab1` |
| 8 | `theorem` | [lfpApprox_eq_of_mem_fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/lfpapprox-eq-of-mem-fixedpoints--f75c36efac697d2e48ab319f.md) | 148 | `result-track:f75c36efac697d2e48ab319f2890f88488c37401d2afb390d3831c5124f044f8` |
| 9 | `theorem` | [exists_lfpApprox_eq_lfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/exists-lfpapprox-eq-lfpapprox--1470030f8131cd9202fabb2f.md) | 169 | `result-track:1470030f8131cd9202fabb2f7b84a244734c8a19d3b1250a09f116cda166181c` |
| 10 | `lemma` | [lfpApprox_mem_fixedPoints_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/lfpapprox-mem-fixedpoints-of-eq--fc2c470b094912370daff26e.md) | 182 | `result-track:fc2c470b094912370daff26e983981b0c9efc3361ce10f437315d1ee64a1dcbf` |
| 11 | `theorem` | [lfpApprox_ord_mem_fixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/lfpapprox-ord-mem-fixedpoint--eef1acd649cdd98d49e908da.md) | 196 | `result-track:eef1acd649cdd98d49e908da2d9ca76792dd5e2e624d60e869701909106273ee` |
| 12 | `theorem` | [lfpApprox_le_of_mem_fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/lfpapprox-le-of-mem-fixedpoints--17adfc54dcc6dbf80eaed359.md) | 209 | `result-track:17adfc54dcc6dbf80eaed3596d18024b374216c39d48161ff6ed6cd087fab397` |
| 13 | `theorem` | [lfpApprox_ord_eq_lfp](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/lfpapprox-ord-eq-lfp--54087e9efa49ec48bcfb6e54.md) | 229 | `result-track:54087e9efa49ec48bcfb6e5499872e00703bc2176e572c4b7f196f6b8d1def34` |
| 14 | `theorem` | [lfp_mem_range_lfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/lfp-mem-range-lfpapprox--aca8b1bca470c368999c862d.md) | 241 | `result-track:aca8b1bca470c368999c862d5b98c5f70f99904a0054537834f8a051fffdd575` |
| 15 | `def` | [gfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/gfpapprox--5f7285898d78b1ccab5db7d4.md) | 249 | `declaration-track:5f7285898d78b1ccab5db7d426adca27b9a1610fd2e8aa16c0e91b63bff89dbe` |
| 16 | `theorem` | [gfpApprox_antitone](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/gfpapprox-antitone--b8e91763dbbc384877e73b40.md) | 258 | `result-track:b8e91763dbbc384877e73b407aee83b7e8b43fde80a1193d4eed6be80bf1a815` |
| 17 | `theorem` | [gfpApprox_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/gfpapprox-le--f83e75a7bf801c6e9b3ebd44.md) | 261 | `result-track:f83e75a7bf801c6e9b3ebd4477e92ca97dbf9dcf4e503465a472e9a84b66467e` |
| 18 | `theorem` | [gfpApprox_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/gfpapprox-add-one--6d2e47e228c6cd66b0a31bd9.md) | 264 | `result-track:6d2e47e228c6cd66b0a31bd95efcded08c96bbbb2f8223f6a5e510e376f8e167` |
| 19 | `theorem` | [gfpApprox_mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/gfpapprox-mono-left--1223e508b94ebbd2e3e65ee9.md) | 268 | `result-track:1223e508b94ebbd2e3e65ee9c5f68571169d0cca8d971ec41ebd4097bd8d4f41` |
| 20 | `theorem` | [gfpApprox_mono_mid](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/gfpapprox-mono-mid--93b305e2c8e3ca80fa4b2931.md) | 273 | `result-track:93b305e2c8e3ca80fa4b2931a75f9101998cef41303625838d3613b8ffeb6237` |
| 21 | `theorem` | [gfpApprox_eq_of_mem_fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/gfpapprox-eq-of-mem-fixedpoints--e839cf0c21f9cba1492d4509.md) | 277 | `result-track:e839cf0c21f9cba1492d45090445d7870f7361cb0bc01c45ae757401ca92e4c5` |
| 22 | `theorem` | [exists_gfpApprox_eq_gfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/exists-gfpapprox-eq-gfpapprox--bd42250000ca25b74217932c.md) | 283 | `result-track:bd42250000ca25b74217932cbcbaa51106b4c50aa53c6bf45e0904a60fb02462` |
| 23 | `lemma` | [gfpApprox_ord_mem_fixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/gfpapprox-ord-mem-fixedpoint--d8ba0ef17fd8aaba983819d4.md) | 288 | `result-track:d8ba0ef17fd8aaba983819d4c1b56d59dc7b17444e532eab67752c01487d07dc` |
| 24 | `lemma` | [le_gfpApprox_of_mem_fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/le-gfpapprox-of-mem-fixedpoints--eaeb507f4a4b0c7e128a22b8.md) | 294 | `result-track:eaeb507f4a4b0c7e128a22b8e9db59ba8f4c0938e4ba58216eb9362805b7ec38` |
| 25 | `theorem` | [gfpApprox_ord_eq_gfp](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/gfpapprox-ord-eq-gfp--3b47fa3b0e8e5cde92b4a4d2.md) | 300 | `result-track:3b47fa3b0e8e5cde92b4a4d29dc9a786ca2e9c6d82f2d2caf4b90767e2d0e6d8` |
| 26 | `theorem` | [gfp_mem_range_gfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/declarations/gfp-mem-range-gfpapprox--053a1375f591b218e671759c.md) | 304 | `result-track:053a1375f591b218e671759cf1bb8252be77de6797122e057408eebeadeb20e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
