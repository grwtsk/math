# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SolutionOfCubicQuartic.Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c1e26541bc0cf90a3b34d7df677f850f2a6368d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c1e26541bc0cf90a3b34d7df677f850f2a6368d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.LinearCombination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cube_root_of_unity_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean/declarations/cube-root-of-unity-sum--7ff02fb7797671e057520846.md) | 90 | `result-track:7ff02fb7797671e057520846580b697fe7d696675b470a1d64617509a12c631d` |
| 2 | `theorem` | [cubic_depressed_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean/declarations/cubic-depressed-eq-zero-iff--610fdb49d53b37134840a6f5.md) | 94 | `result-track:610fdb49d53b37134840a6f51e00fe56552610151ca21d74d5f2c644be6f8bcc` |
| 3 | `theorem` | [cubic_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean/declarations/cubic-eq-zero-iff--8b4f2a0bbcf073e72d18057f.md) | 115 | `result-track:8b4f2a0bbcf073e72d18057fe0811bcb8d4ca8f0bbcdbf2cb5646eb25f9f233a` |
| 4 | `theorem` | [cubic_eq_zero_iff_of_p_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean/declarations/cubic-eq-zero-iff-of-p-eq-zero--61cd7e79171d2fc818c20537.md) | 133 | `result-track:61cd7e79171d2fc818c2053795549030ec6ee574181fbf8f88917a9984827285` |
| 5 | `theorem` | [quartic_depressed_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean/declarations/quartic-depressed-eq-zero-iff--cc21dd751bbb138aae39ce44.md) | 174 | `result-track:cc21dd751bbb138aae39ce4476cbfc4cf4ee17140c2303c42ef31f508dcc9ca2` |
| 6 | `theorem` | [quartic_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean/declarations/quartic-eq-zero-iff--bf1661d055ff38f55f566127.md) | 206 | `result-track:bf1661d055ff38f55f56612792fabba18bad63cbd9d3c1a6896d2dc5f775b0fe` |
| 7 | `theorem` | [quartic_eq_zero_iff_of_q_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean/declarations/quartic-eq-zero-iff-of-q-eq-zero--7a2eb61d246ba6e10f50159c.md) | 232 | `result-track:7a2eb61d246ba6e10f50159c04dfd3b803fca52ac40bc00cf2501a7c210c3bfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
