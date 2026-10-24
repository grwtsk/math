# Verification target: GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryJInvariant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97a69b2c508f63c739d314d44179ef23a978883b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/UnitEquation/RationalBoundaryJInvariant.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/UnitEquation/RationalBoundaryJInvariant.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/UnitEquation/RationalBoundaryJInvariant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97a69b2c508f63c739d314d44179ef23a978883b`.

Source path: `GRWTSK/NumberTheory/Diophantine/UnitEquation/RationalBoundaryJInvariant.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/UnitEquation/RationalBoundaryJInvariant.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryCycle`](../../../../../mathematics/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invariant](../../../../../mathematics/NumberTheory/Diophantine/UnitEquation/RationalBoundaryJInvariant.lean/declarations/invariant--35b9b1ff66c4b692f15f8d59.md) | 20 | `declaration-track:35b9b1ff66c4b692f15f8d59185ac71a0531efe77cee5e3cde7faf717b436096` |
| 2 | `theorem` | [mirror_invariant](../../../../../mathematics/NumberTheory/Diophantine/UnitEquation/RationalBoundaryJInvariant.lean/declarations/mirror-invariant--65b0ab41b332f3a171d7afe3.md) | 23 | `result-track:65b0ab41b332f3a171d7afe382f08230ff4dfcbfc8532d3bd7e8ae567bb3d730` |
| 3 | `theorem` | [cycle_invariant](../../../../../mathematics/NumberTheory/Diophantine/UnitEquation/RationalBoundaryJInvariant.lean/declarations/cycle-invariant--627fea2fa527208a3220e807.md) | 27 | `result-track:627fea2fa527208a3220e807c63ff2f345b23d293ea007d7b5d99e372cd6f707` |
| 4 | `theorem` | [chart_invariant](../../../../../mathematics/NumberTheory/Diophantine/UnitEquation/RationalBoundaryJInvariant.lean/declarations/chart-invariant--e88ed90d5b4527492dc754a4.md) | 36 | `result-track:e88ed90d5b4527492dc754a4faee7af11c223003efae13c09303d27575545081` |
| 5 | `theorem` | [invariant_sub_1728](../../../../../mathematics/NumberTheory/Diophantine/UnitEquation/RationalBoundaryJInvariant.lean/declarations/invariant-sub-1728--471573c8296153047ef3eec7.md) | 42 | `result-track:471573c8296153047ef3eec78206532c4f743e109df2387a13b495b537ca51f1` |
| 6 | `theorem` | [invariant_ge_1728](../../../../../mathematics/NumberTheory/Diophantine/UnitEquation/RationalBoundaryJInvariant.lean/declarations/invariant-ge-1728--00b5ef0b2aef5754e2cf28b9.md) | 53 | `result-track:00b5ef0b2aef5754e2cf28b9c850e131e021f50e356bbd7de5ab7d6466f52b93` |
| 7 | `theorem` | [degree_six_equation](../../../../../mathematics/NumberTheory/Diophantine/UnitEquation/RationalBoundaryJInvariant.lean/declarations/degree-six-equation--fa79271adfb439e68983b5ac.md) | 58 | `result-track:fa79271adfb439e68983b5ac920d586807aa77ffcfa09a9b0737894849c441cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
