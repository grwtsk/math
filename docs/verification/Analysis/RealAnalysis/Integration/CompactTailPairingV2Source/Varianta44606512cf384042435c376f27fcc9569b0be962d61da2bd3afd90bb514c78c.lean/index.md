# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CompactTailPairingV2Source.Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99345b6bbeec5ce9e08438c03c496e2a6c98df6b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99345b6bbeec5ce9e08438c03c496e2a6c98df6b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardHalfKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c.lean/declarations/forwardhalfkernel--38187af965fbc0296967cb4d.md) | 17 | `declaration-track:38187af965fbc0296967cb4d09fbd8c7de5f53a7740b2403839d1009c4fd53de` |
| 2 | `theorem` | [forwardHalfKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c.lean/declarations/forwardhalfkernel-continuous--b88f18ae00513bf001885442.md) | 22 | `result-track:b88f18ae00513bf001885442e075066b9f54f650580d6ce2317039429fe33302` |
| 3 | `theorem` | [forwardHalfKernel_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c.lean/declarations/forwardhalfkernel-hascompactsupport--87cdb049072844886121e1e3.md) | 30 | `result-track:87cdb049072844886121e1e36e68122187849de247baa9111d5234f3604ae0c4` |
| 4 | `theorem` | [forwardHalfKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c.lean/declarations/forwardhalfkernel-integrable--f57a5f253a4a0e32fea1dc22.md) | 52 | `result-track:f57a5f253a4a0e32fea1dc22f57c7d4877a3f3617bafdb2836c074074f435ee9` |
| 5 | `theorem` | [sourceCorrelation_eq_plus_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c.lean/declarations/sourcecorrelation-eq-plus-shift--15645cba7dc5e10e2f3ec330.md) | 58 | `result-track:15645cba7dc5e10e2f3ec3305478cb044be048638aa333ab2750421dbcca4236` |
| 6 | `theorem` | [negativeSmoothMoment_eq_forward_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c.lean/declarations/negativesmoothmoment-eq-forward-integral--5f3bea663e4a5c331c6263f3.md) | 66 | `result-track:5f3bea663e4a5c331c6263f3ea516a145908a5993382f941dee5f30d4b5de906` |
| 7 | `theorem` | [forwardHalfKernel_interval_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c.lean/declarations/forwardhalfkernel-interval-eq-tail-pairing--a2f0084a441a51fbabc9de51.md) | 78 | `result-track:a2f0084a441a51fbabc9de5173c60c022eaed63db1d5c1e386820125ef5c9ac0` |
| 8 | `theorem` | [negativeSmoothMoment_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV2Source/Varianta44606512cf384042435c376f27fcc9569b0be962d61da2bd3afd90bb514c78c.lean/declarations/negativesmoothmoment-eq-tail-pairing--8fc4ef0418e7b039efdf12da.md) | 121 | `result-track:8fc4ef0418e7b039efdf12dae2184ca9a9c1135367b9d09041edb0561f332e63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
