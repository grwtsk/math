# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Bridge.Variant9e42263a0b2a7b636a99f17df00075b849fd7f5248b41a5cc11a211f5218de75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71066668de15a1b0af347366b8276fbcf84325ec",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant9e42263a0b2a7b636a99f17df00075b849fd7f5248b41a5cc11a211f5218de75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant9e42263a0b2a7b636a99f17df00075b849fd7f5248b41a5cc11a211f5218de75.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant9e42263a0b2a7b636a99f17df00075b849fd7f5248b41a5cc11a211f5218de75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71066668de15a1b0af347366b8276fbcf84325ec`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant9e42263a0b2a7b636a99f17df00075b849fd7f5248b41a5cc11a211f5218de75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant9e42263a0b2a7b636a99f17df00075b849fd7f5248b41a5cc11a211f5218de75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideB.Concrete` — import line 10; external provider; requires a separately pinned dependency.
- `Zeta23.Taper` — import line 11; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Norms` — import line 12; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.PiFacts` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [psiA_concrete](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant9e42263a0b2a7b636a99f17df00075b849fd7f5248b41a5cc11a211f5218de75.lean/declarations/psia-concrete--f1909e81741c6ea6290d3262.md) | 43 | `result-track:f1909e81741c6ea6290d3262edacd4d236f380a40ce35b80015e6f57a891f2d0` |
| 2 | `theorem` | [localHyps_concrete](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant9e42263a0b2a7b636a99f17df00075b849fd7f5248b41a5cc11a211f5218de75.lean/declarations/localhyps-concrete--d0f8ed5c805267f7ab994de5.md) | 48 | `result-track:d0f8ed5c805267f7ab994de5b5b37ec5aa05a3a1478b38143f8442bcaa83b364` |
| 3 | `theorem` | [localHypsEventually](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant9e42263a0b2a7b636a99f17df00075b849fd7f5248b41a5cc11a211f5218de75.lean/declarations/localhypseventually--9bb19dd25a5c9b4590168f8a.md) | 103 | `result-track:9bb19dd25a5c9b4590168f8ac7473cfc32aa1d0553409e55be72033211b53f34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
