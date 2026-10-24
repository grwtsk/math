# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEulerOne.Variant8d9b67a259867033d81dc0ea4a6a01abbe7efa1086590c4bf0c154fea81020e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cad55ef56b87ac842d17401b747c6251e609dd8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant8d9b67a259867033d81dc0ea4a6a01abbe7efa1086590c4bf0c154fea81020e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant8d9b67a259867033d81dc0ea4a6a01abbe7efa1086590c4bf0c154fea81020e0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant8d9b67a259867033d81dc0ea4a6a01abbe7efa1086590c4bf0c154fea81020e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cad55ef56b87ac842d17401b747c6251e609dd8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant8d9b67a259867033d81dc0ea4a6a01abbe7efa1086590c4bf0c154fea81020e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant8d9b67a259867033d81dc0ea4a6a01abbe7efa1086590c4bf0c154fea81020e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [periodicB1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant8d9b67a259867033d81dc0ea4a6a01abbe7efa1086590c4bf0c154fea81020e0.lean/declarations/periodicb1--bf0509d957134715f80c0290.md) | 19 | `declaration-track:bf0509d957134715f80c02907d49800192d965c138ade2fd9b362c02ddc36448` |
| 2 | `def` | [periodicB2](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant8d9b67a259867033d81dc0ea4a6a01abbe7efa1086590c4bf0c154fea81020e0.lean/declarations/periodicb2--1c88b54e00520d23616e671b.md) | 21 | `declaration-track:1c88b54e00520d23616e671bd42225c1f922c7999a702fa389b2bee0fb5d4a51` |
| 3 | `theorem` | [sourceFloorWeight_eq_neg_periodicB1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant8d9b67a259867033d81dc0ea4a6a01abbe7efa1086590c4bf0c154fea81020e0.lean/declarations/sourcefloorweight-eq-neg-periodicb1--fd07fccc35353b66388c7a1b.md) | 24 | `result-track:fd07fccc35353b66388c7a1bb0e560e11bfe645d46c1625179e6f13d1ee583a7` |
| 4 | `theorem` | [periodicB2_bounds](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant8d9b67a259867033d81dc0ea4a6a01abbe7efa1086590c4bf0c154fea81020e0.lean/declarations/periodicb2-bounds--c3e27287ce0a49746ccb9bbd.md) | 29 | `result-track:c3e27287ce0a49746ccb9bbd30648213922cc569d83415cb8c15dac39a6044c3` |
| 5 | `theorem` | [periodicB2_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant8d9b67a259867033d81dc0ea4a6a01abbe7efa1086590c4bf0c154fea81020e0.lean/declarations/periodicb2-abs-le--fc19109d134ffdc5eb0302b0.md) | 39 | `result-track:fc19109d134ffdc5eb0302b0a5ffdd52e81d02efede4cdddddfdbe0a7589f238` |
| 6 | `theorem` | [periodicB2_at_integer](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant8d9b67a259867033d81dc0ea4a6a01abbe7efa1086590c4bf0c154fea81020e0.lean/declarations/periodicb2-at-integer--0e5403c21cd61897f552f61b.md) | 43 | `result-track:0e5403c21cd61897f552f61bc9ac2f129a6f957499c8017897c01e61381975ec` |
| 7 | `theorem` | [actual_zeta_euler_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant8d9b67a259867033d81dc0ea4a6a01abbe7efa1086590c4bf0c154fea81020e0.lean/declarations/actual-zeta-euler-one--72bcbfad8d6ba832f45f1823.md) | 47 | `result-track:72bcbfad8d6ba832f45f182345997b8f03c836e34b9c39b8ddacc6ef2ea8079e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
