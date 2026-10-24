# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiPrime.Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5763ff3d75f649f72a3aa5bbee000f73644194c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5763ff3d75f649f72a3aa5bbee000f73644194c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ChallengeDeps.XiPrime` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.ZeroFree` — import line 7; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Final` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xiPrime_zeros_in_open_critical_strip](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137.lean/declarations/xiprime-zeros-in-open-critical-strip--91dea0df4afdb35a9d818ed0.md) | 13 | `result-track:91dea0df4afdb35a9d818ed0cb95a064b0742ffbe86fa4816787550d03776bb2` |
| 2 | `theorem` | [xiPrime_over_xi_re_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137.lean/declarations/xiprime-over-xi-re-pos--c3b249300885e59a7fa425bd.md) | 18 | `result-track:c3b249300885e59a7fa425bd154ac6cd837db336460c0da5cff99d87a9e0330e` |
| 3 | `theorem` | [xiPrime_simple_zeros_on_critical_line](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137.lean/declarations/xiprime-simple-zeros-on-critical-line--c54f5d53ced88c2a6ab59f20.md) | 25 | `result-track:c54f5d53ced88c2a6ab59f20c8ee0c31d997f0d6c01cdcbc04551bd3015c47b1` |
| 4 | `theorem` | [xiPrime_simple_zeros_on_critical_line_cumulative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137.lean/declarations/xiprime-simple-zeros-on-critical-line-cumulative--39a039f0d671fe5714dc8cfc.md) | 32 | `result-track:39a039f0d671fe5714dc8cfcc2c29715ae85050ba9b97ee04e062aa1634d18e2` |
| 5 | `theorem` | [xiPrime_simple_zeros_on_critical_line_quartic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137.lean/declarations/xiprime-simple-zeros-on-critical-line-quartic--23217acd08c93a61ba55a29d.md) | 40 | `result-track:23217acd08c93a61ba55a29d5e3cf2a97eab703a9a37b25155fadd39e4664717` |
| 6 | `theorem` | [xiPrime_simple_zeros_on_critical_line_quartic_cumulative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiPrime/Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137.lean/declarations/xiprime-simple-zeros-on-critical-line-quartic-cumulative--80811212d6bc1faa99575a07.md) | 48 | `result-track:80811212d6bc1faa99575a07f90a2358a902919484b64f8636c5661816b9fd56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
