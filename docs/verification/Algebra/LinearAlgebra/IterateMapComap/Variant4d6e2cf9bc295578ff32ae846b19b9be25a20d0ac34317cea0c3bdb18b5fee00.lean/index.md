# Verification target: GRWTSK.Algebra.LinearAlgebra.IterateMapComap.Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17151086e867c50cd9bafa7324adc6604e9ee74d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IterateMapComap/Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IterateMapComap/Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IterateMapComap/Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17151086e867c50cd9bafa7324adc6604e9ee74d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IterateMapComap/Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IterateMapComap/Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Ker` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iterateMapComap](../../../../../mathematics/Algebra/LinearAlgebra/IterateMapComap/Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00.lean/declarations/iteratemapcomap--94ab777b2304e6bc1787cb24.md) | 50 | `declaration-track:94ab777b2304e6bc1787cb24e8b180947ab3af094afbe7413316cf2940c6e4f2` |
| 2 | `theorem` | [iterateMapComap_le_succ](../../../../../mathematics/Algebra/LinearAlgebra/IterateMapComap/Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00.lean/declarations/iteratemapcomap-le-succ--e703a3cdfc6197a0df58490e.md) | 53 | `result-track:e703a3cdfc6197a0df58490efc55ac88c734149d76ad81d4ae8ab6e2212b64f4` |
| 3 | `theorem` | [iterateMapComap_eq_succ](../../../../../mathematics/Algebra/LinearAlgebra/IterateMapComap/Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00.lean/declarations/iteratemapcomap-eq-succ--15c5c0d4e2cc945defc4f437.md) | 73 | `result-track:15c5c0d4e2cc945defc4f437ee2d6be0cdc55bd0e9c60a40f47cc31913b9ef87` |
| 4 | `theorem` | [ker_le_of_iterateMapComap_eq_succ](../../../../../mathematics/Algebra/LinearAlgebra/IterateMapComap/Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00.lean/declarations/ker-le-of-iteratemapcomap-eq-succ--2776bf472d10b58b292371a5.md) | 96 | `result-track:2776bf472d10b58b292371a59931e8421849de8619aefb862fbecf80f2fe2469` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
