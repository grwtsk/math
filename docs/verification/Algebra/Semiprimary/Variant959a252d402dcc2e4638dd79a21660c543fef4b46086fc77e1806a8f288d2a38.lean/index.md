# Verification target: GRWTSK.Algebra.Semiprimary.Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "178a97f436f9e3063b60dcb56aaa507b8180d810",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Semiprimary/Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Semiprimary/Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38.lean/index.md) · [Full source](../../../../mathematics/Algebra/Semiprimary/Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `178a97f436f9e3063b60dcb56aaa507b8180d810`.

Source path: `GRWTSK/Algebra/Semiprimary/Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Semiprimary/Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson.Radical` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsSimpleModule.jacobson_eq_bot](../../../../mathematics/Algebra/Semiprimary/Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38.lean/declarations/issimplemodule-jacobson-eq-bot--e1e1f058d0e21950e200af24.md) | 24 | `result-track:e1e1f058d0e21950e200af242d3d1f10cb8ca7194e74f2c927338e445a63fb60` |
| 2 | `theorem` | [IsSemisimpleModule.jacobson_eq_bot](../../../../mathematics/Algebra/Semiprimary/Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38.lean/declarations/issemisimplemodule-jacobson-eq-bot--8400c74c5d3d124626dfc20c.md) | 27 | `result-track:8400c74c5d3d124626dfc20ccc367a97bc5612bd6196dab27511b0eebb2103d0` |
| 3 | `theorem` | [IsSemisimpleRing.jacobson_eq_bot](../../../../mathematics/Algebra/Semiprimary/Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38.lean/declarations/issemisimplering-jacobson-eq-bot--e4db153aa5129542ce563a3e.md) | 34 | `result-track:e4db153aa5129542ce563a3e49eb8993f3054ff5cfa61e9effb6f7f0a8af0e1a` |
| 4 | `theorem` | [IsSemisimpleModule.jacobson_le_ker](../../../../mathematics/Algebra/Semiprimary/Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38.lean/declarations/issemisimplemodule-jacobson-le-ker--b90693ad7ae98dc012c36de6.md) | 37 | `result-track:b90693ad7ae98dc012c36de62c7da2811fd55156151ecba8531763f9e00f9d0f` |
| 5 | `theorem` | [IsSemisimpleModule.jacobson_le_annihilator](../../../../mathematics/Algebra/Semiprimary/Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38.lean/declarations/issemisimplemodule-jacobson-le-annihilator--da4dba33c2dd6c72b96b86e8.md) | 42 | `result-track:da4dba33c2dd6c72b96b86e8f3de158721ad6a5753aac6a485bf7ef77f517743` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiprimary/Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38.lean/declarations/instance--63cc711beb50a028d6d6a40f.md) | 48 | `declaration-track:63cc711beb50a028d6d6a40fe8bd984b8c1acbe80ee89b7d3e23c1aabb90854b` |
| 7 | `class` | [IsSemiprimaryRing](../../../../mathematics/Algebra/Semiprimary/Variant959a252d402dcc2e4638dd79a21660c543fef4b46086fc77e1806a8f288d2a38.lean/declarations/issemiprimaryring--8b3e1aa28f908eebe3248d06.md) | 54 | `declaration-track:8b3e1aa28f908eebe3248d06c202291156f798ec97556b3744b174539c7f15c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
