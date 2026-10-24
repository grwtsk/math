# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusPerron.Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87029716159147662c86e89a70710d67d933cf29",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87029716159147662c86e89a70710d67d933cf29`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SmoothedPerronKernel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mobiusDirichlet_reciprocal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean/declarations/mobiusdirichlet-reciprocal--b3dba14ac813b72b1884c1c2.md) | 21 | `result-track:b3dba14ac813b72b1884c1c2da74fbbe801f8dc68ae2bb2ea1b6dc5258bebd3d` |
| 2 | `def` | [perronTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean/declarations/perronterm--22054d94bd3af8170acb70e3.md) | 31 | `declaration-track:22054d94bd3af8170acb70e3c3a3249eba068462dc6f18eab49543e01e158b6a` |
| 3 | `theorem` | [perronTerm_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean/declarations/perronterm-norm--ac8919d3e2ea90b8e4d5de47.md) | 37 | `result-track:ac8919d3e2ea90b8e4d5de47949f820fa208fe2aadfbce902c2c6a04492851ae` |
| 4 | `theorem` | [perronTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean/declarations/perronterm-integrable--81b2369241251659c01e3b8f.md) | 47 | `result-track:81b2369241251659c01e3b8f33135d624263caee02168ce3a2db7425d2cd08c9` |
| 5 | `theorem` | [perronTerm_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean/declarations/perronterm-norm-integrals-summable--b4aced85ab9ca78a27af87c3.md) | 58 | `result-track:b4aced85ab9ca78a27af87c3567351c277c278765091f7c83e0feea03ec5ec28` |
| 6 | `theorem` | [perronTerm_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean/declarations/perronterm-tsum--91c5b54249847aef375a2a70.md) | 67 | `result-track:91c5b54249847aef375a2a70e73f344a0c85b7b3a4ede00d2331072f2619dca8` |
| 7 | `theorem` | [perronTerm_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean/declarations/perronterm-ratio--7657abe968ea52381f61ca14.md) | 82 | `result-track:7657abe968ea52381f61ca14ad281bee4db3bed56a5e08c131a28c591282e8e2` |
| 8 | `theorem` | [mobiusPerron_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean/declarations/mobiusperron-integrable--cf740c0bf6187fb50a928735.md) | 97 | `result-track:cf740c0bf6187fb50a928735797bab7bbe33ce2b0bd788022e97cab93af6af72` |
| 9 | `theorem` | [perronTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean/declarations/perronterm-integral--e2bc2151745d3c727e17a79d.md) | 122 | `result-track:e2bc2151745d3c727e17a79dfae9e8833cd87c67cff63e2c4cf568dccf63f455` |
| 10 | `theorem` | [logNormalization_perron](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variant1efae524506475ed1411a0943c4c44a5a57875d3c13eafcf055f6bebdec69678.lean/declarations/lognormalization-perron--cfddc028364933f93aa76e9a.md) | 134 | `result-track:cfddc028364933f93aa76e9af5a9def8592983fb0d117f1249ff80040a3a3040` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
