# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Invariance.Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fadea6450bed1f9aa5e666e839ebb420b5e2f2a4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fadea6450bed1f9aa5e666e839ebb420b5e2f2a4`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.Comp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bind_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe.lean/declarations/bind-add--459c760032309c9d6cc399e7.md) | 48 | `result-track:459c760032309c9d6cc399e7cb9343006ce23ef526f18771643863ad79878580` |
| 2 | `theorem` | [bind_smul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe.lean/declarations/bind-smul--69f46defe3a2b65818a32626.md) | 55 | `result-track:69f46defe3a2b65818a32626e3713ae26992dc2a899c75d979a26551f476572c` |
| 3 | `theorem` | [const_bind_eq_comp_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe.lean/declarations/const-bind-eq-comp-const--31c61569f7b434799ffce322.md) | 60 | `result-track:31c61569f7b434799ffce322f1c98f57282e9478a28ba34ea6fa5ec083853149` |
| 4 | `theorem` | [comp_const_apply_eq_bind](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe.lean/declarations/comp-const-apply-eq-bind--1d201bb5e79a40ff35be1cef.md) | 65 | `result-track:1d201bb5e79a40ff35be1cef6eb0dd087ce96d14deac02e95b3c229069befa59` |
| 5 | `def` | [Invariant](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe.lean/declarations/invariant--d5805c440748fbd1daa417cd.md) | 74 | `declaration-track:d5805c440748fbd1daa417cd21c5f2aae8a69908a4dc9b98aaf95b67f7fc9a81` |
| 6 | `theorem` | [Invariant.def](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe.lean/declarations/invariant-def--fe1838da9d606ece96051b07.md) | 79 | `result-track:fe1838da9d606ece96051b071d3bfad09c81a1b581a21201c0bc873820842dee` |
| 7 | `theorem` | [Invariant.comp_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe.lean/declarations/invariant-comp-const--502c0215debe8faf8b3517f9.md) | 82 | `result-track:502c0215debe8faf8b3517f9385672d426637e284a7dfe6a6973157256b35df5` |
| 8 | `theorem` | [Invariant.comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variant955b4b06e8c09ce1757f72960a64665c0f891c49206056b455a01e8416db58fe.lean/declarations/invariant-comp--b0cce6e7d8dedbb4a3b10d2c.md) | 85 | `result-track:b0cce6e7d8dedbb4a3b10d2cac6cf0bcd71cfa612767bbcaca0b480c58bd507b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
