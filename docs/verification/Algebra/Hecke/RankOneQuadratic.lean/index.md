# Verification target: GRWTSK.Algebra.Hecke.RankOneQuadratic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0266c97fd8ef7c09290cf977a198e13adc76dc23",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hecke/RankOneQuadratic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hecke/RankOneQuadratic.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hecke/RankOneQuadratic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0266c97fd8ef7c09290cf977a198e13adc76dc23`.

Source path: `GRWTSK/Algebra/Hecke/RankOneQuadratic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hecke/RankOneQuadratic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rankOneGenerator](../../../../mathematics/Algebra/Hecke/RankOneQuadratic.lean/declarations/rankonegenerator--e70e549b76b24ba384132ea2.md) | 12 | `declaration-track:e70e549b76b24ba384132ea204420fb9c79908723dcdde0615d079225933333c` |
| 2 | `theorem` | [rankOne_quadratic](../../../../mathematics/Algebra/Hecke/RankOneQuadratic.lean/declarations/rankone-quadratic--2872307446731b171b3067a6.md) | 15 | `result-track:2872307446731b171b3067a60dfc920aedc392f67555dabeb6ff7247164e4645` |
| 3 | `theorem` | [rankOne_inverse](../../../../mathematics/Algebra/Hecke/RankOneQuadratic.lean/declarations/rankone-inverse--8fc73bec5a4edee6993f3ce4.md) | 22 | `result-track:8fc73bec5a4edee6993f3ce4712e641500da0ffa7dff6c7bb470aac1ba03eac1` |
| 4 | `theorem` | [rankOne_normalized_square](../../../../mathematics/Algebra/Hecke/RankOneQuadratic.lean/declarations/rankone-normalized-square--ced9db3a146801f8427557ad.md) | 30 | `result-track:ced9db3a146801f8427557ad827f9f6915ab94b84d437a5a3135487bd5246896` |
| 5 | `theorem` | [rankOne_coordinates_unique](../../../../mathematics/Algebra/Hecke/RankOneQuadratic.lean/declarations/rankone-coordinates-unique--0f72ddd3c0e4b3c4fce00f54.md) | 39 | `result-track:0f72ddd3c0e4b3c4fce00f54a06824403b18796c12fb08e5c6357213b2eeb9f3` |
| 6 | `theorem` | [rankOne_normalForm_mul](../../../../mathematics/Algebra/Hecke/RankOneQuadratic.lean/declarations/rankone-normalform-mul--a91ca291506c44327ccce58a.md) | 47 | `result-track:a91ca291506c44327ccce58a57d4915d28b049af99f613f4117d1776e414fc2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
