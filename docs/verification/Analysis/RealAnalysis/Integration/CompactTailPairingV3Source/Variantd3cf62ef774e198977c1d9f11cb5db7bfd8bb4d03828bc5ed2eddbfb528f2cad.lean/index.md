# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CompactTailPairingV3Source.Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1f9137d06a275fad7e8bcf0d3fd6afced42f9c9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1f9137d06a275fad7e8bcf0d3fd6afced42f9c9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad.lean.json)

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
| 1 | `def` | [forwardHalfKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad.lean/declarations/forwardhalfkernel--8fc819b746fc31548e02102c.md) | 25 | `declaration-track:8fc819b746fc31548e02102c5b8c5a50ff8702237a5439eabfda00a53e1a413a` |
| 2 | `theorem` | [forwardHalfKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad.lean/declarations/forwardhalfkernel-continuous--2c0650176c7543a937b5adeb.md) | 30 | `result-track:2c0650176c7543a937b5adebe398310b903dea9859c3aff50f89162d0030c73d` |
| 3 | `theorem` | [forwardHalfKernel_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad.lean/declarations/forwardhalfkernel-hascompactsupport--7fd3f7f9b09be03010de8f1d.md) | 38 | `result-track:7fd3f7f9b09be03010de8f1d62cecc3ae6b12b758d902b0d4c518c54e4984d80` |
| 4 | `theorem` | [forwardHalfKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad.lean/declarations/forwardhalfkernel-integrable--6d73acb23e4593268c62411f.md) | 60 | `result-track:6d73acb23e4593268c62411fd82028537ffcdff2d700722bdb591a9f80a4f0f7` |
| 5 | `theorem` | [sourceCorrelation_eq_plus_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad.lean/declarations/sourcecorrelation-eq-plus-shift--c811a79b2c28fc9297c51ba5.md) | 66 | `result-track:c811a79b2c28fc9297c51ba5ea759c2808b34ec0fb9af43899002d9c2abde941` |
| 6 | `theorem` | [negativeSmoothMoment_eq_forward_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad.lean/declarations/negativesmoothmoment-eq-forward-integral--eabe8ef3961e2dd52319c094.md) | 74 | `result-track:eabe8ef3961e2dd52319c094c2d696c978de79063c381cfe3c9cdca2accf58b2` |
| 7 | `theorem` | [forwardHalfKernel_interval_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad.lean/declarations/forwardhalfkernel-interval-eq-tail-pairing--3e31c65068d43b2903d43aa8.md) | 86 | `result-track:3e31c65068d43b2903d43aa8d84a2f762e9dd4d5e7e637caa1a253262b0dc0e7` |
| 8 | `theorem` | [negativeSmoothMoment_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV3Source/Variantd3cf62ef774e198977c1d9f11cb5db7bfd8bb4d03828bc5ed2eddbfb528f2cad.lean/declarations/negativesmoothmoment-eq-tail-pairing--26ef1029d579452d3b601547.md) | 129 | `result-track:26ef1029d579452d3b601547673d01dff5dbb0fbeb7e4e97c050541fbd7fc005` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
