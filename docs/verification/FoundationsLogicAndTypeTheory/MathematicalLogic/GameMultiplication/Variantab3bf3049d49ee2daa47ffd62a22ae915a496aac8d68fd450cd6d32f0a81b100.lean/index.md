# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GameMultiplication.Variantab3bf3049d49ee2daa47ffd62a22ae915a496aac8d68fd450cd6d32f0a81b100

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1e686173caed46515be5921ade0081218ab6586",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantab3bf3049d49ee2daa47ffd62a22ae915a496aac8d68fd450cd6d32f0a81b100.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantab3bf3049d49ee2daa47ffd62a22ae915a496aac8d68fd450cd6d32f0a81b100.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantab3bf3049d49ee2daa47ffd62a22ae915a496aac8d68fd450cd6d32f0a81b100.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1e686173caed46515be5921ade0081218ab6586`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantab3bf3049d49ee2daa47ffd62a22ae915a496aac8d68fd450cd6d32f0a81b100.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantab3bf3049d49ee2daa47ffd62a22ae915a496aac8d68fd450cd6d32f0a81b100.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Game.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [star'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantab3bf3049d49ee2daa47ffd62a22ae915a496aac8d68fd450cd6d32f0a81b100.lean/declarations/star--72a894688a194dc3e8e8d3c3.md) | 28 | `declaration-track:72a894688a194dc3e8e8d3c3b239332ce5d0902b75f0286d6da37c850b4812f1` |
| 2 | `theorem` | [neg_star'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantab3bf3049d49ee2daa47ffd62a22ae915a496aac8d68fd450cd6d32f0a81b100.lean/declarations/neg-star--7696b44e1ba598913a8c93af.md) | 31 | `result-track:7696b44e1ba598913a8c93afdc8c777f971404f9f2727c6e52980274f27464a3` |
| 3 | `theorem` | [star'_equiv_star](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantab3bf3049d49ee2daa47ffd62a22ae915a496aac8d68fd450cd6d32f0a81b100.lean/declarations/star-equiv-star--740ccebebe216f5b54dbf8b7.md) | 35 | `result-track:740ccebebe216f5b54dbf8b70e35aff84fc75728a97c5005c34ca31140e92649` |
| 4 | `theorem` | [star_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantab3bf3049d49ee2daa47ffd62a22ae915a496aac8d68fd450cd6d32f0a81b100.lean/declarations/star-sq--a293543c7a4f181cd17b4d6c.md) | 48 | `result-track:a293543c7a4f181cd17b4d6cbcf617b15cf4a973cef2c4625f56df7cec1b9970` |
| 5 | `theorem` | [star'_mul_star_lf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantab3bf3049d49ee2daa47ffd62a22ae915a496aac8d68fd450cd6d32f0a81b100.lean/declarations/star-mul-star-lf--68854a51025576c866e29f07.md) | 69 | `result-track:68854a51025576c866e29f07eacdf675a5d010d0083e701b47bd024510de8e06` |
| 6 | `theorem` | [mul_not_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantab3bf3049d49ee2daa47ffd62a22ae915a496aac8d68fd450cd6d32f0a81b100.lean/declarations/mul-not-lift--4c51d5a630f7dd736db3c607.md) | 76 | `result-track:4c51d5a630f7dd736db3c607d6ef564390f1b9143bdd9d79285d12ebd9f1c443` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
