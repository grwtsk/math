# Verification target: GRWTSK.Algebra.LinearAlgebra.Core.Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d81097c3eecc96a440bf87eccbb566a0822b97e8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Core/Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d81097c3eecc96a440bf87eccbb566a0822b97e8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Core/Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Core/Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Order` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveKernel](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367.lean/declarations/positivekernel--b7fde4b01ee2a93bd08bb5d4.md) | 22 | `declaration-track:b7fde4b01ee2a93bd08bb5d43079eb401330a8a9f4f43dcea193827465dd25ed` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367.lean/declarations/instance--7a0563aeebfe670c5ed0d4c7.md) | 30 | `declaration-track:7a0563aeebfe670c5ed0d4c7fd0196a811b79551ddab2a9590dc4e48737e6c51` |
| 3 | `theorem` | [isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367.lean/declarations/ishermitian--e333018cf9537c0da80b04a9.md) | 34 | `result-track:e333018cf9537c0da80b04a9d043eca578d90b1271aa6f48f0cdd5d5268ab6b7` |
| 4 | `theorem` | [conj_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367.lean/declarations/conj-apply-symm--017e7fe532e5909da6c562d0.md) | 40 | `result-track:017e7fe532e5909da6c562d07dbc2f9ffe030ea76e1136bd94758fb24325a716` |
| 5 | `theorem` | [conj_matrix_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367.lean/declarations/conj-matrix-apply-symm--c42cab802a11edf3b93e3e1b.md) | 46 | `result-track:c42cab802a11edf3b93e3e1b1ec3b83aedcfacc7b6e984d34d70582cf568f51a` |
| 6 | `theorem` | [quadratic_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367.lean/declarations/quadratic-nonnegative--bc2fe316de89e60a7a717c7a.md) | 52 | `result-track:bc2fe316de89e60a7a717c7a89453c0fe72a6a62cf327b428c5c913befc8742e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
