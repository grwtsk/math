# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CompactTailPairingV4Source.Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec539b958dce84aa936a9cf802c11830e600ba4e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec539b958dce84aa936a9cf802c11830e600ba4e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardHalfKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean/declarations/forwardhalfkernel--5a8a9d786a64ce7063a07c35.md) | 25 | `declaration-track:5a8a9d786a64ce7063a07c355fb46eda809dd57b5b54b21cf2b5aa951ac86c18` |
| 2 | `theorem` | [forwardHalfKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean/declarations/forwardhalfkernel-continuous--1de9cd0eea193b119bcacfdf.md) | 30 | `result-track:1de9cd0eea193b119bcacfdfc88304e27bf428da93f0ca19bc292b012a5a160b` |
| 3 | `theorem` | [forwardHalfKernel_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean/declarations/forwardhalfkernel-hascompactsupport--e8571b072940591dc5fc7744.md) | 38 | `result-track:e8571b072940591dc5fc7744f33ca056c29672705fe6e7f163c41f67d026f215` |
| 4 | `theorem` | [forwardHalfKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean/declarations/forwardhalfkernel-integrable--ef61750636a0776d294b3e17.md) | 60 | `result-track:ef61750636a0776d294b3e17cf668f5d86701f6f2ecc52d44fc9cd42f029e3aa` |
| 5 | `theorem` | [sourceCorrelation_eq_plus_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean/declarations/sourcecorrelation-eq-plus-shift--8721bfce0b941336cf9c005b.md) | 66 | `result-track:8721bfce0b941336cf9c005b56b3db9634a43b8c2110a162345de022ab10e1e2` |
| 6 | `theorem` | [negativeSmoothMoment_eq_forward_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean/declarations/negativesmoothmoment-eq-forward-integral--a6b688484b733297c6d7babe.md) | 74 | `result-track:a6b688484b733297c6d7babeff9e8479de85498b46cdc5c78176f7f18aa38fbe` |
| 7 | `theorem` | [forwardHalfKernel_interval_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean/declarations/forwardhalfkernel-interval-eq-tail-pairing--8f787cb8f217275d85934ce2.md) | 86 | `result-track:8f787cb8f217275d85934ce2b531750f9b90d610cec52f57560cf4071ce0e03c` |
| 8 | `theorem` | [negativeSmoothMoment_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean/declarations/negativesmoothmoment-eq-tail-pairing--9f6dc261523ae06add90b07c.md) | 124 | `result-track:9f6dc261523ae06add90b07c9526c0708014ecc35fcec8b283d6c430e71a8810` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
