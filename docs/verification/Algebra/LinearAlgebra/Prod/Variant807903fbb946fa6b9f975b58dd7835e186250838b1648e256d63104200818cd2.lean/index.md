# Verification target: GRWTSK.Algebra.LinearAlgebra.Prod.Variant807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b80a635be778cc1238b52f4f1d24b85662a9649",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b80a635be778cc1238b52f4f1d24b85662a9649`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variant807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variant807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLinearMap_add](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2.lean/declarations/islinearmap-add--9959cc5d2c9bf3e59b62eeb0.md) | 25 | `result-track:9959cc5d2c9bf3e59b62eeb02cdea1757f2fda15f53ad01880883a9c2a1f84bb` |
| 2 | `theorem` | [isLinearMap_sub](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2.lean/declarations/islinearmap-sub--1a0c681822606161b2c7480b.md) | 34 | `result-track:1a0c681822606161b2c7480b069e2730609de38377149465ed78b2a9bc6ee36c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
