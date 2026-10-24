# Verification target: GRWTSK.Algebra.LinearAlgebra.FreeAlgebra.Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c19dc239532c6a70aa8d6cc955b81ea05bd1f07b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FreeAlgebra/Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FreeAlgebra/Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FreeAlgebra/Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c19dc239532c6a70aa8d6cc955b81ea05bd1f07b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FreeAlgebra/Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FreeAlgebra/Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Cardinality` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Subsingleton` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.VectorSpace` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basisFreeMonoid](../../../../../mathematics/Algebra/LinearAlgebra/FreeAlgebra/Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean/declarations/basisfreemonoid--4f309515f316d6d5e32391f4.md) | 34 | `declaration-track:4f309515f316d6d5e32391f4122a4cad742d93473b43c3c6bf346c95bc434d74` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FreeAlgebra/Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean/declarations/instance--01d3bedc7272635e46a3b859.md) | 37 | `declaration-track:01d3bedc7272635e46a3b8596b4452f9143e9dcb461b91276e8f32e1378d7731` |
| 3 | `theorem` | [rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/FreeAlgebra/Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean/declarations/rank-eq--b97345f7eb7c22aa3e4adc4d.md) | 43 | `result-track:b97345f7eb7c22aa3e4adc4df341da783b29c9e06d656d19b009b022aeabb0e4` |
| 4 | `theorem` | [Algebra.rank_adjoin_le](../../../../../mathematics/Algebra/LinearAlgebra/FreeAlgebra/Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45.lean/declarations/algebra-rank-adjoin-le--3cf615e32fcc8eb823d06f4b.md) | 52 | `result-track:3cf615e32fcc8eb823d06f4b3c2731a415706f7fa5cb97fe5be580720b74e3c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
