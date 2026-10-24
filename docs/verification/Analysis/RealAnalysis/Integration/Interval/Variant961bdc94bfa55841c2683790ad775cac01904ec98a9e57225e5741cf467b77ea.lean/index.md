# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Interval.Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b37fbbb3eeeb6102d5109f892b511d5cb548ce8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Interval/Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b37fbbb3eeeb6102d5109f892b511d5cb548ce8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Interval/Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Interval/Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Polynomial.Potential` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cubicPotentialDifference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea.lean/declarations/cubicpotentialdifference--59d23408528d4f3622a82b9c.md) | 17 | `declaration-track:59d23408528d4f3622a82b9ccfb4dd00be870535e2b17a5f011d92ed1e65f49d` |
| 2 | `theorem` | [cubicPotentialDifference_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea.lean/declarations/cubicpotentialdifference-self--c62869f3f1f4fb19c73cade2.md) | 22 | `result-track:c62869f3f1f4fb19c73cade205819a36fe471bb3ed65855c8138d2c171755ab5` |
| 3 | `theorem` | [cubicPotentialDifference_trans](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea.lean/declarations/cubicpotentialdifference-trans--d5d69d3fe6afb4c8051d61fd.md) | 28 | `result-track:d5d69d3fe6afb4c8051d61fd1363dcb575a33f371da58871a6b99cd88abad035` |
| 4 | `theorem` | [intervalIntegral_cubic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea.lean/declarations/intervalintegral-cubic--33c04aa86fda2f61eb3e682f.md) | 37 | `result-track:33c04aa86fda2f61eb3e682f4889e429130d5010fb06cdb0f5ff6592d99e740c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
