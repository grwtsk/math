# Verification target: GRWTSK.Analysis.Complex.RationalTentQuadrature

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e4fa3ab4ab41fee3eb210a4e33b318fa6709b73",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalTentQuadrature.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e4fa3ab4ab41fee3eb210a4e33b318fa6709b73`.

Source path: `GRWTSK/Analysis/Complex/RationalTentQuadrature.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalTentQuadrature.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.TentMellinQuadrature`](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RationalMellinQuadrature`](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Trace](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/trace--2d2c1924969c8f5e7036f829.md) | 25 | `declaration-track:2d2c1924969c8f5e7036f8299e99523e7e45aed42db67172b59377b09d2e8846` |
| 2 | `def` | [node](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/node--232ed6f731f15d6313f15cfa.md) | 31 | `declaration-track:232ed6f731f15d6313f15cfa3feae619f2832266f8582c5808406584ba9a9f2b` |
| 3 | `def` | [mass](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/mass--9cbb0b3f6bbe8ed8b3bdeb3a.md) | 34 | `declaration-track:9cbb0b3f6bbe8ed8b3bdeb3a4c508c00ae9e0dcd666a7bdf0b160510e2b6a863` |
| 4 | `def` | [samples](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/samples--ebb05dc217a529027e76aabe.md) | 38 | `declaration-track:ebb05dc217a529027e76aabea36ade16630384b0ddcbe8bec91af8ec8ef144ff` |
| 5 | `def` | [sampleValue](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/samplevalue--649d3716d52730121a170ad6.md) | 41 | `declaration-track:649d3716d52730121a170ad64a43466ae5dd179e78becef12dd6d86b0b24f8c1` |
| 6 | `def` | [sampleError](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/sampleerror--354134ec9b61907a57ae3b79.md) | 44 | `declaration-track:354134ec9b61907a57ae3b7942d39e123367def8630bed6b93d33d09acae0b4d` |
| 7 | `def` | [terms](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/terms--717db6a962596a580b018d1d.md) | 49 | `declaration-track:717db6a962596a580b018d1d65a879d8e4f36b269a665f08110d398dcd3563ff` |
| 8 | `def` | [meshError](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/mesherror--1c69a818f914705f6ca86899.md) | 54 | `declaration-track:1c69a818f914705f6ca86899ced889e799dd86a50fdf9901a38b64a5d6014fcd` |
| 9 | `def` | [nodeBudget](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/nodebudget--df24ad0a823e92bda4aeb57b.md) | 57 | `declaration-track:df24ad0a823e92bda4aeb57b1e91cf1372f1dcacb43b3e426ea26c641b8dbe2d` |
| 10 | `def` | [error](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/error--86bb258b5cadf909e0e8c201.md) | 61 | `declaration-track:86bb258b5cadf909e0e8c20187b741624885912bec39f099ff05ef644fe4e890` |
| 11 | `def` | [output](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/output--9a0ffd5aca61af838ccb79d7.md) | 65 | `declaration-track:9a0ffd5aca61af838ccb79d7931b353f810d0e4efb5aae5fd16b552c63efa571` |
| 12 | `def` | [Valid](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/valid--8c8d5a3eef70a8c81db258e9.md) | 68 | `declaration-track:8c8d5a3eef70a8c81db258e9e203fccb908aa107f65257ad5ecd61c7c8c18d31` |
| 13 | `instance` | [instDecidableValid](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/instdecidablevalid--68f63d6387aa6efa0e27e052.md) | 76 | `declaration-track:68f63d6387aa6efa0e27e052c52d34894b6d2c21fae81287b8bed3a5f1f02368` |
| 14 | `def` | [check](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/check--22c086f5dbedd54d24153f3a.md) | 79 | `declaration-track:22c086f5dbedd54d24153f3a51873388166535a3c42f15a0567ce1b7b1eefc1a` |
| 15 | `def` | [checkWithin](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/checkwithin--d821eda0bac4e3d6acc86657.md) | 82 | `declaration-track:d821eda0bac4e3d6acc8665782e674158df388187b9ba63904d44a333f4aba6f` |
| 16 | `theorem` | [check_iff_valid](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/check-iff-valid--cd5bcacb85324e8e87004304.md) | 85 | `result-track:cd5bcacb85324e8e87004304fbd3ce859f78dda4d9cab5b775a6ac66aa579d75` |
| 17 | `theorem` | [cast_node](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/cast-node--05139398f40fe80dbdeb0fa0.md) | 89 | `result-track:05139398f40fe80dbdeb0fa0d1c470d5c5c6608064479f6dc28b6dbdeb3845d6` |
| 18 | `theorem` | [cast_mass](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/cast-mass--8b7a70a148ae9d2e4f994f76.md) | 93 | `result-track:8b7a70a148ae9d2e4f994f76726cb34047953a65ccdd72aecf25f74429b04a2f` |
| 19 | `theorem` | [mass_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/mass-nonneg--d881179930d3ace06c50c76d.md) | 97 | `result-track:d881179930d3ace06c50c76d971a17f9506c1518ffa29753539f51cf6be96966` |
| 20 | `theorem` | [total_mass](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/total-mass--a859bd6274195e2ed8eac13f.md) | 105 | `result-track:a859bd6274195e2ed8eac13f0ac4d37f382d4c67a7961480a7da5a38c90d9288` |
| 21 | `theorem` | [length_terms](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/length-terms--0ea8f7b264ef1ad15f7a54eb.md) | 111 | `result-track:0ea8f7b264ef1ad15f7a54eb0d4f0542205ee01008e6e4d1ceae4039bbfdecb0` |
| 22 | `theorem` | [termAt_left](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/termat-left--0064ef4e58998ee78b96f44c.md) | 114 | `result-track:0064ef4e58998ee78b96f44c401dd319b952fd446589ce585cc2bedb2b6f8837` |
| 23 | `theorem` | [termAt_right](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/termat-right--a4e3ced71623228309066143.md) | 121 | `result-track:a4e3ced716232283090661437ddc07a3a5a9bc886b00d1f13d7d4f42a5625a30` |
| 24 | `theorem` | [terms_interpretation](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/terms-interpretation--721dc760a601eb5b5edb81c9.md) | 128 | `result-track:721dc760a601eb5b5edb81c995097d7737e734c5ae90471ae5ce6c4df03d86d5` |
| 25 | `theorem` | [samples_error](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/samples-error--8b5c8b4a71c065bd30f55b73.md) | 148 | `result-track:8b5c8b4a71c065bd30f55b731e03424e4231d24f8138a8aeed6c85007438590a` |
| 26 | `theorem` | [check_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/check-sound--505ad365462091147a96f5f6.md) | 174 | `result-track:505ad365462091147a96f5f65dd9f95ec4b9bbb02db7f06a76247e89543f3d8c` |
| 27 | `theorem` | [checkWithin_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/checkwithin-sound--a1218c28dd7d7488b53b65f8.md) | 190 | `result-track:a1218c28dd7d7488b53b65f875836d9d781ee448f22edf55a913b473c799ca46` |
| 28 | `theorem` | [checked_lengths](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/checked-lengths--bb0a7e15b309ff91929ffc93.md) | 197 | `result-track:bb0a7e15b309ff91929ffc93cac3650db9d8ad98854beabcef95b301afe53fa1` |
| 29 | `def` | [referenceSamples](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/referencesamples--37caa3581a7826185d329ff0.md) | 205 | `declaration-track:37caa3581a7826185d329ff098030abffa29a86d303388aa455aabfb66da13b8` |
| 30 | `def` | [referenceTrace](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/referencetrace--67e1bd9f9893824e2ea79926.md) | 209 | `declaration-track:67e1bd9f9893824e2ea7992661ed04faa0eaf75b4490108cc3cd66f2bf1da351` |
| 31 | `theorem` | [reference_sample](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/reference-sample--156e02dffea500bd6681cb1d.md) | 215 | `result-track:156e02dffea500bd6681cb1d030c7e81ea068a2cfcb6cd7abab33e5fe3c4d9f0` |
| 32 | `theorem` | [reference_checked](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/declarations/reference-checked--87019b5a5226baf8448a5657.md) | 224 | `result-track:87019b5a5226baf8448a5657e60b8df7c1234f107df65324344b30c867de2665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
