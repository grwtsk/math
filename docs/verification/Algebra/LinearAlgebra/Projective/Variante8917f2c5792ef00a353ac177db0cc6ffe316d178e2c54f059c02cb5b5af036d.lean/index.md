# Verification target: GRWTSK.Algebra.LinearAlgebra.Projective.Variante8917f2c5792ef00a353ac177db0cc6ffe316d178e2c54f059c02cb5b5af036d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fc3b20f6da771510cdbcfb0c66e5941a758f0a0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variante8917f2c5792ef00a353ac177db0cc6ffe316d178e2c54f059c02cb5b5af036d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variante8917f2c5792ef00a353ac177db0cc6ffe316d178e2c54f059c02cb5b5af036d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variante8917f2c5792ef00a353ac177db0cc6ffe316d178e2c54f059c02cb5b5af036d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fc3b20f6da771510cdbcfb0c66e5941a758f0a0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projective/Variante8917f2c5792ef00a353ac177db0cc6ffe316d178e2c54f059c02cb5b5af036d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projective/Variante8917f2c5792ef00a353ac177db0cc6ffe316d178e2c54f059c02cb5b5af036d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.FinitePresentation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Submodule` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Module.free_of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variante8917f2c5792ef00a353ac177db0cc6ffe316d178e2c54f059c02cb5b5af036d.lean/declarations/module-free-of-islocalizedmodule--d5432d4516609ad2a90ef95f.md) | 41 | `result-track:d5432d4516609ad2a90ef95fcbca1339708ca2aaae4ab72e5935a822f2b9faf7` |
| 2 | `theorem` | [Module.lift_rank_of_isLocalizedModule_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variante8917f2c5792ef00a353ac177db0cc6ffe316d178e2c54f059c02cb5b5af036d.lean/declarations/module-lift-rank-of-islocalizedmodule-of-free--9d1c33164de13a0dfe1e5d5d.md) | 52 | `result-track:9d1c33164de13a0dfe1e5d5d2f000240954a6729341184ad4094e0d02a77b49c` |
| 3 | `theorem` | [Module.finrank_of_isLocalizedModule_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variante8917f2c5792ef00a353ac177db0cc6ffe316d178e2c54f059c02cb5b5af036d.lean/declarations/module-finrank-of-islocalizedmodule-of-free--0425a316c3be216bc95d620c.md) | 66 | `result-track:0425a316c3be216bc95d620c8da6bc382dc11336ecf3f5d229debe5ce3e18d47` |
| 4 | `theorem` | [Module.projective_of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variante8917f2c5792ef00a353ac177db0cc6ffe316d178e2c54f059c02cb5b5af036d.lean/declarations/module-projective-of-islocalizedmodule--243a554f2b87c7e446df34c0.md) | 74 | `result-track:243a554f2b87c7e446df34c03a6fc7f4e19d969cb5838c732747144f169deb48` |
| 5 | `theorem` | [LinearMap.split_surjective_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variante8917f2c5792ef00a353ac177db0cc6ffe316d178e2c54f059c02cb5b5af036d.lean/declarations/linearmap-split-surjective-of-localization-maximal--9985dfe1f85b058a19f1fb15.md) | 80 | `result-track:9985dfe1f85b058a19f1fb153bd99943937a8ac0f709a724d4693a9dc7a0bca2` |
| 6 | `theorem` | [Module.projective_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variante8917f2c5792ef00a353ac177db0cc6ffe316d178e2c54f059c02cb5b5af036d.lean/declarations/module-projective-of-localization-maximal--e3ca6b7417199a241f2ba175.md) | 128 | `result-track:e3ca6b7417199a241f2ba17560d8c89016a639d73466b7a5974bbfc7da88f127` |
| 7 | `theorem` | [Module.projective_of_localization_maximal'](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variante8917f2c5792ef00a353ac177db0cc6ffe316d178e2c54f059c02cb5b5af036d.lean/declarations/module-projective-of-localization-maximal--6f2059c0b3f7476fe8c1586d.md) | 165 | `result-track:6f2059c0b3f7476fe8c1586d6ca8bcd9de8776a0f75a270df3105260a43d4722` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
