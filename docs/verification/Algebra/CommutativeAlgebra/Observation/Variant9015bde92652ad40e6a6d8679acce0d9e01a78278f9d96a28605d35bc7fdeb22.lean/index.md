# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Observation.Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f84448f2ebe8c84419a7bc3d17b7a3aabd898b9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f84448f2ebe8c84419a7bc3d17b7a3aabd898b9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PolynomialSource](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/declarations/polynomialsource--c3e48335fa1cc0ceda82fd41.md) | 19 | `declaration-track:c3e48335fa1cc0ceda82fd4184199025f8168b0e00d42c7047f94113156ae25c` |
| 2 | `structure` | [RootPreservingCompilation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/declarations/rootpreservingcompilation--f98bbeb3ae81057130e77f00.md) | 31 | `declaration-track:f98bbeb3ae81057130e77f00feb12aec18bfe0df6261e8ce180023c219f2a7a6` |
| 3 | `def` | [scaleCompilation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/declarations/scalecompilation--4871cf2d35faab3982c5544c.md) | 40 | `declaration-track:4871cf2d35faab3982c5544cf662bc2eacdefdc73871a2e443db1e03181c9235` |
| 4 | `theorem` | [scale_compilation_sound](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/declarations/scale-compilation-sound--c650a0e4803538a3587f931b.md) | 47 | `result-track:c650a0e4803538a3587f931be8b11bf69f66ab4a2ab32b962f672ef6d586c92b` |
| 5 | `theorem` | [square_preserves_integer_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/declarations/square-preserves-integer-roots--6eb2c4652909b9a01ec675ed.md) | 52 | `result-track:6eb2c4652909b9a01ec675ed8b4070ee84a8820479c5fb74e0776142ba0b80be` |
| 6 | `theorem` | [positive_power_preserves_integer_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/declarations/positive-power-preserves-integer-roots--e0ed07176605684a63967edf.md) | 57 | `result-track:e0ed07176605684a63967edf94855061ccddc158f5e9e3debb3c2ced6ca6dc16` |
| 7 | `theorem` | [arbitrary_degree_inflation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/declarations/arbitrary-degree-inflation--07036a58f2e161d5633c2bd4.md) | 63 | `result-track:07036a58f2e161d5633c2bd4f5794d49673c199a02bee3868eb97e7286448b82` |
| 8 | `theorem` | [root_equivalence_does_not_determine_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/declarations/root-equivalence-does-not-determine-degree--8c1c369f11e21926dd429dad.md) | 72 | `result-track:8c1c369f11e21926dd429dad44249b7e623cef2402025e9a2a8a0540d19df10f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
