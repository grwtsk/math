# Verification target: GRWTSK.Algebra.LinearAlgebra.Dimension.Variant5a2da7e857a34c4e8d098008d6deaf1a588a2eb2c703f7236432306ec528fa7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "630dc116b81060c56cda83cb2ec2d4cd8e641326",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Dimension/Variant5a2da7e857a34c4e8d098008d6deaf1a588a2eb2c703f7236432306ec528fa7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant5a2da7e857a34c4e8d098008d6deaf1a588a2eb2c703f7236432306ec528fa7d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant5a2da7e857a34c4e8d098008d6deaf1a588a2eb2c703f7236432306ec528fa7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `630dc116b81060c56cda83cb2ec2d4cd8e641326`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Dimension/Variant5a2da7e857a34c4e8d098008d6deaf1a588a2eb2c703f7236432306ec528fa7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Dimension/Variant5a2da7e857a34c4e8d098008d6deaf1a588a2eb2c703f7236432306ec528fa7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rank_sup_le_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant5a2da7e857a34c4e8d098008d6deaf1a588a2eb2c703f7236432306ec528fa7d.lean/declarations/rank-sup-le-of-free--5c66f43aed93743e4015c7be.md) | 28 | `result-track:5c66f43aed93743e4015c7beb2af5a4414603c66030dffbab5349034a9dfd203` |
| 2 | `theorem` | [finrank_sup_le_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant5a2da7e857a34c4e8d098008d6deaf1a588a2eb2c703f7236432306ec528fa7d.lean/declarations/finrank-sup-le-of-free--8ea7acac60d03600d6dbba99.md) | 42 | `result-track:8ea7acac60d03600d6dbba997b28e95096b006503051bcbbb0a3f007e58dabf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
