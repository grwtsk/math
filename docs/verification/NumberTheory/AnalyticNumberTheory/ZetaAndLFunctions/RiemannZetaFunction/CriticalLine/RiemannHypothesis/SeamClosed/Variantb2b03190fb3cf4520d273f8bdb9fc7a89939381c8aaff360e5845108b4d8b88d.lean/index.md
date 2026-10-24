# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SeamClosed.Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16935e20a02d7d650344428eef2912c6f7fc0c65",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16935e20a02d7d650344428eef2912c6f7fc0c65`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Statement.Seam` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.ZetaReflect` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zetaSeam](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean/declarations/zetaseam--c3b1648d0c28a0a0b6293435.md) | 22 | `result-track:c3b1648d0c28a0a0b62934354ed3ebfade9ea85bc9d210a9f794db50cdb38453` |
| 2 | `def` | [zetaZeroConfig](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean/declarations/zetazeroconfig--31ca2a409c293883a0b104b3.md) | 26 | `declaration-track:31ca2a409c293883a0b104b3b903dd6fbfef3e9652613bec3344175791a4b88d` |
| 3 | `lemma` | [zetaZeroConfig_carrier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean/declarations/zetazeroconfig-carrier--b2997730659f8370586d2536.md) | 28 | `result-track:b2997730659f8370586d253687a8f7b2fbb81ab97cf0c3d760a56071d26da94a` |
| 4 | `lemma` | [zetaZeroConfig_mult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean/declarations/zetazeroconfig-mult--4137176c216183ae70145a5a.md) | 29 | `result-track:4137176c216183ae70145a5a081f833361988aa9206ee2fa6abca3da02b07855` |
| 5 | `lemma` | [zetaZeroConfig_N](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean/declarations/zetazeroconfig-n--c2d7c1044b6d3b608fd9fcfd.md) | 31 | `result-track:c2d7c1044b6d3b608fd9fcfd6864090bae6138b4f8195f5cdb1c8db65d1e01ac` |
| 6 | `lemma` | [zetaZeroConfig_N0star](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean/declarations/zetazeroconfig-n0star--f84179012f18da2a602d7fc0.md) | 33 | `result-track:f84179012f18da2a602d7fc09d9463f529b34213170dcfeaab7ab56b16bfd391` |
| 7 | `lemma` | [zetaZeroConfig_N0s](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean/declarations/zetazeroconfig-n0s--fa3c404ac728cb412393e8ba.md) | 35 | `result-track:fa3c404ac728cb412393e8ba2618445e05a50d5feeb9d6c95417e71eea4e5a53` |
| 8 | `lemma` | [zetaZeroConfig_Nd](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean/declarations/zetazeroconfig-nd--219529cd13a60b81007e74b4.md) | 37 | `result-track:219529cd13a60b81007e74b4e7e5a774d4f0f89017b247b52af5ffe5392de01d` |
| 9 | `theorem` | [trivial_chain₀](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean/declarations/trivial-chain--4dbfffb27e4115d0ecca7f42.md) | 41 | `result-track:4dbfffb27e4115d0ecca7f42714af4caf046ca66ed8ecb2b27e150470d7fdee7` |
| 10 | `theorem` | [zerosIn_finite](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamClosed/Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d.lean/declarations/zerosin-finite--36041d5e05753bbc2210b573.md) | 47 | `result-track:36041d5e05753bbc2210b573a60f06646418e20c77b4f83c2f6bb82b8cd730dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
