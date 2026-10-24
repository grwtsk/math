# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.Geometric.Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9420978b9cb690a421eead6ff0c4a6984ec0863",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9420978b9cb690a421eead6ff0c4a6984ec0863`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [geometricPMFReal](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean/declarations/geometricpmfreal--885861086d217beec18fa744.md) | 44 | `declaration-track:885861086d217beec18fa744352bf5574d0f6506377e8fc793c8170bc61a4a1e` |
| 2 | `lemma` | [geometricPMFRealSum](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean/declarations/geometricpmfrealsum--e7e46e3d13482eded32c635d.md) | 46 | `result-track:e7e46e3d13482eded32c635dfa8017024e66b7f19e3f062bfd78efcfb82bd755` |
| 3 | `lemma` | [geometricPMFReal_pos](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean/declarations/geometricpmfreal-pos--fa2f52d0452b9db87ee6b1b5.md) | 56 | `result-track:fa2f52d0452b9db87ee6b1b5e32a9e39e61e4ae938397145a2d047506da04194` |
| 4 | `lemma` | [geometricPMFReal_nonneg](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean/declarations/geometricpmfreal-nonneg--0d675a1334bc58a818a963e3.md) | 62 | `result-track:0d675a1334bc58a818a963e30656fc460f3711e8950faa3437f1f17ceb07afd0` |
| 5 | `def` | [geometricPMF](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean/declarations/geometricpmf--1c0c4ff19d2fe1cf3c9d72d8.md) | 70 | `declaration-track:1c0c4ff19d2fe1cf3c9d72d87aea5694a9e690a7a2ff279a6e56205cec9b5bf0` |
| 6 | `lemma` | [measurable_geometricPMFReal](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean/declarations/measurable-geometricpmfreal--228e0d981ff42a15e1717ed8.md) | 79 | `result-track:228e0d981ff42a15e1717ed8d2515f3becc9f2aaf9178af38c30f874a86b6e4a` |
| 7 | `lemma` | [stronglyMeasurable_geometricPMFReal](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean/declarations/stronglymeasurable-geometricpmfreal--d8f13b8d4a522765b6c207e9.md) | 83 | `result-track:d8f13b8d4a522765b6c207e9a59d977768fd26870c2d63deb10bdcd6aa6a51d7` |
| 8 | `def` | [geometricMeasure](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean/declarations/geometricmeasure--46814f29fe0c090857b772b8.md) | 90 | `declaration-track:46814f29fe0c090857b772b87773ffb3b525e2c6b1fb8d821ba142741ab413bb` |
| 9 | `lemma` | [isProbabilityMeasureGeometric](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variant7411a5be43b46a2a7a7140d384589ac5442b53c5d8f0804fd9f4091c8c0df6df.lean/declarations/isprobabilitymeasuregeometric--9a0848718472ac06a36546de.md) | 93 | `result-track:9a0848718472ac06a36546deee7203d8278afaaa7fa70248b17ce726893f8f6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
