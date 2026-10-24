# Verification target: GRWTSK.Algebra.SolutionOfCubic.Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "762b295e629f38ece18f8adb87b8c10afd858e7e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean/index.md) · [Full source](../../../../mathematics/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `762b295e629f38ece18f8adb87b8c10afd858e7e`.

Source path: `GRWTSK/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.LinearCombination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cube_root_of_unity_sum](../../../../mathematics/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean/declarations/cube-root-of-unity-sum--998f78a75f07a1a34a890624.md) | 62 | `result-track:998f78a75f07a1a34a89062438d45c2c23ef2a042f0b2d6fd81efc62a6ccc114` |
| 2 | `theorem` | [cubic_basic_eq_zero_iff](../../../../mathematics/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean/declarations/cubic-basic-eq-zero-iff--ef1876fde2d61ebb5690612f.md) | 67 | `result-track:ef1876fde2d61ebb5690612f6953bb2cdbcce1fb5f84b15ccdc6bb3d24031676` |
| 3 | `theorem` | [cubic_monic_eq_zero_iff](../../../../mathematics/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean/declarations/cubic-monic-eq-zero-iff--b3115ff59e286caa2dc87c9b.md) | 86 | `result-track:b3115ff59e286caa2dc87c9b871a429b6b8f120fd908f6896f03b59e8b4f001b` |
| 4 | `theorem` | [cubic_eq_zero_iff](../../../../mathematics/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean/declarations/cubic-eq-zero-iff--f29703141dddf84d807b837d.md) | 105 | `result-track:f29703141dddf84d807b837d0cdacc9d8b3bf69dd8360b10e71dc34633df35c1` |
| 5 | `theorem` | [cubic_eq_zero_iff_of_p_eq_zero](../../../../mathematics/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean/declarations/cubic-eq-zero-iff-of-p-eq-zero--804e5c199a99103835b1142c.md) | 131 | `result-track:804e5c199a99103835b1142ceda699b911e1f784b657f8f5bed64deede84f64e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
