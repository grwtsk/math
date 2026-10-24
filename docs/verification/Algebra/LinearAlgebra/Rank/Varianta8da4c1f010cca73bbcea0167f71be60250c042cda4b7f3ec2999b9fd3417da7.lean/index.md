# Verification target: GRWTSK.Algebra.LinearAlgebra.Rank.Varianta8da4c1f010cca73bbcea0167f71be60250c042cda4b7f3ec2999b9fd3417da7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35d97398572b7163ee4e62d3c4dc68180776ef0a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Varianta8da4c1f010cca73bbcea0167f71be60250c042cda4b7f3ec2999b9fd3417da7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta8da4c1f010cca73bbcea0167f71be60250c042cda4b7f3ec2999b9fd3417da7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta8da4c1f010cca73bbcea0167f71be60250c042cda4b7f3ec2999b9fd3417da7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35d97398572b7163ee4e62d3c4dc68180776ef0a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Varianta8da4c1f010cca73bbcea0167f71be60250c042cda4b7f3ec2999b9fd3417da7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Varianta8da4c1f010cca73bbcea0167f71be60250c042cda4b7f3ec2999b9fd3417da7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Free` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Subsingleton` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rank_sup_eq_rank_left_mul_rank_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta8da4c1f010cca73bbcea0167f71be60250c042cda4b7f3ec2999b9fd3417da7.lean/declarations/rank-sup-eq-rank-left-mul-rank-of-free--3e0c0ccd53520199e1284f80.md) | 31 | `result-track:3e0c0ccd53520199e1284f800b7fee35eec9ce17988900aadf4f4736674a3e6c` |
| 2 | `theorem` | [finrank_sup_eq_finrank_left_mul_finrank_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta8da4c1f010cca73bbcea0167f71be60250c042cda4b7f3ec2999b9fd3417da7.lean/declarations/finrank-sup-eq-finrank-left-mul-finrank-of-free--9f381240b9a48c074a380737.md) | 44 | `result-track:9f381240b9a48c074a380737ffe19b2ad870f0341b9a0797bf3ef714984d648d` |
| 3 | `theorem` | [finrank_left_dvd_finrank_sup_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta8da4c1f010cca73bbcea0167f71be60250c042cda4b7f3ec2999b9fd3417da7.lean/declarations/finrank-left-dvd-finrank-sup-of-free--5f4e867679d029b2541fca88.md) | 48 | `result-track:5f4e867679d029b2541fca88869772036d6c4fe8202ad9af3051a07ea08bebd9` |
| 4 | `theorem` | [rank_sup_eq_rank_right_mul_rank_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta8da4c1f010cca73bbcea0167f71be60250c042cda4b7f3ec2999b9fd3417da7.lean/declarations/rank-sup-eq-rank-right-mul-rank-of-free--414428de7c4a213385903f14.md) | 56 | `result-track:414428de7c4a213385903f140b3153dcf59f4db18d8784f76ce18cb53eca1830` |
| 5 | `theorem` | [finrank_sup_eq_finrank_right_mul_finrank_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta8da4c1f010cca73bbcea0167f71be60250c042cda4b7f3ec2999b9fd3417da7.lean/declarations/finrank-sup-eq-finrank-right-mul-finrank-of-free--d25e00dc2a9a5f388db45070.md) | 60 | `result-track:d25e00dc2a9a5f388db45070b7e6dbd0a887d6387c143de9d29fb53c9e4ebd45` |
| 6 | `theorem` | [finrank_right_dvd_finrank_sup_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Varianta8da4c1f010cca73bbcea0167f71be60250c042cda4b7f3ec2999b9fd3417da7.lean/declarations/finrank-right-dvd-finrank-sup-of-free--963f06330f9f9a8186ea19c0.md) | 64 | `result-track:963f06330f9f9a8186ea19c0a12901a6b596d63f2682830d7ce4bea69be1f0b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
