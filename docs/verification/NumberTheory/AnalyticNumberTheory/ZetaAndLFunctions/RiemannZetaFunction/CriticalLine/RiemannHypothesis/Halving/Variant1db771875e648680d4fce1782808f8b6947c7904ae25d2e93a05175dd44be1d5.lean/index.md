# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Halving.Variant1db771875e648680d4fce1782808f8b6947c7904ae25d2e93a05175dd44be1d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfde11aad73750de31bb824295527e1b849d061d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant1db771875e648680d4fce1782808f8b6947c7904ae25d2e93a05175dd44be1d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant1db771875e648680d4fce1782808f8b6947c7904ae25d2e93a05175dd44be1d5.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant1db771875e648680d4fce1782808f8b6947c7904ae25d2e93a05175dd44be1d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfde11aad73750de31bb824295527e1b849d061d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant1db771875e648680d4fce1782808f8b6947c7904ae25d2e93a05175dd44be1d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant1db771875e648680d4fce1782808f8b6947c7904ae25d2e93a05175dd44be1d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs.Counting` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [reflect_re](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant1db771875e648680d4fce1782808f8b6947c7904ae25d2e93a05175dd44be1d5.lean/declarations/reflect-re--45e8fd25d1e4716d1e9d066f.md) | 34 | `result-track:45e8fd25d1e4716d1e9d066f9db84405d8f52459f6afdad18aaa90d766ef05d0` |
| 2 | `lemma` | [reflect_im](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant1db771875e648680d4fce1782808f8b6947c7904ae25d2e93a05175dd44be1d5.lean/declarations/reflect-im--995ead61df3a7f6ecb2bb9f7.md) | 35 | `result-track:995ead61df3a7f6ecb2bb9f7bc446dd7f541a5de6e6d1dea606f7fc5d25814c2` |
| 3 | `lemma` | [reflect_reflect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant1db771875e648680d4fce1782808f8b6947c7904ae25d2e93a05175dd44be1d5.lean/declarations/reflect-reflect--12ca43082205dd21c812957c.md) | 37 | `result-track:12ca43082205dd21c812957cf92ec7c64d69f48e499465b46b7a7fe09c3d1340` |
| 4 | `lemma` | [reflect_injective](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant1db771875e648680d4fce1782808f8b6947c7904ae25d2e93a05175dd44be1d5.lean/declarations/reflect-injective--955fd08df554ae7a6eb87a93.md) | 40 | `result-track:955fd08df554ae7a6eb87a934ae762d1ca8bb68bb0c439abc5a180badf5ad198` |
| 5 | `lemma` | [reflect_mem_window](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant1db771875e648680d4fce1782808f8b6947c7904ae25d2e93a05175dd44be1d5.lean/declarations/reflect-mem-window--a058e3ecb9501bdb3a8df190.md) | 47 | `result-track:a058e3ecb9501bdb3a8df190aa3949603a74405e9445ae429f1a421271a23572` |
| 6 | `theorem` | [N_le_two_mul_half](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant1db771875e648680d4fce1782808f8b6947c7904ae25d2e93a05175dd44be1d5.lean/declarations/n-le-two-mul-half--e5d3caf188f3bf0142f8957f.md) | 51 | `result-track:e5d3caf188f3bf0142f8957f6125523d06a8822a9890a1a13c37b87da8a4ec83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
