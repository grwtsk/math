# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ae7107ebde79e6b9f4c78052d21ecc14e861d22",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ae7107ebde79e6b9f4c78052d21ecc14e861d22`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.FinitePresentation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Finiteness` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Module.FinitePresentation.exists_basis_localizedModule_powers](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean/declarations/module-finitepresentation-exists-basis-localizedmodule-powers--958db6805d3ed18ab4d8b3ff.md) | 38 | `result-track:958db6805d3ed18ab4d8b3ffdf5a3ba57c5bc77c4fc0102d707165eecabb0e7c` |
| 2 | `lemma` | [Module.FinitePresentation.exists_free_localizedModule_powers](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean/declarations/module-finitepresentation-exists-free-localizedmodule-powers--299f946b285dd22f03ab6c11.md) | 75 | `result-track:299f946b285dd22f03ab6c11d155e4abd8c635391c5431cdb9f18d3a95b8bea4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
