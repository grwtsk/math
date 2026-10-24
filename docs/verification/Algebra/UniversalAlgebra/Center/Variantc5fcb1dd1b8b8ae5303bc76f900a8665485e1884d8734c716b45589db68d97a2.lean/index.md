# Verification target: GRWTSK.Algebra.UniversalAlgebra.Center.Variantc5fcb1dd1b8b8ae5303bc76f900a8665485e1884d8734c716b45589db68d97a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7866020a2b7a2467417a951214df266048c97b38",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Center/Variantc5fcb1dd1b8b8ae5303bc76f900a8665485e1884d8734c716b45589db68d97a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variantc5fcb1dd1b8b8ae5303bc76f900a8665485e1884d8734c716b45589db68d97a2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variantc5fcb1dd1b8b8ae5303bc76f900a8665485e1884d8734c716b45589db68d97a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7866020a2b7a2467417a951214df266048c97b38`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Center/Variantc5fcb1dd1b8b8ae5303bc76f900a8665485e1884d8734c716b45589db68d97a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Center/Variantc5fcb1dd1b8b8ae5303bc76f900a8665485e1884d8734c716b45589db68d97a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Center` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.star_mem_center](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variantc5fcb1dd1b8b8ae5303bc76f900a8665485e1884d8734c716b45589db68d97a2.lean/declarations/set-star-mem-center--95b14488ac35cca9b5356730.md) | 22 | `result-track:95b14488ac35cca9b53567305cd676f3f43f4d525d7e5fe5e7bbbdacd33053ad` |
| 2 | `theorem` | [Set.star_centralizer](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variantc5fcb1dd1b8b8ae5303bc76f900a8665485e1884d8734c716b45589db68d97a2.lean/declarations/set-star-centralizer--f39f984f5141183ed7134787.md) | 44 | `result-track:f39f984f5141183ed7134787e62cc07b6e23372ce324d018be5c1cf9e418fa57` |
| 3 | `theorem` | [Set.union_star_self_comm](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variantc5fcb1dd1b8b8ae5303bc76f900a8665485e1884d8734c716b45589db68d97a2.lean/declarations/set-union-star-self-comm--048a9fc7fb2fe7a51d29da26.md) | 49 | `result-track:048a9fc7fb2fe7a51d29da26e82a3f134ce8023a232ca8ddcaccc96139faa611` |
| 4 | `theorem` | [Set.star_mem_centralizer'](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variantc5fcb1dd1b8b8ae5303bc76f900a8665485e1884d8734c716b45589db68d97a2.lean/declarations/set-star-mem-centralizer--dd73fa5e5aca696eae661a86.md) | 57 | `result-track:dd73fa5e5aca696eae661a865554638bcfab220d7b4f0a4ba6241ac6ce152e83` |
| 5 | `theorem` | [Set.star_mem_centralizer](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variantc5fcb1dd1b8b8ae5303bc76f900a8665485e1884d8734c716b45589db68d97a2.lean/declarations/set-star-mem-centralizer--22dd7a284222df28ba172775.md) | 62 | `result-track:22dd7a284222df28ba17277506c0b156154c058f68e3aa2b860dc4f1c8e2e873` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
