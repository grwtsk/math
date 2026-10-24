# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualRieszRealConstantCenter.Variant39ce8e998862c023ab553d07fb409082493e6e7f9923e1959446281f055efe59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c71aa2065791977f1dbdc0fbc77abccaf05bccb8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant39ce8e998862c023ab553d07fb409082493e6e7f9923e1959446281f055efe59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant39ce8e998862c023ab553d07fb409082493e6e7f9923e1959446281f055efe59.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant39ce8e998862c023ab553d07fb409082493e6e7f9923e1959446281f055efe59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c71aa2065791977f1dbdc0fbc77abccaf05bccb8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant39ce8e998862c023ab553d07fb409082493e6e7f9923e1959446281f055efe59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant39ce8e998862c023ab553d07fb409082493e6e7f9923e1959446281f055efe59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCriticalCenter` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualZeta_deriv_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant39ce8e998862c023ab553d07fb409082493e6e7f9923e1959446281f055efe59.lean/declarations/actualzeta-deriv-conj--aac76a5faaea7575216c5cae.md) | 17 | `result-track:aac76a5faaea7575216c5cae06aac9cd9e7976d9b5537e16a23566441dcb023e` |
| 2 | `theorem` | [actualZeta_logDeriv_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant39ce8e998862c023ab553d07fb409082493e6e7f9923e1959446281f055efe59.lean/declarations/actualzeta-logderiv-conj--d6d6fad8c6ae144e8f25f68d.md) | 26 | `result-track:d6d6fad8c6ae144e8f25f68d3a7d76bfd6cbe5e1826af7c4f8cab65e4ceb170b` |
| 3 | `theorem` | [actualRieszCriticalNumerator_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant39ce8e998862c023ab553d07fb409082493e6e7f9923e1959446281f055efe59.lean/declarations/actualrieszcriticalnumerator-conj--ab2f4bd72ccdfd08b3c75abf.md) | 31 | `result-track:ab2f4bd72ccdfd08b3c75abf13468781d27a31f0dc21623d878c55281581538c` |
| 4 | `def` | [actualRieszRealConstantCenter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant39ce8e998862c023ab553d07fb409082493e6e7f9923e1959446281f055efe59.lean/declarations/actualrieszrealconstantcenter--23119b2910b1b4bb2404ba16.md) | 39 | `declaration-track:23119b2910b1b4bb2404ba16796c9d239b000973c45bbf19c7740405321313eb` |
| 5 | `theorem` | [actualRieszLocalConstantCenter_eq_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant39ce8e998862c023ab553d07fb409082493e6e7f9923e1959446281f055efe59.lean/declarations/actualrieszlocalconstantcenter-eq-real--fa92a367a719fab942c91b6c.md) | 42 | `result-track:fa92a367a719fab942c91b6c537028e9a22d43e0c21db1df6132ec5c2412315a` |
| 6 | `theorem` | [actualRieszCriticalRegularization_eq_real_centers](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variant39ce8e998862c023ab553d07fb409082493e6e7f9923e1959446281f055efe59.lean/declarations/actualrieszcriticalregularization-eq-real-centers--59d25abf788cb0348b12c5ef.md) | 54 | `result-track:59d25abf788cb0348b12c5efc4720a00be67f9e17839bfa67fc60a097a1bc4ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
