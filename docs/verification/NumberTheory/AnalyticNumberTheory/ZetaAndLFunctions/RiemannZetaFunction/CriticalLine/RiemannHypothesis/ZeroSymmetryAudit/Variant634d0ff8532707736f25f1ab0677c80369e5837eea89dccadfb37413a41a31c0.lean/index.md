# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZeroSymmetryAudit.Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6b2bbe661b246ce4e773f81c9c441e3d400e540",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6b2bbe661b246ce4e773f81c9c441e3d400e540`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Definitions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_conjugate_involutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/zero-conjugate-involutive--a859fef7954279263a2ff037.md) | 28 | `result-track:a859fef7954279263a2ff0378505a67a9cee52829120f46e423df66e6f1f86c9` |
| 2 | `theorem` | [zero_reflect_involutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/zero-reflect-involutive--0720651e0b05c40c5f2011e3.md) | 32 | `result-track:0720651e0b05c40c5f2011e36873c5bcba7bc1cf4b0969b4491f3b62802a9f36` |
| 3 | `theorem` | [zero_conjugate_reflect_commute](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/zero-conjugate-reflect-commute--e691e1b43ab308654d6e753f.md) | 35 | `result-track:e691e1b43ab308654d6e753fb10978b8d03a0f0fb425c0ff06c9abee69c0327b` |
| 4 | `theorem` | [critical_reflection_eq_composite](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/critical-reflection-eq-composite--9bc429206c58350a8b29f940.md) | 39 | `result-track:9bc429206c58350a8b29f9405c0377c3aa9b65f28dfc96350bbbec747f7fac27` |
| 5 | `theorem` | [critical_reflection_involutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/critical-reflection-involutive--36ff0bcf5006c75dd7a8d828.md) | 43 | `result-track:36ff0bcf5006c75dd7a8d828a7b9d1330349956a7bf46824fbfcc1e8e177e88d` |
| 6 | `theorem` | [NontrivialZetaZero.ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/nontrivialzetazero-ne-zero--3b33b797ad07735574052551.md) | 48 | `result-track:3b33b797ad0773557405255162ebceaf97a4d8dbbebe4079de25ba25d6e0e081` |
| 7 | `theorem` | [NontrivialZetaZero.gamma_real_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/nontrivialzetazero-gamma-real-ne-zero--b5af4bc2d32da0f811832a7d.md) | 55 | `result-track:b5af4bc2d32da0f811832a7d1989099f90eb5794318ca2e9ec4712c43f9f5f12` |
| 8 | `theorem` | [NontrivialZetaZero.conjugate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/nontrivialzetazero-conjugate--e8a6b88a651a2113bc5bf486.md) | 68 | `result-track:e8a6b88a651a2113bc5bf4869ce71c52372e0d6363add0c52351bd14e6a64cd9` |
| 9 | `theorem` | [NontrivialZetaZero.reflect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/nontrivialzetazero-reflect--b4c0f1083bd6d8b1d716ce58.md) | 84 | `result-track:b4c0f1083bd6d8b1d716ce587d677b793724d87ed361422019dff0096eb3dc0c` |
| 10 | `theorem` | [NontrivialZetaZero.critical_reflection](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/nontrivialzetazero-critical-reflection--7ecba551f9db2bfe4474e18f.md) | 108 | `result-track:7ecba551f9db2bfe4474e18fb1639d9d2e5ca85b6cc704e5a488451a20b45acb` |
| 11 | `theorem` | [NontrivialZetaZero.mem_critical_strip](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/nontrivialzetazero-mem-critical-strip--053dadec3463cffd8cc3fc67.md) | 113 | `result-track:053dadec3463cffd8cc3fc67c9b25894954f07424fae39b2f27d782af2b4963c` |
| 12 | `theorem` | [nontrivial_zero_conjugate_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/nontrivial-zero-conjugate-iff--e1be4d46d023b1330770fd3f.md) | 123 | `result-track:e1be4d46d023b1330770fd3f9b753a8ecb25cb4f17ee0cb478d1e604fd10d58d` |
| 13 | `theorem` | [nontrivial_zero_reflect_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/nontrivial-zero-reflect-iff--c92d2ab86f90c4bb80e28db1.md) | 131 | `result-track:c92d2ab86f90c4bb80e28db1ba9d909539cfa371ff74444af3f1146034aab364` |
| 14 | `theorem` | [nontrivial_zero_critical_reflection_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/declarations/nontrivial-zero-critical-reflection-iff--9a6d241e38a6d3139fef2988.md) | 139 | `result-track:9a6d241e38a6d3139fef2988a7a8438e9580188943e1e53fc977b424ac3198ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
