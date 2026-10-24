# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative02.Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f295b68f481924b134a60b52d9d698f356b82e9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f295b68f481924b134a60b52d9d698f356b82e9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/realrampantiderivative--73eb0de365f54dfd9f83b1ac.md) | 28 | `declaration-track:73eb0de365f54dfd9f83b1ac8c884863f4ff37be0e3537d9c70de1293b2e6ed9` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/realrampantiderivative-hasderivat--7000d92140036a069fe7debb.md) | 31 | `result-track:7000d92140036a069fe7debbd57d0e17c6815fa97f28625d569f1c178c9356a1` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/realrampantiderivative-tendsto--0b89b4e82615318f3489ab7c.md) | 41 | `result-track:0b89b4e82615318f3489ab7c7a2c6b696b0f20c959aba8bdd1674751428b4aa8` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/realramp-tail-integrable--d70e716a3502018d7c67f435.md) | 55 | `result-track:d70e716a3502018d7c67f435bed7a0c3670721146b4278c0a3d3d075e957ad6a` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/realramp-tail-integral--ad7a2c2829f511a6bc0d9da1.md) | 63 | `result-track:ad7a2c2829f511a6bc0d9da1721cad82f75428faf45be72d1f5935e6e31e14c4` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/zeroon-lower-integrable--c98269592e4a91732bc85db0.md) | 70 | `result-track:c98269592e4a91732bc85db04fee58d4990f348a56b29aefd780ef636e777e66` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/realramp-integrable--ff65e81f3fe37cfedec7071e.md) | 76 | `result-track:ff65e81f3fe37cfedec7071e789e19ecc8d2e1345426c105f49a98b4de07359e` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/realramp-integral--09f31234ab9319a5f95fad9f.md) | 86 | `result-track:09f31234ab9319a5f95fad9f9f57658d421321076e085a2b396dd3907db53055` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/complexramp-norm--b0af7def4cb22d2a45f414a3.md) | 104 | `result-track:b0af7def4cb22d2a45f414a36ff750691ddb36689fec30c5daa3af0d62cb0886` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/actualsinglerieszramp-integrable--c0ba013fcaea6fc567b3fe3c.md) | 113 | `result-track:c0ba013fcaea6fc567b3fe3c3c0e4134e9ddd280b044783d0d6b93a42f86b31d` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/actualsinglerieszramp-integral-norm--26a20a4e7d67a57273fcb75c.md) | 123 | `result-track:26a20a4e7d67a57273fcb75c871d55a6c35ff793944a50dfbb505edaf1f0851b` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/complexrampantiderivative--941c411acfaa92d4ec12054d.md) | 129 | `declaration-track:941c411acfaa92d4ec12054dc8a54f37fc27dbd42a5496aefe0942a108833cf7` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/complexrampantiderivative-hasderivat--eb68601060aa21236a89d7fe.md) | 132 | `result-track:eb68601060aa21236a89d7fe453cb7fefc0e94185fc9a51690328ad1259b5b2b` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/complex-exp-monomial-zero--87c164f0d02c5410703f92b9.md) | 144 | `result-track:87c164f0d02c5410703f92b94c5d10b39036740ec3d0a8acc1eb1b5eedde20c2` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/complexrampantiderivative-tendsto--851e8114e18348ae5c355127.md) | 158 | `result-track:851e8114e18348ae5c355127da5a80687076c255d9aa52e587e5a9e0a229298f` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa.lean/declarations/actualsinglerieszramp-integral--5c2bf136f86a75750758520a.md) | 172 | `result-track:5c2bf136f86a75750758520a51d6082fcb9fa452ecc0841df5b277bfbd7fde3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
